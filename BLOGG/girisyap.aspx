﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="girisyap.aspx.cs" Inherits="girisyap" %>

<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
    <link href="girisstylecss.css" rel="stylesheet" />
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Oturum Açma Sayfası</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body">
				<form runat="server">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<%--<input type="text" class="form-control" placeholder="username">--%>
						<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" >kullanıcı</asp:TextBox>
						 
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<%--<input type="password" class="form-control" placeholder="password">--%>
						<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" >şifre</asp:TextBox>
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Beni Hatırla
					</div>
					<div class="form-group">
						<asp:Button ID="Button1" runat="server" Text="Giriş YAp"  CssClass="btn float-right login_btn" OnClick="Button1_Click"/>
						<%--<input type="submit" value="Login" class="btn float-right login_btn">--%>
					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Hesabın Varmı<a href="#">Kayıt ol</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">Şİfrenimi unuttun</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>