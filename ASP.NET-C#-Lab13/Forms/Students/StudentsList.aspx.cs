using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Forms_Students_StudentsList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadStudents();
    }

    private void LoadStudents()
    {
        using (Lab13Entities myEntities = new Lab13Entities())
        {

            // Get the data for the listview, filtering on the studentID and the type of attendance
            var students = from student in myEntities.Students
                           orderby student.LastName, student.FirstName
                           select student;
                           
            // Load the listview with the data.
            grvStudents.DataSource = students.ToList();
            grvStudents.DataBind();

            // Set the record count into the label
            lblRecordsFound.Text = string.Format("Records Found: {0}", students.Count());

        }
    }
}