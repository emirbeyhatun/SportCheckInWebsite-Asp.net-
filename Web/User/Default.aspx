<%@ Page Title="" Language="C#" MasterPageFile="~/User/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <script type = "text/javascript">
               //<![CDATA[
 
               //Standard Window.confirm
               function StandardConfirm(sender, args) {
                   args.set_cancel(!window.confirm("Checkin yapmak istediğinizden emin misiniz?"));
               }

  
    </script>


    	
	
	<!-- Faq Section -->
	  <div id="faq-section" class="faq-section container-fluid no-padding">
		<div class="section-padding"></div>
		
			<div class="col-md-9">
				<div class="section-header">
					<h3>Check-in Programları</h3>				
				</div>
				
				<div class="section-padding"></div>
				<div id="faq-1" class="faq-content">
					
                          <table width="100%"  class="twelve" border="1">
                        <tr>
                            <td class="auto-style11">
                                <h6>Salon</h6>
                            </td>
                        
                            <td class="auto-style6">
                                &nbsp;</td>
                        
                            <td class="auto-style1">
                             
                                
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id"></asp:DropDownList>
                            </td>
                           
                            
                        </tr>
                        <tr>
                            <td class="auto-style11">
                               <h6>Tarih</h6>
                            </td>
                           
                            <td class="auto-style6">
                                &nbsp;</td>
                           
                            <td class="auto-style1">
                             
                                <telerik:RadDatePicker ID="RadDatePicker1" Runat="server" Culture="tr-TR" FocusedDate="2014-03-05" MinDate="2014-03-05"></telerik:RadDatePicker>
                            
                            </td>
                         
                            
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                &nbsp;</td>
                           
                            <td class="auto-style6">
                                &nbsp;</td>
                           
                            <td class="auto-style1">
                             
                                 <asp:Button ID="Button1"  runat="server" Text="Filtrele" Width="77px" BackColor="#FF3300" BorderColor="#CCCCCC" OnClick="Button1_Click" />
                            
                            </td>
                         
                           
                        </tr>
                        </table>
      <table width="100%"  class="twelve" border="1">
                        <tr>
                           
                            <td class="auto-style4">
                                  <h6>Saat</h6></td>
                  <td class="auto-style7">
                                <h6>Ders</h6>
                            </td>
                         <td class="auto-style3">
                                <h6>Limit</h6>
                            </td>
                        <td class="auto-style10">
                                <h6>Katılımcı</h6>
                            </td>
                        
                          
                        </tr>

                        <asp:Repeater ID="rptDersler" runat="server"  OnItemCommand="rptDersler_ItemCommand" OnItemDataBound="rptDersler_ItemDataBound" >
                            <ItemTemplate>

                                <asp:Label runat="server" Visible="false" ID="lbl_id" Text='<%#Eval("id") %>'></asp:Label>
                                                       <asp:Label runat="server" Visible="false" ID="lblTarih" Text='<%#Eval("ders_tarih") %>'></asp:Label>
                        <tr> 
                            <td><%#Eval("ders_saat") %></td>
                            <td><%#Eval("ders_ad") %></td>
                           <td with="10px"><%#Eval("ders_katilimci_sayi") %></td>
                            <td with="10px"><%#Eval("ders_katilan_sayi") %></td>
                             <td with="10px">         <telerik:RadButton ID="btnCancel"  runat="server" Text="X" Width="30px"  CommandName="cmdCancel"   Visible="false" OnClientClicking="StandardConfirm"  ToolTip="İptal Et" /></td>
                           
                                  
                             <td with="10px">
                                  <telerik:RadButton ID="btnJoin"  runat="server" Text="√" Width="30px"  CommandName="cmdJoin"   OnClientClicking="StandardConfirm"  ToolTip="Katıl" /></td</tr>
                              

   
                            </ItemTemplate>
                          
                        </asp:Repeater>
                   
                    <telerik:RadMultiPage runat="server" SelectedIndex="0" ID="RadMultiPage1">
                          <telerik:RadPageView ID="RadPageView3" runat="server" Visible="false">
                              <br>
                              </br>
                                   <div class="alert-box alert">
				  <asp:Label ID="lblError" runat="server" Text="Gün İçerisinde sadece bir kez check-in yapılabilir"></asp:Label>   <a class="close" href="">×</a>
				</div>
                        </telerik:RadPageView>

                        <telerik:RadPageView ID="RadPageView4" runat="server" Visible="false">
                              <br>
                              </br>
                                   <div class="alert-box alert">
				  <asp:Label ID="Label1" runat="server" Text="Dersin katılım kontenjanı dolmuştur farklı bir ders deneyiniz"></asp:Label>   <a class="close" href="">×</a>
				</div>
                        </telerik:RadPageView>
                         <telerik:RadPageView ID="RadPageView5" runat="server" Visible="false">
                              <br>
                              </br>
                                   <div class="alert-box alert">
				  <asp:Label ID="Label2" runat="server" Text="Dersin üzerine admin tarafından kilit konmuştur checkin yapılamaz"></asp:Label>   <a class="close" href="">×</a>
				</div>
                        </telerik:RadPageView>
                    </telerik:RadMultiPage>

                   </table>

                    

                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DersDbConnectionString %>"  SelectCommand="SELECT * FROM [dersler]"></asp:SqlDataSource>
  
 <%#Eval("ders_ad") %> 
                     
       
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DersDbConnectionString %>" SelectCommand="SELECT * FROM [tbl_salon]"></asp:SqlDataSource>
                <asp:HiddenField ID="hf_ders_id" runat="server" />
      <br />
      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DersDbConnectionString %>" SelectCommand="SELECT * FROM [tbl_salon]"></asp:SqlDataSource>
    <h4 class="cat-title"><a href="#">BUGÜN İÇİN CHECKIN YAPANLAR</a></h4>
                    <table width="100%" class="twelve" border="1">
                        <tr>
                            <td class="auto-style15">
                                  <h6>Salonlar</h6>&nbsp;</td>
                            <td class="auto-style12">
                             
                                
                                <asp:DropDownList ID="ddlSalonBugun" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id" Height="26px" Width="136px"></asp:DropDownList>
                             </td>
                         
                            <td class="auto-style12">
                             
                                
                                &nbsp;</td>
                         
                        </tr>
                        <tr>
                            <td class="auto-style15">
                                <h6>Saat</h6>
                            </td>       
                            <td class="auto-style12">
                             
                                
                                            <asp:DropDownList ID="ddlsaatbugun" runat="server" Height="23px" Width="157px">
                                                <asp:ListItem>06-07</asp:ListItem>
                                                <asp:ListItem>07-08</asp:ListItem>
                                                <asp:ListItem>08-09</asp:ListItem>
                                                <asp:ListItem>09-10</asp:ListItem>
                                                <asp:ListItem>10-11</asp:ListItem>
                                                <asp:ListItem>11-12</asp:ListItem>
                                                <asp:ListItem>12-13</asp:ListItem>
                                                <asp:ListItem>13-14</asp:ListItem>
                                                <asp:ListItem>14-15</asp:ListItem>
                                                <asp:ListItem>15-16</asp:ListItem>
                                                <asp:ListItem>16-17</asp:ListItem>
                                                <asp:ListItem>17-18</asp:ListItem>
                                                <asp:ListItem>18-19</asp:ListItem>
                                                <asp:ListItem>19-20</asp:ListItem>
                                                <asp:ListItem>20-21</asp:ListItem>
                                                <asp:ListItem>21-22</asp:ListItem>
                                                <asp:ListItem>22-23</asp:ListItem>
                                                <asp:ListItem>23-24</asp:ListItem>
                                            </asp:DropDownList>
                            
                             </td>
                         
                            <td class="auto-style12">
                             
                                
                                 &nbsp;</td>
                         
                        </tr>
                        <tr>
                            <td class="auto-style15">
                                  &nbsp;</td>       
                            <td class="auto-style12">
                             
                                
                                 <asp:Button ID="Button3"  runat="server" Text="Filtrele" Width="77px" BackColor="#FF3300" BorderColor="#CCCCCC" OnClick="Button3_Click" />
                            
                             </td>
                         
                            <td class="auto-style12">
                             
                                
                                 &nbsp;</td>
                         
                        </tr>
                        <tr>
                            <td class="auto-style15">
                                  <h6>Üye Adı</h6>
                            </td>
                            <td class="auto-style12">
                                  <h6>Ders Adı</h6>
                            </td>
                         
                            <td class="auto-style12">
                                  &nbsp;</td>
                         
                        </tr>
                        <asp:Repeater ID="Repeater1" runat="server"  OnItemCommand="rptDersler_ItemCommand" >
                            <ItemTemplate>
                              
                        <tr>
                            <td class="auto-style9">
                                <%#Eval("name") %>  &nbsp; &nbsp; <%#Eval("surname") %></td>
                            <td class="auto-style5"> <%#Eval("ders_ad") %> </td>
                       
                            
                        </tr>
                                  </ItemTemplate>
                            </asp:Repeater>
                     
                  
                     
                    </table>
    
      <br />
      <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DersDbConnectionString %>"> </asp:SqlDataSource>


				</div>
			
			</div>
			
		</div>
			

	



</asp:Content>

