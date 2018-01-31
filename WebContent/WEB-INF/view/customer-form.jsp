<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
Save Customer
</br>
<form:form action="saveCustomer" modelAttribute="customer" method="POST">
	<!-- need to associate this data with customer id -->
	<form:hidden path="id" />

	<table>
		<tbody>
			<tr>
				<td><label>First name:</label></td>
				<td><form:input path="firstName" /></td>
			</tr>
			<tr>
				<td><label>Last name:</label></td>
				<td><form:input path="lastName" /></td>
			</tr>
			<tr>
				<td><label>Email:</label></td>
				<td><form:input path="email" /></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="Save"></td>
			</tr>
		</tbody>
	</table>
</form:form>

<div>
<a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
</div>