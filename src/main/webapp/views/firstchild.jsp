

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
	<h2 align="center">Details</h2>
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
			<td>${get.bank.bid }</td>
			<td>${get.bank.branch}</td>
			<td>${get.bank.customercareno}</td>

			<td>${get.name}</td>
			<td>${get.address}</td>
			<td>${get.dateofadmission}</td>
			<td>${get.mobileno}</td>

			<td>${get.bank.customerbankdetails.loan}</td>
			<td>${get.bank.customerbankdetails.bankbalance}</td>
			<td>${get.bank.customerbankdetails.acc_no}</td>
			<td>${get.bank.customerbankdetails.receivedloandate}</td>
			<td>${get.bank.customerbankdetails.loanduedate}</td>


		</tr>

	</table>
</body>
</html>