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
        LoadClassMeetings(int.Parse(ddlStudent.SelectedValue), chkOnlyUnexcused.Checked);
    }
    
    private void LoadStudents()
    {
        // First time in, load the dropdown with students
        using (AttendanceModel.AttendanceEntities myEntities = new AttendanceModel.AttendanceEntities())
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
            LoadClassMeetings(int.Parse(ddlStudent.SelectedValue), chkOnlyUnexcused.Checked);
        }
    }



    /// <summary>
    /// Load the ListView with the student passed
    /// </summary>
    /// <param name="studentID"></param>
    private void LoadClassMeetings(int studentID, bool onlyUnexcused)
    {

        using (AttendanceModel.AttendanceEntities myEntities = new AttendanceModel.AttendanceEntities())
        {

            // Get the data for the listview, filtering on the studentID and the type of attendance
            // The query need to join ClassMeetings to Calendars and ClassMeetings to Attendances
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



            if (onlyUnexcused)
            {
                // Put code here to futher filter classMeeting
                classMeeting = from c in classMeeting
                               where c.Attendance == 3
                               select c;
            }


            // Load the listview with the data.
            grvAttendance.DataSource = classMeeting.ToList();
            grvAttendance.DataBind();

            // Set the record count into the label
            lblRecordsFound.Text = string.Format("Records Found: {0}", classMeeting.Count());

        }


    }

    /// <summary>
    /// When the user select the Checkbox
    /// </summary>
    protected void chkOnlyUnexcused_CheckedChanged(object sender, EventArgs e)
    {
        LoadClassMeetings(int.Parse(ddlStudent.SelectedValue), chkOnlyUnexcused.Checked);
    }

    /// <summary>
    /// Called for each row added to the GridView
    /// </summary>
    protected void grvAttendance_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        // Setup the path to the image.
        string imagePath = "../../App_Themes/" + Page.Theme + "/Images/Present16.png";

        // Get the value from the attendance column for this row
        string attendanceID = e.Row.Cells[1].Text;

        if (e.Row.RowType == DataControlRowType.DataRow)
        {            switch (attendanceID)
            {
                case "1":  // Present
                    break;

                case "2":  // Absent
                    imagePath = imagePath.Replace("Present16", "Absent16");
                    break;

                case "3":  // Unexcused Absence
                    imagePath = imagePath.Replace("Present16", "Unexcused16");
                    break;
            }

            // Put the correct image into the Attendance cell of the row
            e.Row.Cells[1].Text = string.Format("<img src='{0}'/>", imagePath);
        }
    }
}