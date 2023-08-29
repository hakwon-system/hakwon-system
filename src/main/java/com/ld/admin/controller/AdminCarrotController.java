package com.ld.admin.controller;

import com.ld.admin.service.StudentService;
import com.ld.admin.service.UpdatorService;
import com.ld.admin.vo.CarrotVO;
import com.ld.admin.vo.UpdatorVO;
import com.ld.exam.service.CarrotService;
import com.ld.user.vo.StudentVO;
import com.ld.user.vo.TeacherVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class AdminCarrotController {


    private final UpdatorService updatorService;
    private final StudentService studentService;
    private final CarrotService carrotService;

    @RequestMapping(value = "/carrotList.mdo", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView carrotList(@RequestParam("parentnumber") String parentNumber) {
        ModelAndView mav = new ModelAndView();

        List<CarrotVO> carrotVO = studentService.carrotList1(parentNumber);
        StudentVO studentVO = studentService.studentList1(parentNumber);

        mav.addObject("studentList", studentVO);
        mav.addObject("carrotList", carrotVO);

        mav.setViewName("admin/carrotList");
        return mav;
    }

    @RequestMapping(value = "/carrotListOne.mdo", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView carrotListOne(@RequestParam("carrot_seq") int carrot_seq) {
        ModelAndView mav = new ModelAndView();
        CarrotVO carrotVO = carrotService.carrotread(carrot_seq);
        UpdatorVO updatorVO = carrotService.getUpdator(carrot_seq);

        mav.addObject("carrot_view", carrotVO);
        mav.addObject("updatorList", updatorVO);

        mav.setViewName("admin/carrotListOne");
        return mav;
    }

    @RequestMapping(value = "/updateCarrot.mdo", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateCarrot(
            @ModelAttribute CarrotVO carrotVO,
            @RequestParam("carrot_number1") String carrot_number1,
            HttpServletRequest request, Model model,
            @RequestParam("updator_name") String updator_name,
            @RequestParam("getting") String getting
    ) {
        if (carrotVO.getCarrot_getting().equals("대분류 우선 선택")) {
            carrotVO.setCarrot_getting(getting);
        }

        HttpSession session = request.getSession();
        TeacherVO TeacherVO = (TeacherVO) session.getAttribute("loginTeacher");

        if (TeacherVO == null) {
            return "login/login";
        }

        updatorService.updateUpdator(
                UpdatorVO.builder()
                        .carrotSeq(carrotVO.getCarrot_seq())
                        .updatorName(updator_name)
                        .build()
        );

        UpdatorVO updatorVO1 = carrotService.getUpdator(carrotVO.getCarrot_seq());
        carrotService.updateCarrot(carrotVO);

        model.addAttribute("updatorList", updatorVO1);

        return "redirect:/carrotList.mdo?parentnumber=" + carrot_number1;
    }

    @GetMapping("/selectStudent.mdo")
    public ModelAndView selectStudent(@RequestParam("parentnumber") String[] parentNumber) {
        ModelAndView mav = new ModelAndView();

        List<StudentVO> studentVO = studentService.studentListSelect(parentNumber);
        mav.addObject("studentList", studentVO);

        mav.setViewName("admin/todaycarrot");
        return mav;
    }

    @RequestMapping("/todayCarrotList.mdo")
    public ModelAndView todayCarrotList(@RequestParam("carrot_date") String carrotDate) {
        ModelAndView mav = new ModelAndView();

        List<CarrotVO> carrotVO = carrotService.todayCarrot(carrotDate);
        mav.addObject("carrotList", carrotVO);

        mav.setViewName("admin/todayCarrotList");
        return mav;
    }
}
