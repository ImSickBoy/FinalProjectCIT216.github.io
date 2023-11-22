<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="CIT216_Final_Project.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

           
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">

                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="8000" OnTick="Timer1_Tick"></asp:Timer>

                    <asp:Image runat="server" ID="QRcodeImage" />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <a id="Hyperlink" runat="server">GO
                    </a>
                    <br />                   
                </ContentTemplate>
            </asp:UpdatePanel>


            <hr />
            <asp:Button ID="SaveName" runat="server" Text="Save Name" OnClick="SaveName_Click" />
            <asp:Button ID="ClearNames" runat="server" Text="Clear Name" OnClick="ClearNames_Click" />

           

            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional" >
                <ContentTemplate>

                    <asp:Timer ID="Timer2" runat="server" Interval="1000" OnTick="Timer2_Tick"></asp:Timer>
                     <asp:Table ID="Table1" runat="server" BorderWidth="2px" GridLines="Both"></asp:Table>
                </ContentTemplate>
            </asp:UpdatePanel>
            
            
        </div>
    </form>



</body>
</html>
