<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Sql_Databasemdf %>" DeleteCommand="DELETE FROM [States] WHERE [stID] = @stID" InsertCommand="INSERT INTO [States] ([stName], [stCode], [stBird], [stFlower]) VALUES (@stName, @stCode, @stBird, @stFlower)" SelectCommand="SELECT * FROM [States]" UpdateCommand="UPDATE [States] SET [stName] = @stName, [stCode] = @stCode, [stBird] = @stBird, [stFlower] = @stFlower WHERE [stID] = @stID">
            <DeleteParameters>
                <asp:Parameter Name="stID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="stName" Type="String" />
                <asp:Parameter Name="stCode" Type="String" />
                <asp:Parameter Name="stBird" Type="String" />
                <asp:Parameter Name="stFlower" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="stName" Type="String" />
                <asp:Parameter Name="stCode" Type="String" />
                <asp:Parameter Name="stBird" Type="String" />
                <asp:Parameter Name="stFlower" Type="String" />
                <asp:Parameter Name="stID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="stID" DataSourceID="SqlDataSource1" Width="900px">
            <Columns>
                <asp:BoundField DataField="stID" HeaderText="stID" InsertVisible="False" ReadOnly="True" SortExpression="stID" />
                <asp:BoundField DataField="stName" HeaderText="stName" SortExpression="stName" />
                <asp:BoundField DataField="stCode" HeaderText="stCode" SortExpression="stCode" />
                <asp:BoundField DataField="stBird" HeaderText="stBird" SortExpression="stBird" />
                <asp:BoundField DataField="stFlower" HeaderText="stFlower" SortExpression="stFlower" />
                <asp:HyperLinkField DataNavigateUrlFields="stID" DataNavigateUrlFormatString="Statesview.aspx?stID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <%#Eval("stName")%> <br />
            </ItemTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
