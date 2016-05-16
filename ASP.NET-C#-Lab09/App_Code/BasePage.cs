using System;
using System.Web;

/// <summary>
/// Base page for all web forms
/// </summary>
public class BasePage : System.Web.UI.Page
{

    #region Event Routines

    private void Page_PreInit(object sender, EventArgs e)
    {
        // Try to fetch the cookie with the theme
        HttpCookie preferredTheme = Request.Cookies.Get("PreferredTheme");

        // Was there a cookie?
        if (preferredTheme != null)
        {
            if (preferredTheme.Value != "Normal")
                preferredTheme.Value = "Normal";
            Page.Theme = preferredTheme.Value;
        }
        else
            Page.Theme = "Normal";

    }

    private void Page_PreRender(object sender, EventArgs e)
    {
        // Because of short-circuiting, it would be better to checked IsNullOrEmpty first.
        //if (this.Title == "Untitled Page" || string.IsNullOrEmpty(this.Title))
        //{
        //    throw new Exception("Page title cannot be \"Untitled Page\" or an empty string.");
        //}
    }

    #endregion

    #region Constructor
    /// <summary>
    /// Constructor sets up event routines
    /// </summary>
    public BasePage()
    {
        this.PreRender += new EventHandler(Page_PreRender);
        this.PreInit += new EventHandler(Page_PreInit);
    }
    #endregion

}