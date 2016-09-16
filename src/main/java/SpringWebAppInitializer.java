/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

/**
 *
 * @author lejin
 */
public class SpringWebAppInitializer implements WebApplicationInitializer{
    
    @Override
    public void onStartup(ServletContext sc) throws ServletException {
        AnnotationConfigWebApplicationContext applicationContext=new AnnotationConfigWebApplicationContext();
        applicationContext.register(ApplicationContextConfig.class);
        ServletRegistration.Dynamic dispactherservlet=sc.addServlet("SpringDispacther", new DispatcherServlet(applicationContext));
        dispactherservlet.setLoadOnStartup(1);
        dispactherservlet.addMapping("/");
        
    }
    
}
