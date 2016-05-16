<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="AttendanceTOC.aspx.cs" Inherits="Forms_Attendance_AttendanceTOC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">
      <asp:Panel ID="Panel1" CssClass="TOCPanel" runat="server">
        <div>
            <asp:Image ID="imgTitle" runat="server" ImageUrl="~/App_Themes/Normal/Images/Attendance.png" />
            &nbsp;&nbsp;
            <asp:Label ID="lblTitle" Text="Sections" CssClass="TOCHeader" runat="server"></asp:Label>
        </div>
        <br />
        <br />
        <table style="width: 100%">
            <tr>
                <td>&nbsp;</td>
                <td style="width: 30px">
                    <asp:ImageButton ID="imgEdit" SkinID="ImageEdit" runat="server" OnClick="imgEdit_Click" />

                </td>
                <td>
                    <asp:LinkButton ID="hypEdit" Text="Edit Attendance" runat="server" OnClick="hypEdit_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:ImageButton ID="imgList" SkinID="ImageList" runat="server" OnClick="imgList_Click" />

                </td>
                <td>
                    <asp:LinkButton ID="hypList" Text="View List of Attendance" runat="server" OnClick="hypList_Click" />
                </td>

            </tr>
        </table>
    </asp:Panel>
</asp:Content>

