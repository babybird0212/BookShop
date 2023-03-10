using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookShopTuto.Views.Seller
{
    public partial class Selling : System.Web.UI.Page
    {
        Models.Functions Con;
        string Seller = Login.UName;
        int Seller = Login.User;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowSelling();
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5]
                {
                    new DataColumn("ID"),
                    new DataColumn("Book"),
                    new DataColumn("Price"),
                    new DataColumn("Quantity"),
                    new DataColumn("Total")
                });
                ViewState["Bill"] = dt;
                this.BindGrid();
            }
        }
        protected void BindGrid()
        {
            BillsList.DataSource = ViewState["Bill"];
            BillsList.DataBind();
        }
        private void ShowSelling()
        {
            string Query = "Select BId as Code,BName as Name,BQty as Stock,BPrice as Price from BookTbl";
            SellingsList.DataSource = Con.GetData(Query);
            SellingsList.DataBind();
        }
        private void UpdateStock()
        {
            int NewQty;
            NewQty = Convert.ToInt32(SellingsList.SelectedRow.Cells[3].Text) - Convert.ToInt32(BQtyTb.Value);
            string Query = "update BookTbl set BQty = {0} where BId = {1}";
            Query = string.Format(Query, NewQty, SellingsList.SelectedRow.Cells[1].Text);
            Con.SetData(Query);
            ShowSelling();
        }
        int key = 0;
        int Stock = 0;
        protected void SellingsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            BNameTb.Value = SellingsList.SelectedRow.Cells[2].Text;
            Stock = Convert.ToInt32(SellingsList.SelectedRow.Cells[3].Text);
            BPriceTb.Value = SellingsList.SelectedRow.Cells[4].Text;
            if (BNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(SellingsList.SelectedRow.Cells[1].Text);
            }
        }
        private void InsertBill()
        {
            try
            {
                string Query = "insert into BillTbl value('{0}',{1},{2})";
                Query = string.Format(Query, DateTb.Value.ToString(), Seller, Convert.ToInt32(GrdTotalTb.Text));
                Con.SetData(Query);
            }
            catch (Exception Ex)
            {

            }
        }
        int Grdtotal = 0;
        int Amount;
        protected void AddToBillBtn_Click(object sender, EventArgs e)
        {
            if(BQtyTb.Value == "" || BPriceTb.Value == "" || BNameTb.Value == "")
            {

            }
            else
            {
                int total = Convert.ToInt32(BQtyTb.Value) * Convert.ToInt32(BPriceTb.Value);
                DataTable dt = (DataTable)ViewState["Bill"];
                dt.Rows.Add(BillsList.Rows.Count + 1,
                    BNameTb.Value.Trim(),
                    BPriceTb.Value.Trim(),
                    BQtyTb.Value.Trim(),
                    total);
                ViewState["Bill"] = dt;
                this.BindGrid();
                UpdateStock();

                Grdtotal = 0;
                for (int i = 0; i < BillsList.Rows.Count - 1; i++)
                {
                    Grdtotal = Grdtotal + Convert.ToInt32(BillsList.Rows[i].Cells[5].Text);
                }
                Amount = Grdtotal;
                GrdTotalTb.Text = "Rs" + Grdtotal;
                BNameTb.Value = "";
                BPriceTb.Value = "";
                BQtyTb.Value = "";
                Grdtotal = 0;
            }
            
        }

        protected void PrintBtn_Click(object sender, EventArgs e)
        {
            InsertBill();
        }
    }
}