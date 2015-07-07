package io.sample.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/***
 * The <code>IndexController</code> class represents action controller.
 * 1. Explain for a method .....
 * 
 * @author  Joon Kim
 * @version 0.1, 14/07/17
 * @see     io.sample.controller.RealTimeController#index()
 * @since   JDK1.7
 */
@Controller
@RequestMapping("/realTime")
public class RealTimeController extends AbstractBaseController {

	final Logger logger = LoggerFactory.getLogger(RealTimeController.class);

    @RequestMapping(value={"/", ""}, method=RequestMethod.GET)
	public String index(ModelMap model) throws Exception {
		return "realTime/index";
	}

    @RequestMapping(value="/{sample}", method=RequestMethod.GET)
	public String index(@PathVariable String sample, ModelMap model) throws Exception {

    	String returnUrl = "index";

    	if(sample == null) {
    		logger.info("this is null");
    	}

    	if(sample.equals("sample")) {
    		returnUrl = "index";
    	} else {
    		returnUrl = "realTime/" + sample;	
    	}

    	logger.info(">>>" + returnUrl);

    	model.addAttribute("name", "Hello World!");

		return returnUrl;
	}


}