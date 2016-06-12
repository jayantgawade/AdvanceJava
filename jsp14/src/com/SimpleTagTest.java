package com;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTagTest extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException {
		getJspContext().setAttribute("message", "Wear Cap");
		getJspBody().invoke(null);
	}
}
