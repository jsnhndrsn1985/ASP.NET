using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_Attendance_AttendanceTOC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTitle.Text = "Attendance Table of Contents";
    }
    protected void imgEdit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AttendanceEdit.aspx");

    }
    protected void imgList_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AttendanceList.aspx");
    }
    protected void hypEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("AttendanceEdit.aspx");

    }
    protected void hypList_Click(object sender, EventArgs e)
    {
        Response.Redirect("AttendanceList.aspx");

    }
}