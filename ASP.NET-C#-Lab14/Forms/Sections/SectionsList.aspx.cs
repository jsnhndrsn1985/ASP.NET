using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_Sections_SectionsList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadSections();
    }

    private void LoadSections()
    {
        using (AttendanceModel.AttendanceEntities myEntities = new AttendanceModel.AttendanceEntities())
        {

            // Get the data for the listview, filtering on the studentID and the type of attendance
            var sections = from section in myEntities.Sections
                           select new 
                           { 
                               Section = section.Name, 
                               Hours = section.CreditHours 
                           };

            // Load the listview with the data.
            grvSections.DataSource = sections.ToList();
            grvSections.DataBind();

            // Set the record count into the label
            lblRecordsFound.Text = string.Format("Records Found: {0}", sections.Count());

        }
    }
}