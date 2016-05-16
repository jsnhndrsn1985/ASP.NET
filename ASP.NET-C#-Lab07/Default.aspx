<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Src="~/Controls/udcNameAndAddress.ascx" TagPrefix="uc1" TagName="udcNameAndAddress" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Show Comments" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
    </div>
        <div>
            <uc1:udcNameAndAddress runat="server" ID="udcNameAndAddress" />
        </div>
    </form>
</body>
</html>
