using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(APP_WEB_DE_CREDITO.Startup))]
namespace APP_WEB_DE_CREDITO
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
