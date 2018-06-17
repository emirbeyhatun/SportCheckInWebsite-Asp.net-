<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Activation.aspx.cs" Inherits="admin_Activation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table border="0" cellpadding="0" cellspacing="0" style="width: 300px">
                        <tr>
                            <td align="center" style="height: 30px; " valign="middle">
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 40px">
                                    <tr>
                                        <td align="left" style="width: 50px" valign="middle">
                                            <asp:Label ID="Label5" runat="server" Font-Size="20pt" ForeColor="#333333" Text="Aktifleştirme"></asp:Label>
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
                            <td align="left" style="color: #666666; " valign="top">Üyeleri buradan aktif edebilir veya silebilirsiniz.
            <br />
                               </td>
                        </tr>
                        <tr>
                            <td align="center" style="height: 20px" valign="middle"></td>
                        </tr>
                        
                        <tr>
                            <td align="center" style="height: 20px" valign="middle"></td>
                        </tr>
                        <tr>
                            <td align="center" style="height: 20px" valign="middle">
                                        <tr>
                                <td align="left" style="width: 750px" valign="top">
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 750px; height: 35px; ">
                                        <tr>
                                            <td align="center" style="width: 45px; background-color: #FF0000;" 
                                                                valign="middle">
                                                <asp:Label ID="Label4" runat="server" Font-Size="10pt" ForeColor="White"  
                                                                  >ID</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width: 140px;background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label25" runat="server" Font-Size="10pt" 
                                                                    ForeColor="White" 
                                                                    >Kullanıcı Adı</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width: 140px;background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label26" runat="server" Font-Size="10pt" 
                                                                    ForeColor="White"
                                                                   >Üye Adı</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width: 90px;background-color: #FF0000;" valign="middle">
                                                                &nbsp;<asp:Label ID="Label28" runat="server" Font-Size="10pt" 
                                                                    ForeColor="White" 
                                                                    >Üye Soyadı</asp:Label>
                                            </td>
                                              <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width: 90px;background-color: #FF0000;" valign="middle">
                                                                &nbsp;<asp:Label ID="Label1" runat="server" Font-Size="10pt" 
                                                                    ForeColor="White" 
                                                                    >Üye Durumu</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width:60px;background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label34" runat="server" Font-Size="10pt" ForeColor="White">Aktif Et</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                            </td>
                                            <td align="center" style="width:60px;background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label35" runat="server" Font-Size="10pt" ForeColor="White">Pasif Et</asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                   <asp:ListView ID="DataList1" runat="server" CellPadding="0" DataKeyField="aid" 
                                                        DataSourceID="SqlDataSource3" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound" >
                                        <ItemTemplate>
                                            <table border="0" cellpadding="0" cellspacing="0" style="width: 750px; height: 35px; ">
                                                <tr>
                                                    <td align="center" style="width: 45px" valign="middle">
                                                        <asp:Label ID="lbl_id" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                   Text='<%# Eval("aid") %>'></asp:Label>
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 140px" valign="middle">
                                                        <asp:Label ID="lbl_ders_tarih" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                    Text='<%# Eval("username") %>'></asp:Label>
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 140px" valign="middle">
                                                        <asp:Label ID="lbl_ders_saat" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                    Text='<%# Eval("name") %>'></asp:Label>
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 90px" valign="middle">
                                                        <asp:Label ID="lbl_ders_ad" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                    Text='<%# Eval("surname") %>'></asp:Label>
                                                                &nbsp;</td>
                                                     <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 90px" valign="middle">
                                                        <asp:Label ID="lblDurum" runat="server" Font-Size="10pt" ForeColor="Black" 
                                                                    Text='<%# Eval("active_flag") %>'></asp:Label>
                                                                &nbsp;</td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 60px" valign="middle">
                                                        <asp:ImageButton ID="ImageButton3" runat="server" CommandName="cmd_active" Height="25px" ImageUrl="~/admin/resources_fine/img/mt_delete.png" />
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle">
                                                    </td>
                                                    <td align="center" style="width: 60px" valign="middle">
                                                        <asp:ImageButton ID="ImageButton2" runat="server" CommandName="cmd_passive" 
                                                        Height="25px" ImageUrl="~/admin/resources_fine/img/mt_delete.png" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </td>
                            </tr>
                                                                    
                            <tr>
                                <td align="center" style="width: 1000px" valign="middle">
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 1000px; height: 33px;" valign="middle">
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:DersDbConnectionString %>" 
                                                        
                                                        SelectCommand="SELECT * FROM [tbl_user]  ">
                                   
                                                  
                                       
                                   
                                                  
                                         </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table></td></tr>
                        <tr><td align="left" colspan="4" style="background-color: #F0F0F0; height: 3px;" 
                                                                valign="middle"></td></tr><tr><td align="left" colspan="4" style="height: 20px;" valign="middle">&nbsp;</td></tr><tr><td align="left" style="width: 153px" valign="middle">&nbsp;</td><td align="left" valign="middle" style="width: 109px"><asp:HiddenField ID="hf_id" runat="server" /></td><td align="left" style="width: 120px" valign="middle"><asp:HiddenField ID="HiddenField4" runat="server" /></td><td align="right" valign="middle">&nbsp;</td></tr></table></td></tr>
                                        
                                       
                                        <tr><td align="center" style="width: 1000px" valign="middle"></td></tr><tr><td align="center" style="width: 1000px" valign="middle">
                                                <tr>
                                                    <td align="center" style="width: 1000px" valign="middle"></td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="width: 1000px" valign="middle">
                                                     
                                 
                            </td>
                        </tr>
                        <tr>
                            <td align="center" valign="middle">
                                    &nbsp;</td>
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

