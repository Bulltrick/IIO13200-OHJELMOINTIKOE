<%@ Page Language="C#" AutoEventWireup="true" CodeFile="G2776_index.aspx.cs" Inherits="G2776_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Topias Paasonen G2776</h1>
        Arvio pisteistä: T1 4, 
        <asp:HyperLink ID="T2" runat="server">T2</asp:HyperLink>  6, <asp:HyperLink ID="T4" runat="server">T4</asp:HyperLink> 0
        <br />
        Kokeesta: koe vaikutti aika normaalilta, mutta hakkasin päätä seinään T4:n tietokantayhteyden kanssa yli tunnin (yritin ottaa yhteyttä MySqlConnectionilla, enkä SqlConnectionilla), tämän ajan hukan takia en olisi kerennyt tekemään T3 ja T4, joten palautan tämmösenä ja tulen uusintaan, jossa ajattelin käyttää suoraan SqlConnectionia tai EF:ää.
    </div>
    </form>
</body>
</html>
