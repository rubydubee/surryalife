<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Surrya Life</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
	<div id="menu">
		<ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="services.jsp">Services</a></li>
			<li><a href="register.html">Register</a></li>
			<li class="current_page_item"><a href="contact.jsp">Contact Us</a></li>
		</ul>
	</div>
	<!-- end #menu -->
	<div id="header">
		<div id="logo">
			<h1><a href="#"><i>life</i></a></h1>
			<p>RIGHT CONSULTANT FOR YOU!</p>
		</div>
	</div>
	<!-- end #header -->
	<div id="page">
	<div id="page-bgtop">
	<div id="page-bgbtm">
		<div id="content">
			<div class="post">
				<h2 class="title"><a href="#">Contact us</a></h2>
				<div style="clear: both;">&nbsp;</div>
				<div class="entry">
				<% String service = request.getParameter("service"); %>
				
				<p>Have a query 
				<% if(service != null){ %>about <%= service %> <% } %>?
				 Send us right now and we will get in touch with you soon.</p>
					<form action="/contact" method="post">
						<table width="560px" border=0 cellspacing=10>
							
							<% if(service != null) { %>
							<tr valign=top>
								<td width="250px">Service selected</td>
								<td><input readonly="readonly" type="text" name="service" size=40 value="<%= service %>" /></td>
							</tr>
							<% } %>
							<tr valign=top>
								<td width="250px">Name</td>
								<td><input type="text" name="name" size=40 /></td>
							</tr>
							<tr valign=top>
								<td width="250px">Email Id</td>
								<td><input type="text" name="email" size=40 /></td>
							</tr>
							<tr valign=top>
								<td width="250px">Contact Number/s</td>
								<td><input type="text" name="phone" size=40 /></td>
							</tr>
							<tr valign=top>
								<td width="250px">Query</td>
								<td><textarea cols=40 rows=6 name="query"></textarea></td>
							</tr>
							<tr>
								<td align=center colspan=2><input type="submit" value="Submit" /></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			
			<div class="post">
				<h2 class="title" style="padding-top:0;"><a href="#">Contact Person</a></h2>
				<div class="entry">
					<p>Mr. K.P.Vyawahare
					<br />Contact No. 9960578844
					<br />Email Address: <a href="mailto:admin@surryalife.com">admin@surryalife.com</a></p>
				</div>
			</div>
			
		<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li>
					<div id="search" >
					<form method="get" action="results.jsp">
						<div>
							<input type="text" name="q" id="search-text" value="" />
							<input type="submit" id="search-submit" value="Search" />
						</div>
					</form>
					</div>
					<div style="clear: both;">&nbsp;</div>
				</li>
				<!--li>
					<h2>Aliquam tempus</h2>
					<p>Mauris vitae nisl nec metus placerat perdiet est. Phasellus dapibus semper consectetuer hendrerit.</p>
				</li-->
				<li>
					<h2>Best of Surrya Life</h2>
					<ul>
						<li><a href="contact.jsp?service=Buy+Business+leadership+ebook">Business leadership ebook @ 1200 rupees only</a></li>
						<li><a href="contact.jsp?service=60+ways+to+earn+online">60 ways to earn online ebook @ 900 rupees only</a></li>
						<li><a href="contact.jsp?service=Business+Winner">Business winner -excellent online training.</a></li>
						<li><a href="advertising.html">Creative ad making and marketing.</a></li>
						<!-- li><a href="projects.html">New projects</a></li -->
						<li><a href="contact.jsp?service=New+Business+Opportunities">New Business Opportunities</a></li>
						<!-- li><a href="contact.jsp?service=Patent+and+Trademark+registration">Patent and Trademark Registration</a></li -->
					</ul>
				</li>
				<!--li>
					<h2>Blogroll</h2>
					<ul>
						<li><a href="#">Aliquam libero</a></li>
						<li><a href="#">Consectetuer adipiscing elit</a></li>
						<li><a href="#">Metus aliquam pellentesque</a></li>
						<li><a href="#">Suspendisse iaculis mauris</a></li>
						<li><a href="#">Urnanet non molestie semper</a></li>
						<li><a href="#">Proin gravida orci porttitor</a></li>
					</ul>
				</li-->
				
			</ul>
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	</div>
	</div>
	<!-- end #page -->
</div>
	<div id="footer">
		<p>Copyright (c) 2008 SurryaLife.com. All rights reserved. Design by <a target=_blank href="http://www.10idiots.com">10idiots.com</a> .</p>
		<p><a href="terms.html">Read our Legal Notice, Terms and Conditions</a></p>
	</div>
	<!-- end #footer -->
</body>
</html>
