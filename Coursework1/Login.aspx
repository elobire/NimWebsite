<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 280px">

    
        <asp:Label ID="Label4" runat="server" Text="Login as Existing User" BorderStyle="None" BorderWidth="2px"></asp:Label>
        <br />
    
        <asp:Label ID="Label1" runat="server" Text="Enter Username:"></asp:Label>
    
        <br />
        <asp:TextBox ID="LoginText" runat="server"></asp:TextBox>
        <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="Button1_Click" />
        <br />
        <br />
            <br />
            <asp:Button ID="RegiterButton" runat="server" Text="Register New User" OnClick="Button2_Click" />
            <br />
            <br />
    
        <asp:DetailsView ID="RegisterView" runat="server" AutoGenerateRows="False" DataKeyNames="Username" DataSourceID="UserSource" DefaultMode="Insert" Height="58px" OnModeChanged="RegisterView_ModeChanged" Visible="False" Width="230px">
            <Fields>
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="UserSource" runat="server" ConnectionString="<%$ ConnectionStrings:CdatabaseConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Username] = @Username" InsertCommand="INSERT INTO [Table] ([Username]) VALUES (@Username)" SelectCommand="SELECT [Username] FROM [Table]">
            <DeleteParameters>
                <asp:Parameter Name="Username" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
