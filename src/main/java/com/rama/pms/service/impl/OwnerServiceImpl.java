package com.rama.pms.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rama.pms.repository.DAO;
import com.rama.pms.model.Owner;
import com.rama.pms.service.OwnerService;

@Service
public class OwnerServiceImpl implements OwnerService {
	
	static Logger logger = Logger.getLogger(OwnerServiceImpl.class);
	
	/*@Autowired
	DAO<Contact> contactDAO;*/
	
	@Autowired
	DAO<Owner> ownerDAO;

	@Override
	public List<Owner> getAllOwners() {
		logger.info("OwnerServiceImpl -- getAllOwners() invoked!! ");
		return ownerDAO.getAll();
	}

}
