package com.tsgovadda.service;

import com.tsgovadda.model.Student;

public interface StudentService {
	
	public Integer savestudentregister(Student student);

	public Student loginstudent(String username, String password);
}
