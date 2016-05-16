<%@ Page Title="Lab05" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Sections.aspx.cs" Inherits="Sections" %>
<%@ MasterType VirtualPath ="~/MasterPages/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Header" Runat="Server">
    <span class="Headline">Welcome to the Attendance System</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" Runat="Server">
    <div class="MainBodySections">
    <p>
        <asp:Label ID="Label3" runat="server" Text="Section Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="130px"></asp:TextBox>
        <asp:Button ID="Button1" CssClass="Button" runat="server" Text="Add" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label4" CssClass="LabelUp" runat="server" Text="Sections"></asp:Label>
        
        <asp:ListBox ID="ListBox1" CssClass="ListBox" runat="server" Height="222px" Width="130px" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
        <asp:Button ID="Button2" CssClass="Button" runat="server" Text="Remove"  Enabled="False" OnClick="Button2_Click"/>

    </p>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
    Sections
</asp:Content>

