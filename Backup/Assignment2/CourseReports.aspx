<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CourseReports.aspx.vb" Inherits="Assignment2.CourseReports" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
    Search on one of the criterias and press search to generate course reports</h1>
        <p>
            <asp:AccessDataSource ID="SearchCtitleDS" runat="server" 
                DataFile="~/App_Data/CourseInfo.mdb" 
                SelectCommand="SELECT [CourceTitle] FROM [Cource Details]">
            </asp:AccessDataSource>
        </p>
        <p>
            <asp:AccessDataSource ID="SearchCTypeDS" runat="server" 
                DataFile="~/App_Data/CourseInfo.mdb" 
                SelectCommand="SELECT DISTINCT [CourceType] FROM [Cource Details]">
            </asp:AccessDataSource>
        </p>
        <p>
            <asp:AccessDataSource ID="SeachUnitDS" runat="server" 
                DataFile="~/App_Data/CourseInfo.mdb" 
                SelectCommand="SELECT [UnitTitle] FROM [Unitss]">
            </asp:AccessDataSource>
        </p>
        <p>
            By course title&nbsp;
            <asp:DropDownList ID="SBYCT" runat="server" 
                DataSourceID="SearchCtitleDS" DataTextField="CourceTitle" 
                DataValueField="CourceTitle">
            </asp:DropDownList>
        &nbsp;
            <asp:Button ID="Button1" runat="server" Text="Search" />
        </p>
        <p>
            By course type&nbsp; 
            <asp:DropDownList ID="SBYCType" runat="server" DataSourceID="SearchCTypeDS" 
                DataTextField="CourceType" DataValueField="CourceType" AutoPostBack="True">
            </asp:DropDownList>
        &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Search" />
        </p>
        <p>
            By course status&nbsp;
            <asp:TextBox ID="SBYCS" runat="server"></asp:TextBox>
        &nbsp;
            <asp:Button ID="Button3" runat="server" Text="Search" />
        </p>
        <p>
            By Units&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="SBYU" runat="server" DataSourceID="SeachUnitDS" 
                DataTextField="UnitTitle" DataValueField="UnitTitle">
            </asp:DropDownList>
        &nbsp;<asp:Button ID="Button4" runat="server" Text="Search" />
        </p>
        <p>
            <asp:SqlDataSource ID="zzzz" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                ProviderName="System.Data.OleDb" 
                
                
                SelectCommand="SELECT CourceCode, CourceTitle, CourceCoordinator, CourceType, [CourceCredit Points], CourceDuration, CourceStatus, CurrentCPoints, [CourceCredit Points] - CurrentCPoints AS [Remaining Points to Enroll] FROM [Cource Details] WHERE CourceTitle = (@CTle)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="SBYCT" Name="CTle" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="vvvv" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                ProviderName="System.Data.OleDb" 
                SelectCommand="SELECT UnitTitle FROM UnitMan WHERE CourceTitle = (@CNameee)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="SBYCT" Name="CNameee" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="aaaa" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                ProviderName="System.Data.OleDb" 
                SelectCommand="SELECT CourceCode, CourceTitle, CourceCoordinator, CourceType, [CourceCredit Points], CourceDuration, CourceStatus, CurrentCPoints, [CourceCredit Points] - CurrentCPoints AS [Remaining Points to Enroll] FROM [Cource Details] WHERE CourceType = (@CTypae)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="SBYCType" Name="CTypae" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="SYCTypeUn" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                ProviderName="System.Data.OleDb" 
                SelectCommand="SELECT [Cource Details].CourceTitle, UnitMan.UnitTitle FROM ([Cource Details] INNER JOIN UnitMan ON [Cource Details].CourceTitle = UnitMan.CourceTitle) WHERE CourceType = (@CType) ">
                <SelectParameters>
                    <asp:ControlParameter ControlID="SBYCType" Name="CType" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="bbbb" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                ProviderName="System.Data.OleDb" 
                SelectCommand="SELECT CourceCode, CourceTitle, CourceCoordinator, CourceType, [CourceCredit Points], CourceDuration, CourceStatus, CurrentCPoints, [CourceCredit Points] - CurrentCPoints AS [Remaining Points to Enroll] FROM [Cource Details] WHERE CourceStatus = (@CSts)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="SBYCS" Name="CSts" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="cccc" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                ProviderName="System.Data.OleDb" 
                SelectCommand="SELECT [Cource Details].CourceTitle, UnitMan.UnitTitle FROM ([Cource Details] INNER JOIN UnitMan ON [Cource Details].CourceTitle = UnitMan.CourceTitle) WHERE CourceStatus = (@CS) ">
                <SelectParameters>
                    <asp:ControlParameter ControlID="SBYCS" Name="CS" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="ddd" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                ProviderName="System.Data.OleDb" 
                SelectCommand="SELECT [Cource Details].CourceCode, [Cource Details].CourceTitle, [Cource Details].CourceCoordinator, [Cource Details].CourceType, [Cource Details].[CourceCredit Points], [Cource Details].CourceDuration, [Cource Details].CourceStatus, [Cource Details].CurrentCPoints,[Cource Details].[CourceCredit Points] - [Cource Details].CurrentCPoints AS [Remaining Points to Enroll] FROM ([Cource Details] INNER JOIN UnitMan ON [Cource Details].CourceTitle = UnitMan.CourceTitle) WHERE UnitTitle = (@Ut)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="SBYU" Name="Ut" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            1 st table shows units connected to it</p>
        <p>
            2nd table shows the search criteria&#39;s course details 
            (Scroll Down to see the results)</p>
        <p>
            &nbsp;<h1> Press search and Scroll down to see the results</h1></p>
        <p>
            <asp:Button ID="homeBtn22" runat="server" Text="Return to Home" />
        </p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataSourceID="vvvv" Visible="False">
                <Columns>
                    <asp:BoundField DataField="UnitTitle" HeaderText="UnitTitle" 
                        SortExpression="UnitTitle" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="CourceCode" DataSourceID="zzzz" Visible="False" 
                AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="CourceCode" HeaderText="CourceCode" ReadOnly="True" 
                        SortExpression="CourceCode" />
                    <asp:BoundField DataField="CourceTitle" HeaderText="CourceTitle" 
                        SortExpression="CourceTitle" />
                    <asp:BoundField DataField="CourceCoordinator" HeaderText="CourceCoordinator" 
                        SortExpression="CourceCoordinator" />
                    <asp:BoundField DataField="CourceType" HeaderText="CourceType" 
                        SortExpression="CourceType" />
                    <asp:BoundField DataField="CourceCredit Points" 
                        HeaderText="CourceCredit Points" SortExpression="CourceCredit Points" />
                    <asp:BoundField DataField="CourceDuration" HeaderText="CourceDuration" 
                        SortExpression="CourceDuration" />
                    <asp:BoundField DataField="CourceStatus" HeaderText="CourceStatus" 
                        SortExpression="CourceStatus" />
                    <asp:BoundField DataField="CurrentCPoints" HeaderText="CurrentCPoints" 
                        SortExpression="CurrentCPoints" />
                    <asp:BoundField DataField="Remaining Points to Enroll" 
                        HeaderText="Remaining Points to Enroll" ReadOnly="True" 
                        SortExpression="Remaining Points to Enroll" />
                </Columns>
            </asp:GridView>
        </p>

    </div>
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CourceCode" 
        DataSourceID="aaaa" Visible="False">
        <Columns>
            <asp:BoundField DataField="CourceCode" HeaderText="CourceCode" ReadOnly="True" 
                SortExpression="CourceCode" />
            <asp:BoundField DataField="CourceTitle" HeaderText="CourceTitle" 
                SortExpression="CourceTitle" />
            <asp:BoundField DataField="CourceCoordinator" HeaderText="CourceCoordinator" 
                SortExpression="CourceCoordinator" />
            <asp:BoundField DataField="CourceType" HeaderText="CourceType" 
                SortExpression="CourceType" />
            <asp:BoundField DataField="CourceCredit Points" 
                HeaderText="CourceCredit Points" SortExpression="CourceCredit Points" />
            <asp:BoundField DataField="CourceDuration" HeaderText="CourceDuration" 
                SortExpression="CourceDuration" />
            <asp:BoundField DataField="CourceStatus" HeaderText="CourceStatus" 
                SortExpression="CourceStatus" />
            <asp:BoundField DataField="CurrentCPoints" HeaderText="CurrentCPoints" 
                SortExpression="CurrentCPoints" />
            <asp:BoundField DataField="Remaining Points to Enroll" 
                HeaderText="Remaining Points to Enroll" ReadOnly="True" 
                SortExpression="Remaining Points to Enroll" />
        </Columns>
    </asp:GridView>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SYCTypeUn" Visible="False" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="CourceTitle" HeaderText="CourceTitle" 
                SortExpression="CourceTitle" />
            <asp:BoundField DataField="UnitTitle" HeaderText="UnitTitle" 
                SortExpression="UnitTitle" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CourceCode" 
        DataSourceID="bbbb" Visible="False">
        <Columns>
            <asp:BoundField DataField="CourceCode" HeaderText="CourceCode" ReadOnly="True" 
                SortExpression="CourceCode" />
            <asp:BoundField DataField="CourceTitle" HeaderText="CourceTitle" 
                SortExpression="CourceTitle" />
            <asp:BoundField DataField="CourceCoordinator" HeaderText="CourceCoordinator" 
                SortExpression="CourceCoordinator" />
            <asp:BoundField DataField="CourceType" HeaderText="CourceType" 
                SortExpression="CourceType" />
            <asp:BoundField DataField="CourceCredit Points" 
                HeaderText="CourceCredit Points" SortExpression="CourceCredit Points" />
            <asp:BoundField DataField="CourceDuration" HeaderText="CourceDuration" 
                SortExpression="CourceDuration" />
            <asp:BoundField DataField="CourceStatus" HeaderText="CourceStatus" 
                SortExpression="CourceStatus" />
            <asp:BoundField DataField="CurrentCPoints" HeaderText="CurrentCPoints" 
                SortExpression="CurrentCPoints" />
            <asp:BoundField DataField="Remaining Points to Enroll" 
                HeaderText="Remaining Points to Enroll" ReadOnly="True" 
                SortExpression="Remaining Points to Enroll" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView6" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataSourceID="cccc" 
        Visible="False">
        <Columns>
            <asp:BoundField DataField="CourceTitle" HeaderText="CourceTitle" 
                SortExpression="CourceTitle" />
            <asp:BoundField DataField="UnitTitle" HeaderText="UnitTitle" 
                SortExpression="UnitTitle" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CourceCode" DataSourceID="ddd" Visible="False" 
        AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="CourceCode" HeaderText="CourceCode" ReadOnly="True" 
                SortExpression="CourceCode" />
            <asp:BoundField DataField="CourceTitle" HeaderText="CourceTitle" 
                SortExpression="CourceTitle" />
            <asp:BoundField DataField="CourceCoordinator" HeaderText="CourceCoordinator" 
                SortExpression="CourceCoordinator" />
            <asp:BoundField DataField="CourceType" HeaderText="CourceType" 
                SortExpression="CourceType" />
            <asp:BoundField DataField="CourceCredit Points" 
                HeaderText="CourceCredit Points" SortExpression="CourceCredit Points" />
            <asp:BoundField DataField="CourceDuration" HeaderText="CourceDuration" 
                SortExpression="CourceDuration" />
            <asp:BoundField DataField="CourceStatus" HeaderText="CourceStatus" 
                SortExpression="CourceStatus" />
            <asp:BoundField DataField="CurrentCPoints" HeaderText="CurrentCPoints" 
                SortExpression="CurrentCPoints" />
            <asp:BoundField DataField="Remaining Points to Enroll" 
                HeaderText="Remaining Points to Enroll" ReadOnly="True" 
                SortExpression="Remaining Points to Enroll" />
        </Columns>
    </asp:GridView>
    <br />
    </form>
</body>
</html>
