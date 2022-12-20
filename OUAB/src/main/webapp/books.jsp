<%@ page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<title>Books Page| OUAB</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/stylesheet.css">
<script type="text/javascript" src="javascript.js"></script>
</head>

<body>
<% String username = String.valueOf(session.getAttribute("username"));

if (session.getAttribute("username") == null){
	username = "Guest";
	}

%>
	<table class="Ouab">
		<thead>
			<tr class="headerbar">
				<th>
					<!-- ************** start of menu ************** -->
					<div>
						<img src="images/logo.png" alt="logo.png"
							style="width: 120px; height: 115px;">
					</div>
					<nav>
						<ul>
							<li><a class="" href="index.jsp"
								onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
								onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
										class="menuP">HOME</p></a></li>
							<li><a class="active" href="books.jsp"
								onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
								onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
										class="menuP">BOOKS</p></a></li>
							<li><a class="" href="cart.jsp"
								onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
								onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
										class="menuP">CART</p></a></li>
							<li><a class="" href="about_us.jsp"
								onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
								onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
										class="menuP">ABOUT US</p></a></li>
							<li><a class="" href="contact_us.jsp"
								onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
								onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
										class="menuP">CONTACT US</p></a></li>
						</ul>
					</nav>
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
						
					</div> <!-- ************** end of menu ************** -->
				</th>
			</tr>

			<tr>
				<th>
					<!-- ************** strat of Heading specifics the title of the page ************** -->
					<h1>Books</h1> <!-- ************** end of Heading ************** -->
				</th>
			</tr>
		</thead>

		<tbody>
			<tr>
				<td class="booksPage">
					<!-- ************** list of books ************** -->
					<table class="books_tab">
						<thead>
							<tr>
								<th colspan="3">the recently added books:</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th><img src="images/book1.jpg"
									alt="picture of book Camino Island"><br>
								<span class="book-name">Camino Island <br> 30$
								</span>
									<button type="button" class="cart" name="book1"
										onmousedown="gradientBtn(this, '#88a8c0', '#88a8c0')"
										onmouseup="gradientBtn(this, '#a4b9c9', '#a4b9c9')"
										onclick="alert('Added to cart successfully!'); location.href='./books.jsp?var=1';">
										<img src="images/add-cart.png" alt="cart">
									</button></th>
								<th><img src="images/book2.jpg"
									alt="picture of book The Baker's Secret"><br>
								<span class="book-name">The Baker's Secret <br> 50$
								</span>
									<button type="button" class="cart" name="book2"
										onmousedown="gradientBtn(this, '#88a8c0', '#88a8c0')"
										onmouseup="gradientBtn(this, '#a4b9c9', '#a4b9c9')"
										onclick="alert('Added to cart successfully!'); location.href='./books.jsp?var=2';">
										<img src="images/add-cart.png" alt="cart">
									</button></th>
								<th><img src="images/book3.jpg"
									alt="picture of book The Power"><br>
								<span class="book-name">The Power <br> 30$
								</span>
									<button type="button" class="cart" name="book3"
										onmousedown="gradientBtn(this, '#88a8c0', '#88a8c0')"
										onmouseup="gradientBtn(this, '#a4b9c9', '#a4b9c9')"
										onclick="alert('Added to cart successfully!'); location.href='./books.jsp?var=3';">
										<img src="images/add-cart.png" alt="cart">
									</button></th>
							</tr>
							<tr>
								<th><img src="images/book5.jpg"
									alt="Thinking, Fast and Slow"><br>
								<span class="book-name">Thinking, Fast and Slow <br>
										25$
								</span>
									<button type="button" class="cart" name="book4"
										onmousedown="gradientBtn(this, '#88a8c0', '#88a8c0')"
										onmouseup="gradientBtn(this, '#a4b9c9', '#a4b9c9')"
										onclick="alert('Added to cart successfully!'); location.href='./books.jsp?var=4';">
										<img src="images/add-cart.png" alt="cart">
									</button></th>
								<th><img src="images/book6.jpg" alt="Boneshaker"><br>
								<span class="book-name">Boneshaker <br> 85$
								</span>
									<button type="button" class="cart" name="book5"
										onmousedown="gradientBtn(this, '#88a8c0', '#88a8c0')"
										onmouseup="gradientBtn(this, '#a4b9c9', '#a4b9c9')"
										onclick="alert('Added to cart successfully!'); location.href='./books.jsp?var=5';">
										<img src="images/add-cart.png" alt="cart">
									</button></th>
								<th><img src="images/book7.jpeg"
									alt="A Thousand Splendid Suns"><br>
								<span class="book-name">A Thousand Splendid Suns <br>
										15$
								</span>
									<button type="button" class="cart" name="book6"
										onmousedown="gradientBtn(this, '#88a8c0', '#88a8c0')"
										onmouseup="gradientBtn(this, '#a4b9c9', '#a4b9c9')"
										onclick="alert('Added to cart successfully!'); location.href='./books.jsp?var=6';">
										<img src="images/add-cart.png" alt="cart">
									</button></th>
							</tr>
						</tbody>
					</table> <!-- ************** end of list of books ************** -->
				</td>
			</tr>

			<tr>
				<td>
					<!-- ************** best seller book ************** -->
					<table class="best_tab">
						<thead>
							<tr>
								<th colspan="2"><h1>Best Seller</h1></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a
									href="https://www.amazon.com/Master-Your-Emotions-Practical-Negativity-ebook/dp/B07CX8H6YH"><img
										src="images/book4.jpg"
										alt="picture of book Master your emotions"></a></td>
								<td rowspan="2">
									<p>Master your emotions</p>
									<ul>
										<li>Struggling to let go of negative emotions? Discover a
											step-by-step process to living a happier, more fulfilling
											life. <br>Weighed down by negativity? Are painful
											emotions keeping you from doing the things you love? Author
											and founder of WhatIsPersonalDevelopment.org Thibaut Meurisse
											wants to help you take back your life.
										</li>
										<li>4.8/5.</li>
										<li>5,759 ratings.</li>
										<li>255 reviews.</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table> <!-- ************** end of best seller book************** -->
				</td>
			</tr>
		</tbody>

		<tfoot>
			<!-- ************** quote of the page ************** -->
			<tr>
				<td><div class="quote"></div></td>
			</tr>
			<!-- ************** footer ************** -->
			<tr>
				<td class="footer">&copy;2022 by OUAB. Proudly created for
					course Cpit-455.</td>
			</tr>
		</tfoot>
		
		
		<%
		//String msg="";
		String URL = "jdbc:mysql://localhost:3306/ouab?useSSL=false";
		String USERNAME = "root"; // use your username of Mysql server
		String PASSWORD = "fcit"; // use your password of Mysql server
		Connection connection = null;
		String sqlQuery = "";
		PreparedStatement preparedStmt = null;
		ResultSet resultSet = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

			String bookid = request.getParameter("var");
			if (bookid == null) {
				bookid = "0";

			}
						

			if ((bookid.isEmpty() == false) || (bookid.equals("0") == false)) {

				// checking if the user has added book with id $book_num to the cart or not
				sqlQuery = "SELECT * FROM cart WHERE bookid= " + bookid + " AND username='" + username + "'";

				preparedStmt = connection.prepareStatement(sqlQuery);
				//preparedStmt.execute();

				preparedStmt.execute();
				resultSet = preparedStmt.getResultSet();

				int num = 0;
				while(resultSet.next()){
					num++;
				}
				System.out.print(num);
				// if the book has been added to the cart, then increment the quantity
				if (num > 0) {
			sqlQuery = "Update cart set qty =  qty + 1 WHERE bookid= " + bookid + " AND username='" + username + "'";
			preparedStmt = connection.prepareStatement(sqlQuery);

			preparedStmt.executeUpdate();
				}
				// if the book is not in the cart, then change the user items value to 1 and add the book to the cart
				else {
			sqlQuery = "UPDATE users SET items = 1 WHERE username='" + username + "'";
			preparedStmt = connection.prepareStatement(sqlQuery);
			preparedStmt.executeUpdate();

			sqlQuery = "INSERT INTO cart (bookid, qty, username) VALUES (" + bookid + ", 1,'" + username + "')";
			preparedStmt = connection.prepareStatement(sqlQuery);
			preparedStmt.execute();

				}
			}

		} catch (SQLException e) {
			System.out.print(e);
			e.printStackTrace();

		}
		%>
	
</body>
</html>