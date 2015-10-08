<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HomePage.aspx.vb" Inherits="Assignment2.HomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <H1> Home Page</H1> 
    <H2>Press Button to do your task</H2>
        <p>
            <asp:Button ID="CoursesBtn" runat="server" Text="Courses" />
            <p>
            <asp:Button ID="UnitsBtn" runat="server" Text="Units" />
            </p>
            <p>
            <asp:Button ID="CMBTN" runat="server" Text="Manage Courses" />
            </p>
            <p>
            <asp:Button ID="CRepBtn" runat="server" Text="Search and generate course reports" />
        </p>
    </div>
    </form>
</body>
</html>
