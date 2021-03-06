<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  	<link rel="stylesheet" type="text/css" href="./stylesheets/header.css" />
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
<title>Find a CrimeTip</title>
</head>
<body>
	 <header>
		<nav>
			<div class="logo">
				<a href="index.html"> <img src="./images/map_logo.jpg" /> </a>
			</div>
			<a class="nav-link active" href="index.html">Home</a>
			<a class="nav-link active" href="FindCrimeTips.jsp">CrimeTips</a>
			<a class="nav-link active" href="ReadReports.jsp">Reports</a>
		</nav>
	</header>
	<form action="findcrimetips" method="post">
		<h1>Search for a CrimeTip by Content</h1>
		<p>
			<label for="content">Content</label>
			<input id="content" name="content" value="${fn:escapeXml(param.content)}">
		</p>
		<p>
			<input type="submit">
			<br/><br/><br/>
			<span id="successMessage"><b>${messages.success}</b></span>
		</p>
	</form>
	<br/>
	<div id="crimeTipsCreate"><a href="crimetipscreate">Create CrimeTips</a></div>
	<br/>
	<h1>Matching CrimeTips</h1>
        <table border="1">
            <tr>
                <th>CreatedTime</th>
                <th>OccurredTime</th>
                <th>Address</th>
                <th>City</th>
                <th>State</th>
                <th>Zipcode</th>
                <th>Content</th>
                <th>Update CrimeTips</th>
            </tr>
            <c:forEach items="${crimeTips}" var="crimeTips" >
                <tr>
                	<td><fmt:formatDate value="${crimeTips.getCreated()}" pattern="yyyy-MM-dd"/></td>
                	<td><fmt:formatDate value="${crimeTips.getOccurredTime()}" pattern="yyyy-MM-dd"/></td>
                    <td><c:out value="${crimeTips.getAddress()}" /></td>
                    <td><c:out value="${crimeTips.getCity()}" /></td>
                    <td><c:out value="${crimeTips.getState()}" /></td>
                    <td><c:out value="${crimeTips.getZipcode()}" /></td>
                    <td><c:out value="${crimeTips.getContent()}" /></td>
                    <td><a href="crimetipsupdate?content=<c:out value="${crimeTips.getContent()}"/>">Update</a></td>
                </tr>
            </c:forEach>
       </table>
       <script src="./js/bootstrap.min.js"></script>
</body>
</html>
