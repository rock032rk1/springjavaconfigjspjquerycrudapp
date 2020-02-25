package com.spring.user.dao;

import java.util.List;

import com.spring.user.entity.Student;

public interface StudentDao {

	public int save(Student s);
	public List<Student> list();
	public Student findById(int id);
	public Student delete(int id);
	public int updateStu(Student s);
}
