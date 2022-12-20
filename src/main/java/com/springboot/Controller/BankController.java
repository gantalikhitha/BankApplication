package com.springboot.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springboot.Model.Bank;
import com.springboot.Model.CustomerAddress;
import com.springboot.Model.CustomerBankDetails;
import com.springboot.Repository.BankRepository;
import com.springboot.Service.BankServiceImpl;

@Controller
@RequestMapping("/bank")
public class BankController {

	@Autowired
	private BankRepository bankRepository;
	@Autowired
	private BankServiceImpl bankService;

	@GetMapping("/run")
	public String index() {
		return "save";
	}

	@PostMapping("/saveBank")
	public String save(@ModelAttribute Bank bank) {
		CustomerAddress ca = bank.getCustomer();
		ca.setBank(bank);
		CustomerBankDetails cb = bank.getCustomerbankdetails();
		cb.setBank(bank);
		bankService.saveBank(bank);
		return "redirect:/bank/getall";
	}

	@GetMapping("/getall")
	public String fetchAll(Model model) {
		List<Bank> bank = bankService.findAll();
		model.addAttribute("bank", bank);
		return "get";

	}

	@GetMapping("/update")
	public String update(@RequestParam("car") int bid, Model model) {
		Bank bank = bankService.getById(bid);
		model.addAttribute("bank", bank);
		return "update";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("car") int bid) {
		bankService.deleteByBankId(bid);
		return "redirect:/bank/getall";
	}

	@GetMapping("/call")
	public String met() {
		return "getbyid";
	}

	@PostMapping("/savebee")
	public String get(@ModelAttribute Bank bank, Model model) {
		int sv = bank.getbid();
		Bank bk = bankRepository.getById(sv);
		model.addAttribute("obj", bk);
		return "NewFile";
	}

}
