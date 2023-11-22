<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CIT216_Final_Project.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <div id="all" runat="server">
        <asp:MultiView ActiveViewIndex="0" ID="MultiView1" runat="server">

            <asp:View ID="View1" runat="server">
                <form id="form1" runat="server">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Student ID:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox type="Number" ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Student ID must be 9 numbers" ForeColor="Red" ControlToValidate="TextBox2" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Student Name:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  />
                            </td>
                        </tr>
                    </table>
                </form>
            </asp:View>

            <asp:View ID="View2" runat="server">
                <asp:Label Text="wrong QRcode" runat="server" />
                <br />
                <a href="http://192.168.101.10:8080/MainPage.aspx">Go Back To QRcode</a>
            </asp:View>

        </asp:MultiView>

    </div>

</body>
</html>
