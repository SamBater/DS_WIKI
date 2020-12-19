using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    Table user;
    protected void Page_Load(object sender, EventArgs e)
    {
        user = Session["User"] as Table;
        HandleLogin();
    }

    public void Test()
    {

    }

    protected void change_passwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("./ChangePassword.aspx");
    }



    protected void system_manager_Click(object sender, EventArgs e)
    {
        Response.Redirect("./SystemManage.aspx");
    }

    protected void exit_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("./Login.aspx");
    }

    void HandleLogin()
    {
        if (Session["Admin"] != null)
        {
            welcom.Text = "Welcome back,管理员" + (Session["User"] as Table).name;
            change_passwd.Visible = false;
        }

        else if (user != null)
        {
            welcom.Text = "Welcome back," + user.name;
            system_manager.Visible = false;
        }
        else
        {
            Response.Redirect("./Login.aspx");
        }
    }
}
