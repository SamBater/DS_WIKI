using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int i = Int32.Parse(Request.QueryString["Id"]);
        DB db = new DB();
        Magic magic = db.GetMagic(i);

        form.DataSource = db.GetMagicObject(i);
        form.DataBind();
    }
}