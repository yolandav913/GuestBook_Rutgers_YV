using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GuestBook_Vigo.Startup))]
namespace GuestBook_Vigo
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
