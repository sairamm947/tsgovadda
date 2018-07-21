package com.tsgovadda.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Question_table")
public class Questions {
	@Id
	@Column(name="Que_Id")
	@GeneratedValue(generator="customid")
	@GenericGenerator(name="customid",strategy="com.tsgovadda.customidgenerator.QuestionIdGenerator")
	private String questionid;
	private String subject;
	private String question;
	private String option_a;
	private String option_b;
	private String option_c;
	private String option_d;
	private String correct;
	private String explain;
	@Transient
	private boolean checkbox;
	
	public Questions() {
		super();
	}
	
	@Override
	public String toString() {
		return "Questions [questionid=" + questionid + ", subject=" + subject + ", question=" + question + ", option_a="
				+ option_a + ", option_b=" + option_b + ", option_c=" + option_c + ", option_d=" + option_d
				+ ", correct=" + correct + ", explain=" + explain + ", checkbox=" + checkbox + "]";
	}
	public String getQuestionid() {
		return questionid;
	}
	public void setQuestionid(String questionid) {
		this.questionid = questionid;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getOption_a() {
		return option_a;
	}
	public void setOption_a(String option_a) {
		this.option_a = option_a;
	}
	public String getOption_b() {
		return option_b;
	}
	public void setOption_b(String option_b) {
		this.option_b = option_b;
	}
	public String getOption_c() {
		return option_c;
	}
	public void setOption_c(String option_c) {
		this.option_c = option_c;
	}
	public String getOption_d() {
		return option_d;
	}
	public void setOption_d(String option_d) {
		this.option_d = option_d;
	}
	public String getCorrect() {
		return correct;
	}
	public void setCorrect(String correct) {
		this.correct = correct;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public boolean isCheckbox() {
		return checkbox;
	}
	public void setCheckbox(boolean checkbox) {
		this.checkbox = checkbox;
	}
	
	
	

}
