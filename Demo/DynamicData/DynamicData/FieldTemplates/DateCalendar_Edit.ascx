<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DateCalendar_Edit.ascx.cs" Inherits="DynamicData_FieldTemplates_DateCalendar_EditField" %>

<asp:TextBox ID="TextBox1" runat="server" Text='<%# GetDateString() %>'></asp:TextBox>

<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="TextBox1" Display="Dynamic" Enabled="false" />
<asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" ControlToValidate="TextBox1" Display="Dynamic" Enabled="false" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" ControlToValidate="TextBox1" Display="Dynamic" />

<asp:Calendar ID="Calendar1" runat="server" 
    VisibleDate="<%# (FieldValue != null) ? FieldValue : DateTime.Now %>"
    SelectDate="<%# (FieldValue != null) ? FieldValue : DateTime.Now %>"
    OnSelectionChanged="Calendar1_SelectionChanged" />