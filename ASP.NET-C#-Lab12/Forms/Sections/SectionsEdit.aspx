<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="SectionsEdit.aspx.cs" Inherits="Forms_Sections_SectionsEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <h2>Sections Edit</h2>
    <asp:Label ID="lblRecordsFound" runat="server" Text=""></asp:Label>
    <br />
    <br />
    <asp:GridView ID="grvSections" AutoGenerateColumns="false" runat="server">
        <Columns>
            <asp:BoundField DataField="SectionName" HeaderText="Sections" HeaderStyle-BackColor="#99FF66" ItemStyle-Width="150px"/>
            <asp:BoundField DataField="StudentCount" HeaderText="Registered" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" HeaderStyle-BackColor="#99FF66" ItemStyle-Width="150px"/>
        </Columns>

    </asp:GridView>
</asp:Content>

