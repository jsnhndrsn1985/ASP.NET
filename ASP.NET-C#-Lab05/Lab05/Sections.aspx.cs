using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sections : BasePage
{// if the page in loaded change menuitem back ground color && after remove event
    //diable button.
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.SetCurrentMenuItem("Sections");
        Button2.Enabled = false;
    }

    //adds info from text box to the listbox.
    protected void Button1_Click(object sender, EventArgs e)
    {
        string tapeEntry = "";
        tapeEntry = TextBox1.Text;
        ListBox1.Items.Add(tapeEntry);
    }


    //if the list item is selected it can be removed.
    protected void Button2_Click(object sender, EventArgs e)
    {
        List<ListItem> itemsRemove = new List<ListItem>();

        foreach (ListItem listItem in ListBox1.Items)
        {
            if (listItem.Selected)
                itemsRemove.Add(listItem);
                
        }

        foreach (ListItem listItem in itemsRemove)
        {
            ListBox1.Items.Remove(listItem);
        }

        
    }
    //If an item is selected it enabled the remove button.
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        foreach (ListItem item in ListBox1.Items)
        {
            if (item.Selected)
            {
                Button2.Enabled = true;
            }
        }
    }


}
