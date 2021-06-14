package io.sample.service.impl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;

import org.springframework.stereotype.Service;

import io.sample.service.SampleService;

@Service
public class SampleServiceImpl implements SampleService {

	public String saveHtml(final String URL) throws IOException {
	    String line = "", all = "";
	    URL myUrl = null;
	    BufferedReader in = null;
	    try {
	        myUrl = new URL(URL);
	        in = new BufferedReader(new InputStreamReader(myUrl.openStream()));

	        while ((line = in.readLine()) != null) {
	            all += line;
	        }
	    } finally {
	        if (in != null) {
	            in.close();
	        }
	    }

	    return all;
	}
	
//	public static String saveImgFromHtml(final String URL) throws IOException {
//
//	}

}
