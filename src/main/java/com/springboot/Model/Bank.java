package com.springboot.Model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name = "bank")

public class Bank {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bid;
	private String branch;
	private long customercareno;
	@OneToOne(cascade = CascadeType.ALL, mappedBy = "bank")
	@JsonManagedReference
	private CustomerAddress customer;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "bank")
	@JsonManagedReference
	private CustomerBankDetails customerbankdetails;

	public int getbid() {
		return bid;
	}

	public void setId(int id) {
		this.bid = id;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public long getCustomercareno() {
		return customercareno;
	}

	public void setCustomercareno(long customercareno) {
		this.customercareno = customercareno;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public CustomerAddress getCustomer() {
		return customer;
	}

	public void setCustomer(CustomerAddress customer) {
		this.customer = customer;
	}

	public CustomerBankDetails getCustomerbankdetails() {
		return customerbankdetails;
	}

	public void setCustomerbankdetails(CustomerBankDetails customerbankdetails) {
		this.customerbankdetails = customerbankdetails;
	}

	@Override
	public String toString() {
		return "Bank [bid=" + bid + ", branch=" + branch + ", customercareno=" + customercareno + ", customer="
				+ customer + "]";
	}

}
