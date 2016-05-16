<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Attendance System</title>
    <link href="Styles/Styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="HeaderArea">
            <img class="LogoImage" src="Images/StudentRed32.png" />
            <span class="HeadLine">Welcome to the Attendance System</span>
        </div>
        <div id="MenuArea">
                <div class="MenuItem">
                    <a class="MenuText" href="Record.aspx">Record</a>
                </div>
                <div class="MenuItem">
                    <a class="MenuText" href="Record.aspx">Review</a>
                </div>
                <div class="MenuItem">
                    <a class="MenuText" href="Record.aspx">Sections</a>
                </div>
                <div class="MenuItem">
                    <a class="MenuText" href="Record.aspx">Students</a>
                </div>
                <div class="MenuItem">
                    <a class="MenuText" href="Record.aspx">Reports</a>
                </div>
            </div>
            <div id="MainAreaBorder">
                <div id="MainArea">
                 <img src="Images/Tri-C.png" />
                </div>
            </div>
            <div id="FooterArea">
                <span class="FooterText">Created for IT2030</span>
            </div>
    </form>
</body>
</html>
