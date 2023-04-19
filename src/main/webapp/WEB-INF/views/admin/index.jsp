<head>
<%@include file="dynamicmenu.jsp" %>
<link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css"
	rel="stylesheet">
	<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
	crossorigin="anonymous"></script>
</head>
		<h1>Property Management System</h1>
		
		<br/><br/>
		<!--  <a href="List">View Owners</a>&nbsp; | &nbsp;
		<a href="createowner.jsp">Add Owner</a>&nbsp; | &nbsp;
		<a href="TenantList">View Tenants</a>&nbsp; | &nbsp;
		<a href="createtenant.jsp">Add Tenant</a>&nbsp; | &nbsp;-->
		<%
			String message = (String) request.getAttribute("message");
			String userType = (String) session.getAttribute("userType");
			//String userInSession = (String) session.getAttribute("user");
			
		
			if(null!=userType) {
		%>			
				<div class="row">
				<div class="col-12" align="center">
					<div class="alert alert-success" role="alert">
						Hello <%=userType%>
					</div>
				</div>
			</div>
				
		<%		
			}
		%>
		
		
		
		<%@include file="../footer.jsp" %>
