<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="StudentsList.aspx.cs" Inherits="Forms_Students_StudentsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <h2>Students List</h2>
    <asp:Label ID="lblRecordsFound" runat="server" Text=""></asp:Label>
    <br />
    <br />
    <asp:GridView ID="grvStudents" AutoGenerateColumns="false" runat="server" >
        <Columns>
            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
            <asp:BoundField DataField="ScholarShip" HeaderText="Scholarship" DataFormatString="{0:c}" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" />
            <asp:BoundField DataField="Enrolled" HeaderText="Enrolled" DataFormatString="{0:d}" />
        </Columns>
    </asp:GridView>
</asp:Content>

