using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        RegisterView.Visible = true;

    }


    protected void RegisterView_ModeChanged(object sender, EventArgs e)
    {
        RegisterView.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["username"] = LoginText.Text;
        Server.Transfer("Nim.aspx", true);
    }
}