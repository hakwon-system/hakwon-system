package com.ld.admin.controller;

import com.ld.admin.service.StudentService;
import com.ld.admin.vo.StudentClassAllVO;
import com.ld.user.vo.StudentVO;
import com.ld.user.vo.TeacherVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminCommonController {
	@Autowired
	private  StudentService studentService;

	//X
	@GetMapping("/adminmenu.mdo")
	public String adminmenuGet() {
		return "admin/adminmenu";
	}

	//X
	@GetMapping("/accessadmin.mdo")
	public String accessadminGet() {
		return "admin/accessadmin";
	}

	//X
	@GetMapping("/assignmentclass.mdo")
	public String assignmentclassGet() {
		return "admin/assignmentclass";
	}

	//X
	@GetMapping("/sendmessage.mdo")
	public String sendmessageGet() {
		return "admin/sendmessage";
	}

	//X
	@GetMapping("/supplement.mdo")
	public String supplementGet() {
		return "admin/supplement";
	}

	//X
	@GetMapping("/tables.mdo")
	public ModelAndView tablesGet() {
		ModelAndView mav=new ModelAndView();
		List<StudentVO> studentVO=new ArrayList();
		studentVO=studentService.studentApproveList();
		mav.addObject("studentList",studentVO);
		mav.setViewName("admin/tables");
		return mav;
	}
	@GetMapping("/dailyStudentList.mdo")
	public ModelAndView dailyStudentList(HttpServletRequest request) {
		HttpSession session=request.getSession();
		TeacherVO teacherVO=(TeacherVO)session.getAttribute("loginTeacher");
		ModelAndView mav=new ModelAndView();
		List<StudentVO> studentVO=new ArrayList();
		List<StudentClassAllVO> studentClassVO=new ArrayList();
		studentVO=studentService.studentList();
		studentClassVO=studentService.studentClass();
		mav.addObject("studentClassList",studentClassVO);
		mav.setViewName("admin/dailyStudentList");
		return mav;
	}
}