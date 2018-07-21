package com.tsgovadda.admin.dao.Impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.tsgovadda.admin.dao.Admindao;
import com.tsgovadda.model.Questions;

@Repository
@Component
public class AdmindaoImpl implements Admindao{

	@Autowired
	SessionFactory sf;
	
	public String addquestion(Questions questions) {
		Session ses = null;
		String sid = null;
		try {
			ses=sf.getCurrentSession();
			sid=(String) ses.save(questions);
			return sid;
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("Question Not Saved");
			return "Question Not Saved";
		}
		
	}

	public List<Questions> getquestions(String subject) {
		Session ses=sf.openSession();
		Criteria q=ses.createCriteria(Questions.class);
		q.add(Restrictions.eq("SUBJECT", subject));
		List<Questions> l=q.list();
		System.out.println("dao");
		return l;
	}

}
