package com.tsgovadda.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tsgovadda.admin.service.AdminService;
import com.tsgovadda.model.Questions;

@Controller
@Component
public class Admincontroller {

	@Autowired
	AdminService service;
	
	private static Logger log = LoggerFactory.getLogger(Admincontroller.class);

	@RequestMapping(name = "/questionserv", method = RequestMethod.POST)
	public ModelAndView questionserv(@ModelAttribute("questions") Questions questions) {
		ModelAndView mav = null;
		log.info("#### Question Serv : Begin");
		System.out.println(questions.getQuestionid() + "--" + questions.getSubject() + "--" + questions.getQuestion()
				+ "--" + questions.getOption_a() + "-" + questions.getOption_b() + "--" + questions.getOption_c() + "--"
				+ questions.getOption_d() + "--" + questions.getCorrect() + "--" + questions.isCheckbox());
		String qid = service.addquestions(questions);
		if ((!qid.equals("Question Not Saved"))) {
			if (questions.isCheckbox()) {
				mav = new ModelAndView("adaddquestion");
				log.info(""+questions.isCheckbox());
				String msg = "question saved with id : " + qid + " Add Another Question";
				mav.addObject("message", msg);
			} else {
				mav = new ModelAndView("adaddquestion");
				String msg = "Thank you for adding Questions";
				mav.addObject("message", msg);
			}
		} else {
			mav = new ModelAndView("adaddquestion");
			String msg = "Qustion Not Saved !!!";
			mav.addObject("message", msg);
		}
		log.info("#### Question Serv : End");
		return mav;
	}

	@RequestMapping(name = "/displayquestions")
	public String displayquestions(@RequestParam("subject") String subject, @RequestParam("level") String level,
			Model model) {
		System.out.println(subject+"------"+level);
		model.addAttribute("list", service.getquestions(subject));
		return "exam";
	}

}
