<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DeskIncharge.aspx.vb" Inherits="DeskIncharge" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet/Style.css" rel="stylesheet" type="text/css" />

    <script src="wysiwyg.js" type="text/javascript"></script>

    <script src="ModalJavaScript.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
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
                                                                    <td colspan="3" align="center">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" align="left" style="padding-left: 85px">
                                                                        <asp:Label ID="lblwel" runat="server" CssClass="lbl" Font-Bold="true"></asp:Label>
                                                                    </td>
                                                                    <td align="right" style="padding-right: 85px;">
                                                                     <asp:LinkButton ID="lbtnmanageclient" runat="server" CssClass="lbtn" Font-Underline="false"
                                                                            Text="Manage Client"></asp:LinkButton> <br /> 
                                                                             <asp:LinkButton ID="lbtnmanageadv" runat="server" CssClass="lbtn" Font-Underline="false"
                                                                            Text="Manage Adv"></asp:LinkButton> <br /> 
                                                                            
                                                                        <asp:LinkButton ID="lbtnlogout" runat="server" CssClass="lbtn" Font-Underline="false"
                                                                            Text="LogOut"></asp:LinkButton>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="3">
                                                                        <hr class="horizontal" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="3" align="center">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" colspan="3">
                                                                        <asp:Label ID="lblerr" runat="server" CssClass="error"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="3" align="center">
                                                                        <table border="0" cellpadding="0" width="100%" cellspacing="0">
                                                                            <tr>
                                                                                <td align="center">
                                                                                    <asp:GridView ID="gdvdeskstories" runat="server" AutoGenerateColumns="false" Width="85%"
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
                                                                                            <asp:TemplateField HeaderText="Status" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("Status") %>' CssClass="lbl"></asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="View" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Button ID="btnview" runat="server" Text="Image" CssClass="btn" CommandArgument='<%# Eval("StoryId") %>'
                                                                                                        CommandName="View" OnClientClick="StartProgressBarDesk()" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Edit" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Button ID="btnedit" runat="server" Text="Edit" CommandArgument='<%# Eval("StoryId") %>'
                                                                                                        CommandName="Edi" CssClass="btn" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateField>
                                                                                        </Columns>
                                                                                    </asp:GridView>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                </td>
                                                                            </tr>
                                                                            <tr id="trcreate" runat="server">
                                                                                <td align="center">
                                                                                    <asp:Panel ID="pnlcreate" runat="server" Width="85%" CssClass="pnlsub">
                                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                            <tr>
                                                                                                <td align="center" colspan="3">
                                                                                                    <asp:Label ID="lblhead" runat="server" Text="Edit Story" CssClass="subsubheading"></asp:Label>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" colspan="3">
                                                                                                    <hr class="horizontal" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" colspan="3">
                                                                                                    <asp:Label ID="lblerror" runat="server" CssClass="error"></asp:Label>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="right" width="30%">
                                                                                                    <asp:Label ID="lblheadline" runat="server" Text="Story Headline" CssClass="lbl"></asp:Label>
                                                                                                </td>
                                                                                                <td align="center" width="2%">
                                                                                                    <asp:Label ID="lblcol1" runat="server" CssClass="lbl" Text=":"></asp:Label>
                                                                                                </td>
                                                                                                <td align="left" width="68%">
                                                                                                    <asp:TextBox ID="txtheadline" runat="server" CssClass="txt4"></asp:TextBox>
                                                                                                    <asp:RequiredFieldValidator ID="rfvtxtheadline" runat="server" ControlToValidate="txtheadline"
                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="story"
                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                    <ajax:ValidatorCalloutExtender ID="vcetxtheadline" runat="server" CssClass="customvalidator"
                                                                                                        HighlightCssClass="ajaxvalidator" TargetControlID="rfvtxtheadline" Enabled="true">
                                                                                                    </ajax:ValidatorCalloutExtender>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="3">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" colspan="3">
                                                                                                    <asp:TextBox ID="txtstory" runat="server" CssClass="txt4" TextMode="MultiLine" Width="800px"
                                                                                                        Height="600px"> </asp:TextBox>

                                                                                                    <script type="text/javascript" language="javascript">
                                                                                                                    generate_wysiwyg('txtstory');
                                                                                                    </script>

                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td colspan="3">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="right">
                                                                                                    <asp:Label ID="lblsource" runat="server" Text="Source" CssClass="lbl"></asp:Label>
                                                                                                </td>
                                                                                                <td align="center">
                                                                                                    <asp:Label ID="lblcol2" runat="server" CssClass="lbl" Text=":"></asp:Label>
                                                                                                </td>
                                                                                                <td align="left">
                                                                                                    <asp:TextBox ID="txtsource" runat="server" CssClass="txt3"></asp:TextBox>
                                                                                                    <asp:RequiredFieldValidator ID="rfvtxtsource" runat="server" ControlToValidate="txtsource"
                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="story"
                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                    <ajax:ValidatorCalloutExtender ID="vcetxtsource" runat="server" CssClass="customvalidator"
                                                                                                        HighlightCssClass="ajaxvalidator" TargetControlID="rfvtxtsource" Enabled="true">
                                                                                                    </ajax:ValidatorCalloutExtender>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" colspan="3">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" colspan="3">
                                                                                                    <asp:Label ID="lblheadphoto" runat="server" CssClass="subsubheading" Text="Upload Photos"></asp:Label>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" colspan="3">
                                                                                                    <hr class="horizontal" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" colspan="3">
                                                                                                    <asp:FileUpload ID="fu1" runat="server" CssClass="txt4" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" colspan="3">
                                                                                                    <asp:FileUpload ID="fu2" runat="server" CssClass="txt4" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" colspan="3">
                                                                                                    <asp:FileUpload ID="fu3" runat="server" CssClass="txt4" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center" colspan="3">
                                                                                                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn" ValidationGroup="story" />&nbsp;
                                                                                                    <asp:Button ID="btnreject" runat="server" Text="Reject" CssClass="btn" />&nbsp;
                                                                                                    <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="3">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" colspan="3">
                                                                        <hr class="horizontal" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" colspan="3">
                                                                        <asp:Label ID="lblcopy" runat="server" Text="&copy; Copyright @Mediagroup" CssClass="lbl"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" colspan="3">
                                                                        <asp:Button ID="btnshowpopup" runat="server" Style="display: none" />
                                                                        <ajax:ModalPopupExtender ID="mpedview" runat="server" TargetControlID="hiddenField"
                                                                            BehaviorID="mpedview" PopupControlID="imgpop" BackgroundCssClass="modalbackground">
                                                                        </ajax:ModalPopupExtender>
                                                                        <img id="imgpop" src="Images/imgpop.gif" alt="" />
                                                                        <asp:HiddenField ID="hiddenField" runat="server" />
                                                                        <ajax:ModalPopupExtender ID="mpeview" runat="server" TargetControlID="btnshowpopup"
                                                                            PopupControlID="pnlview" CancelControlID="btncancelview" BackgroundCssClass="modalbackground">
                                                                        </ajax:ModalPopupExtender>
                                                                        <asp:Panel ID="pnlview" runat="server" CssClass="pnlmain" Width="500px" Style="padding: 10px 25px 10px 25px;"
                                                                            BackColor="White" ScrollBars="Vertical" Height="400px">
                                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                <tr>
                                                                                    <td>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">
                                                                                        <asp:Image ID="imgshow1" runat="server" AlternateText="Not Available" ImageAlign="AbsMiddle"
                                                                                            Height="200px" Width="200px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <hr class="horizontal" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">
                                                                                        <asp:Image ID="imgshow2" runat="server" AlternateText="Not Available" ImageAlign="AbsMiddle"
                                                                                            Height="200px" Width="200px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <hr class="horizontal" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">
                                                                                        <asp:Image ID="imgshow3" runat="server" AlternateText="Not Available" ImageAlign="AbsMiddle"
                                                                                            Height="200px" Width="200px" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:Button ID="btncancelview" runat="server" Text="Ok" CssClass="btn" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </asp:Panel>
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
    </div>
    </form>
</body>
</html>
