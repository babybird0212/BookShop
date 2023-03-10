<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="OnlineBookShopTuto.Views.Admin.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
<div class="container-fluid">
    <div class="row">
        <div class="col"> <h3 class="text-center"> Manage Books </h3></div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                <label for="" class="form-label text-success"> Books Title </label>
                <input type ="text" id="BNameTb" placeholder="Books Title" runat="server" class="form-control"/>
            </div>
             <div class="mb-3">
                <label for="" class="form-label text-success"> Books Author </label>
                <asp:DropDownList   runat="server" id="BAuthCb" Class="form-control" ></asp:DropDownList>
            </div>
             <div class="mb-3">
                <label for="" class="form-label text-success"> Categories </label>
                <asp:DropDownList  runat="server" id="BCatCb" Class="form-control" ></asp:DropDownList>
            </div>
             <div class="mb-3">
                <label for="" class="form-label text-success"> Price </label>
                <input type ="text" id="PriceTb" placeholder="Price"  runat="server" class="form-control"/>
            </div>
             <div class="mb-3">
                <label for="" class="form-label text-success"> Quantity </label>
                <input type ="text" id="QtyTb" placeholder="Quantity"  runat="server" class="form-control"/>
            </div>         
            <div class="row">
                <asp:Label runat="server" ID="ErrMsg" CssClass="text-danger text-center"></asp:Label>
                <div class="col d-grid"><asp:Button Text="Update" runat="server" class="btn-warning btn-block btn" ID="EditBtn" OnClick="EditBtn_Click"/></div>
                <div class="col d-grid"><asp:Button Text="Add" runat="server" class="btn-success btn-block btn" ID="SaveBtn" OnClick="SaveBtn_Click"/></div>
                <div class="col d-grid"><asp:Button Text="Delete" runat="server" class="btn-danger btn-block btn" ID="DeleteBtn" OnClick="DeleteBtn_Click"/></div>
            </div>
            </div>           
        <div class="col-md-8">
            <asp:GridView ID="BooksList" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="BooksList_SelectedIndexChanged" >
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
