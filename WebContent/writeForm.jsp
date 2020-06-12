<%@page import="chapter13.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	// 	BoardDBBean bdb = new BoardDBBean();
	// 	out.println(bdb.toString()+"<br/>");

	// 	BoardDBBean bdb2 = new BoardDBBean();
	// 	out.println(bdb2.toString()+"<br/>");

	// 	BoardDBBean bdb3 = new BoardDBBean();
	// 	out.println(bdb3.toString()+"<br/>");
	// 	out.println("<h1>싱글톤 getInstance()</h1>");
	// 	BoardDBBean gbdb1 = BoardDBBean.getInstance();
	// 	out.println(gbdb1.toString()+"<br/>");

	// 	BoardDBBean gbdb2 = BoardDBBean.getInstance();
	// 	out.println(gbdb2.toString()+"<br/>");

	// 	BoardDBBean gbdb3 = BoardDBBean.getInstance();
	// 	out.println(gbdb3.doA());
	// 	out.println(gbdb3.toString()+"<br/>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeForm.jsp</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/chapter13.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<form action="writePro.jsp" id="frm" method="get">
		<div class="container bg-lightblue">
			<div class="row">
				<div class="col">
					<h1>Write</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-md-2 myborder mycenter">Name</div>
				<div class="col-md-10 myborder">
					<input class="form-control" type="text" name="writer" />
				</div>
			</div>

			<div class="row">
				<div class="col-md-2 myborder mycenter">Subject</div>
				<div class="col-md-10 myborder">
					<input class="form-control" type="text" name="subject" />
				</div>
			</div>

			<div class="row">
				<div class="col-md-2 myborder mycenter">E-mail</div>
				<div class="col-md-10 myborder">
					<input class="form-control" type="text" name="email" />
				</div>
			</div>

			<div class="row">
				<div class="col-md-2 myborder mycenter">Content</div>
				<div class="col-md-10 myborder">
					<textarea class="form-control" name="content" rows="10"></textarea>
				</div>
			</div>

			<div class="row">
				<div class="col-md-2 myborder mycenter">Passwd</div>
				<div class="col-md-10 myborder">
					<input class="form-control" type="text" name="passwd" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 mycenter">
					<div>
						<input type="button" value="New Post" id="writeBtn" /> <input
							type="button" value="Re-type" /> <input type="button"
							value="View List" />
					</div>
				</div>
			</div>

		</div>

	</form>
</body>
</html>
<script type="text/javascript">
	$("#writeBtn").on("click",function(){
		$("#frm").submit();
	})
</script>