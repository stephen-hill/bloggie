<%

// Set Requested Extension
if (Request.QueryString["extension"] != null) {
	Bloggie.Extension = Request.QueryString["extension"];
}

// Set Requested Page
if (Request.QueryString["page"] != null) {
	Bloggie.Page = Request.QueryString["page"];
}

// Stylesheets
Bloggie.AddStylesheet("/system/stylesheets/all.css", "all");

// Javascripts
Bloggie.AddJavascript("/system/javascripts/domassistant/DOMAssistantCompressed.js");
Bloggie.AddJavascript("/system/javascripts/javascript.js");

// System Database Queries
String ExtensionsSql = String.Empty;
ExtensionsSql += "Select \n";
ExtensionsSql += "EX_Name \n";
ExtensionsSql += "From \n";
ExtensionsSql += "SystemExtensions \n";
ExtensionsSql += "Order By \n";
ExtensionsSql += "EX_Order Asc, \n";
ExtensionsSql += "EX_Name Asc \n";

DataTable tExtensions = Bloggie.tDataTable(ExtensionsSql);

%>