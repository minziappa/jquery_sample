package io.sample.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController extends AbstractBaseController {

	final Logger logger = LoggerFactory.getLogger(IndexController.class);

    @RequestMapping(value={"/", "", "index"}, method=RequestMethod.GET)
	public String index(ModelMap model) throws Exception {

    	model.addAttribute("name", "Hello World!");

		return "index";
	}

}