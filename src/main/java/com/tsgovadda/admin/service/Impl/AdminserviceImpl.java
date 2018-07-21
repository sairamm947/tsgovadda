package com.tsgovadda.admin.service.Impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.tsgovadda.admin.dao.Admindao;
import com.tsgovadda.admin.service.AdminService;
import com.tsgovadda.model.Questions;

@Service
@Component
public class AdminserviceImpl implements AdminService{
	
	@Autowired
	Admindao dao;
	
	@Transactional
	public String addquestions(Questions questions) {
		
		return this.dao.addquestion(questions);
	}

	public List<Questions> getquestions(String subject) {
		return this.dao.getquestions(subject);
	}

}
