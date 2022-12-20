package com.springboot.Model;

import java.util.Locale;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "cbank_details")
public class CustomerBankDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int custbid;
	private int acc_no;
	private long loan;
	private double bankbalance;
	@JsonFormat(pattern = "dd-MM-yyyy")
	private Locale receivedloandate;
	@JsonFormat(pattern = "dd-MM-yyyy")
	private Locale loanduedate;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "bid")
	@JsonBackReference
	private Bank bank;

	public int getCustbid() {
		return custbid;
	}

	public void setCustbid(int custbid) {
		this.custbid = custbid;
	}

	public int getAcc_no() {
		return acc_no;
	}

	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}

	public long getLoan() {
		return loan;
	}

	public void setLoan(long loan) {
		this.loan = loan;
	}

	public double getBankbalance() {
		return bankbalance;
	}

	public void setBankbalance(double bankbalance) {
		this.bankbalance = bankbalance;
	}

	public Locale getReceivedloandate() {
		return receivedloandate;
	}

	public void setReceivedloandate(Locale receivedloandate) {
		this.receivedloandate = receivedloandate;
	}

	public Locale getLoanduedate() {
		return loanduedate;
	}

	public void setLoanduedate(Locale loanduedate) {
		this.loanduedate = loanduedate;
	}

	public Bank getBank() {
		return bank;
	}

	public void setBank(Bank bank) {
		this.bank = bank;
	}

}
