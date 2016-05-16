<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="StudentsEdit.aspx.cs" Inherits="Forms_Students_StudentsEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <h2>Students Edit</h2>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1"  ></asp:GridView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=AttendanceModel.AttendanceEntities" DefaultContainerName="AttendanceModel.AttendanceEntities" EnableFlattening="False" EntitySetName="Students"></asp:EntityDataSource>
</asp:Content>

