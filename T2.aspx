<%@ Page Language="C#" AutoEventWireup="true" CodeFile="T2.aspx.cs" Inherits="T2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:XmlDataSource ID="dsXml" runat="server" ></asp:XmlDataSource>
        <asp:GridView ID="gwTiedot" runat="server"></asp:GridView>
        <asp:Label ID="lblVakituisia" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblPalkkaSumma" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
