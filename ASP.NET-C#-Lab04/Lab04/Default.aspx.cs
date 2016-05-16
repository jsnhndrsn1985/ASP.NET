using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    Calculator _calc = new Calculator();

    #region Event Routines
    protected void Page_Load(object sender, EventArgs e)
    {   //Displays the current time.
        lblCurrentTime.Text = DateTime.Now.ToString();

        if (!Page.IsPostBack)
        {
            ddlOperators.DataSource = _calc.GetOperators();
            ddlOperators.DataBind();
        }

    }

    protected void cmdGo_Click(object sender, ImageClickEventArgs e)
    {
        HandleCalculation();
    }

    protected void ddlOperators_SelectedIndexChanged(object sender, EventArgs e)
    {
        HandleCalculation();
    }
    #endregion


    private void HandleCalculation()
    {
        //Declarations
        string tapeEntry = "";
        double result = 0;
        double value1 = 0;
        double value2 = 0;

        value1 = double.Parse(txtValue1.Text);
        value2 = double.Parse(txtValue2.Text);

        //first call the calculator class's Calc method to
        //perform the calculation and get the result.
        result = _calc.Calc(ddlOperators.SelectedValue, value1, value2);

        //Build the string with the entry for the tape.
        //use concatination to get this form "3 + 5 = 8"
        tapeEntry = txtValue1.Text + " " + ddlOperators.SelectedValue + " " + txtValue2.Text + " = " ;

        //add the entry to the bottom of the tape.
        //Tip: Use the listbox Items.Add method.
        lstTape.Items.Add(tapeEntry + result);
        //Drop the oldest if we
        //now have more than 8 entries
        //Tip: Use the listbox Items.Count and Items.RemoveAt methods. 

        if (lstTape.Items.Count > 8)
        {
            lstTape.Items.RemoveAt(0);
        }
    }

    

}