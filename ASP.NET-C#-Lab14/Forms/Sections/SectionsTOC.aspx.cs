using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_Sections_SectionsTOC : System.Web.UI.Page

{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTitle.Text = "Sections Table of Contents";
    }

    protected void imgEdit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SectionsEdit.aspx");
    }

    protected void imgList_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SectionsList.aspx");
    }

    protected void hypEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("SectionsEdit.aspx");
    }

    protected void hypList_Click(object sender, EventArgs e)
    {
        Response.Redirect("SectionsList.aspx");
    }
}