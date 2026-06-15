#!/usr/bin/env luajit
-- ^ bro uses linux? lollll
-- wait, can you even run VS2019+ on Linux?
local default = [[
<?xml version="1.0" encoding="utf-8"?>
<config>
  <UI>
    <General>
      <Theme>Skype5</Theme>
    </General>
  </UI>
</config>
]]

if not arg[1] then
	print "You need to specify an interface"
	os.exit(1)
end
local newint = "<Theme>"..arg[1].."</Theme>"

local path = os.getenv "APPDATA".."\\Skymu\\shared.xml"

local f = io.open(path, "r")
local data
if not f then
	data = default
else
	data = f:read "a"
	f:close()
end
f = io.open(path, "w")
local newdata = data:gsub("<Theme>[^<]+</Theme>", newint)
if not newdata then
	print "WARN: No newdata detected after <Interface> override"
	newdata = data:gsub("<General>","<General>\r\n      "..newint)
	if not newdata then
		print "ERR: Could not do \"append interface after <General>\". Is this a valid shared.xml?"
		os.exit(1)
	end
end
f:write(newdata)
f:close()
