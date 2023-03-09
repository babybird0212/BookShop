using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookShopTuto.Views.Admin
{
    public partial class Seller : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowSeller();
        }
        private void ShowSeller()
        {
            string Query = "Select * from SellerTbl";
            SellerList.DataSource = Con.GetData(Query);
            SellerList.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SNameTb.Value == "" || EmailTb.Value == "" || PhoneTb.Value == "" || AddressTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string SName = SNameTb.Value;
                    string SEmail = EmailTb.Value;
                    string SPhone = PhoneTb.Value;
                    string SAdd = AddressTb.Value;

                    string Query = "insert into SellerTbl values ('{0}', '{1}','{2}','{3}')";
                    Query = string.Format(Query, SName, SEmail, SPhone, SAdd);
                    Con.SetData(Query);
                    ShowSeller();
                    ErrMsg.Text = "Seller Inserted !!";
                    SNameTb.Value = "";
                    EmailTb.Value = "";
                    PhoneTb.Value = "";
                    AddressTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }
        int key = 0;
        protected void SellerList_SelectedIndexChanged(object sender, EventArgs e)
        {
            SNameTb.Value = SellerList.SelectedRow.Cells[2].Text;
            EmailTb.Value = SellerList.SelectedRow.Cells[3].Text;
            PhoneTb.Value = SellerList.SelectedRow.Cells[4].Text;
            AddressTb.Value = SellerList.SelectedRow.Cells[5].Text;
            if (SNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(SellerList.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SNameTb.Value == "" || EmailTb.Value == "" || PhoneTb.Value == "" || AddressTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data !!";
                }
                else
                {
                    string SName = SNameTb.Value;
                    string SEmail = EmailTb.Value;
                    string SPhone = PhoneTb.Value;
                    string SAdd = AddressTb.Value;

                    string Query = "update SellerTBL set SelName = '{0}',SelEmail = '{1}',SelPhone = '{2}', SelAddress = '{3}' where SelId = {4}";
                    Query = string.Format(Query, SellerList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowSeller();
                    ErrMsg.Text = "Seller Updated!!";
                    SNameTb.Value = "";
                    EmailTb.Value = "";
                    PhoneTb.Value = "";
                    AddressTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SNameTb.Value == "" || EmailTb.Value == "" || PhoneTb.Value == "" || AddressTb.Value == "")
                {
                    ErrMsg.Text = "Select an Seller!!";
                }
                else
                {
                    string SName = SNameTb.Value;
                    string SEmail = EmailTb.Value;
                    string SPhone = PhoneTb.Value;
                    string SAdd = AddressTb.Value;

                    string Query = "delete from  SellerTbl  where SelId = {0}";
                    Query = string.Format(Query, SellerList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowSeller();
                    ErrMsg.Text = "Seller Deleted!!";
                    SNameTb.Value = "";
                    EmailTb.Value = "";
                    PhoneTb.Value = "";
                    AddressTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }
    }
}