package com.spring.user.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.spring.user.entity.Student;
@Component
public class StudentDaoImpl implements StudentDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public int save(Student s) {
		// TODO Auto-generated method stub
		Session ses=sessionFactory.getCurrentSession();
		ses.save(s);
		
		return s.getSid();
	}
    
	@Transactional
	public List<Student> list() {
		// TODO Auto-generated method stub
		Session ses=sessionFactory.getCurrentSession();
		List<Student> slist=null;
		Query<Student> query=ses.createQuery("from Student",Student.class);
		
		slist=query.getResultList();
		
		return slist;
	}
    
	@Transactional
	public Student findById(int id) {
		// TODO Auto-generated method stub
		Session ses=sessionFactory.getCurrentSession();
		
		Student s=ses.get(Student.class, id);
		return s;
	}
    
	@Transactional
	public Student delete(int id) {
		// TODO Auto-generated method stub
		Session ses=sessionFactory.getCurrentSession();
		Student s=ses.get(Student.class, id);
		
		ses.delete(s);
		
		return s;
	}

	@Transactional
	public int updateStu(Student s) {
		// TODO Auto-generated method stub
		Session ses=sessionFactory.getCurrentSession();
		ses.update(s);
		
		return s.getSid();
	}
	
	

}
