<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="OnlineBookShopTuto.Views.Admin.Seller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
    <div class="row">
        <div class="col"> <h3 class="text-center"> Manage Sellers  </h3></div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                <label for="" class="form-label text-success"> Seller Name </label>
                <input type ="text" placeholder="Name" autocomplete="off" runat="server" id="SNameTb" class="form-control"/>
            </div>
             <div class="mb-3">
                <label for="" class="form-label text-success"> Seller Email </label>
                <input type ="email" placeholder="Seller's Email" autocomplete="off" runat="server" id="EmailTb" class="form-control"/>
            </div>
            <div class="mb-3">
                <label for="" class="form-label text-success"> Seller Phone </label>
                <input type ="text" placeholder="Phone Number" autocomplete="off" runat="server" id="PhoneTb" class="form-control"/>
            </div>
            <div class="mb-3">
                <label for="" class="form-label text-success"> Seller Password </label>
                <input type ="text" placeholder="Password" autocomplete="off" runat="server" id="AddressTb" class="form-control"/>
            </div>
            <div class="row">
                <asp:Label runat="server" ID="ErrMsg" CssClass="text-danger text-center"></asp:Label>
                <div class="col d-grid"><asp:Button Text="Update" runat="server" class="btn-warning btn-block btn" ID="EditBtn" OnClick="EditBtn_Click"/></div>
                <div class="col d-grid"><asp:Button Text="Save" runat="server" class="btn-success btn-block btn" ID="SaveBtn" OnClick="SaveBtn_Click"/></div>
                <div class="col d-grid"><asp:Button Text="Delete" runat="server" class="btn-danger btn-block btn" ID="DeleteBtn" OnClick="DeleteBtn_Click"/></div>
            </div>
            </div>           
        <div class="col-md-8">
             <asp:GridView ID="SellerList" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="SellerList_SelectedIndexChanged"  >
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
</asp:Content>
