using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{

    SqlConnection connection = null;
    SqlCommand cmd = null;
    string sql = null;
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {

        if(!IsPostBack)
        {
            log_in_pannel.Visible = true;
            register_pannel.Visible = false;
        }
    }

    protected void register_btn_Click(object sender, EventArgs e)
    {
        if(db.CheckUserExist(user_textbox.Text))
        {
            register_alert.Text = user_textbox.Text + "已存在";
        }
        else if(IsValid)
        {
            db.InsertTable(user_textbox.Text, passwd_textbox.Text,name_textbox.Text);
            Response.Write("<script>alert('注册成功.');</script>");
            register_pannel.Visible = false;
            log_in_pannel.Visible = true;
            login_user.Text = user_textbox.Text;
            login_passwd.Text = passwd_textbox.Text;
        }
    }

    protected void login_btn_Click(object sender, EventArgs e)
    {
        if (db.CheckLogin(login_user.Text,login_passwd.Text))
        {
            //Session["User"] = login_user.Text;
            Table t  = db.GetUser(login_user.Text);
            Session["User"] = t;
            if (t.Id < 20) Session["Admin"] = true;
            Response.Redirect("./Home.aspx");
        }
        else
        {
            login_alert.Text = "账号或密码错误!";
        }

    }

    protected void register_btn_Click1(object sender, EventArgs e)
    {
        register_pannel.Visible = true;
        log_in_pannel.Visible = false;

        user_textbox.Text = "";
        passwd_textbox.Text = "";
        name_textbox.Text = "";
    }

    protected void back_Click(object sender, EventArgs e)
    {
        log_in_pannel.Visible = true;
        register_pannel.Visible = false;
    }
}