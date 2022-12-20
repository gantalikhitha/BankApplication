package com.springboot.Controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springboot.Model.Bank;
import com.springboot.Model.CustomerAddress;
import com.springboot.Repository.CustomerAddressRepository;

@Controller
@RequestMapping("/child")

public class CustomerAddressController {
	@Autowired
	public CustomerAddressRepository customerRepository;
	
	@RequestMapping("/getname")
	public String get() {
		
		return "getchildname";
	}
	
	@PostMapping("/getchild")
	public String get(@ModelAttribute CustomerAddress add,Model model) {
		
		String st=add.getName();
		CustomerAddress ca=customerRepository.getByName(st);
		model.addAttribute("get", ca);
		return "firstchild";
		

}
}
