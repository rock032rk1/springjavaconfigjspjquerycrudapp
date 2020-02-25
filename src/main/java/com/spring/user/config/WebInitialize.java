package com.spring.user.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class WebInitialize implements WebApplicationInitializer{

	public void onStartup(ServletContext servletContext) throws ServletException {
		// TODO Auto-generated method stub
		
		AnnotationConfigWebApplicationContext context = new
				 AnnotationConfigWebApplicationContext(); context.register(WebConfig.class);
				 context.setServletContext(servletContext);
				  
				  ServletRegistration.Dynamic seDynamic =
				  servletContext.addServlet("dispatcher", new DispatcherServlet(context));
				  seDynamic.addMapping("/"); seDynamic.setLoadOnStartup(1);
		
		
	}

}
