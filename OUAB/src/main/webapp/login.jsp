<%@ page language= "java" contentType= "text/html; charset=windows-1256"
pageEncoding= "windows-1256"%>

<!DOCTYPE html>
<html>
<head>
  <title>Login page| OUAB</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href=css/stylesheet.css>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script type="text/javascript" src="javascript/javascript.js"></script>
</head>

<body class = "registration">

  <table class="Ouab">
  <thead>
  </thead>
  <tbody><tr><td>
  <!-- ************** page contents ************** -->
  <div class = "registration">
    <button type="button" id="cancel" onclick="location.href='index.jsp';"><img src="images/cross.png" alt="cross.png"></button>
    <img src="images/logo.png" alt="logo.png" style="width:120px; height:115px;">
    <div class = "form-box">
      <div class = "button-box">
        <div id = "btnL"></div>
        <button type="button" class="switch-btn" onmousedown = "gradientBtn(document.getElementById('btn'), '#836e62', '#836e62')" onmouseup = "gradientBtn(document.getElementById('btn'), '#cfae9f', '#836e62')"> Log in </button>
        <button type="button" class="switch-btn" onclick="location.href='Registration.jsp';" onmousedown = "gradientBtn(document.getElementById('btn'), '#836e62', '#836e62')" onmouseup = "gradientBtn(document.getElementById('btn'), '#cfae9f', '#836e62')"> Register </button>
      </div>
      
      <!-- ************** login form ************** -->
      <form name="login_form" action="Validate.jsp" method="POST" onsubmit="confirmation(1)" onreset="confirmation(2)">
      
		  
          <input type="text" name="userName" class="input-field" placeholder="Enter your user name" onkeydown="changeBr(this, '#a79084')" required/>
          
          
          <input type="password" name="pass" class="input-field" placeholder="Enter your password" onkeydown="changeBr(this, '#a79084')" required/>
          
          
		  
          <input type="submit" class="submit-btn" value="Log in" onmousedown = "gradientBtn(this, '#836e62', '#836e62')"
onmouseup = "gradientBtn(this, '#cfae9f', '#836e62')"> 

          <input type="reset" class="reset-btn" value="Clear" onmousedown = "gradientBtn(this, '#836e62', '#836e62')"
onmouseup = "gradientBtn(this, '#cfae9f', '#836e62')"> 

      </form>

    </div>
  </div>
  <!-- ************** end of page contents ************** -->
  </td></tr>
</tbody>

  <tfoot>
  <!-- ************** footer ************** -->
  <tr><td class="footer">&copy;2021 by OUAB. Proudly created for course Cpit-455.</td></tr>
  </tfoot>
  </table>

</body>
</html>