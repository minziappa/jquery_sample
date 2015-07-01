package io.sample.controller;

import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/***
 * The <code>IndexController</code> class represents action controller.
 * 
 * @author  Joon Kim
 * @version 0.1, 14/07/17
 * @see     io.sample.controller.AjaxController#index()
 * @since   JDK1.7
 */
@Controller
@RequestMapping("/ajax")
public class AjaxController extends AbstractBaseController {

	final Logger logger = LoggerFactory.getLogger(AjaxController.class);

    @RequestMapping(value="/ajaxPost")
	public void ajaxPost(@RequestBody String body, HttpServletResponse response) throws Exception {

    	logger.info("body >> " + body);

    	JSONParser parser=new JSONParser();
    	Object obj = parser.parse(body);
    	JSONObject jsonObject = (JSONObject) obj;
    	String value = (String)jsonObject.get("text");

		response.setContentType("application/json; charset=utf-8");
		response.setHeader("Cache-Control", "no-cache");
		PrintWriter pw = response.getWriter();
		pw.write("{\"aaa\":\"ddd" + value + "\"}");
		pw.flush();
		pw.close();
	}

    @RequestMapping(value="/ajaxGet")
	public void ajaxGet(@RequestParam("body") String body, HttpServletResponse response) throws Exception {

    	logger.info("body >> " + body);

    	JSONParser parser=new JSONParser();
    	Object obj = parser.parse(body);
    	JSONObject jsonObject = (JSONObject) obj;
    	String value = (String)jsonObject.get("text");

    	if(value.equals("aaa")) {
    		value = "test";
    	} else {
    		value = "";
    	}

		// pw.write("{\"aaa\":\"" + value + "\"}");
		LinkedList<String> linked = new LinkedList<String>();
		linked.add("aaa");
		linked.add("abb");
		linked.add("abc");
		linked.add("aabcs");
		
		Map<String, LinkedList<String>> map = new LinkedHashMap<String, LinkedList<String>>();
		map.put("aaa", linked);

		String jsonString = JSONValue.toJSONString(map);

		logger.info(jsonString);

		this.handleWriteAjax(jsonString, response);
	}

    @RequestMapping(value="/ajaxGet2")
	public void ajaxGet2(@RequestParam("body") String body, HttpServletResponse response) throws Exception {

    	logger.info("body >> " + body);

    	JSONParser parser=new JSONParser();
    	Object obj = parser.parse(body);
    	JSONObject jsonObject = (JSONObject) obj;
    	String value = (String)jsonObject.get("text");

    	if(value.equals("aaa")) {
    		value = "test";
    	} else {
    		value = "";
    	}

//    	for(int i=0; i< 1; i++) {
//    		Thread.sleep(1000);
//    	}

		// pw.write("{\"aaa\":\"" + value + "\"}");
		
		LinkedList<Map<String, String>> linked = new LinkedList<Map<String, String>>();
		Map<String, String> map1 = new LinkedHashMap<String, String>();
		map1.put("map1", "value1");
		map1.put("map2", "value2");
		Map<String, String> map2 = new LinkedHashMap<String, String>();
		map2.put("map1", "value21");
		map2.put("map2", "value22");
		Map<String, String> map3 = new LinkedHashMap<String, String>();
		map3.put("map1", "txx1");
		map3.put("map2", "txx2");
		linked.add(map1);
		linked.add(map2);
		linked.add(map3);

		Map<String, LinkedList<Map<String, String>>> map = new LinkedHashMap<String, LinkedList<Map<String, String>>>();
		map.put("aaa", linked);

		String jsonString = JSONValue.toJSONString(map);

		logger.info(jsonString);

		this.handleWriteAjax(jsonString, response);
	}

}