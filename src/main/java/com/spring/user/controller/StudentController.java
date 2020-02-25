package com.spring.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.user.entity.Student;
import com.spring.user.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	@GetMapping("/")
	public String getIndexPage(Model model) {
		
		model.addAttribute("msg","Welcome To Jsp Spring Mvc Demo");
		return "index";
	}
	
	@PostMapping("/save")
	public String getResult(Model model,Student s) {
		
		studentService.save(s);
		List<Student> slist=studentService.list();
		model.addAttribute("slist",slist);
		
		return "result";
	}
	
	@PostMapping("/save1")
	public String save1(Student c,Model model) {
		
		studentService.updateStu(c);
		List<Student> slist=studentService.list();
		model.addAttribute("slist",slist);
		
		return "result";
	}
	
	@GetMapping("/delete")
	public String deleteCountry(Integer sid) {
		
		studentService.delete(sid);
		
		return "redirect:/result";
	}
	
	@GetMapping("/findOne")
	@ResponseBody
	public Student findOne(Integer sid) {
	
		
		return studentService.findById(sid);
	}

	@GetMapping("/result")
	public String getResult(Model model) {
		
		List<Student> slist=studentService.list();
		model.addAttribute("slist",slist);
		
		return "result";
	}
}
