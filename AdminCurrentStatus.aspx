<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminCurrentStatus.aspx.vb"
    Inherits="AdminCurrentUser" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel ID="upcurrent" runat="server">
            <ContentTemplate>
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
                                                                            <td align="right">
                                                                                <asp:Image ID="imgmain" runat="server" Width="250px" Height="250px" ImageAlign="AbsMiddle"
                                                                                    ImageUrl="~/Images/imgmain.jpg" />
                                                                            </td>
                                                                            <td align="left">
                                                                                <asp:Label ID="lblmain" runat="server" Text="MEDIA MANAGEMENT SYSTEM" CssClass="heading"></asp:Label>
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="3">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="2" align="left" style="padding-left: 85px;">
                                                                                <asp:Label ID="lblwel" runat="server" CssClass="lbl" Font-Bold="true"></asp:Label>
                                                                            </td>
                                                                            <td align="right" style="padding-right: 85px;">
                                                                                <asp:LinkButton ID="lbtnlogout" runat="server" CssClass="lbtn" Font-Underline="false"
                                                                                    Text="LogOut"></asp:LinkButton>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="3" align="center">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="3" align="center">
                                                                                <hr class="horizontal" />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="3" align="center">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="center" colspan="3">
                                                                                <table border="0" cellpadding="0" cellspacing="0" width="90%">
                                                                                    <tr>
                                                                                        <td id="tdcurrent" runat="server" style="border-bottom: Solid 8px Gray; width: 33%;
                                                                                            border-top-right-radius: 25px; -moz-border-radius-topright: 25px; -webkit-border-top-right-radius: 25px;
                                                                                            border-top-left-radius: 25px; -moz-border-radius-topleft: 25px; -webkit-border-top-left-radius: 25px;">
                                                                                            <asp:LinkButton ID="lbtncurrent" runat="server" Text="Current Status" CssClass="lbtn"
                                                                                                Font-Bold="true" Font-Underline="false"></asp:LinkButton>
                                                                                        </td>
                                                                                        <td id="tduser" runat="server" style="border-bottom: Solid 8px Gray; width: 33%;
                                                                                            border-top-right-radius: 25px; -moz-border-radius-topright: 25px; -webkit-border-top-right-radius: 25px;
                                                                                            border-top-left-radius: 25px; -moz-border-radius-topleft: 25px; -webkit-border-top-left-radius: 25px;">
                                                                                            <asp:LinkButton ID="lbtnuser" runat="server" Text="User Registration" CssClass="lbtn"
                                                                                                Font-Bold="true" Font-Underline="false"></asp:LinkButton>
                                                                                        </td>
                                                                                        <td id="tdreport" runat="server" style="border-bottom: Solid 8px Gray; width: 33%;
                                                                                            border-top-right-radius: 25px; -moz-border-radius-topright: 25px; -webkit-border-top-right-radius: 25px;
                                                                                            border-top-left-radius: 25px; -moz-border-radius-topleft: 25px; -webkit-border-top-left-radius: 25px;">
                                                                                            <asp:LinkButton ID="lbtnreport" runat="server" Text="Reports" CssClass="lbtn" Font-Bold="true"
                                                                                                Font-Underline="false"></asp:LinkButton>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="3" align="center">
                                                                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                <tr>
                                                                                                    <td align="center">
                                                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                            <tr>
                                                                                                                <td align="center">
                                                                                                                    <asp:Panel ID="pnlreview" runat="server" Width="85%" CssClass="pnlsub">
                                                                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:Label ID="lblrreview" runat="server" CssClass="subsubheading" Text="Site Reviews"></asp:Label>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="center">
                                                                                                                                    <hr class="horizontal" />
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td>
                                                                                                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                                        <tr>
                                                                                                                                            <td align="right" style="width: 50%">
                                                                                                                                                <asp:Label ID="lblrep" runat="server" Text="No. Of Reporters" CssClass="lbl"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="center" style="width: 2%">
                                                                                                                                                <asp:Label ID="lblcol1" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left" style="width: 48%">
                                                                                                                                                <asp:Label ID="lblreporters" runat="server" CssClass="lbl"></asp:Label>&nbsp;
                                                                                                                                                <asp:LinkButton ID="lbtnreporters" runat="server" Text="[ View ]" CssClass="lbtn"
                                                                                                                                                    Font-Bold="true"></asp:LinkButton>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td align="right">
                                                                                                                                                <asp:Label ID="lbldi" runat="server" Text="No. Of Desk Inchargers" CssClass="lbl"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="center">
                                                                                                                                                <asp:Label ID="lblcol2" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left">
                                                                                                                                                <asp:Label ID="lbldeskinchargers" runat="server" CssClass="lbl"></asp:Label>&nbsp;
                                                                                                                                                <asp:LinkButton ID="lbtndeskinchargers" runat="server" Text="[ View ]" CssClass="lbtn"
                                                                                                                                                    Font-Bold="true"></asp:LinkButton>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td align="right">
                                                                                                                                                <asp:Label ID="lbledi" runat="server" Text="No. Of Editors" CssClass="lbl"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="center">
                                                                                                                                                <asp:Label ID="lblcol3" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left">
                                                                                                                                                <asp:Label ID="lbleditors" runat="server" CssClass="lbl"></asp:Label>&nbsp;
                                                                                                                                                <asp:LinkButton ID="lbtneditors" runat="server" Text="[ View ]" CssClass="lbtn" Font-Bold="true"></asp:LinkButton>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td align="right">
                                                                                                                                                <asp:Label ID="lblproof" runat="server" Text="No. Of Proof Readers" CssClass="lbl"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="center">
                                                                                                                                                <asp:Label ID="lblcol4" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left">
                                                                                                                                                <asp:Label ID="lblproofreaders" runat="server" CssClass="lbl"></asp:Label>&nbsp;
                                                                                                                                                <asp:LinkButton ID="lbtnproofreaders" runat="server" Text="[ View ]" CssClass="lbtn"
                                                                                                                                                    Font-Bold="true"></asp:LinkButton>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td align="right">
                                                                                                                                                <asp:Label ID="lblpo" runat="server" Text="No. Of Posts in Last Week" CssClass="lbl"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="center">
                                                                                                                                                <asp:Label ID="lblcol5" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left">
                                                                                                                                                <asp:Label ID="lblposts" runat="server" CssClass="lbl"></asp:Label>&nbsp;
                                                                                                                                                <asp:LinkButton ID="lbtnposts" runat="server" Text="[ View ]" CssClass="lbtn" Font-Bold="true"></asp:LinkButton>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
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
                                                                                                                <td align="center">
                                                                                                                    <asp:Panel ID="pnlstories" runat="server" CssClass="pnlsub" Width="85%">
                                                                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:Label ID="lblstorieshead" runat="server" CssClass="subsubheading" Text="Last 10 Stories Posted"></asp:Label>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="center">
                                                                                                                                    <hr class="horizontal" />
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="center" style="padding-bottom: 10px">
                                                                                                                                    <asp:GridView ID="gdvstories" runat="server" AutoGenerateColumns="false" Width="85%"
                                                                                                                                        CellPadding="5" CellSpacing="5" HeaderStyle-BackColor="Gray" HeaderStyle-Font-Names="Calibri"
                                                                                                                                        HeaderStyle-Font-Size="13px" HeaderStyle-Font-Bold="true" GridLines="Horizontal">
                                                                                                                                        <Columns>
                                                                                                                                            <asp:TemplateField HeaderText="Sr No." ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <%#Container.DataItemIndex + 1%>
                                                                                                                                                </ItemTemplate>
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="Headline" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:Label ID="lblheadline" runat="server" Text='<%# Eval("Headline") %>' CssClass="lbl"></asp:Label>
                                                                                                                                                </ItemTemplate>
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="Source" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:Label ID="lblsource" runat="server" Text='<%# Eval("Source") %>' CssClass="lbl"></asp:Label>
                                                                                                                                                </ItemTemplate>
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="Author" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:Label ID="lblauthor" runat="server" Text='<%# Eval("Author") %>' CssClass="lbl"></asp:Label>
                                                                                                                                                </ItemTemplate>
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="Posted Time" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:Label ID="lbltime" runat="server" Text='<%# Eval("PostedDateTime","{0:d}") %>'
                                                                                                                                                        CssClass="lbl"></asp:Label>
                                                                                                                                                </ItemTemplate>
                                                                                                                                            </asp:TemplateField>
                                                                                                                                        </Columns>
                                                                                                                                    </asp:GridView>
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
                                                                                                                <td align="center">
                                                                                                                    <asp:Panel ID="pnlusers" runat="server" CssClass="pnlsub" Width="85%">
                                                                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:Label ID="lbluserhead" runat="server" CssClass="subsubheading" Text="Last 5 Users Created"></asp:Label>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="center">
                                                                                                                                    <hr class="horizontal" />
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="center" style="padding-bottom: 10px">
                                                                                                                                    <asp:GridView ID="gdvusers" runat="server" AutoGenerateColumns="false" Width="85%"
                                                                                                                                        CellPadding="5" CellSpacing="5" HeaderStyle-BackColor="Gray" HeaderStyle-Font-Names="Calibri"
                                                                                                                                        HeaderStyle-Font-Size="13px" HeaderStyle-Font-Bold="true" GridLines="Horizontal">
                                                                                                                                        <Columns>
                                                                                                                                            <asp:TemplateField HeaderText="Sr No." ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <%#Container.DataItemIndex + 1%>
                                                                                                                                                </ItemTemplate>
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="Full Name" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("FullName") %>' CssClass="lbl"></asp:Label>
                                                                                                                                                </ItemTemplate>
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="User Name" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:Label ID="lblusername" runat="server" Text='<%# Eval("UserName") %>' CssClass="lbl"></asp:Label>
                                                                                                                                                </ItemTemplate>
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="Mobile" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:Label ID="lblmobile" runat="server" Text='<%# Eval("Mobile") %>' CssClass="lbl"></asp:Label>
                                                                                                                                                </ItemTemplate>
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="User Type" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:Label ID="lbltype" runat="server" Text='<%# Eval("UserTypeName") %>' CssClass="lbl"></asp:Label>
                                                                                                                                                </ItemTemplate>
                                                                                                                                            </asp:TemplateField>
                                                                                                                                        </Columns>
                                                                                                                                    </asp:GridView>
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
                                                                        <tr>
                                                                            <td align="center" colspan="3">
                                                                                <hr class="horizontal" />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="3">
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
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
