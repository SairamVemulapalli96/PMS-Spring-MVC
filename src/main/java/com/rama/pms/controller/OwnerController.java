package com.rama.pms.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.rama.pms.service.OwnerService;

@Controller

public class OwnerController {
	
	static Logger logger = Logger.getLogger(OwnerController.class);
	
	@Autowired
	OwnerService ownerService;
	
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String showIndexPage()
	{
		
		return "admin/index";
	}
	
	@RequestMapping(value = "/owners", method = RequestMethod.GET)
	public String getAllOwners(ModelMap model)
	{
		logger.info("getAllOwners() invoked");
		
		/* Using the CRUD Method Overridden from the Service Interface */
		model.addAttribute("owners", ownerService.getAllOwners());
		
		return "admin/owners";
	}
}
