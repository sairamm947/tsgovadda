package com.tsgovadda.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminlinkcontroller {

	@RequestMapping("/adaddquestion")
	public String adminhomepage() {
		return "adaddquestion";
	}
}
