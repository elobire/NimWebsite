using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Nim : System.Web.UI.Page
{
    private int bag1 = 10;
    private int bag2 = 10;
    private int bag3 = 10;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = (string)Session["username"];
        Bag1Label.Text = "Bag 1 has: " + bag1.ToString() + " tokens remaining";
        Bag2Label.Text = "Bag 2 has: " + bag2.ToString() + " tokens remaining";
        Bag3Label.Text = "Bag 3 has: " + bag3.ToString() + " tokens remaining";

      
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList1.Items.Add("test");

    }
    protected void B1Button_Click(object sender, EventArgs e)
    {
        DropDownList1.Visible = true;
       // DropDownList1.Items.Add("test");
        for (int i = 1; i <= bag1; i++)
        {
        DropDownList1.Items.Insert(i-1, new ListItem(i.ToString(), ""));

        }
    }
    protected void ConfirmButton_Click(object sender, EventArgs e)
    {
        bag1 = bag1 - Int32.Parse(DropDownList1.SelectedItem.Text);
        Label1.Text = (String)DropDownList1.SelectedItem.Value;
        Bag1Label.Text = "Bag 1 has: " + bag1.ToString() + " tokens remaining";
    }
}