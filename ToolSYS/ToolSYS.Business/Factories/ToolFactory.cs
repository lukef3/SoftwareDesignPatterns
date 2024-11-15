using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ToolSYS.Entities;

namespace ToolSYS.Business.Factories
{
    public abstract class ToolFactory
    {
        public abstract Tool CreateTool(int toolID, string categoryCode, string description, string manufacturer, string status = "I");
    }

    public class GeneralToolFactory : ToolFactory
    {
        public override Tool CreateTool(int toolID, string categoryCode, string description, string manufacturer, string status = "I")
        {
            return new Tool
            {
                toolID = toolID,
                categoryCode = categoryCode,
                toolDescription = description,
                toolManufacturer = manufacturer,
                toolStatus = status
            };
        }
    }
}
