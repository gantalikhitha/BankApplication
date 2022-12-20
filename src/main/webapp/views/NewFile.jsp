

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
			
		</tr>

		<tr>
			<td>${obj.bid }</td>
			<td>${obj.branch}</td>
			<td>${obj.customercareno}</td>

			<td>${obj.customer.name}</td>
			<td>${obj.customer.address}</td>
			<td>${obj.customer.dateofadmission}</td>
			<td>${obj.customer.mobileno}</td>

			<td>${obj.customerbankdetails.loan}</td>
			<td>${obj.customerbankdetails.bankbalance}</td>
			<td>${obj.customerbankdetails.acc_no}</td>
			<td>${obj.customerbankdetails.receivedloandate}</td>
			<td>${obj.customerbankdetails.loanduedate}</td>
		</tr>

	</table>
</body>
</html>