<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="SectionsList.aspx.cs" Inherits="Forms_Sections_SectionsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <h2>Sections List</h2>
    <asp:Label ID="lblRecordsFound" runat="server" Text=""></asp:Label>
    <br />
    <br />
    <asp:GridView ID="grvSections" runat="server" Width="400px" HeaderStyle-BackColor="#99FF66"></asp:GridView>

</asp:Content>

