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
        using (Lab13Entities myEntities = new Lab13Entities())
        {
            // Get the data for the gridview      
            var sections = from s in myEntities.Sections
                           join r in myEntities.Registrations on s.SectionID equals r.SectionID
                           group s by s.Name into grouped
                           select new
                           {
                               SectionName = grouped.Key,
                               StudentCount = grouped.Count()
                           };
            
            // Load the listview with the data.
            grvSections.DataSource = sections.ToList();
            grvSections.DataBind();

            // Set the record count into the label
            lblRecordsFound.Text = string.Format("Records Found: {0}", sections.Count());

        }
    }
}