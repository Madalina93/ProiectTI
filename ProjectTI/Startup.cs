using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProjectTI.Startup))]
namespace ProjectTI
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
