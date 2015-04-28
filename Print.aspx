<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Print.aspx.vb" Inherits="Print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet/Style.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript">
        function PrintDocument()
        {
            window.print();
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="left" style="padding-left: 25px">
                <asp:Button ID="btnback" runat="server" Text="Back" CssClass="btn" />
            </td>
            <td align="right" style="padding-right: 25px">
                <asp:Button ID="btnprint" runat="server" Text="Print" CssClass="btn" OnClientClick="PrintDocument()" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="lblheadline" runat="server" CssClass="lbl"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <hr class="horizontal" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblstory" runat="server" CssClass="lbl"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <hr class="horizontal" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Label ID="lblsource" runat="server" CssClass="lbl"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
