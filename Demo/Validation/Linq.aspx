<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Linq.aspx.cs" Inherits="LinqXML" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="EntityDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                    SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="PhoneNoFormat" HeaderText="PhoneNoFormat" 
                    SortExpression="PhoneNoFormat" />
                <asp:BoundField DataField="DialingCountryCode" HeaderText="DialingCountryCode" 
                    SortExpression="DialingCountryCode" />
                <asp:BoundField DataField="InternationalDialingCode" 
                    HeaderText="InternationalDialingCode" 
                    SortExpression="InternationalDialingCode" />
                <asp:BoundField DataField="InternetTLD" HeaderText="InternetTLD" 
                    SortExpression="InternetTLD" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
            ConnectionString="name=CustomerManagementEntities" 
            DefaultContainerName="CustomerManagementEntities" EnableDelete="True" 
            EnableFlattening="False" EnableInsert="True" EnableUpdate="True" 
            EntitySetName="Countries" EntityTypeFilter="Country">
        </asp:EntityDataSource>
    
    </div>
    </form>
</body>
</html>
