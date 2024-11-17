using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Accounts
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if (IsPostBack) return;

            using (AccountEntities db = new AccountEntities())
            {
                var subject = db.Getsubject().ToList();
                ddlsubjectname.DataSource = subject;
                ddlsubjectname.DataTextField = "subjectName";
                ddlsubjectname.DataValueField = "subjectID";
                ddlsubjectname.DataBind();
                ddlsubjectname.Items.Insert(0, "Select Subject");
            }
        }

        protected void btn_upload_Click(object sender, EventArgs e)
        {
            using (AccountEntities db = new AccountEntities())
            {
                tblLesson l = new tblLesson();
                l.Title = txttitle.Text;
                l.Description = txtdesc.InnerHtml;
                l.subjectID = Convert.ToInt32(ddlsubjectname.SelectedValue);
                db.tblLessons.Add(l);
                db.SaveChanges();
                lblmsg.Text = "Record enter successfully";
            }
        }

    }
}