<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="admin_users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <table border="0" cellpadding="0" cellspacing="0" style="width: 300px">
        <tr>
            <td align="center" style="height: 30px;" valign="middle">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 40px">
                    <tr>
                        <td align="left" style="width: 50px" valign="middle">
                            <asp:Label ID="Label5" runat="server" Font-Size="20pt" ForeColor="#333333" Text="Üyeler"></asp:Label>
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
            <td align="center" style="height: 20px;" valign="middle"></td>
        </tr>
        <tr>
            <td align="left" style="height: 35px" valign="middle">
                <asp:Label ID="Label77" runat="server" Font-Size="12pt" ForeColor="#0072C8" Text="Açıklama"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" style="color: #666666;" valign="top">Üye Bilgilerini buradan görüntüleyebilirsiniz.
            <br />
            </td>
        </tr>
        <tr>
            <td align="center" style="height: 20px" valign="middle"></td>
        </tr>
    </table>
    
    
    
            <table border="0" cellpadding="0" cellspacing="0" style="height: 130px; width: 960px;">
                <tr>
                    <td align="left" style="width: 153px; height: 18px;" valign="middle"></td>
                    <td align="left" style="height: 18px; width: 109px;" valign="middle"></td>
                    <td align="left" style="height: 18px" valign="middle">
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DersDbConnectionString %>" SelectCommand="SELECT  p.type,p.uid,u.username,u.name,u.surname  FROM [tbl_user] u,temp_user_profile p  WHERE  u.active_flag=1 and p.active_flag=0 and p.uid=u.aid   "></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="height: 20px" valign="middle" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td align="left" style="height: 20px;" valign="middle" colspan="4">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td align="left" style="width: 940px" valign="top">
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 960px; height: 35px;">
                                        <tr>
                                            <td align="center" style="width: 120px; background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label78" runat="server" Font-Size="10pt" ForeColor="White">ID</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle"></td>
                                            <td align="center" style="width: 120px; background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label79" runat="server" Font-Size="10pt" ForeColor="White">Kullanıcı Adı</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle"></td>
                                            <td align="center" style="width: 120px; background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label80" runat="server" Font-Size="10pt" ForeColor="White">Üye Adı</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle"></td>
                                            <td align="center" style="width: 120px; background-color: #FF0000;" valign="middle">&nbsp;<asp:Label ID="Label81" runat="server" Font-Size="10pt" ForeColor="White">Üye Soyadı</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle"></td>
                                            <td align="center" style="width: 220px; background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label82" runat="server" Font-Size="10pt" ForeColor="White">EMail</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle"></td>
                                            <td align="center" style="width: 120px; background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label1" runat="server" Font-Size="10pt" ForeColor="White">Gsm</asp:Label>
                                            </td>
                                            <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle"></td>
                                            <td align="center" style="width: 120px; background-color: #FF0000;" valign="middle">
                                                <asp:Label ID="Label2" runat="server" Font-Size="10pt" ForeColor="White">Şifre</asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:ListView ID="DataList1" runat="server" CellPadding="0" DataSourceID="SqlDataSource4"  >
                                        <ItemTemplate>
                                            <table border="0" cellpadding="0" cellspacing="0" style="width: 960px; height: 35px;">
                                                <tr>
                                                    <td align="center" style="width: 120px" valign="middle">
                                                        <asp:Label ID="lbl_id4" runat="server" Font-Size="8pt" ForeColor="Black" Text='<%# Eval("aid") %>'></asp:Label>
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle"></td>
                                                    <td align="center" style="width: 120px" valign="middle">
                                                        <asp:Label ID="lbl_ders_tarih0" runat="server" Font-Size="8pt" ForeColor="Black" Text='<%# Eval("username") %>'></asp:Label>
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle"></td>
                                                    <td align="center" style="width: 120px" valign="middle">
                                                        <asp:Label ID="lbl_ders_saat0" runat="server" Font-Size="8pt" ForeColor="Black" Text='<%# Eval("name") %>'></asp:Label>
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle"></td>
                                                    <td align="center" style="width: 120px" valign="middle">
                                                        <asp:Label ID="lbl_ders_ad0" runat="server" Font-Size="8pt" ForeColor="Black" Text='<%# Eval("surname") %>'></asp:Label>
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle"></td>
                                                    <td align="center" style="width: 220px" valign="middle">
                                                        <asp:Label ID="lbl_ders_ad1" runat="server" Font-Size="8pt" ForeColor="Black" Text='<%# Eval("email") %>'></asp:Label>
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle"></td>
                                                    <td align="center" style="width: 120px" valign="middle">
                                                        <asp:Label ID="Label3" runat="server" Font-Size="8pt" ForeColor="Black" Text='<%# Eval("gsm") %>'></asp:Label>
                                                    </td>
                                                    <td align="center" style="background-color: #CCCCCC; width: 1px" valign="middle"></td>
                                                    <td align="center" style="width: 120px" valign="middle">
                                                        <asp:Label ID="Label4" runat="server" Font-Size="8pt" ForeColor="Black" Text='<%# Eval("password") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>

                                        </ItemTemplate>
                                    </asp:ListView>
                                </td>
                            </tr>
                            
                            <tr>
                                <td align="center" style="width: 1000px; height: 33px;" valign="middle">
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DersDbConnectionString %>" SelectCommand="SELECT * FROM [tbl_user] WHERE ([active_flag] = @active_flag)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="1" Name="active_flag" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="background-color: #F0F0F0; height: 3px;" valign="middle" colspan="4"></td>
                </tr>
                <tr>
                    <td align="left" style="height: 20px;" valign="middle" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td align="left" style="width: 153px" valign="middle">&nbsp;</td>
                    <td align="left" style="width: 109px" valign="middle">
                        <asp:HiddenField ID="hf_id0" runat="server" />
                    </td>
                    <td align="left" style="width: 120px" valign="middle">&nbsp;</td>
                    <td align="right" valign="middle">&nbsp;</td>
                </tr>
            </table>
             
                

</asp:Content>

