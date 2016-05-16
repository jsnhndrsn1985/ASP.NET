using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_Students_StudentsTOC : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTitle.Text = "Students Table of Contents";
    }

    protected void imgEdit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("StudentsEdit.aspx");
    }

    protected void imgList_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("StudentsList.aspx");
    }

    protected void hypEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentsEdit.aspx");
    }

    protected void hypList_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentsList.aspx");
    }
}