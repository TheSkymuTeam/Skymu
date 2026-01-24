using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiddleMan;

namespace Bluesky
{
    public class Core : ICore
    {
        public string Name { get { return "Bluesky"; } }
        public string TextUsername { get { return "Handle"; } }
        public AuthenticationMethod AuthenticationType { get { return AuthenticationMethod.Standard; } }

        public LoginResult Login1(string username, string password)
        {
            return new LoginResult(false, String.Empty, String.Empty); // stub
        }

        public LoginResult Login2(string code)
        {
            return new LoginResult(false, String.Empty, String.Empty); // stub
        }
    }
}
