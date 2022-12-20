<%@ page import="java.sql.*"%>
<%@ page language= "java" contentType= "text/html; charset=windows-1256"
pageEncoding= "windows-1256"%>
<%@ page import ="java.sql.*" %>
<%
    try{
        String username = request.getParameter("userName");   
        String password = request.getParameter("pass");
        username.trim();
		password.trim();
       
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ouab?" + "user=root&password=fcit");    
        PreparedStatement pst = conn.prepareStatement("Select username,password from users where username=? and password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next()) {                  
        	session.setAttribute("username", username);
   	 		session.setAttribute("password", password);
        	response.sendRedirect("index.jsp");     
        	
        } else{           
           %>
           <script type="text/javascript">
           alert("Incorrect username or Password!");
           window.location.replace("login.jsp");
           </script>
           <%
        }
   }
   catch(Exception e){             
    		   %>
           <script type="text/javascript">
           alert("Something went wrong !! Please try again");
           window.location.replace("login.jsp");
           </script>
           <%
    		   
   }      
%>