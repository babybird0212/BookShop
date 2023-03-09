using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookShopTuto.Views.Admin
{
    public partial class Categories : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowCategories();
        }
        private void ShowCategories()
        {
            string Query = "Select * from CategoryTbl";
            CategoriesList.DataSource = Con.GetData(Query);
            CategoriesList.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "" || DescritionTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string CName = CatNameTb.Value;
                    string CDesc = DescritionTb.Value;

                    string Query = "insert into CategoryTbl values ('{0}', '{1}')";
                    Query = string.Format(Query, CName, CDesc);
                    Con.SetData(Query);
                    ShowCategories();
                    ErrMsg.Text = "Category Inserted !!";
                    CatNameTb.Value = "";
                    DescritionTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }
        int key = 0;

        protected void CategoriesList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CatNameTb.Value = CategoriesList.SelectedRow.Cells[2].Text;
            DescritionTb.Value = CategoriesList.SelectedRow.Cells[3].Text;
            if (CatNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(CategoriesList.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "" || DescritionTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string CName = CatNameTb.Value;
                    string CDesc = DescritionTb.Value;

                    string Query = "update CategoryTbl set CatName = '{0}', CatDescription = '{1}' where CatId = {2} ";
                    Query = string.Format(Query, CName, CDesc, CategoriesList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowCategories();
                    ErrMsg.Text = "Category Updated!!";
                    CatNameTb.Value = "";
                    DescritionTb.Value = "";
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
                if (CatNameTb.Value == "" || DescritionTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string CName = CatNameTb.Value;
                    string CDesc = DescritionTb.Value;

                    string Query = "delete from CategoryTbl  where CatId = {0}";
                    Query = string.Format(Query, CategoriesList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowCategories();
                    ErrMsg.Text = "Category Deleted!!";
                    CatNameTb.Value = "";
                    DescritionTb.Value = "";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }
        }
    }
}