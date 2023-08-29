package com.ld.admin.controller;

import com.ld.admin.service.AcademyService;
import com.ld.admin.vo.AcademyVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/academy")
public class AcademyController {

    private final AcademyService academyService;

    //X , 학습센터 정보
    @RequestMapping("/home")
    public ModelAndView getAcademyList(HttpSession session) {
        ModelAndView mav = new ModelAndView();

        if (session.getAttribute("admin") == null) {
            mav.setViewName("admin/login");
        } else {
            mav.setViewName("admin/academy/home");
        }

        List<AcademyVO> showList = academyService.findAcademyList(null);

        mav.addObject("AcademyList", showList);
        return mav;
    }

    //X
    @GetMapping("/create")
    public String getCreateAcademyPage() {
        return "admin/academy/create";
    }

    @PostMapping(value = "/create")
    public String createAcademy(@ModelAttribute AcademyVO academyVO) {
        academyService.createAcademy(academyVO);

        return "redirect:/academy.mdo";
    }

    //X, 학습센터 상세정보
//    @RequestMapping("/academyview.mdo")
    @RequestMapping("/{id}")
    public ModelAndView getAcademyByIdPage(@PathVariable("id") int academy_seq, HttpSession session) {
        ModelAndView mav = new ModelAndView();

        if (session.getAttribute("admin") == null) {
            mav.setViewName("admin/login");
        } else {
            mav.setViewName("admin/academy/detail");
        }

        AcademyVO academyVO = academyService.findAcademyById(academy_seq);

        mav.addObject("academy_view", academyVO);
        return mav;
    }

    //X
    // TODO: 어드민 가입페이지인데 academyService가 필요한 이유?
    @RequestMapping(value = "/adminsignin.mdo")
    public ModelAndView getAdminSignInPage() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("admin/adminsignin");

        List<AcademyVO> showList = academyService.findAcademyList(null);

        mav.addObject("AcademysigninList", showList);
        return mav;
    }
}
