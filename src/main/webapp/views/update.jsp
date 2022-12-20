
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
<body style="background-color: #d9e6f2;">

	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">

				<h1 align="center">Update Details</h1>

				<form action="${pageContext.request.contextPath} /bank/saveBank"
					method="post">


					<div class="form-group">
						<label>id</label> <input type="text" name="id" value="${bank.bid}"
							class="form-control">
					</div>
					<div class="form-group">
						<label>EnterBranchName</label> <input type="text" name="branch"
							value="${bank.branch}" class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomercareNumber</label> <input type="text"
							name="customercareno" value="${bank.customercareno}"
							class="form-control">
					</div>

					<div class="form-group">
						<label>custid</label> <input type="text" name="customer.custId"
							value="${bank.customer.custId}" class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerAddress </label> <input type="string"
							name="customer.address" value="${bank.customer.address}"
							class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerDateOfAdmission</label> <input type="date"
							name="customer.dateofadmission"
							value="${bank.customer.dateofadmission}" class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerMobileNumber</label> <input type="long"
							name="customer.mobileno" value="${bank.customer.mobileno}"
							class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerName </label><input type="string"
							name="customer.name" value="${bank.customer.name}"
							class="form-control">
					</div>


					<div class="form-group">
						<label>custbid</label> <input type="text"
							name="customerbankdetails.custbid"
							value="${bank.customerbankdetails.custbid}" class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerAccountNo </label><input type="long"
							name="customerbankdetails.acc_no"
							value="${bank.customerbankdetails.acc_no}" class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerBankBalance </label><input type="long"
							name="customerbankdetails.bankbalance"
							value="${bank.customerbankdetails.bankbalance}"
							class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerLoan </label><input type="long"
							name="customerbankdetails.loan"
							value="${bank.customerbankdetails.loan}" class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerLoanDueDate </label><input type="date"
							name="customerbankdetails.loanduedate"
							value="${bank.customerbankdetails.loanduedate}"
							class="form-control">
					</div>
					<div class="form-group">
						<label>EnterCustomerReceivedLoanDate </label><input type="date"
							name="customerbankdetails.receivedloandate"
							value="${bank.customerbankdetails.receivedloandate}"
							class="form-control">
					</div>


					<input type="submit" value="update">
				</form>

			</div>
		</div>
	</div>
	<div class="col-md-4"></div>

</body>
</html>