

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #ffe6ff;">
	<h2 align="center">Bank Details</h2>
	<input type="button" value="Add Bank Details"
				onclick="window.location.href='run'; return false;"
				class="btn btn-primary" />
			<br />
			<br />
	
	<table border="1">
		<tr>
			<th>Bid</th>
			<th>MainBranch</th>
			<th>CustomerCareNumber</th>
			<th>CustomerName</th>
			<th>CustomerAddress</th>
			<th>CustomerDateOfAdmission</th>
			<th>CustomerMobileNo</th>
			<th>CustomerLoan</th>
			<th>CustomerBankBalance</th>
			<th>CustomerAccountNo</th>
			<th>CustomerReceivedLoanDate</th>
			<th>CustomerLoanDueDate</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>


		<c:forEach var="bank" items="${bank}">
			<c:url var="update" value="/bank/update">
				<c:param name="car" value="${bank.bid}" />
			</c:url>

			<c:url var="delete" value="/bank/delete">
				<c:param name="car" value="${bank.bid}" />
			</c:url>

			



			<tr>
				<td>${bank.bid }</td>
				<td>${bank.branch}</td>
				<td>${bank.customercareno}</td>

				<td>${bank.customer.name}</td>
				<td>${bank.customer.address}</td>
				<td>${bank.customer.dateofadmission}</td>
				<td>${bank.customer.mobileno}</td>

				<td>${bank.customerbankdetails.loan}</td>
				<td>${bank.customerbankdetails.bankbalance}</td>
				<td>${bank.customerbankdetails.acc_no}</td>
				<td>${bank.customerbankdetails.receivedloandate}</td>
				<td>${bank.customerbankdetails.loanduedate}</td>
				<td><a href="${update}">Update</a></td>
				<td><a href="${delete}">Delete</a></td>

			</tr>
		</c:forEach>
	</table>
</body>
</html>