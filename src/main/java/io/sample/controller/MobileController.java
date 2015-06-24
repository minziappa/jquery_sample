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
 * @see     io.sample.controller.MobileController#index()
 * @since   JDK1.7
 */
@Controller
@RequestMapping("/mobile")
public class MobileController extends AbstractBaseController {

	final Logger logger = LoggerFactory.getLogger(MobileController.class);

    @RequestMapping(value={"/", ""}, method=RequestMethod.GET)
	public String index(ModelMap model) throws Exception {
		return "mobile/index";
	}

    @RequestMapping(value="/{sample}", method=RequestMethod.GET)
	public String sample(@PathVariable String sample, ModelMap model) throws Exception {

    	String returnUrl = "index";
    	logger.info("aaa>>>" + returnUrl);

    	if(sample == null || sample.trim().isEmpty()) {
    		returnUrl = "mobile/index";
    	} else {
    		returnUrl = "mobile/" + sample;	
    	}

    	logger.info("aaa>>>" + returnUrl);

		return returnUrl;
	}
}