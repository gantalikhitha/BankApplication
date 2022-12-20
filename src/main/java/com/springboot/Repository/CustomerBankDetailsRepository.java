package com.springboot.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springboot.Model.CustomerBankDetails;

@Repository
public interface CustomerBankDetailsRepository extends JpaRepository<CustomerBankDetails, Integer> {

}
