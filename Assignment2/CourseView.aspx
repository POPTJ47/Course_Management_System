<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CourseView.aspx.vb" Inherits="Assignment2.CourseView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        Course Details</h1>
        <asp:AccessDataSource ID="CourseViewDS" runat="server" 
            DataFile="~/App_Data/CourseInfo.mdb" 
            DeleteCommand="DELETE FROM [Cource Details] WHERE [CourceCode] = ?" 
            InsertCommand="INSERT INTO [Cource Details] ([CourceCode], [CourceTitle], [CourceCoordinator], [CourceType], [CourceCredit Points], [CourceDuration], [CourceStatus]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
            SelectCommand="SELECT [CourceCode], [CourceTitle], [CourceCoordinator], [CourceType], [CourceCredit Points] AS CourceCredit_Points, [CourceDuration], [CourceStatus] FROM [Cource Details]" 
            UpdateCommand="UPDATE [Cource Details] SET [CourceTitle] = ?, [CourceCoordinator] = ?, [CourceType] = ?, [CourceCredit Points] = ?, [CourceDuration] = ?, [CourceStatus] = ? WHERE [CourceCode] = ?">
            <DeleteParameters>
                <asp:Parameter Name="CourceCode" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CourceCode" Type="String" />
                <asp:Parameter Name="CourceTitle" Type="String" />
                <asp:Parameter Name="CourceCoordinator" Type="String" />
                <asp:Parameter Name="CourceType" Type="String" />
                <asp:Parameter Name="CourceCredit_Points" Type="Int32" />
                <asp:Parameter Name="CourceDuration" Type="String" />
                <asp:Parameter Name="CourceStatus" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CourceTitle" Type="String" />
                <asp:Parameter Name="CourceCoordinator" Type="String" />
                <asp:Parameter Name="CourceType" Type="String" />
                <asp:Parameter Name="CourceCredit_Points" Type="Int32" />
                <asp:Parameter Name="CourceDuration" Type="String" />
                <asp:Parameter Name="CourceStatus" Type="String" />
                <asp:Parameter Name="CourceCode" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
        <asp:GridView ID="CourseViewGV" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CourceCode" 
            DataSourceID="CourseViewDS">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CourceCode" HeaderText="CourceCode" ReadOnly="True" 
                    SortExpression="CourceCode" />
                <asp:BoundField DataField="CourceTitle" HeaderText="CourceTitle" 
                    SortExpression="CourceTitle" />
                <asp:BoundField DataField="CourceCoordinator" HeaderText="CourceCoordinator" 
                    SortExpression="CourceCoordinator" />
                <asp:BoundField DataField="CourceType" HeaderText="CourceType" 
                    SortExpression="CourceType" />
                <asp:BoundField DataField="CourceCredit_Points" 
                    HeaderText="CourceCredit_Points" SortExpression="CourceCredit_Points" />
                <asp:BoundField DataField="CourceDuration" HeaderText="CourceDuration" 
                    SortExpression="CourceDuration" />
                <asp:BoundField DataField="CourceStatus" HeaderText="CourceStatus" 
                    SortExpression="CourceStatus" />
            </Columns>
        </asp:GridView>
    </div>
    <asp:Button ID="CUBtn" runat="server" Text="Add New Course" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="backBtn1" runat="server" Text="Back" />
    </form>
</body>
</html>
