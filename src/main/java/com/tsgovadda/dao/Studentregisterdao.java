package com.tsgovadda.dao;

import com.tsgovadda.model.Student;

public interface Studentregisterdao {

	public Integer savestudentregisterdaoImpl(Student student);

	public Student loginstudentdaoImpl(String username, String password);
}
