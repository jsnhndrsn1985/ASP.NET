<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Forms_Reports_Reports" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<asp:Content ID="Content1" ContentPlaceHolderID="Body" Runat="Server">
    Reports:<br />
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Panel ID="Panel1" runat="server">
        Please add your report number to this box.<br />
        <br />
        Example: #000-0000</asp:Panel>
<ajaxToolkit:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server" BalloonPopupControlID="Panel1" TargetControlID="TextBox1"></ajaxToolkit:BalloonPopupExtender>
<br />
<br />
    <asp:TextBox ID="TextBox2" runat="server">10</asp:TextBox>
    <ajaxToolkit:NumericUpDownExtender ID="NumericUpDownExtender1" runat="server" Maximum="100" Minimum="1" TargetControlID="TextBox2" Width="100" />
    <br />
    <br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox4_Bound" runat="server"></asp:TextBox>
    <ajaxToolkit:SliderExtender ID="SliderExtender1" runat="server" BoundControlID="TextBox4_Bound" Steps="100" TargetControlID="TextBox3" />
    <br />
    <br />
 <asp:Panel ID="ButtonBalloon" runat="server">Hello, I will display when the button is clicked.</asp:Panel> 
<asp:Button ID="Button1" Text="Button" runat="server" /> 
<ajaxToolkit:BalloonPopupExtender ID="BalloonPopupExtender2" runat="server" TargetControlID="Button1" BalloonPopupControlID="ButtonBalloon">
 </ajaxToolkit:BalloonPopupExtender> 
</asp:Content>

