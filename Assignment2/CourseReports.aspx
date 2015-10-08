<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CourseReports.aspx.vb" Inherits="Assignment2.CourseReports" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .style1
        {
            margin-left: 120px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        Search and generate Course Reports </h1>
        <p style="margin-left: 80px">
            &nbsp;</p>
        <p style="margin-left: 80px">
            <asp:TextBox ID="C_Code" runat="server" Width="146px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button7" runat="server" Text="Search by Course code" Width="160px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="margin-left: 80px">
            <asp:TextBox ID="C_Title" runat="server" Width="146px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" Text="Search by Course title" Width="160px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="margin-left: 80px">
            <asp:TextBox ID="C_Type" runat="server" Width="146px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" Text="Search by Course type" Width="160px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="margin-left: 80px">
            <asp:TextBox ID="C_Status" runat="server" Width="146px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button8" runat="server" Text="Search by Course status" Width="160px" />
            &nbsp;</p>
        <p style="margin-left: 80px">
            &nbsp;</p>
        <p>
            <asp:Button ID="homeBtn22" runat="server" Text="Back" />
        </p>

    </div>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CourceCode" DataSourceID="AccessDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="CourceCode" HeaderText="CourceCode" ReadOnly="True" SortExpression="CourceCode" />
                <asp:BoundField DataField="CourceTitle" HeaderText="CourceTitle" SortExpression="CourceTitle" />
                <asp:BoundField DataField="CourceCoordinator" HeaderText="CourceCoordinator" SortExpression="CourceCoordinator" />
                <asp:BoundField DataField="CourceType" HeaderText="CourceType" SortExpression="CourceType" />
                <asp:BoundField DataField="CourceCredit Points" HeaderText="CourceCredit Points" SortExpression="CourceCredit Points" />
                <asp:BoundField DataField="CourceDuration" HeaderText="CourceDuration" SortExpression="CourceDuration" />
                <asp:BoundField DataField="CourceStatus" HeaderText="CourceStatus" SortExpression="CourceStatus" />
                <asp:BoundField DataField="CurrentCPoints" HeaderText="CurrentCPoints" SortExpression="CurrentCPoints" />
                <asp:BoundField DataField="CCP" HeaderText="CCP" SortExpression="CCP" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/CourseInfo.mdb" SelectCommand="SELECT * FROM [Cource Details] WHERE ([CourceCode] LIKE '%' + ? + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="C_Code" Name="CourceCode" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />
    <br />
        <p class="style1">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CourceCode" DataSourceID="AccessDataSource2" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="CourceCode" HeaderText="CourceCode" ReadOnly="True" SortExpression="CourceCode" />
                    <asp:BoundField DataField="CourceTitle" HeaderText="CourceTitle" SortExpression="CourceTitle" />
                    <asp:BoundField DataField="CourceCoordinator" HeaderText="CourceCoordinator" SortExpression="CourceCoordinator" />
                    <asp:BoundField DataField="CourceType" HeaderText="CourceType" SortExpression="CourceType" />
                    <asp:BoundField DataField="CourceCredit Points" HeaderText="CourceCredit Points" SortExpression="CourceCredit Points" />
                    <asp:BoundField DataField="CourceDuration" HeaderText="CourceDuration" SortExpression="CourceDuration" />
                    <asp:BoundField DataField="CourceStatus" HeaderText="CourceStatus" SortExpression="CourceStatus" />
                    <asp:BoundField DataField="CurrentCPoints" HeaderText="CurrentCPoints" SortExpression="CurrentCPoints" />
                    <asp:BoundField DataField="CCP" HeaderText="CCP" SortExpression="CCP" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/CourseInfo.mdb" SelectCommand="SELECT * FROM [Cource Details] WHERE ([CourceTitle] LIKE '%' + ? + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="C_Title" Name="CourceTitle" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </p>
        <p class="style1">
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CourceCode" DataSourceID="AccessDataSource3">
                <Columns>
                    <asp:BoundField DataField="CourceCode" HeaderText="CourceCode" ReadOnly="True" SortExpression="CourceCode" />
                    <asp:BoundField DataField="CourceTitle" HeaderText="CourceTitle" SortExpression="CourceTitle" />
                    <asp:BoundField DataField="CourceCoordinator" HeaderText="CourceCoordinator" SortExpression="CourceCoordinator" />
                    <asp:BoundField DataField="CourceType" HeaderText="CourceType" SortExpression="CourceType" />
                    <asp:BoundField DataField="CourceCredit Points" HeaderText="CourceCredit Points" SortExpression="CourceCredit Points" />
                    <asp:BoundField DataField="CourceDuration" HeaderText="CourceDuration" SortExpression="CourceDuration" />
                    <asp:BoundField DataField="CourceStatus" HeaderText="CourceStatus" SortExpression="CourceStatus" />
                    <asp:BoundField DataField="CurrentCPoints" HeaderText="CurrentCPoints" SortExpression="CurrentCPoints" />
                    <asp:BoundField DataField="CCP" HeaderText="CCP" SortExpression="CCP" />
                </Columns>
            </asp:GridView>
            <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="~/App_Data/CourseInfo.mdb" SelectCommand="SELECT * FROM [Cource Details] WHERE ([CourceType] LIKE '%' + ? + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="C_Type" Name="CourceType" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </p>
        <p class="style1">
            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CourceCode" DataSourceID="AccessDataSource4" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="CourceCode" HeaderText="CourceCode" ReadOnly="True" SortExpression="CourceCode" />
                    <asp:BoundField DataField="CourceTitle" HeaderText="CourceTitle" SortExpression="CourceTitle" />
                    <asp:BoundField DataField="CourceCoordinator" HeaderText="CourceCoordinator" SortExpression="CourceCoordinator" />
                    <asp:BoundField DataField="CourceType" HeaderText="CourceType" SortExpression="CourceType" />
                    <asp:BoundField DataField="CourceCredit Points" HeaderText="CourceCredit Points" SortExpression="CourceCredit Points" />
                    <asp:BoundField DataField="CourceDuration" HeaderText="CourceDuration" SortExpression="CourceDuration" />
                    <asp:BoundField DataField="CourceStatus" HeaderText="CourceStatus" SortExpression="CourceStatus" />
                    <asp:BoundField DataField="CurrentCPoints" HeaderText="CurrentCPoints" SortExpression="CurrentCPoints" />
                    <asp:BoundField DataField="CCP" HeaderText="CCP" SortExpression="CCP" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:AccessDataSource ID="AccessDataSource4" runat="server" DataFile="~/App_Data/CourseInfo.mdb" SelectCommand="SELECT * FROM [Cource Details] WHERE ([CourceStatus] LIKE '%' + ? + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="C_Status" Name="CourceStatus" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </p>
        <p class="style1">
            &nbsp;</p>
    <br />
    <br />
    <br />
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
