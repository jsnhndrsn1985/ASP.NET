using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPages_MasterPage : System.Web.UI.MasterPage
{

    #region Event Routines

    protected void Page_Load(object sender, EventArgs e)
    {
        //WSWeather.WeatherStatsSoapClient ws = new WSWeather.WeatherStatsSoapClient();

        //int theTemp = -1;

        //theTemp = ws.JustTheTemp();

        //lblTemp.Text = string.Format("The Current Temperature is: {0}<sup>o</sup>", theTemp);


    }


    #endregion


    protected void trvMenu_TreeNodeDataBound(object sender, TreeNodeEventArgs e)
    {
        string imagePath = "~/App_Themes/" + Page.Theme + "/Images/";

        if (e.Node.Text.Contains("Home"))
        {
            e.Node.ImageUrl = imagePath + "Home.png";
        }
        else if (e.Node.Text.Contains("Section"))
        {
            e.Node.ImageUrl = imagePath + "Section.png";
        }
        else if (e.Node.Text.Contains("Student"))
        {
            e.Node.ImageUrl = imagePath + "Student.png";
        }
        else if (e.Node.Text.Contains("Report"))
        {
            e.Node.ImageUrl = imagePath + "Report.png";
        }
        else if (e.Node.Text.Contains("Edit"))
        {
            e.Node.ImageUrl = imagePath + "Edit.png";
        }
        else if (e.Node.Text.Contains("List"))
        {
            e.Node.ImageUrl = imagePath + "List.png";
        }
    }
}
