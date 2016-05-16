<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="SectionsTOC.aspx.cs" Inherits="Forms_Sections_SectionsTOC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <asp:Panel ID="Panel1" CssClass="TOCPanel" runat="server">
        <div>
            <asp:Image ID="imgTitle" runat="server" ImageUrl="~/App_Themes/Normal/Images/Section.png" />
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
                    <asp:LinkButton ID="hypEdit" Text="Edit Sections" runat="server" OnClick="hypEdit_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:ImageButton ID="imgList" SkinID="ImageList" runat="server" OnClick="imgList_Click" />

                </td>
                <td>
                    <asp:LinkButton ID="hypList" Text="View List of Sections" runat="server" OnClick="hypList_Click" />
                </td>

            </tr>
        </table>
    </asp:Panel>

</asp:Content>

