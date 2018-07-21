package com.tsgovadda.customidgenerator;

import java.io.Serializable;
import java.util.Random;

import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.IdentifierGenerator;

public class QuestionIdGenerator implements IdentifierGenerator{

	public Serializable generate(SharedSessionContractImplementor session, Object object) throws HibernateException {
		String prefix="Subject";
		int format=Math.abs(new Random().nextInt());
		return prefix+"_"+format;
	}	

}
