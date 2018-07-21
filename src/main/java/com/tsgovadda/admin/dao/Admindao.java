package com.tsgovadda.admin.dao;

import java.util.List;

import com.tsgovadda.model.Questions;

public interface Admindao {
	public String addquestion(Questions question);

	public List<Questions> getquestions(String subject);
}
