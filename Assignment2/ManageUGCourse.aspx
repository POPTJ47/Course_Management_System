<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ManageUGCourse.aspx.vb" Inherits="Assignment2.ManageUGCourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        Add a Unit to an Under Graduate Course</h1>
        <p>
            <asp:AccessDataSource ID="CNameDS" runat="server" 
                DataFile="~/App_Data/CourseInfo.mdb" 
                
                SelectCommand="SELECT [CourceTitle] FROM [Cource Details] Where CourceType  in ('Associate Degree', 'Double Degree', 'Graduate Diploma') AND CourceStatus = 'Pending'">
            </asp:AccessDataSource>
    </p>
        <p>
            <asp:AccessDataSource ID="UNameDS" runat="server" 
                DataFile="~/App_Data/CourseInfo.mdb" 
                SelectCommand="SELECT UnitTitle FROM Unitss WHERE (UnitType = 'Undergraduate')">
            </asp:AccessDataSource>
    </p>
        <p>
            &nbsp;</p>
        <asp:AccessDataSource ID="CoreELDS" runat="server" 
            DataFile="~/App_Data/CourseInfo.mdb" 
            SelectCommand="SELECT DISTINCT [Core/Elective] AS column1 FROM [UnitMan]"></asp:AccessDataSource>
        <p>
            Course Name&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="CNameDD" runat="server" DataSourceID="CNameDS" 
                DataTextField="CourceTitle" DataValueField="CourceTitle">
            </asp:DropDownList>
        </p>
        <p>
            Unit Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="UNameDD" runat="server" DataSourceID="UNameDS" 
                DataTextField="UnitTitle" DataValueField="UnitTitle">
            </asp:DropDownList>
        </p>
        <p>
            Year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Yr" runat="server"></asp:TextBox>
        </p>
        <p>
            Semster&nbsp;
            <asp:TextBox ID="Semester" runat="server"></asp:TextBox>
        </p>
        <p>
            Core / Elective&nbsp;&nbsp;
            <asp:DropDownList ID="CEDD" runat="server" DataSourceID="CoreELDS" 
                DataTextField="column1" DataValueField="column1">
            </asp:DropDownList>
        </p>
        <p>
            <asp:SqlDataSource ID="AddUGMan" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                InsertCommand="INSERT INTO UnitMan (CourceTitle, UnitTitle, [Year], Semster, [Core/Elective]) VALUES (@CtitleDD, @UTitleDD, @Yr, @Semester, @CEDD)" 
                ProviderName="System.Data.OleDb">
                <InsertParameters>
                    <asp:ControlParameter ControlID="CNameDD" Name="CtitleDD" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="UNameDD" Name="UTitleDD" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="Yr" Name="Yr" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Semester" Name="Semester" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="CEDD" Name="CEDD" 
                        PropertyName="SelectedValue" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="CoursemanUPD" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                ProviderName="System.Data.OleDb" 
                UpdateCommand="UPDATE CoursePoints SET CurrentPoints = CurrentPoints +15 WHERE CourseTitle = (@CNamee)">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="CNameDD" Name="CNamee" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="CourseUPD" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                ProviderName="System.Data.OleDb" 
                UpdateCommand="UPDATE [Cource Details] SET CurrentCPoints = CurrentCPoints + 15 WHERE CourceTitle = (@CNameee)">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="CNameDD" Name="CNameee" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:SqlDataSource ID="CStatUPD" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                ProviderName="System.Data.OleDb" 
                UpdateCommand="UPDATE [Cource Details] SET CourceStatus = 'Enrollmet Approved' WHERE (CurrentCPoints &gt;= [CourceCredit Points])"></asp:SqlDataSource>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Add" />
        &nbsp; <asp:Button ID="homebtn88" runat="server" Text="Back" />
        </p>
        <p>
            <asp:AccessDataSource ID="CManDS" runat="server" 
                DataFile="~/App_Data/CourseInfo.mdb" SelectCommand="SELECT * FROM [UnitMan]">
            </asp:AccessDataSource>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" 
                DataKeyNames="CourceTitle,UnitTitle" DataSourceID="CManDS">
                <Columns>
                    <asp:BoundField DataField="CourceTitle" HeaderText="CourceTitle" 
                        ReadOnly="True" SortExpression="CourceTitle" />
                    <asp:BoundField DataField="UnitTitle" HeaderText="UnitTitle" ReadOnly="True" 
                        SortExpression="UnitTitle" />
                    <asp:BoundField DataField="Semster" HeaderText="Semster" 
                        SortExpression="Semster" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    <asp:BoundField DataField="Core/Elective" HeaderText="Core/Elective" 
                        SortExpression="Core/Elective" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
    </div>
    </form>
</body>
</html>
