package com.tsgovadda.admin.service;

import java.util.List;

import com.tsgovadda.model.Questions;

public interface AdminService {

	public String addquestions(Questions question);

	public List<Questions> getquestions(String subject);
}
