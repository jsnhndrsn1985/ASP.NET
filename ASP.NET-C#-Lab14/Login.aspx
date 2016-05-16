<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="E-Mail"></asp:Label><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblCantLogIn" runat="server" Text="Access denied" Visible="False">Access denied</asp:Label>
    <br />
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" /> Keep Me Logged In
    <br />
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
</asp:Content>

