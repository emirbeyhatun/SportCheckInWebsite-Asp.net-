<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="salon.aspx.cs" Inherits="admin_salon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table border="0" cellpadding="0" cellspacing="0" style="width: 300px">
                        <tr>
                            <td align="center" style="height: 30px; " valign="middle">
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 40px">
                                    <tr>
                                        <td align="left" style="width: 50px" valign="middle">
                                            <asp:Label ID="Label5" runat="server" Font-Size="20pt" ForeColor="#333333" Text="Salonlarım"></asp:Label>
                                        </td>
                                        <td align="center" valign="middle">&nbsp;</td>
                                        <td align="center" style="width: 50px" valign="middle"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height: 3px; background-color: #F0F0F0;" valign="middle"></td>
                        </tr>
                        <tr>
                            <td align="center" style="height: 20px; " valign="middle"></td>
                        </tr>
                        <tr>
                            <td align="left" style="height: 35px" valign="middle">
                                <asp:Label ID="Label77" runat="server" Font-Size="12pt" ForeColor="#0072C8" Text="Açıklama"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="color: #666666; " valign="top">Salon ekleme ve güncelleme için bu bölümü kullanabilirsiniz. 
            <br />
                               </td>
                        </tr>
                        <tr>
                            <td align="center" style="height: 20px" valign="middle"></td>
                        </tr>
                        <tr>
                            <td align="center" valign="middle">
                              
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="height: 20px" valign="middle"></td>
                        </tr>
                        <tr>
                            <td align="center" style="height: 20px" valign="middle">
                                  
                                   
                                    <table border="0" cellpadding="0" cellspacing="0"><tr><td align="left" style="width: 750px" valign="top"><table border="0" cellpadding="0" cellspacing="0"><tr><td align="left" style="width: 750px" valign="top"><table border="0" cellpadding="0" cellspacing="0" 
                                                        style="height: 130px; width: 582px;"><tr><td align="left" colspan="4" style="height: 20px;" valign="middle"></td></tr><tr><td align="left" style="width: 63px; height: 38px;" valign="middle">
                                        <asp:Label ID="Label10" runat="server" Font-Size="10pt" ForeColor="Black" Text="Salon Adı:"></asp:Label>
                                        </td><td align="left" valign="middle" style="height: 38px">
                                            <asp:TextBox ID="txtSalon" Runat="server" Skin="Silk" ValidationGroup="register" Width="213px">
                                            </asp:TextBox>
                                        </td><td align="left" valign="middle" style="height: 38px"></td></tr>
                                        <tr>
                                            <td align="left" style="width: 63px; height: 30px;" valign="middle">
                                                &nbsp;</td>
                                            <td align="left" style="height: 30px" valign="middle">
                                                &nbsp;</td>
                                            <td align="left" style="height: 30px" valign="middle"></td>
                                        </tr>
                                        <tr><td align="left" colspan="4" style="height: 20px;" valign="middle">&nbsp;</td></tr><tr><td align="left" colspan="4" style="background-color: #F0F0F0; height: 3px;" 
                                                                valign="middle"></td></tr><tr><td align="left" colspan="4" style="height: 20px;" valign="middle">&nbsp;</td></tr><tr><td align="left" style="width: 63px" valign="middle">
                                        <asp:Button ID="RadButton1" runat="server" 
                                                                    Skin="BlackMetroTouch" Text="Kaydet" 
                                            ValidationGroup="register" OnClick="RadButton1_Click"></asp:Button></td><td align="left" valign="middle"><asp:HiddenField ID="HiddenField1" runat="server" /></td><td align="left" style="width: 120px" valign="middle"><asp:HiddenField ID="HiddenField2" runat="server" /></td><td align="right" valign="middle">&nbsp;</td></tr></table></td></tr><tr><td align="center" style="width: 1000px" valign="middle"></td></tr><tr><td align="center" style="width: 1000px" valign="middle">&nbsp;</td></tr></table></td></tr><tr><td align="center" style="width: 1000px" valign="middle"></td></tr><tr><td align="center" style="width: 1000px" valign="middle">&nbsp;</td></tr></table>
                                   
                                
                            </td>
                        </tr>
                        <tr>
                            <td align="center" valign="middle"></td>
                        </tr>
                        <tr>
                            <td align="center" valign="middle">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" valign="middle">
                                &nbsp;</td>
                        </tr>
                    </table>
</asp:Content>

