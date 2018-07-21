package com.tsgovadda.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class linkscontroller {

	@RequestMapping("/homepage")
	public String showhomepage() {
		return "home";
	}
	
	@RequestMapping("/login")
	public String showloginpage() {
		return "login";
	}
	
	@RequestMapping("/register")
	public String showregisterpage() {
		return "register";
	}
}