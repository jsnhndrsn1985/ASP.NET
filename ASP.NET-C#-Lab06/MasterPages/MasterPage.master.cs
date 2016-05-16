using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            HttpCookie navigationIndex = Request.Cookies.Get("NavigationType");
            if(navigationIndex != null)
            {
                mvNavigation.ActiveViewIndex = int.Parse(navigationIndex.Value);
                ddlTheme.SelectedIndex = int.Parse(navigationIndex.Value);
            }
        }
    }

    protected void ddlTheme_SelectedIndexChanged(object sender, EventArgs e)
    {
        mvNavigation.ActiveViewIndex = ddlTheme.SelectedIndex;
        HttpCookie navigationIndex = new HttpCookie("NavigationType");
        navigationIndex.Expires = DateTime.Now.AddMonths(3);
        navigationIndex.Value = mvNavigation.ActiveViewIndex.ToString();
        Response.Cookies.Add(navigationIndex);
    }

    protected void TreeView1_TreeNodeDataBound(object sender, TreeNodeEventArgs e)
    {
        string imagePath = "~/App_Themes/" + Page.Theme + "/Images/";

        if (e.Node.Text.Contains("Home"))
        {
            e.Node.ImageUrl = imagePath + "Home.png";
        }
        else if (e.Node.Text.Contains("Sections"))
        {
            e.Node.ImageUrl = imagePath + "Section.png";
        }
        else if (e.Node.Text.Contains("Edit"))
        {
            e.Node.ImageUrl = imagePath + "Edit.png";
        }
        else if (e.Node.Text.Contains("List"))
        {
            e.Node.ImageUrl = imagePath + "List.png";
        }
        else if (e.Node.Text.Contains("Students"))
        {
            e.Node.ImageUrl = imagePath + "Student.png";
        }
        else if (e.Node.Text.Contains("Edit"))
        {
            e.Node.ImageUrl = imagePath + "Edit.png";
        }
        else if (e.Node.Text.Contains("List"))
        {
            e.Node.ImageUrl = imagePath + "List.png";
        }
        else if (e.Node.Text.Contains("Reports"))
        {
            e.Node.ImageUrl = imagePath + "Report.png";
        }
    }
}
