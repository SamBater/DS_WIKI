using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void confirm_Click(object sender, EventArgs e)
    {
        DB db = new DB();
        bool ok = db.CheckLogin(Session["User"].ToString(), origin_passwd.Text);
        if(ok)
        {
            db.UpdatePasswd(Session["User"].ToString(), new_passwd.Text);
            Response.Redirect("./Home.aspx");
        }
    }
}