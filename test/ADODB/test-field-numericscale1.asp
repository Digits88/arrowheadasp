<!--#include file="../config/ADODB.inc"-->
Here is the test of Field NumericScale.<br>
<%
    Dim CN, RS

    Set CN = Server.CreateObject("ADODB.Connection")
    CN.Open Connect_URL, Connect_Username, Connect_Password
    Set RS = CN.Execute("SELECT StringField, IntField FROM Test ORDER BY IntField")

    %>NumericScale("StringField"): <%=RS("StringField").NumericScale%><br>
    NumericScale("IntField"): <%=RS("IntField").NumericScale%><br>
<%

    CN.Close
%>

The End.
