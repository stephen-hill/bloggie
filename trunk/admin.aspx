<!--#include file="system/includes/includes.aspx"--><%

Server.Execute("system/extensions/" + Bloggie.Extension + "/" + Bloggie.Page + ".aspx", Bloggie.ResponseContent);

%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title><%=Bloggie.PageTitle%></title>
	<base href="http://beta.bloggie.co.uk"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%=Bloggie.Stylesheets%>
	<meta name="keywords" content="JavaScript, Ajax, CSS, HTML, web, design, development, hire, freelance, blog, jesse, skinner"/>
	<meta name="description" content="HTML, CSS, JavaScript and Ajax Expert Web Developer for Hire"/>
</head>

<body>

	<div id="title">
		<a href="/">
			<img src="/system/images/tiny_logo.gif" width="25" height="25" alt="Logo" title="Bloggie">
		</a>
		<ul>
			<li>
				<a href="">
					Welcome Stephen
				</a>
			</li>
			<li>
				<a href="">
					Logout
				</a>
			</li>
		</ul>
	</div>

	<div id="extensions">
		<ul>
			<% for (int i = 0, l = tExtensions.Rows.Count; i < l; i++) { %>
				<li>
					<% if (Bloggie.Extension.ToLower() == tExtensions.Rows[i]["EX_Name"].ToString().Replace(" ","_").ToLower()) { %>
						<a class="current" href="/Admin/<%=tExtensions.Rows[i]["EX_Name"].ToString().Replace(" ","_")%>">
							<%=tExtensions.Rows[i]["EX_Name"]%>
						</a>
					<% } else { %>
						<a href="/Admin/<%=tExtensions.Rows[i]["EX_Name"].ToString().Replace(" ","_")%>">
							<%=tExtensions.Rows[i]["EX_Name"]%>
						</a>
					<% } %>
				</li>
			<% } %>
		</ul>
	</div>
	
	<div id="workarea"><%=Convert.ToString(Bloggie.ResponseContent)%></div>
	
	<div id="services">
		<p>
			Bloggie Version <%=Bloggie.Version%>
		</p>
		<ul>
			<li>
				<a href="">
					XHTML Valid
				</a>
			</li>
			<li>
				<a href="">
					CSS Valid
				</a>
			</li>
			<li>
				<a href="">
					RSS Feeds
				</a>
			</li>
		</ul>
	</div>


<%=Bloggie.Javascripts%>
</body>
</html>