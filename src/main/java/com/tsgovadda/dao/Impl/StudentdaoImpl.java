package com.tsgovadda.dao.Impl;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.tsgovadda.dao.Studentregisterdao;
import com.tsgovadda.model.Student;

@Repository
@Component
public class StudentdaoImpl implements Studentregisterdao{

	@Autowired
	public SessionFactory sf;
	
	
	@Transactional
	public Integer savestudentregisterdaoImpl(Student student) {
		Session ses = null;
		Integer sid = null;
		try {
			ses=sf.getCurrentSession();
			sid=(Integer) ses.save(student);
			return sid;
		} catch (Exception e) {
			System.out.println("in complete exception");
			
		}/*finally {
			ses.close();
		}*/
		return sid;
		
	}

	public Student loginstudentdaoImpl(String username, String password) {
		Student st = null;
		Session ses = null;
		try {
			ses=sf.openSession();
			Criteria q=ses.createCriteria(Student.class.getName());
			q.add(Restrictions.eq("susername", username));
			q.add(Restrictions.eq("spassword", password));
			Object ob=q.uniqueResult();
			st=(Student) ob;
		} catch (Exception e) {
			System.out.println("could not logined in");
		} finally {
			ses.close();
		}
				
		return st;
	}


}
