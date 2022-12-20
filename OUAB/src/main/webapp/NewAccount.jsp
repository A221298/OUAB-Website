<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
	<%
	
	String username = "";
	String password = "";
	String copass = "";
	String gender = "";
	String email = "";
	boolean check = false;
	
	try{
		username = request.getParameter("userName");
		password = request.getParameter("pass");
		gender = request.getParameter("gender");
		email = request.getParameter("email");
		int items = 0;
		
		username.trim();
		password.trim();
		gender.trim();
		email.trim();
		
		Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ouab?" + "user=root&password=fcit"); 
		
        String sqlQuery = "insert into users(username,password,gender,email,items)values('" + username
       		 + "','" + password + "','"+ gender +"','"+ email +"','"+ items + "');";
        Statement stmt = conn.createStatement();
		stmt.execute(sqlQuery);
		
		check = true;
	}
	catch(Exception e){ 
	    		   %>
	           <script type="text/javascript">
	           alert("Something went wrong !! Please try again");
	           window.location.replace("Registration.jsp");
	           </script>
	           <%
	}
	
	if(check){
	session.setAttribute("username", username);		
	session.setAttribute("gender", gender);
	session.setAttribute("email", email);
	response.sendRedirect("index.jsp");	
	}
	%>