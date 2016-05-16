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
        using (Lab12Entities myEntities = new Lab12Entities())
        {


            // Code your LINQ Statment here then uncomment the lines below
            var students = from st in myEntities.Students
                           orderby st.LastName
                           select new {st.LastName, st.FirstName, st.ScholarShip, st.Enrolled};

            //// Load the listview with the data.
            grvStudents.DataSource = students.ToList();
            grvStudents.DataBind();

            //// Set the record count into the label
            lblRecordsFound.Text = string.Format("Records Found: {0}", students.Count());

        }
    }
}