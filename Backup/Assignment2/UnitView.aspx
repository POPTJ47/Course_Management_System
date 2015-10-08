<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UnitView.aspx.vb" Inherits="Assignment2.UnitView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
    Units</h1>
        <asp:AccessDataSource ID="UnitViewDS" runat="server" 
            DataFile="~/App_Data/CourseInfo.mdb" 
            DeleteCommand="DELETE FROM [Unitss] WHERE [UnitCode] = ?" 
            InsertCommand="INSERT INTO [Unitss] ([UnitCode], [UnitTitle], [UnitCoordinator], [UnitCreditPoints], [UnitType]) VALUES (?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [Unitss]" 
            UpdateCommand="UPDATE [Unitss] SET [UnitTitle] = ?, [UnitCoordinator] = ?, [UnitCreditPoints] = ?, [UnitType] = ? WHERE [UnitCode] = ?">
            <DeleteParameters>
                <asp:Parameter Name="UnitCode" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UnitCode" Type="String" />
                <asp:Parameter Name="UnitTitle" Type="String" />
                <asp:Parameter Name="UnitCoordinator" Type="String" />
                <asp:Parameter Name="UnitCreditPoints" Type="String" />
                <asp:Parameter Name="UnitType" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UnitTitle" Type="String" />
                <asp:Parameter Name="UnitCoordinator" Type="String" />
                <asp:Parameter Name="UnitCreditPoints" Type="String" />
                <asp:Parameter Name="UnitType" Type="String" />
                <asp:Parameter Name="UnitCode" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
        <asp:GridView ID="UnitViewGV" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UnitCode" 
            DataSourceID="UnitViewDS">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="UnitCode" HeaderText="UnitCode" ReadOnly="True" 
                    SortExpression="UnitCode" />
                <asp:BoundField DataField="UnitTitle" HeaderText="UnitTitle" 
                    SortExpression="UnitTitle" />
                <asp:BoundField DataField="UnitCoordinator" HeaderText="UnitCoordinator" 
                    SortExpression="UnitCoordinator" />
                <asp:BoundField DataField="UnitCreditPoints" HeaderText="UnitCreditPoints" 
                    SortExpression="UnitCreditPoints" />
                <asp:BoundField DataField="UnitType" HeaderText="UnitType" 
                    SortExpression="UnitType" />
            </Columns>
        </asp:GridView>
    </div>
    <p>
    <asp:Button ID="Btn7" runat="server" Text="Create a Unit" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="backBtn2" runat="server" Text="Back" />
    </p>
    </form>
</body>
</html>
