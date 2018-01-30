<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
costomer list

<input type="button" value="Add Customer"
onclick="window.location.href='showFormForAdd'; return false;"
/>

<table>
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Email</th>
		<th>Action</th>
	</tr>
	<c:forEach var="tempCustomer" items="${customers}">
		<c:url var="updateLink" value="/customer/showFormForUpdate">
			<c:param name="customerId" value="${tempCustomer.id}"/>
		</c:url>
	
		<tr>
			<td>${tempCustomer.firstName}</td>
			<td>${tempCustomer.lastName}</td>
			<td>${tempCustomer.email}</td>
			<td><a href="${updateLink}">Update</a></td>
		</tr>
	</c:forEach>
</table> 