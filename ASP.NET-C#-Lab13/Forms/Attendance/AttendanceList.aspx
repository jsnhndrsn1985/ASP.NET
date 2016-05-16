<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AttendanceList.aspx.cs" Inherits="Forms_Attendance_AttendanceList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <h2>Students List</h2>
    <table border="0">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Student"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlStudent" AutoPostBack="true" runat="server" Width="150px" OnSelectedIndexChanged="ddlStudent_SelectedIndexChanged"></asp:DropDownList>
                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged"  />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblRecordsFound" runat="server" Text="Records Found: X"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="grvAttendence" AutoGenerateColumns="false" runat="server" OnRowDataBound="grvAttendence_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="Date" DataFormatString="{0:ddd MM/dd/yyyy}" HeaderText="Date" ItemStyle-Width="150px" />
                        <asp:BoundField DataField="Attendance" HeaderText="Attendance" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="180px" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

