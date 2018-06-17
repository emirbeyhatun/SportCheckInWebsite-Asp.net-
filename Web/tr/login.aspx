<%@ Page Title="" Language="C#" MasterPageFile="~/tr/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <div class="section-header">
					
				</div>
     <div class="col-md-9 blog-area">				
						
				<div class="section-header">
					<h3>ÜYE GİRİŞİ</h3>
                    <p>&nbsp;</p>
				</div>
                    <table width="100%" class="twelve" border="1">
                        
                        <tr>
                            <td class="auto-style3"><h6> E-mail</h6></td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txt_email" CssClass="form-control" runat="server" Width="137px"></asp:TextBox>
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                         
                        </tr>
                        <tr>
                            <td class="auto-style2"><h6> Şifre</h6></td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txt_password" runat="server" CssClass="form-control" Width="137px" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style2"><h6> &nbsp;</h6></td>
                            <td class="auto-style1">
                                <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Giriş" OnClick="Button1_Click" />
                            </td>
                            <td>
                                <asp:Label ID="lbluyarı" runat="server"></asp:Label>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style2"><h6> &nbsp;</h6></td>
                            <td class="auto-style1">
                              </td>
                            <td>&nbsp;</td>
                         
                        </tr>
                        <tr>
                            <td class="auto-style2"><h6> &nbsp;</h6></td>
                            <td class="auto-style1">
                                &nbsp;</td>
                            <td>&nbsp;</td>
                        
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style1">
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            
                        </tr>
                   
                
                    
                   

                    </table>



    
			</div>


</asp:Content>

