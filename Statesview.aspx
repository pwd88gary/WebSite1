<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Statesview.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Details View</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Sql_Databasemdf %>" DeleteCommand="DELETE FROM [States] WHERE [stID] = @stID" InsertCommand="INSERT INTO [States] ([stName], [stCode], [stBird], [stFlower]) VALUES (@stName, @stCode, @stBird, @stFlower)" SelectCommand="SELECT * FROM [States] WHERE ([stID] = @stID)" UpdateCommand="UPDATE [States] SET [stName] = @stName, [stCode] = @stCode, [stBird] = @stBird, [stFlower] = @stFlower WHERE [stID] = @stID">
                <DeleteParameters>
                    <asp:Parameter Name="stID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="stName" Type="String" />
                    <asp:Parameter Name="stCode" Type="String" />
                    <asp:Parameter Name="stBird" Type="String" />
                    <asp:Parameter Name="stFlower" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="stID" QueryStringField="stID" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="stName" Type="String" />
                    <asp:Parameter Name="stCode" Type="String" />
                    <asp:Parameter Name="stBird" Type="String" />
                    <asp:Parameter Name="stFlower" Type="String" />
                    <asp:Parameter Name="stID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="stID" DataSourceID="SqlDataSource1" Height="50px" Width="900px">
            <Fields>
                <asp:BoundField DataField="stName" HeaderText="State Name" SortExpression="stName" />
                <asp:BoundField DataField="stCode" HeaderText="Postal Code" SortExpression="stCode" />
                <asp:BoundField DataField="stBird" HeaderText="State Bird" SortExpression="stBird" />
                <asp:BoundField DataField="stFlower" HeaderText="State Flower" SortExpression="stFlower" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    </form>
    <a href="Default.aspx">Default Page</a>
</body>
</html>
