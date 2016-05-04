package io.sample.controller;

import io.sample.bean.model.MainModel;
import io.sample.bean.para.UserPara;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/pc")
public class PcController extends AbstractBaseController {

	final Logger logger = LoggerFactory.getLogger(PcController.class);

    @RequestMapping(value={"/", ""}, method=RequestMethod.GET)
	public String index(ModelMap model) throws Exception {

    	MainModel  mainModel = new MainModel();
    	mainModel.setNavi("pc");

    	model.addAttribute("model", mainModel);

    	logger.info(">>> index");
    	
		return "pc/index";
	}

    @RequestMapping(value="/{sample}", method=RequestMethod.GET)
	public String index(@PathVariable String sample, ModelMap model) throws Exception {

    	String returnUrl = "index";

    	if(sample == null) {
    		logger.info("this is null");
    	}

    	if(sample == null || sample.trim().isEmpty()) {
    		returnUrl = "index";
    	} else {
    		returnUrl = "pc/" + sample;	
    	}

    	logger.info(">>>" + returnUrl);

    	MainModel  mainModel = new MainModel();
    	mainModel.setNavi("pc");

    	model.addAttribute("model", mainModel);

		return returnUrl;
	}

    @RequestMapping(value="/comfirm")
	public String comfirm(@ModelAttribute UserPara userPara, HttpSession session, ModelMap model) throws Exception {

    	model.addAttribute("name", userPara.getName());
    	session.setAttribute("cnt", Integer.valueOf(userPara.getCnt()) + 1);

		return "confirm";
	}

}