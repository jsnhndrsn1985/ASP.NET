<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="StudentsEdit.aspx.cs" Inherits="Forms_Students_StudentsEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <h2>Students Edit</h2>
    <p>
        <asp:GridView ID="GridView1" HeaderStyle-BackColor="#99FF66" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="EntityDataSource1">
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="ScholarShip" HeaderText="ScholarShip" SortExpression="ScholarShip" />
                <asp:BoundField DataField="Enrolled" HeaderText="Enrolled" SortExpression="Enrolled" />
                <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Lab12Entities" DefaultContainerName="Lab12Entities" EnableFlattening="False" EntitySetName="Students">
        </asp:EntityDataSource>
    </p>
</asp:Content>

