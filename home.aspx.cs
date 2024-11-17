using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Accounts
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] == null)
            {
                Response.Redirect("login.aspx");
            }

            using (AccountEntities db = new AccountEntities())
            {
                var lesson = db.Getlesson().ToList();
                GV1.DataSource = lesson;
                GV1.DataBind();
            }
        }
    }
}