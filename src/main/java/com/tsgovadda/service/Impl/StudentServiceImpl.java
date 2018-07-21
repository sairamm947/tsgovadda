package com.tsgovadda.service.Impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.tsgovadda.dao.Studentregisterdao;
import com.tsgovadda.model.Student;
import com.tsgovadda.service.StudentService;

@Service
@Component
public class StudentServiceImpl implements StudentService{

	@Autowired
	public Studentregisterdao dao;
	
	@Transactional
	public Integer savestudentregister(Student student) {
		String email=student.getSemail();
		String cemail=student.getScemail();
		int sid=0;
		System.out.println(email+"----"+cemail);
		if (email.equals(cemail)&&(student.getSpassword().equals(student.getScpassword()))) {
			sid= dao.savestudentregisterdaoImpl(student);
		} else {
			System.out.println("student email or password not qual");
		}
		return sid;
		
		
	}

	public Student loginstudent(String username, String password) {
		if (username.trim().isEmpty()&&password.trim().isEmpty()) {
			Student st=null;
			return st;
		} else {
			return dao.loginstudentdaoImpl(username,password);
		}
		
	}

}
