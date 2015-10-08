<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ManagePGCourse.aspx.vb" Inherits="Assignment2.ManagePGCourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        Add a Unit to a Post Graduate Course&nbsp;
    </h1>
        <asp:AccessDataSource ID="CNamePG" runat="server" 
            DataFile="~/App_Data/CourseInfo.mdb" 
            
            SelectCommand="SELECT [CourceTitle] FROM [Cource Details] Where CourceType  in ('Masters by Coursework ') AND CourceStatus = 'Pending'"></asp:AccessDataSource>
        <br />
        <asp:AccessDataSource ID="UNamePG" runat="server" 
            DataFile="~/App_Data/CourseInfo.mdb" 
            SelectCommand="SELECT UnitTitle FROM Unitss WHERE (UnitType = 'Postgraduate')">
        </asp:AccessDataSource>
        <br />
        <asp:AccessDataSource ID="CoreELDSPG" runat="server" 
            DataFile="~/App_Data/CourseInfo.mdb" 
            SelectCommand="SELECT DISTINCT [Core/Elective] AS column1 FROM [UnitMan]">
        </asp:AccessDataSource>
        <p>
            Course Name&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="CNameDDPG" runat="server" DataSourceID="CNamePG" 
                DataTextField="CourceTitle" DataValueField="CourceTitle">
            </asp:DropDownList>
        </p>
        <p>
            Unit Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="UNameDDPG" runat="server" DataSourceID="UNamePG" 
                DataTextField="UnitTitle" DataValueField="UnitTitle">
            </asp:DropDownList>
        </p>
        <p>
            Year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="YrPG" runat="server"></asp:TextBox>
        </p>
        <p>
            Semster&nbsp;
            <asp:TextBox ID="SemesterPG" runat="server"></asp:TextBox>
        </p>
        <p>
            Core / Elective&nbsp;&nbsp;
            <asp:DropDownList ID="CEDDPG" runat="server" DataSourceID="CoreELDSPG" 
                DataTextField="column1" DataValueField="column1">
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="AddPGMan" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                InsertCommand="INSERT INTO UnitMan (CourceTitle, UnitTitle, [Year], Semster, [Core/Elective]) VALUES (@CtitleDDPG, @UTitleDDPG, @YrPG, @SemesterPG, @CEDDPG)" 
                ProviderName="System.Data.OleDb">
                <InsertParameters>
                    <asp:ControlParameter ControlID="CNameDDPG" Name="CtitleDDPG" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="UNameDDPG" Name="UTitleDDPG" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="YrPG" Name="YrPG" PropertyName="Text" />
                    <asp:ControlParameter ControlID="SemesterPG" Name="SemesterPG" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="CEDDPG" Name="CEDDPG" 
                        PropertyName="SelectedValue" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="CoursemanUPDUG" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                ProviderName="System.Data.OleDb" 
                
                UpdateCommand="UPDATE CoursePoints SET CurrentPoints = CurrentPoints + 20 WHERE CourseTitle = (@CNamea)">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="CNameDDPG" Name="CNamea" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        <p>
            <asp:SqlDataSource ID="CourseUPDPG" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                ProviderName="System.Data.OleDb" 
                UpdateCommand="UPDATE [Cource Details] SET CurrentCPoints = CurrentCPoints + 20 WHERE CourceTitle = (@CNamaee)">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="CNameDDPG" Name="CNamaee" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        <p>
            <asp:SqlDataSource ID="CStatUpDPG" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                ProviderName="System.Data.OleDb" 
                
                UpdateCommand="UPDATE [Cource Details] SET CourceStatus = 'Enrollmet Approved' WHERE (CurrentCPoints = [CourceCredit Points])"></asp:SqlDataSource>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Add" />
        &nbsp;<asp:Button ID="homebtn44" runat="server" Text="Back" />
        <p>
            <asp:AccessDataSource ID="CManDSPG" runat="server" 
                DataFile="~/App_Data/CourseInfo.mdb" SelectCommand="SELECT * FROM [UnitMan]">
            </asp:AccessDataSource>
        <p>
            <asp:GridView ID="CManGVPG" runat="server" AllowPaging="True" 
                AllowSorting="True" DataSourceID="CManDSPG">
            </asp:GridView>
    </div>
    </form>
</body>
</html>
