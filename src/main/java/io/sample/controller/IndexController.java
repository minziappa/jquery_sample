package io.sample.controller;

import javax.servlet.http.HttpSession;

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
 * @see     io.sample.controller.IndexController#index()
 * @since   JDK1.7
 */
@Controller
public class IndexController extends AbstractBaseController {

	final Logger logger = LoggerFactory.getLogger(IndexController.class);

    /**
     * Index for ......
     * 
     * @param  ModelMap 
     *         model
     *         
     * @throws  Exception
     *          If a error occur, ...
     *
     * @return String
     * 		   a file name of FTL.
     * 
     * @since  1.7
     */
    @RequestMapping(value="/{sample}", method=RequestMethod.GET)
	public String index(@PathVariable String sample, ModelMap model) throws Exception {

    	String returnUrl = "index";

    	if(sample.equals("test1")) {
    		returnUrl = "sample/test1";
    	} else if (sample.equals("test2")) {
    		returnUrl = "sample/test2";
    	} else if (sample.equals("test3")) {
    		returnUrl = "sample/test3";
    	} else if (sample.equals("test4")) {
    		returnUrl = "sample/test4";
    	} else if (sample.equals("test5")) {
    		returnUrl = "sample/test5";
    	}

    	logger.info(">>>" + sample);
    	
    	model.addAttribute("test", "@@@ Hello World! @@@");

		return returnUrl;
	}

}