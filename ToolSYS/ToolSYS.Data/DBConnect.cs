using System.Configuration;

namespace ToolSYS.Data
{
    public static class DbConnect
    {
        public static string Oradb => ConfigurationManager.ConnectionStrings["Oradb"].ConnectionString;
    }
}
