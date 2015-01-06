package io.sample.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import io.sample.bean.para.UserPara;

import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
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
@Scope("session")
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

    	if(sample == null) {
    		logger.info("this is null");
    	}

    	if(sample.equals("sample")) {
    		returnUrl = "index";
    	} else {
    		returnUrl = "sample/" + sample;	
    	}

    	logger.info(">>>" + returnUrl);

    	model.addAttribute("name", "Hello World!");

		return returnUrl;
	}

    @RequestMapping(value="/comfirm")
	public String comfirm(@ModelAttribute UserPara userPara, HttpSession session, ModelMap model) throws Exception {

    	logger.info("Name >>>" + userPara.getName());
    	logger.info("State >>>" + userPara.getState());

    	model.addAttribute("name", userPara.getName());
    	session.setAttribute("cnt", Integer.valueOf(userPara.getCnt()) + 1);

		return "confirm";
	}

    @RequestMapping(value="/test")
	public void test(@RequestBody String body, HttpServletResponse response) throws Exception {

    	logger.info("body >> " + body);

    	JSONParser parser=new JSONParser();
    	Object obj = parser.parse(body);
    	JSONObject jsonObject = (JSONObject) obj;
    	String value = (String)jsonObject.get("text");

		response.setContentType("application/json; charset=utf-8");
		response.setHeader("Cache-Control", "no-cache");
		PrintWriter pw = response.getWriter();
		pw.write("{\"aaa\":\"ddd-" + value + "\"}");
		pw.flush();
		pw.close();
	}

}