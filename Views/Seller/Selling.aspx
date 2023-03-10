<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Selling.aspx.cs" Inherits="OnlineBookShopTuto.Views.Seller.Selling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class ="container-fluid">
        <div class="row">
        </div>
        <div class="row">
            <div class="col-md-5">
                <h3 class="text-center" style="color:teal;">Book Details</h3>
                <div class="row">
                    <div class="col">
                         <div class="mt-3">
                          <label for="" class="form-label text-success"> Book Name </label>
                          <input type ="text" placeholder="Book's" autocomplete="off" runat="server" class="form-control" id="BNameTb"/>
                         </div>
                    </div>
                    <div class="col">
                         <div class="mt-3">
                          <label for="" class="form-label text-success"> Book Price </label>
                          <input type ="text" placeholder="Price" autocomplete="off" runat="server" class="form-control" id="BPriceTb" />
                         </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col">
                         <div class="mt-3">
                          <label for="" class="form-label text-success"> Quantity </label>
                          <input type ="text" placeholder="Quantity" autocomplete="off" runat="server" class="form-control" id="BQtyTb" />
                         </div>
                    </div>
                    <div class="col">
                         <div class="mt-3">
                          <label for="" class="form-label text-success">Billing Date </label>
                          <input type ="date" runat="server" class="form-control" id="DateTb" />
                         </div>
                        </div>
                        <div class="row mt-3 mb-3">
                            <div class="col d-grid">
                                <asp:Button Text="Add To Bill" ID="AddToBillBtn" runat="server" BackColor="teal" class="btn-warning btn-block btn" OnClick="AddToBillBtn_Click" />
                            </div>                      
                    </div>
                </div>
                <div class="row mt-5">
                <h4 class="text-center" style="color:teal;">Book List</h4>
                <div class="col">
                <asp:GridView ID="SellingsList" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="SellingsList_SelectedIndexChanged" >
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="teal" Font-Bold="false" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
               <h4 class="text-center" style="color:teal;">Clinet's Bill</h4>
                <div class="col">
                <asp:GridView ID="BillsList" runat="server" class="table" CellPadding="3" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"  >
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
                    <div class="row">
                    <asp:Label runat="server" ID="GrdTotalTb" CssClass="text-danger text-center"></asp:Label>
                  <div class="d-grid">
                    <asp:Button Text="Print" ID="PrintBtn" runat="server" BackColor="teal" class="btn-warning btn-block btn" OnClick="PrintBtn_Click" />
                 </div>
                    </div>
            </div>
        </div>
    </div>
</asp:Content>
