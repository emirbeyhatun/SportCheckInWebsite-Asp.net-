<%@ Page Title="" Language="C#" MasterPageFile="~/tr/MasterPage.master" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="section-header">
					
				</div>
      <div class="col-md-9 blog-area">				
				<div class="section-header">
					<h3>ÜYE KAYIT FORMU</h3>
				</div>
                     <table width="100%" class="twelve" border="1">
                        
                        <tr>
                            <td class="auto-style3"><h6> Kullanıcı Adı</h6></td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtadi" runat="server" CssClass="form-control" Width="137px"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtadi" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Ad Alanını Doldurunuz</asp:RequiredFieldValidator>
                            </td>
                         
                        </tr>
                            <tr>
                            <td class="auto-style3"><h6> Adınız </h6></td>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="137px"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtadi" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Ad Alanını Doldurunuz</asp:RequiredFieldValidator>
                            </td>
                         
                        </tr>
                            <tr>
                            <td class="auto-style3"><h6> Soyadınız</h6></td>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="137px"></asp:TextBox>
                            </td>
                            <td class="auto-style5">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtadi" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Ad Alanını Doldurunuz</asp:RequiredFieldValidator>
                            </td>
                         
                        </tr>
                        <tr>
                            <td class="auto-style2"><h6> Gsm</h6></td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txttel" runat="server" CssClass="form-control" Width="137px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txttel" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$">Girdiğiniz Tel Uygun Değildir..</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttel" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Telefon Boş Geçilemez..</asp:RequiredFieldValidator>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6"><h6> E-mail</h6></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" Width="137px"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Email Alanını Doldurunuz</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Girdiğiniz Email Uygun Değildir..</asp:RegularExpressionValidator>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style2"><h6> Şifre</h6></td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Width="137px" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtsifre" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Şifre Alanını Doldurunuz</asp:RequiredFieldValidator>
                            </td>
                         
                        </tr>
                      
                        <tr>
                            <td class="auto-style2"><h6> Şifre Tekrar</h6></td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txtsifre" runat="server" CssClass="form-control" Width="137px" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="txtsifre">Şifreler Uyuşmuyor</asp:CompareValidator>
                            </td>
                        
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style1">
                                <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                            </td>
                            <td>
                                <asp:Label ID="lblkayit" runat="server"></asp:Label>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                            
                            
                        </tr>
                
                    
                   

                    </table>
  


</div>
</asp:Content>

