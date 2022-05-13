<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>


<!DOCTYPE html>
<html lang="en">
<head>
	<script type="text/javascript">
        window.history.forward();
        function noBack(){
            window.history.forward();
        }
    </script>
    <title>New Enquiry</title>
    <style>
        table{
            width: 100%;
            margin: 30px 10px 30px 10px;
        }
        th,td{
            border-bottom: 1px solid rgb(206, 195, 195);
            padding: 5px 0;
        }

        th{
            background-color: blue;
            color: whitesmoke;
        }
        
        td{
            text-align: center;
        }
        body{
            margin: 0;
            padding: 0;
            background-color: rgb(250, 239, 239);
        }
    </style>
</head>
<body>
	<sql:setDataSource var = "datasource" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/oldagehome"
         user = "root"  password = "root"/>
         
	<sql:query dataSource = "${ datasource }" var = "result">
         SELECT * from members;
      </sql:query>
    <table align="center">
        <tr>
        	<th>Room No</th>
            <th>Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>DOB</th>
            <th>Email</th>
            <th>Address</th>
            <th>Contact</th>
            <th>Room type</th>
            <th>Button</th>
        </tr>
         <c:forEach var = "row" items = "${result.rows}">
         	<c:url var="templink" value="adddel">
        		<c:param name="fun" value="DEL"></c:param>
				<c:param name="val" value="${ row.roomno }"></c:param>
			</c:url>
            <tr>
            	<td><c:out value = "${row.roomno}"/></td>
        	    <td><c:out value = "${row.name}"/></td>
    	        <td><c:out value = "${row.age}"/></td>
	            <td><c:out value = "${row.gender}"/></td>
            	<td><c:out value = "${row.dob}"/></td>
        	    <td><c:out value = "${row.email}"/></td>
    	        <td><c:out value = "${row.address}"/></td>
	            <td><c:out value = "${row.contact}"/></td>
            	<td><c:out value = "${row.rtype}"/></td>
            	<td><a href="${ templink }"><button>delete</button></a></td>
            </tr>
         </c:forEach>
    </table>
</body>
</html>