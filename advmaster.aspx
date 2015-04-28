<%@ Page Language="VB" AutoEventWireup="false" CodeFile="advmaster.aspx.vb" Inherits="advmaster" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link href="StyleSheet/Style.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style  type="text/css">

   

    </style>
</head>
<body>
<form id="frm1" runat="server"> 
<asp:ScriptManager ID="man1" runat="server"> </asp:ScriptManager>

     
    <div>
  

                                            <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="White">
                                            <tr>
                                                <td align="center">
                                                    <table border="0" cellpadding="0" cellspacing="0" width="90%" bgcolor="White">
                                                        <tr>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center">
                                                                <asp:Panel ID="pnlhead" runat="server" Width="100%" CssClass="pnlmain">
                                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="White">
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
                                                                                        <td id="tdcurrent" runat="server" style="border-bottom: Solid 8px Gray; width: 33%;
                                                                                            border-top-right-radius: 25px; -moz-border-radius-topright: 25px; -webkit-border-top-right-radius: 25px;
                                                                                            border-top-left-radius: 25px; -moz-border-radius-topleft: 25px; -webkit-border-top-left-radius: 25px;">
                                                                                            <asp:LinkButton ID="lbtncurrent" runat="server" Text="Current Status" CssClass="lbtn"
                                                                                                Font-Bold="true" Font-Underline="false"></asp:LinkButton>
                                                                                        </td>
                                                                                        <td id="tduser" runat="server" style="border-bottom: Solid 8px Gray; width: 33%;
                                                                                            border-top-right-radius: 25px; -moz-border-radius-topright: 25px; -webkit-border-top-right-radius: 25px;
                                                                                            border-top-left-radius: 25px; -moz-border-radius-topleft: 25px; -webkit-border-top-left-radius: 25px;">
                                                                                            <asp:LinkButton ID="lbtnuser" runat="server" Text="Place Advertisement" CssClass="lbtn"
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
                                                                                                                    <asp:Button ID="btncreateuser" runat="server" Text="Place Advertisement" 
                                                                                                                        CssClass="btn" />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr id="trcreate" runat="server">
                                                                                                                <td align="center">
                                                                                                                    <asp:Panel ID="pnlcreateuser" runat="server" CssClass="pnlsub" Width="85%" 
                                                                                                                        BackColor="White">
                                                                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                <td align="center" colspan="3">
                                                                                                                                    <asp:Label ID="lblcreatehead" runat="server" Text="Place Advertisement" 
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
                                                                                                                                    <asp:Label ID="Label5" runat="server" Text="SAP No" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center" style="width: 2%">
                                                                                                                                    <asp:Label ID="Label6" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left" style="width: 68%">
                                                                                                                                    <asp:TextBox ID="txt_sapno" runat="server" CssClass="txt4"></asp:TextBox>
                                                                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_sapno"
                                                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="user"
                                                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                                                    
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
                                                                                                                               
                                                                                                                               <asp:DropDownList ID="dd_clientcode" runat="server" AutoPostBack="True" > </asp:DropDownList>
                                                                                                                               <asp:Label ID="lbl_clientnm" runat="server" Text="" CssClass="lbl"></asp:Label>
                                                                                                                                    
                                                                                                                                    
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            
                                                                                                                            <tr>
                                                                                                                                <td align="right" style="width: 30%">
                                                                                                                                    <asp:Label ID="lblfullname" runat="server" Text="Agency" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center" style="width: 2%">
                                                                                                                                    <asp:Label ID="lblcol1" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left" style="width: 68%">
                                                                                                                                    <asp:TextBox ID="txt_agency" runat="server" CssClass="txt4"></asp:TextBox>
                                                                                                                                    <asp:RequiredFieldValidator ID="rfvtxtname" runat="server" ControlToValidate="txt_agency"
                                                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="user"
                                                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                                                    <ajax:ValidatorCalloutExtender ID="vcetxtname" runat="server" CssClass="customvalidator"
                                                                                                                                        HighlightCssClass="ajaxvalidator" TargetControlID="rfvtxtname" Enabled="true"></ajax:ValidatorCalloutExtender>
                                                                                                                                    <ajax:FilteredTextBoxExtender ID="ftbtxtname" runat="server" FilterMode="ValidChars"
                                                                                                                                        FilterType="LowercaseLetters,UppercaseLetters,Custom" ValidChars="a-zA-Z " TargetControlID="txt_agency"></ajax:FilteredTextBoxExtender>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="right" style="width: 30%">
                                                                                                                                    <asp:Label ID="Label3" runat="server" Text="place" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center" style="width: 2%">
                                                                                                                                    <asp:Label ID="Label4" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left" style="width: 68%">
                                                                                                                                    <asp:TextBox ID="txt_place" runat="server" CssClass="txt4"></asp:TextBox>
                                                                                                                                    <asp:RequiredFieldValidator ID="req_place" runat="server" ControlToValidate="txt_place"
                                                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="user"
                                                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                                                   
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            
                                                                                                                            <tr>
                                                                                                                                <td align="right" style="width: 30%">
                                                                                                                                    <asp:Label ID="Label7" runat="server" Text="Size" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center" style="width: 2%">
                                                                                                                                    <asp:Label ID="Label8" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left" style="width: 68%">
                                                                                                                                <asp:Label ID="Height" runat="server" Text="Hieght" CssClass="lbl"></asp:Label>
                                                                                                                                    <asp:TextBox ID="txt_height" runat="server" CssClass="txt4" Columns="6" 
                                                                                                                                        Width="61px"></asp:TextBox>
                                                                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_height"
                                                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="user"
                                                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                                                
                                                                                                                                <asp:Label ID="Label9" runat="server" Text="Width" CssClass="lbl"></asp:Label>
                                                                                                                                    <asp:TextBox ID="txt_width" runat="server" CssClass="txt4" Width="44px"></asp:TextBox>
                                                                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_width"
                                                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="user"
                                                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                                                        
                                                                                                                                        <asp:Label ID="Label10" runat="server" Text="SPCM" CssClass="lbl"></asp:Label>
                                                                                                                                        
                                                                                                                                        
                                                                                                                                   
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            
                                                                                                                            <tr>
                                                                                                                                <td align="right">
                                                                                                                                    <asp:Label ID="lblgender" runat="server" Text="Hues" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:Label ID="lblcol2" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left">
                                                                                                                                    <asp:RadioButtonList ID="rbtnhues" runat="server" CssClass="lbl" CellPadding="2"
                                                                                                                                        CellSpacing="2" RepeatColumns="2" RepeatDirection="Horizontal">
                                                                                                                                        <asp:ListItem Text="color" Value="color" Selected="True"></asp:ListItem>
                                                                                                                                        <asp:ListItem Text="BandW" Value="BandW"></asp:ListItem>
                                                                                                                                    </asp:RadioButtonList>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="right">
                                                                                                                                    <asp:Label ID="lblmobile" runat="server" Text="position" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:Label ID="lblcol4" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left">
                                                                                                                                    <asp:TextBox ID="txt_position" runat="server" CssClass="txt1"></asp:TextBox>
                                                                                                                                    <asp:RequiredFieldValidator ID="rfvtxtmobile" runat="server" ControlToValidate="txt_position"
                                                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="user"
                                                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>                                                                                                                                    
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="right">
                                                                                                                                    <asp:Label ID="lblemail" runat="server" Text="Date Of Insertion" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:Label ID="lblcol5" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left">
                                                                                                                                    <asp:TextBox ID="txt_date" runat="server" CssClass="txt4"></asp:TextBox>
                                                                                                                                    <asp:RequiredFieldValidator ID="rfvtxtemail" runat="server" ControlToValidate="txt_date"
                                                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="user"
                                                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                                                     <ajax:CalendarExtender ID="cal1" runat="server" TargetControlID="txt_date" Format="dd/MM/yyyy" ></ajax:CalendarExtender>
                                                                                                                                    
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="right">
                                                                                                                                    <asp:Label ID="Label11" runat="server" Text="Remarks" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:Label ID="Label12" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left">
                                                                                                                                    <asp:TextBox ID="txt_remarks" TextMode="MultiLine" runat="server" CssClass="txt4"></asp:TextBox>
                                                                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_remarks"
                                                                                                                                        SetFocusOnError="true" Display="Dynamic" ErrorMessage="*" ValidationGroup="user"
                                                                                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                                                                    
                                                                                                                                    
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td align="right">
                                                                                                                                    <asp:Label ID="Label13" runat="server" Text="Status" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="center">
                                                                                                                                    <asp:Label ID="Label14" runat="server" Text=":" CssClass="lbl"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td align="left">
                                                                                                                                    <asp:RadioButtonList ID="rbtnstatus" runat="server" CssClass="lbl" CellPadding="2"
                                                                                                                                        CellSpacing="2" RepeatColumns="2" RepeatDirection="Horizontal" 
                                                                                                                                        Width="173px">
                                                                                                                                        <asp:ListItem Text="ok" Value="ok" Selected="True"></asp:ListItem>
                                                                                                                                        <asp:ListItem Text="with held" Value="with held"></asp:ListItem>
                                                                                                                                        <asp:ListItem Text="cancel" Value="cancel"></asp:ListItem>
                                                                                                                                    </asp:RadioButtonList>
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
                                                                                                                            <asp:TemplateField HeaderText="SapNo" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <%#Eval("Sapno")%>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:TemplateField HeaderText="clientcode" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("clientcode") %>' CssClass="lbl"></asp:Label>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:TemplateField HeaderText="Agency" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Label ID="lblusername" runat="server" Text='<%# Eval("agency") %>' CssClass="lbl"></asp:Label>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                             <asp:TemplateField HeaderText="place" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Label ID="lblplace" runat="server" Text='<%# Eval("place") %>' CssClass="lbl"></asp:Label>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                            
                                                                                                                            <asp:TemplateField HeaderText="size" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Label ID="lblsize" runat="server" Text='<%# Eval("size") %>' CssClass="lbl"></asp:Label>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:TemplateField HeaderText="hues" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Label ID="lblthues" runat="server" Text='<%# Eval("hues") %>' CssClass="lbl"></asp:Label>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                             <asp:TemplateField HeaderText="position" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Label ID="lblposition" runat="server" Text='<%# Eval("position") %>' CssClass="lbl"></asp:Label>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                             <asp:TemplateField HeaderText="Remarks" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Label ID="lblremarks" runat="server" Text='<%# Eval("Remarks") %>' CssClass="lbl"></asp:Label>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                             <asp:TemplateField HeaderText="addstatus" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("addstatus") %>' CssClass="lbl"></asp:Label>
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                            
                                                                                                                            
                                                                                                                            <asp:TemplateField HeaderText="Edit" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Button ID="btnedit" runat="server" CssClass="btn" Text="Edit" CommandArgument='<%# Eval("sapno") %>'
                                                                                                                                        CommandName="Edi" />
                                                                                                                                </ItemTemplate>
                                                                                                                            </asp:TemplateField>
                                                                                                                            <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                                                                                                <ItemTemplate>
                                                                                                                                    <asp:Button ID="btndel" runat="server" CssClass="btn" CommandArgument='<%# Eval("sapno") %>'
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


