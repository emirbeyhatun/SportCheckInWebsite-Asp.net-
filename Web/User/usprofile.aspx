<%@ Page Title="" Language="C#" MasterPageFile="~/User/site.master" AutoEventWireup="true" CodeFile="usprofile.aspx.cs" Inherits="User_usprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="faq-section" class="faq-section container-fluid no-padding">
		<div class="section-padding"></div>

    <div class="col-md-9 blog-area">		

			<div class="row">
				<div class="col-md-4">

                    <table border="0" cellpadding="0" cellspacing="0" style="height: 150px; width: 600px;">
                                                <tr>
                                                    <td align="left" style="width: 115px;" valign="middle">
                                                        <asp:Label ID="Label93" runat="server" ForeColor="Black" Text="Eski Şifre:"></asp:Label>
                                                    </td>
                                                    <td align="left" valign="middle" class="style13">
                                                        <asp:TextBox ID="txt_eski_sifre" runat="server" AutoCompleteType="Disabled" BorderColor="Silver" BorderStyle="Dotted" BorderWidth="1px" EnableViewState="False" ForeColor="#666666" Height="20px" Width="150px" TextMode="Password"></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="width: 60px;" valign="middle">
                                                        &nbsp;</td>
                                                    <td align="left" valign="middle">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="left" valign="middle" style="width: 115px; height: 36px">
                                                        <asp:Label ID="Label94" runat="server" ForeColor="Black" Text="Yeni Şifre:"></asp:Label>
                                                    </td>
                                                    <td align="left" valign="middle" class="style13" style="height: 36px">
                                                        <asp:TextBox ID="txt_yeni_sifre" runat="server" AutoCompleteType="Disabled" BorderColor="Silver" BorderStyle="Dotted" BorderWidth="1px" EnableViewState="False" ForeColor="#666666" Height="20px" Width="150px" TextMode="Password"></asp:TextBox>
                                                    </td>
                                                    <td align="left" valign="middle" style="height: 36px">
                                                        </td>
                                                    <td align="left" valign="middle" style="height: 36px">
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" valign="middle" style="height: 36px; width: 115px">
                                                        <asp:Label ID="Label95" runat="server" ForeColor="Black" Text="Yeni Şifre Tekrar"></asp:Label>
                                                    </td>
                                                    <td align="left" valign="middle" class="style13" style="height: 36px">
                                                        <asp:TextBox ID="txt_yeni_sifre_tekrar" runat="server" AutoCompleteType="Disabled" BorderColor="Silver" BorderStyle="Dotted" BorderWidth="1px" EnableViewState="False" ForeColor="#666666" Height="20px" Width="150px" TextMode="Password"></asp:TextBox>
                                                        <asp:Label ID="lbBilgi" runat="server" ForeColor="#CC0000"></asp:Label>
                                                    </td>
                                                    <td align="left" valign="middle" style="height: 36px">
                                                        </td>
                                                    <td align="left" valign="middle" style="height: 36px">
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td align="left" valign="middle" style="width: 115px">
                                                        &nbsp;</td>
                                                    <td align="left" valign="middle" class="style13">
                                                        <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click1" />
                                                    </td>
                                                    <td align="left" valign="middle">
                                                        &nbsp;</td>
                                                    <td align="left" valign="middle">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>







                    	</div>
			</div>
		<div class="section-padding"></div>
	</div>

</asp:Content>

