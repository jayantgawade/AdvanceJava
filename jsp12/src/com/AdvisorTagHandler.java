package com;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import org.apache.jasper.el.JspELException;

public class AdvisorTagHandler extends SimpleTagSupport {

	private String user;
	
	public void setUser(String user) {
		this.user = user;
	}

	public void doTag() throws JspELException,IOException{
		getJspContext().getOut().write("Hello" +user +"<br>");
		getJspContext().getOut().write("your Advice is :" +getAdvice());
		
	}
	
	String getAdvice(){
		String [] adviceString ={"That colour Not working for you","You might Rethink That haircut","You should call in sick","General Advice" };
		int random =(int)(Math.random() * adviceString.length);
		return adviceString[random];
	}
}
