package ch11;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class ListenerExam implements ServletContextListener, ServletContextAttributeListener, HttpSessionListener, HttpSessionAttributeListener {

	//ServletContext 시작
    public void contextInitialized(ServletContextEvent sce)  { 
      //  sce.getServletContext().log("@@@@@@ServletContext 시작");
   }
	
    //ServletContext 종료
    public void contextDestroyed(ServletContextEvent sce)  { 
    	//sce.getServletContext().log("@@@@@@ServletContext 종료");
   }
    
    public void attributeReplaced(ServletContextAttributeEvent event)  { 
      // event.getServletContext().log("@@@@@@@@ServletContext 속성 추가:" + event.getValue());
   }
    
    public void attributeAdded(ServletContextAttributeEvent event)  { 
        
    }
    
    public void attributeRemoved(HttpSessionBindingEvent event)  { 
      
   }
    
    public void sessionCreated(HttpSessionEvent se)  { 
    	//se.getSession().getServletContext().log("@@@@@@@@ Session 생성됨:" + se.getSession().getId());
   }

    public void sessionDestroyed(HttpSessionEvent se)  { 
        // TODO Auto-generated method stub
   }
    public ListenerExam() {
        // TODO Auto-generated constructor stub
    }

    public void attributeAdded(HttpSessionBindingEvent se)  { 
       // se.getSession().getServletContext().log("@@@@@@@@@@@@Session 속성 추가:" + se.getValue());
    	
    	
   }

    public void attributeReplaced(HttpSessionBindingEvent event)  { 
        // TODO Auto-generated method stub
   }

    
 
  
    public void attributeRemoved(ServletContextAttributeEvent event)  { 
         // TODO Auto-generated method stub
    }


 

 
}
