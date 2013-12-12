<%@ Page Language="C#" AutoEventWireup="true" CodeFile="T4.aspx.cs" Inherits="T4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblIlmoja" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblOppilaita" runat="server"></asp:Label>
        <br />
        <asp:DataGrid ID="myDG" runat="server"></asp:DataGrid>



        <asp:Label ID="lblStatus" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
