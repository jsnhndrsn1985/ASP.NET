using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_Sections_SectionsEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadSections();
    }

    private void LoadSections()
    {
        using (Lab12Entities myEntities = new Lab12Entities())
        {

            // Code your LINQ Statment here then uncomment the lines below
            var sections = from s in myEntities.Sections
                           join e in myEntities.Registrations on s.SectionID equals e.SectionID
                           group s by s.Name into e
                           select new {SectionName = e.Key, StudentCount = e.Count() };



            //// Load the listview with the data.
            grvSections.DataSource = sections.ToList();
            grvSections.DataBind();

            //// Set the record count into the label
            lblRecordsFound.Text = string.Format("Records Found: {0}", sections.Count());

        }
    }
}