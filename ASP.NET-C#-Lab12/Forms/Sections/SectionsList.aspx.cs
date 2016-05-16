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
        using (Lab12Entities myEntities = new Lab12Entities())
        {

            // Code your LINQ Statment here then uncomment the lines below
            var sections = from sl in myEntities.Sections
                           
                           select new {Section = sl.Name, Hours = sl.CreditHours};



           //// Load the listview with the data.
           grvSections.DataSource = sections.ToList();
           grvSections.DataBind();

            //// Set the record count into the label
           lblRecordsFound.Text = string.Format("Records Found: {0}", sections.Count());

        }
    }
}