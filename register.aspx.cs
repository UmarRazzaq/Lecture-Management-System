using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Accounts
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            } 
        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            using (AccountEntities db = new AccountEntities())
            {
                tblUser u = new tblUser();
                u.FirstName = txtfirstname.Text;
                u.LastName = txtlastname.Text;
                u.Email = txtemail.Text;
                u.Passowrd = txtpass.Text;
                db.tblUsers.Add(u);
                db.SaveChanges();
                lbl_msg.Text = "Account is created successfully!";
            }
            Response.Redirect("login.aspx");
        }
    }
}