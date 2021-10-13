﻿<%@ Page Title="Test" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Campingplads.Test" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
        Launch demo modal
    </button>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div id="mapid"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        
    </script>

    <div class="mb-3">
        <asp:Label ID="testLabel" CssClass="form-label" runat="server">Email</asp:Label>
        <asp:Label ID="testLabel2" CssClass="form-label" runat="server">Yeet</asp:Label>
        <!--<asp:RequiredFieldValidator ControlToValidate="mailTextBox" ErrorMessage="Required" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ErrorMessage="Invalid email." ControlToValidate="mailTextBox" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />-->
        <asp:TextBox AutoCompleteType="Email" CssClass="form-control" ID="mailTextBox" runat="server"></asp:TextBox>
    </div>
    <asp:Button Text="Submit" ID="button1" OnClick="Button1_Click" CssClass="form-control btn btn-primary" runat="server" />
</asp:Content>

