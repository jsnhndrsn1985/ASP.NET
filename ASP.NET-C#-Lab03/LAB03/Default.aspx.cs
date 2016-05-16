using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace LAB03
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // This Line will set the preset date and time in the label.
            Label1.Text = DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Copy the textbox into Label2 when the user clicks on this button.
            Label2.Text = "You entered:  " + TextBox1.Text;
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {   //renamed CheckBoxList1_SelectedIndexChanged to UpdateDays.
            UpdateDays();
        }
        //refactored method
        private void UpdateDays()
        {
            //Setting the Label4 text to clear each time a new checkbox is selected.
            Label4.Text = "";
            //This look will run each time a check box is selected.
            foreach (ListItem item in CheckBoxList1.Items)
            {   //checking if box is selected
                if (item.Selected == true)
                {   //if selected the item text is added to Label4
                    Label4.Text += item.Text + "<br />";
                }

            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
            //A loop to select all the checkboxes.
            foreach (ListItem item in CheckBoxList1.Items)
            {
                item.Selected = true;
                // UpdateDays method will allow this loop to update Label4 when the image is clicked.
                UpdateDays();
            }
        }
    }
}