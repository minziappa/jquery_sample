package io.sample.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.sample.bean.model.MainModel;
import io.sample.service.impl.SampleServiceImpl;

@Controller
@RequestMapping("/sample")
public class SampleController extends AbstractBaseController {

	final Logger logger = LoggerFactory.getLogger(SampleController.class);

	@Autowired
	SampleServiceImpl sampleService;
	
    @RequestMapping(value={"/", ""}, method=RequestMethod.GET)
	public String index(ModelMap model) throws Exception {

    	MainModel  mainModel = new MainModel();
    	mainModel.setNavi("mobile");

    	model.addAttribute("model", mainModel);

    	return "mobile/index";
	}

    @RequestMapping(value="/{kind}/{sample}", method=RequestMethod.GET)
	public String sample(@PathVariable String kind, @PathVariable String sample, ModelMap model) throws Exception {

    	String returnUrl = "index";

    	if(kind == null || kind.trim().isEmpty()) {
    		returnUrl = "/sample/index";
    	}

    	if(sample == null || sample.trim().isEmpty()) {
    		returnUrl = "sample/" + kind + "/index";
    	} else {
    		returnUrl = "sample/" + kind + "/" + sample;	
    	}

    	MainModel  mainModel = new MainModel();
    	mainModel.setNavi("mobile");

    	model.addAttribute("model", mainModel);
    	logger.info("aaa>>>" + returnUrl);

		return returnUrl;
	}

    @RequestMapping(value="/sample1", method=RequestMethod.GET)
	public String sample1(ModelMap model) throws Exception {
    	String returnUrl = "index";

    	MainModel  mainModel = new MainModel();
    	
    	sampleService.saveHtml("http://jmlim.github.io/spring/2019/06/07/spring-convert-file-to-multipart-file/");
    	logger.info("sample1");
    	model.addAttribute("model", mainModel);

		return "";
	}
    
    
    
}