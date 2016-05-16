<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LAB03.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Styles/Styles.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Lab03 - Server Controls - Jason Henderson</h2>
        <br />
        <asp:Label ID="Label1" CssClass="Label" runat="server" Text="First Label"></asp:Label>
        <br /><br />
        <asp:TextBox ID="TextBox1" CssClass="TextBox" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="Button1" CssClass="Button" runat="server" Text="Click Me" OnClick="Button1_Click" />
        <br /><br />
        <asp:Label ID="Label2" CssClass="Label" runat="server" Text="Label"></asp:Label>
        <br /><br />
        <asp:Panel ID="Panel1" CssClass="Panel" runat="server">
            <asp:Label ID="Label3" runat="server" Text="Select Days"></asp:Label>
            <br /><br />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="Images/OK24.png" ToolTip="Select All Days" OnClick="ImageButton1_Click" />
            <br /><br />
            <asp:CheckBoxList ID="CheckBoxList1" CssClass="CheckBoxList" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Sunday</asp:ListItem>
                <asp:ListItem>Monday</asp:ListItem>
                <asp:ListItem>Tuesday</asp:ListItem>
                <asp:ListItem>Wednesday</asp:ListItem>
                <asp:ListItem>Thursday</asp:ListItem>
                <asp:ListItem>Friday</asp:ListItem>
                <asp:ListItem>Saturday</asp:ListItem>
            </asp:CheckBoxList>
            <br /><br />
            <asp:Label ID="Label4" CssClass="LabelBig" runat="server" Text=""></asp:Label>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
