using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Table user;
    protected void Page_Load(object sender, EventArgs e)
    {
        user = Session["User"] as Table;
        if(user!=null)
        {
            icon.ImageUrl = "~/Images/Icon/" + user.Id + ".jpg";
        }
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

    protected void save_Click(object sender, EventArgs e)
    {
        if(fileUpload.PostedFile!=null && fileUpload.PostedFile.ContentLength > 0)
        {
            string path = Server.MapPath("/Images/Icon/") + user.Id + ".jpg";
            fileUpload.SaveAs(path);
            icon.ImageUrl = "~/Images/Icon/" + user.Id + ".jpg";
        }
    }
}