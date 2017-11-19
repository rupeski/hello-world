<!DOCTYPE html>
<html>
<head> 
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
  <title>My First jQuery Mobile Application</title> 

  <link rel="stylesheet" type="text/css"  

   href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css"/>
  <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
  <script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>
</head> 

<body> 
  <div data-role="page">

     <div data-role="header"><h1>Welcome!!!</h1></div>

     <div data-role="content">
     
     <%	
	 	myConnection="Provider=sqloledb;Data Source=hostingmssql06;Initial Catalog=ca5c1b-agc;User Id=ca5c1b-agc;Password=915oksdHRA"
		sqlPage="SELECT * FROM pages WHERE ID="&ID&""
		Set rstPage = Server.CreateObject("ADODB.recordset")
		rstPage.Open sqlPage,myConnection,3
		
		response.write(rstPage("content")
		
		rstPage.Close
		Set rstPage = Nothing

		%>
                        
                        
        <p>Welcome to my blog and you are reading how to write your first jQuery mobile app.</p>
     </div>

     <div data-role="footer"><h1>jQuery By Example</h1></div>

  </div>
</body>
</html>
