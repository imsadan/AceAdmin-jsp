package AssAdmin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homeController {

    @RequestMapping("/home")
    public String homePage(){
        return  "home";
    }
}
