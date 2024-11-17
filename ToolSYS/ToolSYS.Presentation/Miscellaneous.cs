using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ToolSYS.Presentation
{
    static class Miscellaneous
    {

        public static void SetDataGridViewProperties(DataGridView dgv)
        {
            dgv.AllowUserToResizeColumns = true;
            dgv.AllowUserToAddRows = false;
            dgv.AllowUserToResizeRows = false;
            dgv.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
        }
    }
}
