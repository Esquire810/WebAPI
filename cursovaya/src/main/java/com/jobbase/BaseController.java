package com.jobbase;

import com.jobbase.model.SignUp;
import com.jobbase.model.UserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BaseController {
    @Autowired
    private BaseService baseService;

    @RequestMapping("/")
    public String getSignUp(){
        return "signUp";
    }

    @RequestMapping(value = "/singUp", method = RequestMethod.POST)
    public String signUpMethod(@RequestParam String firstName,
                               @RequestParam String lastName,
                               @RequestParam String email,
                               @RequestParam int mobile,
                               @RequestParam String password,
                               @RequestParam UserRole role){
        baseService.createUser(new SignUp(role, email,firstName, lastName, password, mobile));
        return "redirect: /";
    }

}
