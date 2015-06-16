package io.sample.controller;

import io.sample.bean.para.ImagePara;

import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/***
 * The <code>IndexController</code> class represents action controller.
 * 1. Explain for a method .....
 * 
 * @author  Joon Kim
 * @version 0.1, 14/07/17
 * @see     io.sample.controller.ImageController#index()
 * @since   JDK1.7
 */
@Controller
@RequestMapping("/image")
public class ImageController extends AbstractBaseController {

	final Logger logger = LoggerFactory.getLogger(ImageController.class);

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
    @RequestMapping(value={"/{sample}"}, method=RequestMethod.GET)
	public String index(@PathVariable String sample, ModelMap model) throws Exception {

    	String returnUrl = "image/index";

    	returnUrl = "image/" + sample;

    	logger.info("returnUrl >>> " + returnUrl);
    	logger.info("sample >>> " + sample);

    	model.addAttribute("name", "Hello World!");

		return returnUrl;
	}

    // refer to http://examples.javacodegeeks.com/core-java/io/file/4-ways-to-copy-file-in-java/
    @RequestMapping(value="/crop")
	public String crop(@ModelAttribute ImagePara imagePara, ModelMap model) throws Exception {

	    String sourcePath = "./src/main/webapp/img/pool.jpg";
	    File sourcefile = new File(sourcePath);
//	    if(!sourcefile.isFile()) {
//	    	logger.info("There is no file");
//	    }

	    String destPath = "./src/main/webapp/img/poolEdited.jpg";
	    File destfile = new File(destPath);

	    // Files.copy(sourcefile.toPath(), destfile.toPath());

	    BufferedImage image = ImageIO.read(sourcefile);
	    BufferedImage out = image.getSubimage(imagePara.getX(), imagePara.getY(), 
	    		imagePara.getW(), imagePara.getH());

	    ImageIO.write(out, "jpg", destfile);

		return "image/crop";
	}


}