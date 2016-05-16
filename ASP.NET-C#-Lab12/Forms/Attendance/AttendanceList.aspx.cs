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
        LoadClassMeetings(int.Parse(ddlStudent.SelectedValue));
    }



    private void LoadStudents()
    {

        using (Lab12Entities myEntities = new Lab12Entities())
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
            LoadClassMeetings(int.Parse(ddlStudent.SelectedValue));
        }
    }



    /// <summary>
    /// Load the ListView with the student passed
    /// </summary>
    /// <param name="studentID"></param>
    private void LoadClassMeetings(int studentID)
    {

        using (Lab12Entities myEntities = new Lab12Entities())
        {

            // Code your LINQ Statment here then uncomment the lines below
            var classMeeting = from cm in myEntities.ClassMeetings
                               join calendar in myEntities.Calendars on cm.CalendarID equals calendar.CalendarID
                               join name in myEntities.Attendances on cm.AttendanceID equals name.AttendanceID
                               where cm.StudentID == studentID
                               select new {calendar.Date, Attendance = name.Name};

            //// Load the listview with the data.
            grvAttendance.DataSource = classMeeting.ToList();
            grvAttendance.DataBind();

            //// Set the record count into the label
            lblRecordsFound.Text = string.Format("Records Found: {0}", classMeeting.Count());
        }


    }

}