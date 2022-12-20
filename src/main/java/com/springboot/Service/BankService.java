package com.springboot.Service;

import org.springframework.stereotype.Service;

import com.springboot.Model.Bank;

@Service
public interface BankService {

	Bank saveBank(Bank bank);

}
