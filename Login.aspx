<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Media Management System</title>
    <link href="StyleSheet/Style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 250px;
        }
        .style2
        {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="sclogin" runat="server">
    </asp:ScriptManager>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td align="center">
                                        <table border="0" cellpadding="0" cellspacing="0" width="90%">
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Panel ID="pnlhead" runat="server" Width="100%" CssClass="pnlmain">
                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                            <tr>
                                                                <td colspan="3">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" class="style1">
                                                                    <asp:Image ID="imgmain" runat="server" Width="250px" Height="250px" ImageAlign="AbsMiddle"
                                                                        ImageUrl="~/Images/imgmain.jpg" />
                                                                </td>
                                                                <td align="left" class="style1">
                                                                    <asp:Label ID="lblmain" runat="server" Text="MEDIA MANAGEMENT SYSTEM" CssClass="heading"></asp:Label>
                                                                </td>
                                                                <td class="style1">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3" style="height: 80px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3" align="center">
                                                                    <asp:Panel ID="pnllogin" runat="server" CssClass="pnlsub" Width="50%">
                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                            <tr>
                                                                                <td align="center" class="style2">
                                                                                    <asp:Label ID="lbllogin" runat="server" Text="Login" CssClass="subheading"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center" style="height: 20px">
                                                                                    <hr class="horizontal" />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center">
                                                                                    <asp:Label ID="lblerror" runat="server" CssClass="error"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center">
                                                                                    <asp:TextBox ID="txtusername" runat="server" CssClass="txt4"></asp:TextBox>
                                                                                    <ajax:TextBoxWatermarkExtender ID="twetxtusername" runat="server" TargetControlID="txtusername"
                                                                                        WatermarkCssClass="watermark" WatermarkText="UserName.....">
                                                                                    </ajax:TextBoxWatermarkExtender>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center">
                                                                                    <asp:TextBox ID="txtpassword" runat="server" CssClass="txt4" 
                                                                                        TextMode="Password"></asp:TextBox>
                                                                                    <ajax:TextBoxWatermarkExtender ID="twetxtpassword" runat="server" TargetControlID="txtpassword"
                                                                                        WatermarkCssClass="watermark" WatermarkText="Password.....">
                                                                                    </ajax:TextBoxWatermarkExtender>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center">
                                                                                    <asp:DropDownList ID="ddlusertype" runat="server" CssClass="ddl">
                                                                                    </asp:DropDownList>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center">
                                                                                    <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn" OnClick="btnlogin_Click" />
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </asp:Panel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="3">
                                                                    <hr class="horizontal" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="3">
                                                                    <asp:Label ID="lblcopy" runat="server" Text="© Copyright @Mediagroup" 
                                                                        CssClass="lbl"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
