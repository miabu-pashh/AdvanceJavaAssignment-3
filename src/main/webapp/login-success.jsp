<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page 1-maibu</title>
<style>

table{
	width: 80%;
}
td{
	padding:5px;	
}
span{
	padding:5px;
}

input[type = submit]{
	border-radius: 5px;
}

</style>

</head>


<body>

<div align="center">
		<h1>Product Management Tool</h1>
	<form action="UploadDBServlet" method = "post" enctype = "multipart/form-data" >	
		<table >			
			<tbody>
				<tr><td style = "text-align:left"><b>Please Enter product details to add to stock</b></td></tr>
				
				<tr><td>Size:<span style = "padding: 35px"><input type = "text" name = "size" required></span></td></tr> 
				
				<tr style="padding: 10px"><td >Title:<span style="padding: 30px"><input type="text" name="Title" required ></span></td></tr>
				<tr><td>Quantity:<span><input type="number" name="quantity"></span></td></tr>

				<tr><td>Image:<span style="padding: 20px"><input type="url" name="Image" ></span>
				<input type="file" value="Browse" name="image" size="50"> </td></tr>
				<tr><td><input type="submit" value="submit"></td></tr>
				
			</tbody>
		</table>
		
	</form>
</div>


<form action ="DisplayServlet" method ="post">
<hr>


<%

	String imgId = (String)request.getAttribute("id");
	String title = (String)request.getAttribute("title");
	String qty = (String)request.getAttribute("qty");
	String size = (String)request.getAttribute("size");
	String imgFileName = (String)request.getAttribute("img");
	
%>

<div align="center">
	<h6><input type ="submit" value="Display"></h6>
	<table border = "5px" style = "width:600px">
		<tr>
			<th>Sr.No</th> 
			<th>Title</th> 
			<th>Quality</th> 
			<th>Size</th> 
			<th>Image</th>
			<th>Action</th>
		</tr>

		<tr>
			<th><%=imgId %></th>
			<th><%=title%></th> 
			<th><%=qty%></th> 
			<th><%=size %></th> 
			<th><img src = "C:\Users\mohammadpasha\eclipse-workspace\LoginDemo1\build\Nagarro_Logo.jpg<%=imgFileName%>"></th>
			<th><input type="submit" value="Edit"><input type="submit" value="Delete"></th>
			
		</tr>
		

	</table>

</div>
</form>	

</body>
</html>