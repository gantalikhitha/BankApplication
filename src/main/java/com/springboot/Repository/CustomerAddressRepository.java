package com.springboot.Repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springboot.Model.CustomerAddress;
import com.springboot.Model.CustomerBankDetails;

@Repository
public interface CustomerAddressRepository extends JpaRepository<CustomerAddress, Integer> {

	//CustomerBankDetails save(CustomerBankDetails cubd);

	
	CustomerAddress getByName(String name);

}
