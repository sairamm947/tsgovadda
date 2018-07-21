package com.tsgovadda.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tsgovadda.model.Student;
import com.tsgovadda.service.StudentService;

@Controller
@Component
public class homecontroller {

	@Autowired
	public StudentService service;
	
	@RequestMapping(value="/studentregisterser",method=RequestMethod.POST)
	public ModelAndView studentregister(@ModelAttribute("student")Student student) {
		int sid=service.savestudentregister(student);
		System.out.println(sid);
		ModelAndView mav=new ModelAndView("login");
		String message="Successfully Registerd Your Id is : "+student.getSid();
		mav.addObject("message", message);
		return mav;
		
	}
	
	@RequestMapping(value="/studentloginser",method=RequestMethod.POST)
	public ModelAndView studentloginser(@RequestParam String susername,@RequestParam String spassword) {
		Student st=service.loginstudent(susername,spassword);
		ModelAndView mav;
		System.out.println("before");
		System.out.println(st);
		if (st==null) {
			mav=new ModelAndView("login");
			mav.addObject("sid", "User Not Available");
		} else {
			mav=new ModelAndView("examinstruction");
			mav.addObject("message", "Successfully Login : "+st.getSusername());
		}
		
		return mav;
		
	}
	

}
