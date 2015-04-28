<%@ Page Language="VB" AutoEventWireup="false" CodeFile="clientmaster.aspx.vb" Inherits="clientmaster" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="sc1" runat="server">
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
                                                                                <asp:LinkButton ID="lbtnlogout" runat="server" CssClass="lbtn" Font-Underline="false"
                                                                                    Text="Home"></asp:LinkButton>
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
                                                                                        <td id="tdcurrent" runat="server" style="border-bottom: Solid 8px Gray; width: 33%;border-top-right-radius: 25px; -moz-border-radius-topright: 25px; -webkit-border-top-right-radius: 25px;
                                                         border-top-left-radius: 25px; -moz-border-radius-topleft: 25px; -webkit-border-top-left-radius: 25px;">
                                                                                            <asp:LinkButton ID="lbtncurrent" runat="server" Text="Current Status" CssClass="lbtn"
                                                                                                Font-Bold="true" Font-Underline="false"></asp:LinkButton>
                                                                                        </td>
                                                                                        <td id="tduser" runat="server" style="border-bottom: Solid 8px Gray; width: 33%;border-top-right-radius: 25px; -moz-border-radius-topright: 25px; -webkit-border-top-right-radius: 25px;
                                                                                            border-top-left-radius: 25px; -moz-border-radius-topleft: 25px; -webkit-border-top-left-radius: 25px;">
                                                                                            <asp:LinkButton ID="lbtnuser" runat="server" Text="Client Registration" CssClass="lbtn"
                                                                                                Font-Bold="true" Font-Underline="false"></asp:LinkButton>
                                                                                        </td>
                                                                                        <td id="tdreport" runat="server" style="border-bottom: Solid 8px Gray; width: 33%;
                                                                                            border-top-right-radius: 25px; -moz-border-radius-topright: 25px; -webkit-border-top-right-radius: 25px;
                                                                                            border-top-left-radius: 25px; -moz-border-radius-topleft: 25px; -webkit-border-top-left-radius: 25px;">
                                                                                            <asp:LinkButton ID="lbtnreport" runat="server" Text="Reports" CssClass="lbtn" Font-Bold="true"
                                                                                                Font-Underline="false" Visible="False"></asp:LinkButton>
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
                                                                                                    <td>
                                                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="left" style="padding-left: 85px;">
                                                                                                                    <asp:Button ID="btncreateuser" runat="server" Text="Create Client" 
                                                                                                                        CssClass="btn" />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr id="trcreate" runat="server">
                                                                                                                <td align="center">
                                                                                                                    <asp:Panel ID="pnlcreateuser" runat="server" CssClass="pnlsub" Width="85%">
                                                                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                <td align="center" colspan="3">
                                                                                                                                    <asp:Label ID="lblcreatehead" runat="server" Text="Create Client" 
                                                                                                                                        CssClass="subsubheading"></asp:Label>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="center" colspan="3">
                                                                                                                                    <hr class="horizontal" />
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="center" colspan="3">
                                                                                                                                    <asp:Label ID="lblerr" runat="server" CssClass="error"></asp:Label>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="right" style="width: 30%">
                                                                                                                                    <asp:Label ID="Label1" runat="server" Text="Client Code" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center" style="width: 2%">
                                                                                                                                    <asp:Label ID="Label2" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left" style="width: 68%">
                                                                                                                                    <asp:TextBox ID="txt_code" runat="server" CssClass="txt4"></asp:TextBox>
                                                                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="user"
                                                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                                                    
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            
                                                                                                                            <tr>
                                                                                                                                <td align="right" style="width: 30%">
                                                                                                                                    <asp:Label ID="lblfullname" runat="server" Text="Full Name" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center" style="width: 2%">
                                                                                                                                    <asp:Label ID="lblcol1" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left" style="width: 68%">
                                                                                                                                    <asp:TextBox ID="txtname" runat="server" CssClass="txt4"></asp:TextBox>
                                                                                                                                    <asp:RequiredFieldValidator ID="rfvtxtname" runat="server" ControlToValidate="txtname"
                                                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="user"
                                                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                                                    <ajax:ValidatorCalloutExtender ID="vcetxtname" runat="server" CssClass="customvalidator"
                                                                                                                                        HighlightCssClass="ajaxvalidator" TargetControlID="rfvtxtname" Enabled="true">
                                                                                                                                    </ajax:ValidatorCalloutExtender>
                                                                                                                                    <ajax:FilteredTextBoxExtender ID="ftbtxtname" runat="server" FilterMode="ValidChars"
                                                                                                                                        FilterType="LowercaseLetters,UppercaseLetters,Custom" ValidChars="a-zA-Z " TargetControlID="txtname">
                                                                                                                                    </ajax:FilteredTextBoxExtender>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="right" style="width: 30%">
                                                                                                                                    <asp:Label ID="Label3" runat="server" Text="Address" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center" style="width: 2%">
                                                                                                                                    <asp:Label ID="Label4" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left" style="width: 68%">
                                                                                                                                    <asp:TextBox ID="txt_addr" TextMode="MultiLine"  runat="server" CssClass="txt4"></asp:TextBox>
                                                                                                                                   
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            
                                                                                                                            <tr>
                                                                                                                                <td align="right">
                                                                                                                                    <asp:Label ID="lblgender" runat="server" Text="Gender" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:Label ID="lblcol2" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left">
                                                                                                                                    <asp:RadioButtonList ID="rbtnlgen" runat="server" CssClass="lbl" CellPadding="2"
                                                                                                                                        CellSpacing="2" RepeatColumns="2" RepeatDirection="Horizontal">
                                                                                                                                        <asp:ListItem Text="Male" Value="Male" Selected="True"></asp:ListItem>
                                                                                                                                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                                                                                                                    </asp:RadioButtonList>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="right">
                                                                                                                                    <asp:Label ID="lblmobile" runat="server" Text="Mobile" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:Label ID="lblcol4" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left">
                                                                                                                                    <asp:TextBox ID="txtmobile" runat="server" CssClass="txt1"></asp:TextBox>
                                                                                                                                    <asp:RequiredFieldValidator ID="rfvtxtmobile" runat="server" ControlToValidate="txtmobile"
                                                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="user"
                                                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                                                    <ajax:ValidatorCalloutExtender ID="vcetxtmobile" runat="server" CssClass="customvalidator"
                                                                                                                                        HighlightCssClass="ajaxvalidator" TargetControlID="rfvtxtmobile" 
                                                                                                                                        Enabled="true">
                                                                                                                                    </ajax:ValidatorCalloutExtender>
                                                                                                                                    <ajax:FilteredTextBoxExtender ID="ftbtxtmobile" runat="server" FilterMode="ValidChars"
                                                                                                                                        FilterType="Numbers" ValidChars="0-9" TargetControlID="txtmobile">
                                                                                                                                    </ajax:FilteredTextBoxExtender>
                                                                                                                                    <asp:RegularExpressionValidator ID="revtxtmobile" runat="server" 
                                                                                                                                        ControlToValidate="txtmobile" Display="Dynamic" ErrorMessage="10 Digits" 
                                                                                                                                        ForeColor="Red" SetFocusOnError="true" ValidationExpression="^[0-9]{10}" 
                                                                                                                                        ValidationGroup="user"></asp:RegularExpressionValidator>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="right">
                                                                                                                                    <asp:Label ID="lblemail" runat="server" Text="Email ID" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:Label ID="lblcol5" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left">
                                                                                                                                    <asp:TextBox ID="txtemail" runat="server" CssClass="txt4"></asp:TextBox>
                                                                                                                                    <asp:RequiredFieldValidator ID="rfvtxtemail" runat="server" ControlToValidate="txtemail"
                                                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="user"
                                                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                                                    <ajax:ValidatorCalloutExtender ID="vcetxtemail" runat="server" CssClass="customvalidator"
                                                                                                                                        HighlightCssClass="ajaxvalidator" TargetControlID="rfvtxtemail" 
                                                                                                                                        Enabled="true">
                                                                                                                                    </ajax:ValidatorCalloutExtender>
                                                                                                                                    <asp:RegularExpressionValidator ID="revtxtemail" runat="server" ControlToValidate="txtemail"
                                                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                                                                                                        ValidationGroup="user" ForeColor="Red"></asp:RegularExpressionValidator>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td>
                                                                                                                                </td>
                                                                                                                                <td>
                                                                                                                                </td>
                                                                                                                                <td align="left">
                                                                                                                                    <asp:Button ID="btncreate" runat="server" CssClass="btn" Text="create" 
                                                                                                                                        ValidationGroup="user" />
                                                                                                                                    <asp:Button ID="btncancel" runat="server" CssClass="btn" Text="Cancel" />
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
                                                                                                                    <asp:Label ID="lblerror" runat="server" CssClass="error"></asp:Label>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td align="center" style="padding-bottom: 10px">
                                                                                                                    <asp:GridView ID="gdvusers" runat="server" AutoGenerateColumns="false" Width="85%"
                                                                                                                        CellPadding="5" CellSpacing="5" HeaderStyle-BackColor="Gray" HeaderStyle-Font-Names="Calibri"
                                                                                                                        HeaderStyle-Font-Size="13px" HeaderStyle-Font-Bold="true">
                                                                                                                        <Columns>
                                                                                                                            <asp:TemplateField HeaderText="Clientcode" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <%#Eval("clientcode")%>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:TemplateField HeaderText="Full Name" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("nm") %>' CssClass="lbl"></asp:Label>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:TemplateField HeaderText="address" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Label ID="lbladdr" runat="server" Text='<%# Eval("addr") %>' CssClass="lbl"></asp:Label>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                             <asp:TemplateField HeaderText="gender" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Label ID="lblgender" runat="server" Text='<%# Eval("gender") %>' CssClass="lbl"></asp:Label>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                            
                                                                                                                            <asp:TemplateField HeaderText="email" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Label ID="lblemail" runat="server" Text='<%# Eval("email") %>' CssClass="lbl"></asp:Label>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:TemplateField HeaderText="phno" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Label ID="lblphno" runat="server" Text='<%# Eval("phno") %>' CssClass="lbl"></asp:Label>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:TemplateField HeaderText="Edit" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Button ID="btnedit" runat="server" CssClass="btn" Text="Edit" CommandArgument='<%# Eval("clientcode") %>'
                                                                                                                                        CommandName="Edi" />
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Button ID="btndel" runat="server" CssClass="btn" CommandArgument='<%# Eval("clientcode") %>'
                                                                                                                                        CommandName="Del" Text="Delete" />
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                        </Columns>
                                                                                                                    </asp:GridView>
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
          
    </div>
    </form>
</body>
</html>

