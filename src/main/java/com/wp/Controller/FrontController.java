package com.wp.Controller;





import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wp.Model.Student;


@Controller
public class FrontController {
	
	@RequestMapping("savestudent")
	public ModelAndView addStudentData(@ModelAttribute("student") Student model)
	{
		System.out.println("controller called");
		ModelAndView mv=new ModelAndView("Savedetail.jsp");
		mv.addObject("message", "Successfully Saved..........");
		Configuration config = new Configuration().configure();
	SessionFactory sf = config.buildSessionFactory();
	Session session = sf.openSession();
		Transaction tr=session.beginTransaction();
	session.save(model);
	tr.commit();
		
		return mv;
	}
	
	@RequestMapping("removestudent")
	public ModelAndView deleteStudent(@RequestParam("rno") int rno){
		Configuration config = new Configuration().configure();
		SessionFactory sf = config.buildSessionFactory();
		Session session = sf.openSession();
		ModelAndView mv=new ModelAndView("Savedetail.jsp");
		Student student=session.get(Student.class, rno);
		mv.addObject("student",student);
		mv.addObject("message", "Successfully Deleted..........");
		Transaction tr=session.beginTransaction();
		session.delete(student);
		tr.commit();
		session.close();
		System.out.println(".........Deleted Successfully........");
		
		
		return mv;
		
	}
	@RequestMapping("updatestudent")
	public ModelAndView showUpdateForm(@RequestParam("rno") int rno){
		Configuration config = new Configuration().configure();
		SessionFactory sf = config.buildSessionFactory();
		Session session = sf.openSession();
		Student student=session.get(Student.class, rno);
		ModelAndView mv=new ModelAndView("updateform");
		mv.addObject("student", student);
		return mv;
	}
	
	
	@RequestMapping("search")
	public ModelAndView searchDetaills(@RequestParam("rno") int rno) {
		Configuration config = new Configuration().configure();
		SessionFactory sf = config.buildSessionFactory();
		Session session = sf.openSession();
		Student student = session.get(Student.class, rno);
		ModelAndView mv = new ModelAndView("getdetail.jsp");
        mv.addObject("student", student);
		return mv;

	}
	@RequestMapping("viewallstudents")
	public ModelAndView getAllStudents() {
		Configuration config = new Configuration().configure();
		SessionFactory sf = config.buildSessionFactory();
		Session session = sf.openSession();
		Criteria cr = session.createCriteria(Student.class);
		List<Student> students = cr.list();

		ModelAndView mv = new ModelAndView("viewall.jsp");
		mv.addObject("students", students);
		return mv;

	}
	
	
}