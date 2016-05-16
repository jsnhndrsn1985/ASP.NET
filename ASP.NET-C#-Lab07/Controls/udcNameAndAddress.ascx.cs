using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

    public partial class Controls_udcNameAndAddress : System.Web.UI.UserControl
    {
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    public void MakeVisible(bool allow)
    { 
     lblComments.Visible = allow;
     txtComments.Visible = allow;
    }

    }
