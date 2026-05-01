import org.apache.catalina.startup.Tomcat;
import org.apache.catalina.Context;
import org.apache.catalina.LifecycleException;
import org.apache.catalina.connector.Connector;
import java.io.File;
import java.net.MalformedURLException;

public class EmbeddedTomcatRunner {
    public static void main(String[] args) throws LifecycleException {
        Tomcat tomcat = new Tomcat();
        tomcat.setBaseDir("temp");
        
        // Set up connector
        Connector connector = tomcat.getConnector();
        connector.setPort(8080);
        
        // Add web application
        String webappDir = new File("build/web").getAbsolutePath();
        Context ctx = tomcat.addWebapp("", webappDir);
        
        // Enable annotation processing
        try {
            ctx.setConfigFile(new File(webappDir + "/WEB-INF/web.xml").toURI().toURL());
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        
        System.out.println("Starting Tomcat on port 8080...");
        System.out.println("Webapp directory: " + webappDir);
        System.out.println("Context path: /");
        System.out.println("Open http://localhost:8080/");
        
        tomcat.start();
        tomcat.getServer().await();
    }
}
