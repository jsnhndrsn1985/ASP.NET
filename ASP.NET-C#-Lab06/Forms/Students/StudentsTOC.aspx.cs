using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_Students_StudentsTOC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void StudentEditButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/Forms/Students/StudentsEdit.aspx");
    }

     protected void StudentTableButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/Forms/Students/StudentsTOC.aspx");
    }

    protected void StudentListButton_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/Forms/Students/StudentsList.aspx");
    }
} 