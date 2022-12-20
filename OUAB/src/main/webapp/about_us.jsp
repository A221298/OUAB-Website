<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>About-us Page| OUAB</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
    <script type="text/javascript" src="javascript/javascript.js"></script>
</head>
<body>
<% String username = String.valueOf(session.getAttribute("username")); %>
  <table class="Ouab">
  <thead><tr class="headerbar"><th>
  <!-- ************** start of menu ************** -->
    <div><img src="images/logo.png" alt="logo.png" style="width:120px; height:115px;"></div>
    <nav>
          <ul>
            <li>
                <a class="" href="index.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> HOME </p></a>
            </li>
            <li>
                <a class="" href="books.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> BOOKS </p></a>
            </li>
            <li>
                <a class="" href="cart.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> CART </p></a>
            </li>
            <li>
                <a class="active" href="about_us.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> ABOUT US </p></a>
            </li>
            <li>
                <a class="" href="contact_us.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> CONTACT US </p></a>
            </li>
          </ul>
    </nav>
  <!-- ************** end of menu ************** -->
  
   <div
						style="float: right; width: 15em; padding: 0 1em; margin: -6.5em 0 0;">
						<%
						// Only show the login link when user not login into the website
						if (session.getAttribute("username") == null) {
							out.print("<a href='login.jsp'><img src='images/user.png' alt='user.png' "
									+ "style='width: 28%; float: left;'></a>	");
									out.print("<p id='hello' style='margin: 1.5em 2em 0 0;'>Hello, Guest</p>");
						} 
						
						// Only show the logout link when user login into the website
								else if (session.getAttribute("username") != null) {
									out.print("<img src='images/user.png' alt='user.png' "
											+ "style='width: 28%; float: left;'>");
									out.print("<p id='hello' style='margin: 1.5em 2em 0 0;'>Hello, "+ username+ "</p>");
									out.print("<a href='logout.jsp'>logout</a>");
								}
						%>
						
					</div>
  </th></tr>

  <tr><th>
  <!-- ************** strat of Heading specifics the title of the page ************** -->
  <h1> About Us </h1>
  <!-- ************** end of Heading ************** -->
  </th></tr></thead>
  
  <tbody><tr><td>
  <!-- ************** Page Content ************** -->
  <table class="content">
        <thead>
        </thead>
        <tbody>
                <tr>
                    <td>
                        <img src="images/amal.png" alt="amal.png" style="height:280px;">
                        <h4>Amal Hussein Alsomali</h4>
                        <ul>
                            <li> Aalsomali0026@stu.kau.edu.sa </li>
                            <li> information technology </li>
                        </ul>
                    </td>
                    <td>
                        <img src="images/shahad.png" alt="shahad.png" style="height:280px;">
                        <h4> Shahad Fahhad Alharbi</h4>
                        <ul> 
                            <li> salharbi0836@stu.kau.edu.sa </li>
                            <li> information technology </li>
                        </ul> 
                    </td>
                </tr>                
                <tr>
                    <td>
                        <img src="images/raghad.png" alt="raghad.png" style="height:280px;">
                        <h4> Raghad abdulmomin alharbi </h4>
                        <ul>
                            <li> rharbi0026@stu.kau.edu.sa</li>
                            <li> information technology </li>
                        </ul>
                    </td>
                    <td>
                        <img src="images/shatha.png" alt="shatha.png" style="height:280px;">
                        <h4> Shatha Fahad Khalil </h4>
                        <ul>
                            <li> skhalil0011@stu.kau.edu.sa </li>
                            <li> information technology </li>
                        </ul>
                    </td>
                    <td>
                        <img src="images/raneem.jpeg" alt="raneem.jpeg" style="height:280px;">
                        <h4> Raneem abdullah aljabri </h4>
                        <ul>
                            <li> raljabri0022@stu.kau.edu.sa </li>
                            <li> information technology </li>
                        </ul>
                    </td>
                </tr>
        </tbody>
    </table>
  <!-- ************** Content here ************** -->
  </td></tr></tbody>
  
  <tfoot>
  <!-- ************** quote of the page ************** -->
  <tr><td><div class="quote"></div></td></tr>
  <!-- ************** footer ************** -->
  <tr><td class="footer">&copy;2022 by OUAB. Proudly created for course Cpit-455.</td></tr>
  </tfoot>

</body>
</html>