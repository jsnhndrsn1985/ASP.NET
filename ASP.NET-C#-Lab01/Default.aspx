<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab 01</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #CB99C9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Hello, World!</h2>
        <p>Jason, welcome to the Lab 01 website.</p>
        <p>The current time is: <%=DateTime.Now.ToString() %></p>
    </div>
    <div>

        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><a href="https://www.reddit.com/">Reddit.com</a></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
