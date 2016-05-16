using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        

        if (txtEmail.Text != "" && txtPassword.Text != "")
        {
            using (AttendanceModel.AttendanceEntities myEntities = new AttendanceModel.AttendanceEntities())
            {
                
                var user = from user1 in myEntities.AppUsers
                           where user1.EMail == txtEmail.Text && user1.Password == txtPassword.Text
                           select user1;


                if (user.Count() == 1)
                {
                    System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txtEmail.Text, true);
                }
                else 
                {
                    lblCantLogIn.Visible = true;
                   
                    ViewState["TimeOfFailedLogin"] = DateTime.Now.ToString();
                }
            }
        }
       

    }
}