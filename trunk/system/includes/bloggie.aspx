<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script runat="server">

public class BloggieClass
{

    public BloggieClass()
    {
    	
    }

	// The current version of the software
	public const double _Version = 1.0;
	public double Version {
		get {
			return _Version;
		}
	}
	
	// Database Connection
	private SqlConnection _Connection = new SqlConnection();
	public SqlConnection Connection {
		get {
			return _Connection;
		}
		set {
			_Connection = value;
		}
	}
	
	// Page Title
	private String _PageTitle = "Bloggie";
	public String PageTitle {
		get {
			return _PageTitle;
		}
		set {
			_PageTitle = value;
		}
	}
	
	// Datatable Function
	public DataTable tDataTable(string StrSql) {
		SqlDataAdapter oDataAdapter = new SqlDataAdapter(StrSql, _Connection);
		DataTable oDataTable = new DataTable();
		oDataTable.Constraints.Clear();
		oDataAdapter.Fill(oDataTable);
		return oDataTable;
	}
	
	// Javascript and Stylesheet Control
	private StringBuilder _Stylesheets = new StringBuilder();
	private StringBuilder _Javascripts = new StringBuilder();
	
    public void AddStylesheet(string Path, string Media) {
        _Stylesheets.Append("<link rel=\"stylesheet\" type=\"text/css\" media=\"" + Media + "\" href=\"" + Path + "\" />\n");
    }
    
	public String Stylesheets {
		get {
			return _Stylesheets.ToString();
		}
	}
    
    public void AddJavascript(string Path) {
        _Javascripts.Append("<script type=\"text/javascript\"  src=" + Path + "><");
        _Javascripts.Append("/script>\n");
    }
    
	public String Javascripts {
		get {
			return _Javascripts.ToString();
		}
	}
	
	// Page Output
	private StringWriter _ResponseContent = new StringWriter();
	public StringWriter ResponseContent {
		get {
			return _ResponseContent;
		}
		set {
			_ResponseContent.Write(value);
		}
	}
	
	// Requested Extension
	private String _Extension = "Dashboard";
	public String Extension {
		get {
			return _Extension;
		}
		set {
			_Extension = value;
			PageTitle = "Bloggie | " + Extension;
		}
	}
	
	// Requested Page
	private String _Page = "Default";
	public String Page {
		get {
			return _Page;
		}
		set {
			_Page = value;
			PageTitle = "Bloggie | " + Extension + " | " + Page;
		}
	}
	
	// Current User
	private String _Username = "annonymous";
	public String Username {
		get {
			return _Username;
		}
		set {
			_Username = value;
		}
	}

}

BloggieClass Bloggie = new BloggieClass();

</script>