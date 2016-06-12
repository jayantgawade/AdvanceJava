package com;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTagTest extends SimpleTagSupport {

	String[] movies = { "Monsoon Wedding", "Saved!", "Fahrenheit 9/11" };

	@Override
	public void doTag() throws JspException, IOException {

		for (String movie : movies) {
			getJspContext().setAttribute("movie", movie);
			getJspBody().invoke(null);
		}
	}
}
