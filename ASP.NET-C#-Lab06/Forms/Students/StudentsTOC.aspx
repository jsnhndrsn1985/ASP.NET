<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="StudentsTOC.aspx.cs" Inherits="Forms_Students_StudentsTOC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">
    
    <br />
    
    <div>
        <table>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/App_Themes/Normal/Images/Student.png"/><asp:LinkButton ID="StudentTableButton" runat="server" OnClick="StudentTableButton_Click">Students Table of Contents</asp:LinkButton> 
                    <br />
                    <br />  
                </td>
            </tr>
            <tr>
                <td>
                     <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/App_Themes/Normal/Images/Edit.png" /><asp:LinkButton ID="StudentEditButton" runat="server" OnClick="StudentEditButton_Click">Edit Students</asp:LinkButton> 
                </td>
            </tr>
            <tr>
                <td>
                     <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/App_Themes/Normal/Images/List.png" /><asp:LinkButton ID="StudentListButton" runat="server" OnClick="StudentListButton_Click">View List of Students</asp:LinkButton> 
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

