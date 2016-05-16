using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = System.DateTime.Now.ToString();
        System.Threading.Thread.Sleep(2000);
        Label2.Text = System.DateTime.Now.ToString();
    }
}