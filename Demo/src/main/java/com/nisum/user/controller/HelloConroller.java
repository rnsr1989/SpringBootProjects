package com.nisum.user.controller;

import org.json.simple.JSONObject;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nisum.pojo.LoginForm;

@Controller
public class HelloConroller {
	@RequestMapping("/hello")
    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
        model.addAttribute("name", name);
        return "hello";
    }
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/loginForm", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody																			
    public String loginForm(Model model, @RequestBody LoginForm loginForm) {
       System.out.println("loginForm ["+loginForm.getUserName()+"]");
       JSONObject obj = new JSONObject();
       obj.put("status", "success");
        return obj.toString();
    }
	@RequestMapping("/login")
    public String login(Model model) {
        return "login";
    }
}

