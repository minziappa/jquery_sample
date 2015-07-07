package io.sample.controller;

import io.sample.bean.para.ImagePara;

import java.awt.Color;
import java.awt.Font;
import java.awt.GradientPaint;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

    @RequestMapping(value="indexCaptcha")
    public String indexCaptcha(HttpServletRequest request, HttpSession session, ModelMap model) throws Exception {
    	String captcha = (String) session.getAttribute("captcha");
    	String code = (String) request.getParameter("code");

    	if (captcha != null && code != null) {
    		if (captcha.equals(code)) {
    			model.addAttribute("alert", "<p class='alert'>Correct</p>");
    		} else {
    			model.addAttribute("alert", "<p class='alert'>Incorrect</p>");
    		}
    	} else {
    		model.addAttribute("alert", "");
    	}

  	  	return "image/indexCaptcha";
    }

    @RequestMapping(value="captcha")
    public void captcha(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int width = 150;
		int height = 50;

		char data[][] = {
			{ 'z', 'e', 't', 'c', 'o', 'd', 'e' },
			{ 'l', 'i', 'n', 'u', 'x' },
			{ 'f', 'r', 'e', 'e', 'b', 's', 'd' },
			{ 'u', 'b', 'u', 'n', 't', 'u' },
			{ 'j', 'e', 'e' }
		};

		BufferedImage bufferedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

		Graphics2D g2d = bufferedImage.createGraphics();

		Font font = new Font("Georgia", Font.BOLD, 18);
		g2d.setFont(font);

		RenderingHints rh = new RenderingHints(RenderingHints.KEY_ANTIALIASING,
				RenderingHints.VALUE_ANTIALIAS_ON);
		rh.put(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);

		g2d.setRenderingHints(rh);

		GradientPaint gp = new GradientPaint(0, 0, Color.red, 0, height/2, Color.black, true);

		g2d.setPaint(gp);
		g2d.fillRect(0, 0, width, height);

		g2d.setColor(new Color(255, 153, 0));

		Random r = new Random();
		int index = Math.abs(r.nextInt()) % 5;

		String captcha = String.copyValueOf(data[index]);
		request.getSession().setAttribute("captcha", captcha );

		int x = 0;
		int y = 0;

		for (int i=0; i<data[index].length; i++) {
			x += 10 + (Math.abs(r.nextInt()) % 15);
			y = 20 + Math.abs(r.nextInt()) % 20;
			g2d.drawChars(data[index], i, 1, x, y);
		}

		g2d.dispose();

		this.handleWriteImage(bufferedImage, response);
		// return "image/captcha";
    }

}