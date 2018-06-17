<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   
    
   
	
	<!-- Faq Section -->
	  <div id="faq-section" class="faq-section container-fluid no-padding">
		<div class="section-padding"></div>
		
			<div class="col-md-9">
				<div class="section-header">
					<h3>Check-in Programları</h3>				
				</div>
				
				<div class="section-padding"></div>
				<div id="faq-1" class="faq-content">
					
                        <table width="100%" class="containerd" border="1">
                        <tr >

                            <td class="auto-style1">
                                <h6>Salon</h6>
                            </td>
                            <td width="10%">
                                <h6><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name" Height="26px" Width="135px"></asp:DropDownList></td></h6>
                            </td>

                        </tr>
                         <tr >

                            <td class="auto-style1">
                                <h6><asp:Button ID="Button1"  runat="server" Text="Filtrele" Width="77px" BackColor="#cac3c1" BorderColor="#CCCCCC" OnClick="Button1_Click" /></h6>
                            </td>
                            <td width="10%">
                                <h6><asp:HiddenField ID="HiddenField1" runat="server" /></h6>
                            </td>

                        </tr>
                         <tr>
                            <%-- <td class="style21">
                                <h6>Salon Ad</h6>
                            </td>--%>
                            <td class="auto-style1">
                                <h6>Time</h6>
                            </td>
                            <td width="10%">
                                <h6>Program</h6>
                            </td>
                            <td width="10%">
                                <h6>Katılımcı Sayısı</h6>
                            </td>
                            <td width="10%">
                                <h6>Aktif Katılım</h6>
                            </td>
                        </tr>
                        <asp:Repeater runat="server" ID="rptders" DataSourceID="SqlDataSource1">
                            <ItemTemplate>


                        <tr>
                              <%--<td><%#Eval("salon_ad") %> </td>--%>
                            <td><%#Eval("ders_saat") %> </td>
                            <td><%#Eval("ders_ad") %></td>
                            <td><%#Eval("ders_katilimci_sayi") %></td>
                              <td><%#Eval("ders_katilan_sayi") %></td>
                        </tr>
                                
                            </ItemTemplate>
                        </asp:Repeater>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DersDbConnectionString %>" SelectCommand="">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="HiddenField2" DefaultValue="" Name="ders_tarih" PropertyName="Value" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DersDbConnectionString %>" SelectCommand="SELECT * FROM [tbl_salon]"></asp:SqlDataSource>
                        <asp:HiddenField ID="HiddenField2" runat="server" />

                    </table>


				</div>
						
			</div>
			
		
			

	


	


</asp:Content>

