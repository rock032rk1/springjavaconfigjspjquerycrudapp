package com.spring.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.user.dao.StudentDao;
import com.spring.user.entity.Student;
@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentDao studentDao;
	
	public int save(Student s) {
		// TODO Auto-generated method stub
		return studentDao.save(s);
	}

	public List<Student> list() {
		// TODO Auto-generated method stub
		return studentDao.list();
	}

	public Student findById(int id) {
		// TODO Auto-generated method stub
		return studentDao.findById(id);
	}

	public Student delete(int id) {
		// TODO Auto-generated method stub
		return studentDao.delete(id);
	}

	public int updateStu(Student s) {
		// TODO Auto-generated method stub
		return studentDao.updateStu(s);
	}
	

}
