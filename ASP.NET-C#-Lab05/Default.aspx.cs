using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : BasePage
{// sets the background of the selected menu item.
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.SetCurrentMenuItem("Main");
    }
}