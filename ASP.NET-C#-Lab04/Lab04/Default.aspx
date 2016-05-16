<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab04 - Calculator - Jason Henderson</title>
    <link href="Styles/Styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <h2>Lab04 - Calculator - Jason Henderson</h2>
            <asp:Label ID="lblCurrentTime" CssClass="LabelTime" runat="server" Text="Time Goes Here"></asp:Label>
            <asp:Panel ID="Panel1" CssClass="Panel" runat="server">
                <table class="Table">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtValue1" Text="0.00" CssClass="Textbox" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td rowspan="3">
                            <asp:ListBox ID="lstTape" runat="server" CssClass="ListBox" Height="190px" Width="200px" TabIndex="-1">
                            </asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtValue2" Text="0.00" CssClass="Textbox" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlOperators" runat="server" AutoPostBack="true"
                                OnSelectedIndexChanged="ddlOperators_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:ImageButton ID="cmdGo" runat="server" CssClass="ImageButton" Height="32px" ImageUrl="~/Images/Abacus.png" OnClick="cmdGo_Click" ToolTip="Recalculate" Width="32px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>

                </table>
            </asp:Panel>
    </div>
    </form>
</body>
</html>
