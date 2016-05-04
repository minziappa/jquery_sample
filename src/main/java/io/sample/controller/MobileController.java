package io.sample.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.sample.bean.model.MainModel;

@Controller
@RequestMapping("/mobile")
public class MobileController extends AbstractBaseController {

	final Logger logger = LoggerFactory.getLogger(MobileController.class);

    @RequestMapping(value={"/", ""}, method=RequestMethod.GET)
	public String index(ModelMap model) throws Exception {

    	MainModel  mainModel = new MainModel();
    	mainModel.setNavi("mobile");

    	model.addAttribute("model", mainModel);

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

    	MainModel  mainModel = new MainModel();
    	mainModel.setNavi("mobile");

    	model.addAttribute("model", mainModel);

		return returnUrl;
	}
}