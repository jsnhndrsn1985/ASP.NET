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

    }

    protected void SectionsTableButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Forms/Sections/SectionsTOC.aspx");
    }

    protected void SectionsEditButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Forms/Sections/SectionsEdit.aspx");
    }

    protected void SectionsListButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Forms/Sections/SectionsList.aspx");
    }
}