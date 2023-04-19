<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.util.List, com.rama.pms.model.Owner, 
		org.springframework.ui.ModelMap" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>PMS | Owners</title>
		<link rel="icon" type="image/x-icon" href="<%=request.getContextPath() %>/images/favicon.ico">
		<link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>
		<div id="contacts" class="container">
			<h1>PMS - Owners</h1>
			<!--  <div id="greeting">
				Welcome, <b>${name}</b>. Your last successful login was at : <b>${lastSuccessfulLogin}</b>
			</div>-->
			
		<%
			Object messageObj = request.getAttribute("message");
		
			String message = (null!=messageObj) ? (String) messageObj : null;
			
			if(null!=message) 
			{
		%>		
				<br/><br/>	
				<div id="message">
					<span style="background-color: teal; color: white;">
						${message}
					</span>
				</div>
		<% 	
			}
			
			/* See if the contacts is hving a valid data */
			Object owners = request.getAttribute("owners");
		%>
			<!--  For Debugging  -->
			<!--<c:out value="${contacts}"/>-->
			
		<%   
		List<Owner> ownerList = (ArrayList<Owner>) owners;
		
			if(ownerList.size()<=0)
			{
		%>
				<!--<c:out value="There are NO records available to display"/> -->
				<br/><br/>
				<div id="message">
					<span style="background-color: yellow; color: red;">
						There are NO records available to display.
					</span>
				</div>
				<br/><br/>
				<div>	
					Please click <a href="add-contact">here</a> to add a new contact.
				</div>				
		<%
			}
			else 
			{
		%>	
				<p>
					Please find all the owners in the PMS.
				</p> 
				<!--  Equivalent to out.println("Hello, JSTL") -->
				<!--<c:out value="Hello, JSTL"></c:out> -->
				<%
					/*List<Contact> contactList = (List<Contact>) request.getAttribute("contacts");
					
					out.println("contactList size : " + contactList.size());
					out.println("<br/>");
					out.println("===========================");
					out.println("<br/>");
					for(Contact contact : contactList)
					{
						out.println(contact);
						out.println("<br/>");
					}
					out.println("<br/>");
					out.println("===========================");
					*/
				%>
				<table class="table table-striped table-hover table-bordered 
							table-responsive caption-top">
					<caption>View All Owners</caption>
					<thead>
						<tr>	
							<th class="text-center">Owner Id</th>
							<th class="text-center">Name</th>
							<th class="text-center">Age</th>
							<th class="text-center">Gender</th>
							<th class="text-center">Phone No</th>
							<th class="text-center">Email</th>
							<th class="text-center">Address</th>
						</tr>
					</thead>
					<tbody class="table-group-divider">
						<c:forEach var="owner" items="${owners}">
							<tr>
								<td>${owner.oid}</td>
								<td>${owner.name}</td>
								<td>${owner.age}</td>
								<td>${owner.gender}</td>
								<td>${owner.phoneNo}</td>
								<td>${owner.email}</td>
								<td>${owner.address}</td>
								
							<!-- 	<td>
									<a href="contact?id=${contact.id}">View</a> &nbsp; | &nbsp;
									<a href="update-contact?id=${contact.id}">Update</a>&nbsp; | &nbsp;
									<a href="delete-contact?id=${contact.id}">Delete</a>
								</td>  -->
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div>
					<!-- Not a recommended approach. JSP to JSP it forwards -->
					<!--  Click <a href="addContact.jsp">here</a> to add a new Contact.-->
					
					<!--  
							Recommended Approach, we need the request to go the Server and
							it will redirect to the right JSP Page (MVC Approach). 
							
							See the value in href - it has the urlPattern than the actual .jsp file
					 -->
					<!-- Click <a href="add-contact">here</a> to add a new Contact.
					<button type="submit" class="btn btn-primary">Add</button> -->
					<!-- <a href="add-contact" class="btn btn-info" role="button">Add Contact</a>  -->
				</div>
			<%
				}
			%>
		</div>
	</body>
</html>