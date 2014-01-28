<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%-- Header --%>
        <div>
            <asp:Literal ID="HeaderLiteral" runat="server">Kassakvitto</asp:Literal>
        </div>
        <%-- Inputfältet --%>
        <div>
            <asp:TextBox ID="SumTextBox" runat="server"></asp:TextBox><asp:Literal ID="CurrencyLiteral" runat="server">kr</asp:Literal>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="SumTextBox"
                ErrorMessage="Ange flyttal med max två decimaler."></asp:RequiredFieldValidator>
        </div>
        <%-- Beräkningsknapp --%>
        <div>
            <asp:Button ID="SendButton" runat="server" Text="Beräkna rabatt" />
        </div>
    </div>
    </form>
</body>
</html>
