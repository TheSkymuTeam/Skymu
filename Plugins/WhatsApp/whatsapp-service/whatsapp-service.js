// whatsapp-service.js
// Node.js service for MiddleMan WhatsApp integration

const express = require('express');
const { Client, LocalAuth, MessageMedia } = require('whatsapp-web.js');
const app = express();
app.use(express.json());

// Initialize WhatsApp client
const client = new Client({
    authStrategy: new LocalAuth({
        dataPath: './.wwebjs_auth'
    }),
    puppeteer: {
        headless: true,
        args: ['--no-sandbox', '--disable-setuid-sandbox']
    }
});

// State management
let qrCodeData = null;
let isReady = false;
let isAuthenticated = false;
let clientInfo = null;
let messageQueue = [];
let contactsList = [];
let chatsList = [];
let typingUsers = new Map(); // Map of chatId -> Set of userIds

// Event handlers
client.on('qr', (qr) => {
    console.log('QR Code received');
    qrCodeData = qr;
});

client.on('authenticated', () => {
    console.log('Client authenticated');
    isAuthenticated = true;
});

client.on('ready', async () => {
    console.log('WhatsApp client is ready!');
    isReady = true;
    
    // Get client info
    clientInfo = {
        pushname: client.info.pushname,
        wid: client.info.wid._serialized,
        platform: client.info.platform
    };
    
    console.log(`Logged in as: ${clientInfo.pushname}`);
});

client.on('message', async (msg) => {
    try {
        const chat = await msg.getChat();
        const contact = await msg.getContact();
        
        const messageData = {
            id: msg.id._serialized,
            from: msg.from,
            fromName: contact.pushname || contact.name || msg.from,
            to: msg.to,
            body: msg.body,
            timestamp: msg.timestamp * 1000, // Convert to milliseconds
            hasMedia: msg.hasMedia,
            isGroup: chat.isGroup,
            chatId: msg.from,
            type: msg.type
        };
        
        // Handle quoted messages (replies)
        if (msg.hasQuotedMsg) {
            const quotedMsg = await msg.getQuotedMessage();
            const quotedContact = await quotedMsg.getContact();
            messageData.quotedMsg = {
                id: quotedMsg.id._serialized,
                body: quotedMsg.body,
                from: quotedMsg.from,
                fromName: quotedContact.pushname || quotedContact.name || quotedMsg.from
            };
        }
        
        // Store message
        messageQueue.push(messageData);
        
        // Keep only last 500 messages
        if (messageQueue.length > 500) {
            messageQueue.shift();
        }
        
        console.log(`Message from ${messageData.fromName}: ${msg.body}`);
    } catch (error) {
        console.error('Error processing message:', error);
    }
});

client.on('message_create', async (msg) => {
    // This includes messages sent by us
    if (msg.fromMe) {
        try {
            const chat = await msg.getChat();
            const messageData = {
                id: msg.id._serialized,
                from: msg.from,
                fromName: 'Me',
                to: msg.to,
                body: msg.body,
                timestamp: msg.timestamp * 1000,
                hasMedia: msg.hasMedia,
                isGroup: chat.isGroup,
                chatId: msg.to,
                fromMe: true,
                type: msg.type
            };
            
            messageQueue.push(messageData);
            
            if (messageQueue.length > 500) {
                messageQueue.shift();
            }
        } catch (error) {
            console.error('Error processing sent message:', error);
        }
    }
});

client.on('auth_failure', (msg) => {
    console.error('Authentication failure:', msg);
    isAuthenticated = false;
});

client.on('disconnected', (reason) => {
    console.log('Client was disconnected:', reason);
    isReady = false;
    isAuthenticated = false;
});

// Handle typing indicator
client.on('change_state', async (state) => {
    // Note: whatsapp-web.js doesn't have direct typing events
    // This is a placeholder for future implementation
});

// API Endpoints

// Get QR code
app.get('/qr', (req, res) => {
    if (isAuthenticated) {
        res.json({ status: 'already_authenticated' });
    } else if (qrCodeData) {
        res.json({ qr: qrCodeData, status: 'qr_ready' });
    } else {
        res.json({ status: 'waiting_for_qr' });
    }
});

// Get status
app.get('/status', (req, res) => {
    res.json({
        ready: isReady,
        authenticated: isAuthenticated,
        info: clientInfo
    });
});

// Send message
app.post('/send', async (req, res) => {
    try {
        const { to, message, quotedMessageId } = req.body;
        
        if (!isReady) {
            return res.status(400).json({ error: 'Client not ready' });
        }
        
        let chatId = to;
        if (!to.includes('@')) {
            chatId = to + '@c.us';
        }
        
        const options = {};
        
        // Handle replies
        if (quotedMessageId) {
            const quotedMsg = await client.getMessageById(quotedMessageId);
            if (quotedMsg) {
                options.quotedMessageId = quotedMessageId;
            }
        }
        
        const result = await client.sendMessage(chatId, message, options);
        
        res.json({ 
            success: true, 
            messageId: result.id._serialized 
        });
    } catch (error) {
        console.error('Error sending message:', error);
        res.status(500).json({ error: error.message });
    }
});

// Send media message
app.post('/send-media', async (req, res) => {
    try {
        const { to, mediaBase64, mimetype, filename, caption } = req.body;
        
        if (!isReady) {
            return res.status(400).json({ error: 'Client not ready' });
        }
        
        let chatId = to;
        if (!to.includes('@')) {
            chatId = to + '@c.us';
        }
        
        const media = new MessageMedia(mimetype, mediaBase64, filename);
        const result = await client.sendMessage(chatId, media, { caption });
        
        res.json({ 
            success: true, 
            messageId: result.id._serialized 
        });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

// Get contacts
app.get('/contacts', async (req, res) => {
    try {
        if (!isReady) {
            return res.status(400).json({ error: 'Client not ready' });
        }
        
        const contacts = await client.getContacts();
        
        const contactList = await Promise.all(contacts
            .filter(contact => contact.isUser && contact.id.user)
            .map(async (contact) => {
                try {
                    const profilePicUrl = await contact.getProfilePicUrl();
                    return {
                        id: contact.id._serialized,
                        name: contact.name || contact.pushname || contact.number,
                        number: contact.number,
                        pushname: contact.pushname,
                        isMyContact: contact.isMyContact,
                        profilePicUrl: profilePicUrl || null
                    };
                } catch (e) {
                    return {
                        id: contact.id._serialized,
                        name: contact.name || contact.pushname || contact.number,
                        number: contact.number,
                        pushname: contact.pushname,
                        isMyContact: contact.isMyContact,
                        profilePicUrl: null
                    };
                }
            }));
        
        res.json({ contacts: contactList });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

// Get chats (for recents list)
app.get('/chats', async (req, res) => {
    try {
        if (!isReady) {
            return res.status(400).json({ error: 'Client not ready' });
        }
        
        const chats = await client.getChats();
        
        const chatList = await Promise.all(chats.map(async (chat) => {
            try {
                const contact = await chat.getContact();
                let profilePicUrl = null;
                try {
                    profilePicUrl = await contact.getProfilePicUrl();
                } catch (e) {
                    // No profile picture
                }
                
                return {
                    id: chat.id._serialized,
                    name: chat.name,
                    isGroup: chat.isGroup,
                    unreadCount: chat.unreadCount,
                    timestamp: chat.timestamp,
                    profilePicUrl: profilePicUrl,
                    lastMessage: chat.lastMessage ? {
                        body: chat.lastMessage.body,
                        timestamp: chat.lastMessage.timestamp * 1000
                    } : null
                };
            } catch (e) {
                return null;
            }
        }));
        
        res.json({ chats: chatList.filter(c => c !== null) });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

// Get messages for a specific chat
app.get('/messages/:chatId', async (req, res) => {
    try {
        const { chatId } = req.params;
        const limit = parseInt(req.query.limit) || 50;
        
        if (!isReady) {
            return res.status(400).json({ error: 'Client not ready' });
        }
        
        const chat = await client.getChatById(chatId);
        const messages = await chat.fetchMessages({ limit });
        
        const messageList = await Promise.all(messages.map(async (msg) => {
            try {
                const contact = await msg.getContact();
                const messageData = {
                    id: msg.id._serialized,
                    from: msg.from,
                    fromName: contact.pushname || contact.name || msg.from,
                    body: msg.body,
                    timestamp: msg.timestamp * 1000,
                    hasMedia: msg.hasMedia,
                    fromMe: msg.fromMe,
                    type: msg.type
                };
                
                // Handle quoted messages
                if (msg.hasQuotedMsg) {
                    const quotedMsg = await msg.getQuotedMessage();
                    const quotedContact = await quotedMsg.getContact();
                    messageData.quotedMsg = {
                        id: quotedMsg.id._serialized,
                        body: quotedMsg.body,
                        from: quotedMsg.from,
                        fromName: quotedContact.pushname || quotedContact.name || quotedMsg.from
                    };
                }
                
                return messageData;
            } catch (e) {
                return null;
            }
        }));
        
        res.json({ messages: messageList.filter(m => m !== null).reverse() });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

// Get new messages (for polling)
app.get('/messages', (req, res) => {
    const limit = parseInt(req.query.limit) || 100;
    res.json({ messages: messageQueue.slice(-limit) });
});

// Clear message queue
app.delete('/messages', (req, res) => {
    messageQueue = [];
    res.json({ success: true });
});

// Download media
app.get('/media/:messageId', async (req, res) => {
    try {
        const { messageId } = req.params;
        
        if (!isReady) {
            return res.status(400).json({ error: 'Client not ready' });
        }
        
        const msg = await client.getMessageById(messageId);
        
        if (!msg || !msg.hasMedia) {
            return res.status(404).json({ error: 'Message not found or has no media' });
        }
        
        const media = await msg.downloadMedia();
        
        res.json({
            mimetype: media.mimetype,
            data: media.data,
            filename: media.filename
        });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

// Get profile picture
app.get('/profile-picture/:contactId', async (req, res) => {
    try {
        const { contactId } = req.params;
        
        if (!isReady) {
            return res.status(400).json({ error: 'Client not ready' });
        }
        
        const contact = await client.getContactById(contactId);
        const profilePicUrl = await contact.getProfilePicUrl();
        
        res.json({ url: profilePicUrl });
    } catch (error) {
        res.status(500).json({ error: error.message || 'No profile picture' });
    }
});

// Logout
app.post('/logout', async (req, res) => {
    try {
        await client.logout();
        isReady = false;
        isAuthenticated = false;
        qrCodeData = null;
        clientInfo = null;
        res.json({ success: true });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

// Health check
app.get('/health', (req, res) => {
    res.json({ status: 'ok', ready: isReady, authenticated: isAuthenticated });
});

// Start server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`WhatsApp API server running on port ${PORT}`);
    console.log('Initializing WhatsApp client...');
    client.initialize();
});

// Graceful shutdown
process.on('SIGINT', async () => {
    console.log('Shutting down...');
    await client.destroy();
    process.exit(0);
});
