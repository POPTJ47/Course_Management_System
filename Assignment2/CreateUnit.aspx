<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CreateUnit.aspx.vb" Inherits="Assignment2.CreateUnit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        Add a new unit </h1>
        <p>
            Unit code&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UName" runat="server"></asp:TextBox>  
        &nbsp;&nbsp;  <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
        ControlToValidate="UName" 
        ErrorMessage="Unit code must be three uppercase letters follwed by four digits (ie. CSU2288)" 
        ValidationExpression="[A-ZA-ZA-Z0-90-90-90-9]+$"></asp:RegularExpressionValidator>
             
        </p>
        <p>
    &nbsp;Unit title&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UTitle" runat="server"></asp:TextBox>
        &nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
            ControlToValidate="UTitle" ErrorMessage="Unit Title must be longer than five characters, " 
            ValidationExpression="^.{5,255}$"></asp:RegularExpressionValidator>
            
        </p>
        <p>
    &nbsp;Unit Coordinator&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UCoordinator" runat="server"></asp:TextBox>
        &nbsp;<asp:AccessDataSource ID="UCPDS" runat="server" 
                DataFile="~/App_Data/CourseInfo.mdb" 
                SelectCommand="SELECT DISTINCT [UnitCreditPoints] FROM [Unitss]">
            </asp:AccessDataSource>
        </p>
        <p>
    &nbsp;Unit credit points&nbsp;&nbsp;
            <asp:DropDownList ID="UCPDD" runat="server" DataSourceID="UCPDS" 
                DataTextField="UnitCreditPoints" DataValueField="UnitCreditPoints">
            </asp:DropDownList>
        </p>
        <p>
            <asp:AccessDataSource ID="UtypeDS" runat="server" 
                DataFile="~/App_Data/CourseInfo.mdb" 
                SelectCommand="SELECT DISTINCT [UnitType] FROM [Unitss]">
            </asp:AccessDataSource>
        </p>
        <p>
    &nbsp;Unit type&nbsp;
            <asp:DropDownList ID="UTypeDD" runat="server" DataSourceID="UtypeDS" 
                DataTextField="UnitType" DataValueField="UnitType">
            </asp:DropDownList>
        </p>
        <p>
            <asp:SqlDataSource ID="AddUnit" runat="server" 
                ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\CourseInfo.mdb;Persist Security Info=True" 
                InsertCommand="INSERT INTO Unitss (UnitCode, UnitTitle, UnitCoordinator, UnitCreditPoints, UnitType) VALUES (@UCode, @UTitle, @UCoordinator, @UCPDD, @UTypeDD)" 
                ProviderName="System.Data.OleDb">
                <InsertParameters>
                    <asp:ControlParameter ControlID="UName" Name="UCode" PropertyName="Text" />
                    <asp:ControlParameter ControlID="UTitle" Name="UTitle" PropertyName="Text" />
                    <asp:ControlParameter ControlID="UCoordinator" Name="UCoordinator" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="UCPDD" Name="UCPDD" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="UTypeDD" Name="UtypeDD" 
                        PropertyName="SelectedValue" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Add" />
        &nbsp;
            <asp:Button ID="Button9" runat="server" Text="Back" />
        </p>

    </div>
    </form>
</body>
</html>
