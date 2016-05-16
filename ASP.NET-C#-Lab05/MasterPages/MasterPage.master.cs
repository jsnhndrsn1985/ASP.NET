using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPages_MasterPage : System.Web.UI.MasterPage
{ //If the page is opened for the first time it will save the cookie.
    #region Event Routines
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string selectedTheme = Page.Theme;
            HttpCookie preferredTheme = Request.Cookies.Get("PreferredTheme");
            if (preferredTheme != null)
            {
                selectedTheme = preferredTheme.Value;
            }
            if (!string.IsNullOrEmpty(selectedTheme))
            {
                ListItem item = ddlTheme.Items.FindByValue(selectedTheme);
                if (item != null)
                {
                    item.Selected = true;
                }
            }
        }
    }
    #endregion
    //cookie - 3 Month Expiration
    protected void ddlTheme_SelectedIndexChanged(object sender, EventArgs e)
    {
        HttpCookie preferredTheme = new HttpCookie("PreferredTheme");
        preferredTheme.Expires = DateTime.Now.AddMonths(3);
        preferredTheme.Value = ddlTheme.SelectedValue;
        Response.Cookies.Add(preferredTheme);
        Response.Redirect(Request.Url.ToString());
             
    }

    #region Menu Managment
    //Changes the background color of the selected page in the menu.
    public void SetCurrentMenuItem(string itemName)
    {
        lnkMain.CssClass = "MenuLink";
        lnkSections.CssClass = "MenuLink";

        switch (itemName)
        {
            case "Main":
                lnkMain.CssClass = "MenuLinkSelected";
                break;

            case "Sections":
                lnkSections.CssClass = "MenuLinkSelected";
                break;

            default:
                break;             
        }
    }
    #endregion

    
}
