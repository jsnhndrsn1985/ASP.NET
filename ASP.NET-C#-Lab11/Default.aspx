<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Section List Control</h2>
            <br />
    <table>
        <tr>
            <td>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [vw_SectionList]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
                    
                </asp:DropDownList>
                
            </td>
            <td>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">

                </asp:CheckBoxList>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">

                </asp:RadioButtonList>
            </td>
        </tr>
    </table>
    </div>
        <hr />
        <div>
            <h2>Student GridView</h2>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                    <asp:BoundField DataField="ScholarShip" HeaderText="ScholarShip" SortExpression="ScholarShip" DataFormatString="{0:c}" ItemStyle-HorizontalAlign="Right" />
                    <asp:BoundField DataField="Enrolled" HeaderText="Enrolled" SortExpression="Enrolled" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="CreateDate" HeaderText="Created" SortExpression="CreateDate" DataFormatString="{0:d}" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [ScholarShip], [Enrolled], [CreateDate] FROM [Student] ORDER BY [LastName]"></asp:SqlDataSource>
        </div>
        <hr />
        <div>
            <h2>Linked GridView</h2>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Student: "></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="Name" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [vw_StudentSelect]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource3" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                    <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                    <asp:BoundField DataField="Student" HeaderText="Student" ReadOnly="True" SortExpression="Student" />
                    <asp:BoundField DataField="Attendance" HeaderText="Attendance" SortExpression="Attendance" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Section], [Date], [Student], [Attendance] FROM [vw_ClassMeetingList] WHERE ([Student] = @Student)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="Student" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
