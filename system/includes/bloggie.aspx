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
	
	// Html Namespace
	public const string _DocType = "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">";
	public string DocType {
		get {
			return _DocType;
		}
		set {
			DocType = value;
		}
	}
	
	
	// Output strings that will be sent to the browser
	private StringBuilder _Body = new StringBuilder();
	private StringBuilder _Stylesheet = new StringBuilder();
	private StringBuilder _Javascript = new StringBuilder();
	

    public void ApendBody(string sInput) {
        _Body.Append(sInput);
    }
    
    public void ApendStylesheet(string sPath, string sMedia) {
        _Stylesheet.Append("<link rel=\"stylesheet\" type=\"text/css\" media=\"" + sMedia + "\" href=\"/" + sPath + "\" />");
    }
    
    public void ApendJavascript(string sInput) {
        _Javascript.Append(sInput);
    }
    
    public string BrowserOutput() {
    	StringBuilder sOutput = new StringBuilder();
    	sOutput.Append(_DocType);
    	sOutput.Append(_Body);
    	sOutput.Append(_Stylesheet);
    	sOutput.Append(_Javascript);
    	
    	return sOutput.ToString();
    }

}

BloggieClass Bloggie = new BloggieClass();

</script>