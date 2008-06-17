<!--#include file="system/includes/bloggie.aspx"--><%



%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>Bloggie</title>
	<base href="http://beta.bloggie.co.uk"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" media="screen" href="/system/stylesheets/screen.css" id="stylesheet"/>
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

	<div id="mainmenu">
		<ul>
			<li>
				<a href="">
					Dashboard
				</a>
			</li>
			<li>
				<a href="" class="active">
					System
				</a>
			</li>
			<li>
				<a href="">
					Files
				</a>
			</li>
			<li>
				<a href="">
					Content
				</a>
			</li>
		</ul>
	</div>
	
	<div id="workarea">
	
		<div id="submenu">
			<h2>
				System
			</h2>
			<ul>
				<li>
					<a href="">
						Pages
					</a>
				</li>
				<li>
					<a href="">
						Users
					</a>
				</li>
				<li>
					<a href="">
						Settings
					</a>
				</li>
				<li>
					<a href="" class="active">
						Extentions
					</a>
				</li>
				<li>
					<a href="">
						Reports
					</a>
				</li>
				<li>
					<a href="">
						Activity
					</a>
				</li>
				<li>
					<a href="">
						Audit
					</a>
				</li>
			</ul>
		</div>
		
		<div id="content">
			<h3>
				Extentions
			</h3>
			
			<p>
				This page allows you to install and manage extention on the system.
			</p>
			
			<form action="" method="post">
				<fieldset>
					<div class="half">
						<label for="search">
							Search
						</label>
						<input
							type="text"
							id="search"
							name="search"
						value="" />
					</div>
					<div class="half">
						<label for="submit">
							&nbsp;
						</label>
						<input
							type="submit"
							id="submit"
							class="button"
						value="Search" />
				</fieldset>
			</form>
			
			<table summary="This table contains a list of installed extentions">
				<thead>
					<tr>
						<th>
							Name
						</th>
						<th>
							Version
						</th>
						<th>
							Description
						</th>
					</tr>
				</thead>
				<tbody>
					<% for (int i = 0; i < 10; i++) { %>
					<tr>
						<td>
							<a href="">
								Blog Entries
							</a>
						</td>
						<td>
							<abbr title="Version">v</abbr>1.0
						</td>
						<td>
							Release and download of version one point zero.
						</td>
					</tr>
					<% } %>
				</tbody>
			</table>
		</div>
		
	</div>
	
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

	<script type="text/javascript" src="/system/javascripts/domassistant/DOMAssistantCompressed.js"></script>
	<script type="text/javascript" src="/system/javascripts/javascript.js"></script>
</body>
</html>