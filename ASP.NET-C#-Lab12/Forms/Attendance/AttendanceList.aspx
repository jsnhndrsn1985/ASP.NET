<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AttendanceList.aspx.cs" Inherits="Forms_Attendance_AttendanceList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">
        <h2>Students List</h2>
    <table border="0">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Student"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlStudent" AutoPostBack="true" runat="server" Width="150px" OnSelectedIndexChanged="ddlStudent_SelectedIndexChanged"></asp:DropDownList>
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
                <asp:GridView ID="grvAttendance" AutoGenerateColumns="false" runat="server"  >
                    <Columns>
                        <asp:BoundField DataField="Date" DataFormatString="{0:ddd MM/dd/yyyy}" HeaderText="Date" HeaderStyle-BackColor="#99FF66" ItemStyle-Width="150px" />
                        <asp:BoundField DataField="Attendance" HeaderText="Attendance" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#99FF66" ItemStyle-Width="180px" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

