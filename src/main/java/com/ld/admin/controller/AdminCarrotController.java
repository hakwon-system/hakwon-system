package com.ld.admin.controller;

import com.ld.admin.service.StudentService;
import com.ld.admin.service.UpdatorService;
import com.ld.admin.vo.CarrotVO;
import com.ld.admin.vo.UpdatorVO;
import com.ld.exam.service.CarrotService;
import com.ld.user.vo.StudentVO;
import com.ld.user.vo.TeacherVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminCarrotController {

	
	@Autowired
	private UpdatorService updatorService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private CarrotService carrotService;
	@RequestMapping(value="/carrotList.mdo" ,method= {RequestMethod.GET ,RequestMethod.POST})
	public ModelAndView carrotList(@RequestParam("parentnumber")String parentnumber) {
		ModelAndView mav=new ModelAndView();
		List<CarrotVO> carrotVO=new ArrayList();
		carrotVO=studentService.carrotList1(parentnumber);
		StudentVO studentVO=new StudentVO();
		studentVO=studentService.studentList1(parentnumber);
		mav.addObject("studentList",studentVO);
		mav.addObject("carrotList",carrotVO);
		mav.setViewName("admin/carrotList");
		
		
		return mav;
	}
	@RequestMapping(value="/carrotListOne.mdo" ,method= {RequestMethod.GET ,RequestMethod.POST})
	public ModelAndView carrotListOne(@RequestParam("carrot_seq")int carrot_seq) {
		ModelAndView mav=new ModelAndView();
		CarrotVO carrotVO=new CarrotVO();
		carrotVO= carrotService.carrotread(carrot_seq);
		UpdatorVO updatorVO=new UpdatorVO();
		updatorVO=carrotService.getUpdator(carrot_seq);
		mav.addObject("carrot_view",carrotVO);
		mav.setViewName("admin/carrotListOne");
		mav.addObject("updatorList",updatorVO);
		return mav;
	}
	@RequestMapping(value="/updateCarrot.mdo" ,method= {RequestMethod.GET ,RequestMethod.POST})
	public String updateCarrot(@ModelAttribute CarrotVO carrotVO ,@RequestParam("carrot_number1") String carrot_number1,
			HttpServletRequest request, Model model,
			@RequestParam("updator_name")String updator_name,
			@RequestParam("getting") String getting) {
		if(carrotVO.getCarrot_getting().equals("대분류 우선 선택"))carrotVO.setCarrot_getting(getting);
		HttpSession session=request.getSession ();
		TeacherVO TeacherVO=(TeacherVO)session.getAttribute("loginTeacher");
        if (TeacherVO == null) return "login/login";
		UpdatorVO updatorVO=new UpdatorVO();
		UpdatorVO updatorVO1=new UpdatorVO();
		updatorVO.setCarrot_seq(carrotVO.getCarrot_seq());
		updatorVO.setUpdator_name(updator_name);
		updatorService.updateUpdator(updatorVO);
		carrotService.updateCarrot(carrotVO);
		updatorVO1=carrotService.getUpdator(carrotVO.getCarrot_seq());
		model.addAttribute("updatorList",updatorVO1);
		System.out.println(updator_name);
		return "redirect:/carrotList.mdo?parentnumber="+carrot_number1;
	}
	@RequestMapping(value="/selectStudent.mdo", method= {RequestMethod.GET})
	public ModelAndView selectStudent(@RequestParam("parentnumber") String[] parentnumber) {
		System.out.println(parentnumber);
		ModelAndView mav=new ModelAndView();
		List<StudentVO> studentVO=new ArrayList();
		studentVO=studentService.studentListSelect(parentnumber);
		mav.addObject("studentList",studentVO);
		mav.setViewName("admin/todaycarrot");
		return mav;
	}
	@RequestMapping("/todayCarrotList.mdo")
	public ModelAndView todayCarrotList(@RequestParam("carrot_date")String carrot_date) {
		ModelAndView mav= new ModelAndView();
		List<CarrotVO> carrotVO =new ArrayList();
		carrotVO=carrotService.todayCarrot(carrot_date);
		mav.setViewName("admin/todayCarrotList");
		mav.addObject("carrotList",carrotVO);
		return mav;
	}
}
