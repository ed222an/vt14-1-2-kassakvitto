<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" defaultbutton="SendButton">
    <div>
        <%-- Header --%>
        <div id="Header">
            <asp:Literal ID="HeaderLiteral" runat="server">Kassakvitto</asp:Literal>
        </div>
        <div>
            <asp:ValidationSummary ID="ErrorValidationSummary" runat="server" />
        </div>
        <%-- Inputfältet --%>
        <div>
            <asp:Literal ID="InputLiteral" runat="server">Total köpsumma</asp:Literal>
        </div>
        <div>
            <asp:TextBox ID="SumTextBox" runat="server"></asp:TextBox><asp:Literal ID="CurrencyLiteral" runat="server">kr</asp:Literal>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="SumTextBox"
                ErrorMessage="Ange en total köpesumma." Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Ange en total köpesumma större än 0." 
                ControlToValidate="SumTextBox" Operator="GreaterThan" Type="Double" ValueToCompare="0" Display="None"></asp:CompareValidator>
        </div>
        <%-- Beräkningsknapp --%>
        <div>
            <asp:Button ID="SendButton" runat="server" Text="Beräkna rabatt" OnClick="SendButton_Click" />
        </div>
        <%-- Kassakvitto --%>
        <asp:Panel ID="RecieptPanel" runat="server" Visible="false">
            <div id="Reciept">
                <div id="RecieptHeader">
                    <asp:Label ID="RecieptHeaderLabel" runat="server" Text="Superköp"></asp:Label>
                </div>
                <div id="RecieptContent">
                    <asp:Label ID="SubtotalLabel" runat="server"></asp:Label>
                    <asp:Label ID="DiscountLabel" runat="server"></asp:Label>
                    <asp:Label ID="MoneyOffLabel" runat="server"></asp:Label>
                    <asp:Label ID="TotalLabel" runat="server"></asp:Label>
                </div>
            </div>
        </asp:Panel>
    </div>
    </form>
    <%-- JavaScript --%>
    <script src="script/formScript.js"></script>
</body>
</html>
