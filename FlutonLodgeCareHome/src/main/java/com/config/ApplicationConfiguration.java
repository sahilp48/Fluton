package com.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;
public class ApplicationConfiguration implements WebApplicationInitializer{

public void onStartup(ServletContext servletContext) throws ServletException {
		
		AnnotationConfigWebApplicationContext webApplicationContext = new AnnotationConfigWebApplicationContext();
		webApplicationContext.register(AddResidentConfiguration.class);
		// Create a new Dispatcher Servlet Object
		DispatcherServlet dispatcherServlet = new DispatcherServlet(webApplicationContext);

		// Registering dispatcher Servlet with the Servlet context
		ServletRegistration.Dynamic myDispatcherervlet = servletContext.addServlet("customDispatcherServlet",
				dispatcherServlet);
		//Added Dispatcher Servlet congigurations
		myDispatcherervlet.addMapping("/");
		myDispatcherervlet.setLoadOnStartup(1);
	}
}