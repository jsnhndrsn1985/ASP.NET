using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_Attendance_AttendanceList : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            LoadStudents();
        }
    }
    /// <summary>
    /// Respond to the user changing the student in the dropdown.
    /// </summary>
    protected void ddlStudent_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadClassMeetings(int.Parse(ddlStudent.SelectedValue), false);
    }





    private void LoadStudents()
    {
        // First time in, load the dropdown with students
        using (Lab13Entities myEntities = new Lab13Entities())
        {
            // Set the studentSelect object with the results of the LINQ query
            var studentSelect = from student in myEntities.Students
                                orderby student.LastName
                                select new
                                {
                                    ID = student.StudentID,
                                    Name = student.LastName + ", " + student.FirstName
                                };



            //  Load the dropdown with the query results.
            ddlStudent.DataSource = studentSelect.ToList();
            // Specify which data columns show up in the dropdown
            ddlStudent.DataValueField = "ID";
            ddlStudent.DataTextField = "Name";
            ddlStudent.DataBind();
            // Preselect the first entry in the dropdown.
            ddlStudent.SelectedIndex = 0;

            // Load the listview with the first student in the dropdown.
            LoadClassMeetings(int.Parse(ddlStudent.SelectedValue), false);
        }
    }


    /// <summary>
    /// Load the ListView with the student passed
    /// </summary>
    /// <param name="studentID"></param>
    private void LoadClassMeetings(int studentID, bool onlyUnexcused)
    {

        using (Lab13Entities myEntities = new Lab13Entities())
        {

            // Get the data for the listview, filtering on the studentID and the type of attendance
            // The query need to join ClassMeetings to Calendars and ClassMeetings to Attendences
            var classMeeting = from m in myEntities.ClassMeetings
                               join c in myEntities.Calendars on m.CalendarID equals c.CalendarID
                               join a in myEntities.Attendances on m.AttendanceID equals a.AttendanceID
                               where m.StudentID == studentID
                               orderby c.Date
                               select new
                               {
                                   Date = c.Date,
                                   Attendance = a.AttendanceID
                               };
            


            // Load the listview with the data.
            grvAttendence.DataSource = classMeeting.ToList();
            grvAttendence.DataBind();

            // Set the record count into the label
            lblRecordsFound.Text = string.Format("Records Found: {0}", classMeeting.Count());

        }


    }

 
    /// <summary>
    /// Called for each row added to the GridView
    /// </summary>
    protected void grvAttendence_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        

        string attendanceID = e.Row.Cells[1].Text;


        if (e.Row.Cells[1].Text == "1") // If status ID is 1
        {
            e.Row.Cells[1].Text = "<img src='http://localhost:62384/App_Themes/Normal/Images/Present16.png' />";
        }
        else if (e.Row.Cells[1].Text == "2")
        {
            e.Row.Cells[1].Text = "<img src='http://localhost:62384/App_Themes/Normal/Images/Absent16.png' />"; 
        }
        else if (e.Row.Cells[1].Text == "3")
        {
            e.Row.Cells[1].Text = "<img src='http://localhost:62384/App_Themes/Normal/Images/Unexcused16.png' />";
        }
    }


    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        LoadClassMeetings(int.Parse(ddlStudent.SelectedValue), true);
    }
}