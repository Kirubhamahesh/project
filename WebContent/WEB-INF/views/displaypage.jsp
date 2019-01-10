<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
     <%@ page import="net.codejava.fileupload.model.UploadFile " %>   
         <%@ page import="java.io.DataOutputStream" %>
          <%@ page import="  java.io.FileOutputStream " %>   
            <%@ page import="  java.io.OutputStream " %>   
            <%@ page import="  java.io.InputStream"  %>    
            
             <%@ page import="java.io.File"  %> 
            
              <%@ page import=" java.awt.Desktop"  %> 
         
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% 
 
 
	
 
 UploadFile ob=(UploadFile)request.getAttribute("value");
 
    byte[] data=ob.getData();
    
    
    
    FileOutputStream fout = new FileOutputStream("C:/Users/Hp/Documents/kirubha.pdf");
    DataOutputStream dout = new DataOutputStream(fout);
    dout.write(data,0,data.length);
    fout.close();
    
    try
	{
    	response.setContentType("application/pdf");
    	response.getOutputStream().write(data);
    	response.getOutputStream().flush();
    	response.getOutputStream().close(); 
	//	Desktop.getDesktop().open(new File("C:/Users/Hp/Documents/kirubha.pdf"));  
	}
	
	catch(Exception e)
	{
		System.out.println(e);
	}
 
    
    //response.sendRedirect("Includefile.jsp");
   // response.setHeader("Refresh", "0; URL=http://your-current-page");
    
 %>
 
  
   
 

</body>
</html>