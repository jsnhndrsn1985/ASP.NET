<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="Server">
    <div>
        <h3>Step 1 - jQuery Type Something</h3>
        <table class="DarkTable">
            <tr>
                <td>
                    <div id="TypeSomething" class="DivButton">
                        Display
                    </div>
                </td>
                <td>
                    <asp:TextBox ID="txtTypeSomething" Text="Type Something Here" Width="200px" runat="server" />
                </td>
            </tr>
        </table>
        <br />
        <hr />
        <h3>Step 2 - jQuery Table Style Change</h3>
        <table>
            <tr>
                <td>
                    <div id="lightBackground" class="DivButton">
                        Light Background
                    </div>
                </td>
                <td>
                    <div id="darkBackground" class="DivButton">
                        Dark Background
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <table id="demoTable" class="DarkTable">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Picture"></asp:Label>
            </td>
            <td>
                <asp:Image ID="Image1" SkinID="LogoImage" runat="server" />
            </td>
        </tr>

    </table>
    <hr />
    <h3>Step 3 - jQuery Animation</h3>
    <div id="toggleAnimation" class="DivButton">
        Hide Panel
    </div>
    <br />
    <asp:Panel ID="panAnimate" runat="server" Width="500" Height="100"
        BorderColor="#000099" BorderStyle="Solid" BorderWidth="1" BackColor="#66CCFF">
        <asp:Label ID="Label3" runat="server" Text="When in the Course of human events, it becomes necessary for one people to dissolve the political bands which have connected them with another, and to assume among the powers of the earth, the separate and equal station to which the Laws of Nature and of Nature's God entitle them, a decent respect to the opinions of mankind requires that they should declare the causes which impel them to the separation." Width="495px" Height="95px" Font-Size="Small"></asp:Label>
    </asp:Panel>
    <br />
    <hr />
    <h3>Step 4 - jQuery Call Server</h3>
    <table class="DarkTable">
        <tr>
            <td>
                <div id="cmdServerCall" class="DivButton">
                    Call the Server
                </div>
            </td>
            <td>
                <asp:Label ID="lblServerReturn" Text="" Width="400px" runat="server" />
            </td>
        </tr>
    </table>
    <br />
    <hr />
    <h3>Step 5 - jQuery Server Lookup</h3>
    <table id="studentLookup" class="LightTable">
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Student ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtID" Text="1" runat="server"></asp:TextBox>
            </td>
            <td>
                <div id="cmdLookup" class="DivButton">
                    Look Up
                </div>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Student Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStudentName" Text="" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;
            </td>
        </tr>

    </table>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Script" runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            // Step 1 - Type Something
            $('#TypeSomething').click(function () {
                var text = $("#<%=txtTypeSomething.ClientID%>").val();
                alert('You said: ' + text);
            });
            

            // Step 2 - jQuery Table Style Change
            $('#lightBackground').click(function () {
                $('#demoTable').removeClass('DarkTable').addClass('LightTable');
            });
            $('#darkBackground').click(function () {
                $('#demoTable').removeClass('LightTable').addClass('DarkTable');
            });

            // Step 3 - jQuery Animation
            $('#toggleAnimation').click(function () {
                $("#<%=panAnimate.ClientID%>").slideToggle();
                if ($(this).text() == 'Show Panel') {
                    $(this).text('Hide Panel');
                }
                else {
                    $(this).text('Show Panel');
                }
            });

            // Step 4 - jQuery Call Server
            $('#cmdServerCall').click(function () {
                $.ajax({
                    type: "POST",
                    url: "Services/WSServerCall.asmx/HelloWorld",
                    contentType: "application/json; charset=utf-8",
                    data: {},
                    dataType: "json",
                    success: function (result) {
                        $('#<%=lblServerReturn.ClientID%>').text(result.d);
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert('Error: ' + XMLHttpRequest.responseText);
                    }
                });
            });

            // Step 5 - jQuery Server Lookup


        });

    </script>
</asp:Content>
