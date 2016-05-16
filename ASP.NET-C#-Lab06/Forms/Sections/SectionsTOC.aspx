<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="SectionsTOC.aspx.cs" Inherits="Forms_Sections_SectionsTOC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">
    
    <br />
    
    <div>
        <table>
            <tr>
                <td>
                     <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/App_Themes/Normal/Images/Section.png"/><asp:LinkButton ID="SectionsTableButton" runat="server" OnClick="SectionsTableButton_Click">Sections Table of Contents</asp:LinkButton>  
                    <br />
                    <br />  
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/App_Themes/Normal/Images/Edit.png" /><asp:LinkButton ID="SectionsEditButton" runat="server" OnClick="SectionsEditButton_Click">Edit Sections</asp:LinkButton> 
                </td>
            </tr>
            <tr>
                <td>
                     <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/App_Themes/Normal/Images/List.png" /><asp:LinkButton ID="SectionsListButton" runat="server" OnClick="SectionsListButton_Click">View List of Sections</asp:LinkButton> 
                </td>
            </tr>
        </table>
    </div>
    
</asp:Content>

