using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookShopTuto.Views
{
    public partial class login : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
        }
        public static string UName = "";
        public static int User;
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if(UnameTb.Value == "" || PasswordTb.Value == "")
            {
                ErrMsg.Text = "Missing Data!!!";
            }
            else if( UnameTb.Value == "Admin@gmail.com" && PasswordTb.Value == "Password")
            {
                Response.Redirect("Admin/Books.aspx");
            }
            else
            {
                string Query = "Select * from SellerTbl where SelEmail = '{0}' and SelPass = '{1}'";
                Query = string.Format(Query, UnameTb.Value, PasswordTb.Value);
                DataTable dt = Con.GetData(Query);
                if(dt.Rows.Count == 0)
                {
                    Response.Redirect("Admin/Book.aspx");
                }
                else
                {
                    UName = UnameTb.Value;
                    User = Convert.ToInt32(dt.Rows[0][0].ToString());
                    Response.Redirect("Seller/Selling.aspx");
                }
            }
        }
    }
}