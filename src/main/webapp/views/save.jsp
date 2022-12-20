
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: powderblue;">

	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">

				<h1 align="center"> Bank Management</h1>

				<form action="${pageContext.request.contextPath} /bank/saveBank"
					method="post">
					

               <h4 align="center">Bank Details</h4>


					<div class="form-group">
						<label>EnterBranchName</label> <input type="text" name="branch"
							class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomercareNumber</label> <input type="text"
							name="customercareno" class="form-control">
					</div>

					<h4 align="center">CustomerAddressDetails</h4>


					<div class="form-group">
						<label>EnterCustomerAddress </label> <input type="string"
							name="customer.address" class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerDateOfAdmission</label> <input type="date"
							name="customer.dateofadmission" class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerMobileNumber</label> <input type="long"
							name="customer.mobileno" class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerName </label><input type="string"
							name="customer.name" class="form-control">
					</div>
					<h4 align="center">CustomerBankDetails</h4>



					<div class="form-group">
						<label>EnterCustomerAccountNo </label><input type="long"
							name="customerbankdetails.acc_no" class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerBankBalance </label><input type="long"
							name="customerbankdetails.bankbalance" class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerLoan </label><input type="long"
							name="customerbankdetails.loan" class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerLoanDueDate </label><input type="date"
							name="customerbankdetails.loanduedate" class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerReceivedLoanDate </label><input type="date"
							name="customerbankdetails.receivedloandate" class="form-control">
					</div>

					<input type="submit" value="save">
				</form>
			</div>
		</div>
	</div>
	<div class="col-md-4"></div>

</body>
</html>