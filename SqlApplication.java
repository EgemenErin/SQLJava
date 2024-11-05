package org.example.sql;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import java.io.IOException;
import java.util.List;


@SpringBootApplication
@Controller
@RequestMapping("/")
public class SqlApplication {
    public static void main(String[] args) {
        SpringApplication.run(SqlApplication.class, args);
    }
    @GetMapping("/")
    public void home(HttpServletResponse response) throws IOException {
        AnnotationConfigApplicationContext context=new

                AnnotationConfigApplicationContext(AppConfig.class);
        BrowsersDAOImpl browsersBean = context.getBean("BrowsersDAOBean", BrowsersDAOImpl.class);
        List<Browser> browsers = browsersBean.listBrowsers();
        for (Browser browser : browsers) {
            response.getWriter().write("Bid: " + browser.getBid() + " " + browser.getName()+"\n");
        }
    }
}
