<%@ Control Language="C#" AutoEventWireup="true" CodeFile="udcNameAndAddress.ascx.cs" Inherits="Controls_udcNameAndAddress" %>

<table class="auto-style1">
  <tr>
    <td colspan="2">
      <asp:Label ID="lblStatus" runat="server" SkinID="FormStatus" Text="Please enter the information below"></asp:Label>
    </td>
    <td>
      <asp:Button ID="cmdSave" runat="server" Text="Save" SkinID="FormButton" />
    </td>
  </tr>
  <tr>
    <td class="auto-style1">
      <asp:Label ID="Label1" runat="server" Text="First Name" />
    </td>
    <td class="auto-style1">
      <asp:TextBox ID="txtFirstName" runat="server" SkinID="EditField" Text=""  />
    </td>
    <td class="auto-style1">
      <%--   RequiredFieldValidator--%>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="FormValidator" ErrorMessage="First Name is Required" ControlToValidate="txtFirstName" Display="Dynamic"></asp:RequiredFieldValidator>
    </td>
  </tr>
  <tr>
    <td>
      <asp:Label ID="Label2" runat="server" Text="Last Name" />
    </td>
    <td>
      <asp:TextBox ID="txtLastName" runat="server" SkinID="EditField" Text="" />
    </td>
    <td>
      <%--   RequiredFieldValidator--%>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="FormValidator" ErrorMessage="Last Name is Required" Display="Dynamic" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
    </td>
  </tr>
  <tr>
    <td>
      <asp:Label ID="Label3" runat="server" Text="Phone Number" />
    </td>
    <td>
      <asp:TextBox ID="txtPhoneNumber" runat="server" SkinID="EditField" Text="" />
    </td>
    <td>
      <%--   RequiredFieldValidator--%>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" CssClass="FormValidator" ErrorMessage="Phone Number is Required" ControlToValidate="txtPhoneNumber"></asp:RequiredFieldValidator>
      <%--   RegularExpressionValidator--%>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a phone number in the form of 999-999-9999" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ControlToValidate="txtPhoneNumber" Display="Dynamic"></asp:RegularExpressionValidator>
    </td>
  </tr>
  <tr>
    <td>
      <asp:Label ID="Label4" runat="server" Text="E-Mail" />
    </td>
    <td>
      <asp:TextBox ID="txtEmail" runat="server" SkinID="EditField" Text="" />
    </td>
    <td>
      <%--   RequiredFieldValidator--%>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" CssClass="FormValidator" ErrorMessage="Email is Required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
      <%--   RegularExpressionValidator--%>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" CssClass="FormValidator" ErrorMessage="Please enter an email address" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        
    </td>
  </tr>
  <tr>
    <td>
      <asp:Label ID="Label5" runat="server" Text="Password" />
    </td>
    <td>
      <asp:TextBox ID="txtPassword" runat="server" SkinID="EditField" Text="" TextMode="Password" />
    </td>
    <td>
      <%--   RequiredFieldValidator--%>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" CssClass="FormValidator" ErrorMessage="Password is required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>

    </td>
  </tr>
  <tr>
    <td>
      <asp:Label ID="Label11" runat="server" Text="Reenter Password" />
    </td>
    <td>
      <asp:TextBox ID="txtPassword1" runat="server" SkinID="EditField" Text="" TextMode="Password" />
    </td>
    <td>
      <%--   CompareValidator--%>
        <asp:CompareValidator ID="CompareValidator1" CssClass="FormValidator" runat="server" ErrorMessage="The Passwords are not the same." Display="Dynamic" ControlToCompare="txtPassword" ControlToValidate="txtPassword1"></asp:CompareValidator>
    </td>
  </tr>
  <tr>
    <td>
        
      <div class="FormLabel">
        <asp:Label ID="lblComments" runat="server" Text="Comments" Visible="False" />
      </div>
    </td>
    <td>
      <asp:TextBox ID="txtComments" runat="server" Height="50px" SkinID="EditField" Text="" TextMode="MultiLine" AutoPostBack="True" Visible="False" />
       
    </td>
    <td>&nbsp;</td>
  </tr>
</table>