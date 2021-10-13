<%@ Page Title="Test" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Campingplads.Test" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mb-3">
        <asp:Label ID="testLabel" CssClass="form-label" runat="server">Email</asp:Label>
        <asp:Label ID="testLabel2" CssClass="form-label" runat="server">Yeet</asp:Label>
        <!--<asp:RequiredFieldValidator ControlToValidate="mailTextBox" ErrorMessage="Required" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ErrorMessage="Invalid email." ControlToValidate="mailTextBox" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />-->
        <asp:TextBox AutoCompleteType="Email" CssClass="form-control" ID="mailTextBox" runat="server"></asp:TextBox>
    </div>
    <asp:Button Text="Submit" ID="button1" OnClick="Button1_Click" CssClass="form-control btn btn-primary" runat="server" />
</asp:Content>
