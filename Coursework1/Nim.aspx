<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Nim.aspx.cs" Inherits="Nim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 265px">
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Bag1Label" runat="server" Text="Bag 1 has: "></asp:Label>
        <asp:Button ID="B1Button" runat="server" OnClick="B1Button_Click" Text="Take from bag" />
        <br />
        <asp:Label ID="Bag2Label" runat="server" Text="Bag 2 has: "></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Take from bag" />
        <br />
        <asp:Label ID="Bag3Label" runat="server" Text="Bag 3 has: "></asp:Label>
        <asp:Button ID="Button2" runat="server" Text="Take from bag" />
        <br />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Visible="False">
        </asp:DropDownList>
        <br />
        <asp:Button ID="ConfirmButton" runat="server" OnClick="ConfirmButton_Click" Text="Confirm" />
    
    </div>
    </form>
</body>
</html>
