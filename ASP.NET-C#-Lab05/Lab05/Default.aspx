<%@ Page Title="Lab05" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ MasterType VirtualPath ="~/MasterPages/MasterPage.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Header" Runat="Server">
    <span class="Headline">Welcome to the Attendance System</span>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Body" Runat="Server">
    <div class="DefaultMainArea">
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Footer" Runat="Server">
    <asp:Label ID="Label1" runat="server" text="Main"></asp:Label>
</asp:Content>

