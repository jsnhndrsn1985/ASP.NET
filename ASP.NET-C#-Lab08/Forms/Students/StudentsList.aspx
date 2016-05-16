<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="StudentsList.aspx.cs" Inherits="Forms_Students_StudentsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Services>
    <asp:ServiceReference Path="~/Services/Students.asmx" />
        </Services>
    </asp:ScriptManagerProxy>
    Student List
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Student ID:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" OnBlur="GetStudent(this.value);" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <script type="text/javascript">
        //This function calls the web service.
        function GetStudent(studentId) {
            Students.GetName(studentId, GetNameEnd);
        }

        //This function is called asynchronously when the webservice returns.
        function GetNameEnd(result) {
            $get('<%=txtStudentName.ClientID%>').value = result;
        }
    </script>
</asp:Content>


mercurio