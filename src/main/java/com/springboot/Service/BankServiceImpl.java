package com.springboot.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.Model.Bank;
import com.springboot.Repository.BankRepository;

@Service

public class BankServiceImpl implements BankService {

	@Autowired
	private BankRepository bankRepository;

	@Override
	public Bank saveBank(Bank bank) {

		return bankRepository.save(bank);
	}

	public Bank findByBankId(int bid) {

		return bankRepository.findById(bid).get();
	}

	public String deleteByBankId(int bid) {

		bankRepository.deleteById(bid);
		return "deleted";
	}

	public Bank findByBankId(Bank bank) {

		return bankRepository.save(bank);
	}

	public List<Bank> findAll() {

		return bankRepository.findAll();
	}

	public Bank getById(int id) {

		return bankRepository.getById(id);
	}



}
