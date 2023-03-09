<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Selling.aspx.cs" Inherits="OnlineBookShopTuto.Views.Seller.Selling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class ="container-fluid">
        <div class="row">

        </div>
        <div class="row">
            <div class="col-md-5">
                <div class="row">
                    <div class="col">
                         <div class="mt-3">
                          <label for="" class="form-label text-success"> Book Name </label>
                          <input type ="text" placeholder="Your email here" autocomplete="off" runat="server" class="form-control"/>
                         </div>
                    </div>
                    <div class="col">
                         <div class="mt-3">
                          <label for="" class="form-label text-success"> Book Price </label>
                          <input type ="text" placeholder="Your email here" autocomplete="off" runat="server" class="form-control" />
                         </div>
                    </div>
                </div>
                 <div class="row">
                    <div class="col">
                         <div class="mt-3">
                          <label for="" class="form-label text-success"> Book Name </label>
                          <input type ="text" placeholder="Your email here" autocomplete="off" runat="server" class="form-control" />
                         </div>
                    </div>
                    <div class="col">
                         <div class="mt-3">
                          <label for="" class="form-label text-success"> Book Price </label>
                          <input type ="text" placeholder="Your email here" autocomplete="off" runat="server" class="form-control" />
                         </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
               
            </div>
        </div>
    </div>
</asp:Content>
