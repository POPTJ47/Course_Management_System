﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CreateCourse.aspx.vb" Inherits="Assignment2.CreateCourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        Add a new course</h1>

    Course ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Cid" runat="server"></asp:TextBox> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="Cid" Display="Dynamic" 
            ErrorMessage="Course Code must be One Upper Case letter Followed by two numbers (ie-Y55)" 
            ValidationExpression="[A-Z0-90-9]+$"></asp:RegularExpressionValidator>
            
        <br />
        <br />
        Course Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="CTitle" runat="server"></asp:TextBox> <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="CTitle" Display="Dynamic" 
            ErrorMessage="Course title must be longer than 5 characters" 
            ValidationExpression="^.{5,255}$"></asp:RegularExpressionValidator>
       

        <br />
        <br />
        Course Coordinator&nbsp;&nbsp;
        <asp:TextBox ID="CCordinator" runat="server"></asp:TextBox>
        &nbsp;<br />
        <asp:AccessDataSource ID="CTypeDS" runat="server" 
            DataFile="~/App_Data/CourseInfo.mdb" 
            SelectCommand="SELECT DISTINCT CourceType, CourceType + '^' + [CCP] AS Exp FROM [Cource Details]">
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="CTypeDS0" runat="server" 
            DataFile="~/App_Data/CourseInfo.mdb" 
            
            SelectCommand="SELECT DISTINCT CourceType, CourceType + '^' + [CCP] AS Exp FROM [Cource Details]">
        </asp:AccessDataSource>
        <br />
        Course Type&nbsp;
        <asp:DropDownList ID="CTypeDD" runat="server" DataSourceID="CTypeDS" 
            DataTextField="CourceType" DataValueField="Exp" AutoPostBack="True">
        </asp:DropDownList>
        &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="CTypeDS" 
            DataTextField="CourceType" DataValueField="CourceType" Height="1px" 
            Width="1px" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        Course Credit Points&nbsp;&nbsp;
        <asp:Label ID="CCP" runat="server" Text=""></asp:Label>
        <br />
        <br />
        Course Duration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="CDuration" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        Course Status&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="CStatus" runat="server" Text="Pending"></asp:Label>
        <br />
        <asp:SqlDataSource ID="AddCourse" runat="server" 
            ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
            InsertCommand="INSERT INTO [Cource Details] (CourceCode, CourceTitle, CourceCoordinator, CourceType, [CourceCredit Points], CourceDuration, CourceStatus, CCP) VALUES (@Cid, @CTitle, @CCordinator, @CType, @CCP, CDuration, @CStatus, @CCPP)" 
            ProviderName="System.Data.OleDb">
            <InsertParameters>
                <asp:ControlParameter ControlID="Cid" Name="Cid" PropertyName="Text" />
                <asp:ControlParameter ControlID="CTitle" Name="CTitle" PropertyName="Text" />
                <asp:ControlParameter ControlID="CCordinator" Name="CCordinator" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList2" Name="CType" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="CCP" Name="CCP" PropertyName="Text" />
                <asp:ControlParameter ControlID="CDuration" Name="CDuration" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="CStatus" Name="CStatus" PropertyName="Text" />
                <asp:ControlParameter ControlID="CCP" Name="CCPP" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:Button ID="Btn" runat="server" Text="Add" />
    &nbsp;
        <asp:Button ID="Btn6" runat="server" Text="Back" />
    </div>
    </form>
</body>
</html>
