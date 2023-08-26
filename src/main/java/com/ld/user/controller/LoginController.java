package com.ld.user.controller;

import com.ld.admin.service.AdminService;
import com.ld.admin.service.StudentService;
import com.ld.admin.vo.ReportVO;
import com.ld.user.service.TeacherService;
import com.ld.user.vo.ClassAllVO;
import com.ld.user.vo.StudentVO;
import com.ld.user.vo.StudentWordClassVO;
import com.ld.user.vo.TeacherVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class LoginController {
    private final StudentService studentService;
    private final AdminService adminService;
    private final TeacherService teacherService;

    public LoginController(StudentService studentService, AdminService adminService, TeacherService teacherService) {
        this.studentService = studentService;
        this.adminService = adminService;
        this.teacherService = teacherService;
    }

    //시작페이지
    @RequestMapping("/")
    public String start() {
        return "home";
    }

    //회원가입
    @RequestMapping("/joinForm.do")
    public String joinForm() {

        return "user/join";
    }

    @RequestMapping("/joinStudentForm.do")
    public String joinStudentForm() {

        return "user/joinStudent";
    }

    @RequestMapping("/joinTeacherForm.do")
    public String joinTeacherForm() {

        return "user/joinTeacher";
    }

    //학원생 가입
    @RequestMapping(value = "/joinStudent.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String joinStudent(@RequestParam("name") String name,
                              @RequestParam("id") String id,
                              @RequestParam("password") String password,
                              @RequestParam("number") String number,
                              @RequestParam("parentnumber") String parentnumber,
                              @RequestParam("school") String school,
                              @RequestParam("grade") String grade
            , HttpServletRequest request
    ) {
        String url = "user/joinStudent";
        HttpSession session = request.getSession();
        ModelAndView mav = new ModelAndView();
        List<StudentVO> studentVO1 = new ArrayList();
        studentVO1 = studentService.studentList();
        StudentVO studentVO2 = new StudentVO();
        for (int i = 0; i < studentVO1.size(); i++) {
            if (studentVO1.get(i).getParentnumber().equals(parentnumber) && studentVO1.get(i).getName().equals(name)) {
                request.setAttribute("message", "이미 가입된 아이디가 존재합니다.");
                return "user/joinStudent";
            }

        }
        studentVO2.setGrade(grade);
        studentVO2.setUser_id(id);
        studentVO2.setName(name);
        studentVO2.setNumber(number);
        studentVO2.setParentnumber(parentnumber);
        studentVO2.setSchool(school);
        studentVO2.setPassword(password);
        studentService.insertStudent(studentVO2);
        url = "login/login";
        request.setAttribute("message", "회원가입 완료.");
        return url;
    }

    //강사 가입
    @RequestMapping(value = "joinTeacher.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String joinTeacher(@RequestParam("name") String name,
                              @RequestParam("id") String id,
                              @RequestParam("password") String password,
                              @RequestParam("number") String number,
                              @RequestParam(value = "access", required = false) String access,
                              HttpServletRequest request) {
        String url = "user/joinTeacher";
        HttpSession session = request.getSession();
        ModelAndView mav = new ModelAndView();
        List<TeacherVO> teacherVO1 = new ArrayList();
        teacherVO1 = teacherService.teacherList();
        TeacherVO teacherVO2 = new TeacherVO();
        for (int i = 0; i < teacherVO1.size(); i++) {
            if (teacherVO1.get(i).getNumber().equals(number)) {
                request.setAttribute("message", "이미 가입된 아이디가 존재합니다.");
                return "user/joinTeacher";
            }

        }
        teacherVO2.setUser_id(id);
        teacherVO2.setName(name);
        teacherVO2.setNumber(number);
        teacherVO2.setPassword(password);
        teacherService.insertTeacher(teacherVO2);
        /*if (access.equals("o")) {
            url = "admin/joinTeacherAdmin";
        } else*/
        url = "login/login";
        request.setAttribute("message", "회원가입 완료.");
        return url;
    }

    //학생 아이디 중복 체크
    @PostMapping("/idCheck.do")
    public String idCheck(@RequestParam("id") String id, @RequestParam("name") String name, Model model, HttpServletRequest request) {

        List<StudentVO> studentVO = studentService.studentList();
        if (!studentVO.isEmpty()) {
            for (int i = 0; i < studentVO.size(); i++) {
                if (studentVO.get(i).getUser_id().equals(id)) {
                    model.addAttribute("result", 1);
                    break;
                } else model.addAttribute("result", -1);
            }
        } else {
            model.addAttribute("result", -1);
        }
        request.setAttribute("name", name);
        request.setAttribute("id", id);
        return "user/joinStudent";
    }

    //강사 아이디 중복 체크
    @PostMapping("/idCheckTeacher.do")
    public String idCheckTeacher(@RequestParam("id") String id, @RequestParam("name") String name, Model model, HttpServletRequest request) {

        List<TeacherVO> teacherVO = teacherService.teacherList();

        System.out.println(teacherVO.size() + " 1234");
        if (!teacherVO.isEmpty()) {
            for (int i = 0; i < teacherVO.size(); i++) {
                if (teacherVO.get(i).getUser_id().equals(id)) {
                    request.setAttribute("result", 1);
                    break;
                } else request.setAttribute("result", -1);
            }
        } else {
            request.setAttribute("result", -1);
        }
        request.setAttribute("name", name);
        request.setAttribute("id", id);
        return "user/joinTeacher";
    }

    //로그인
    @RequestMapping("/login.do")
    public String loginForm() {
        return "login/login";
    }

    @RequestMapping("/logout.do")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/tables.mdo";
    }

    @RequestMapping("/loginTeacherForm.do")
    public String loginTeacherForm() {
        return "login/loginTeacher";
    }

    //강사 로그인
    @PostMapping("/loginTeacher.do")
    public String loginTeacher(@RequestParam("id") String id,
                               @RequestParam("password") String password,
                               HttpServletRequest request,
                               Model model) {
        TeacherVO teacherVO = new TeacherVO();
        HttpSession session = request.getSession();
        String url = "login/login";
        teacherVO = teacherService.loginTeacher(id, password);
        if (teacherVO == null) {
            request.setAttribute("message", "아이디가 존재하지 않습니다.");
        } else if (teacherVO.getAvailable().equals("o")) {

            session.setAttribute("loginTeacher", teacherVO);
            //클래스 목록
            List<ClassAllVO> classAllVO = new ArrayList();
            classAllVO = adminService.getClassAll();
            session.setAttribute("teacherClass", classAllVO);
            int teacher_id = teacherVO.getId();
            session.setAttribute("id", teacher_id);
            //읽지 않은 업무목록 업데이트
            List<ReportVO> reportVO = new ArrayList();
            reportVO = teacherService.orderListCheckTeacherOne(teacher_id);
            session.setAttribute("reportList1", reportVO);
            int newOrder = reportVO.size();
            System.out.println(newOrder);
            String newOrder1 = newOrder + "+";
            session.setAttribute("newOrder", newOrder1);

            url = "redirect:/main.do";
        }

        return url;
    }

    //학생 로그인
    @RequestMapping("/loginStudentForm.do")
    public String loginStudentForm() {
        return "login/loginStudent";
    }

    @PostMapping("/loginStudent.do")
    public String loginStudent(@RequestParam("id") String id,
                               @RequestParam("password") String password,
                               HttpServletRequest request,
                               Model model) {
        StudentVO studentVO = new StudentVO();
        TeacherVO teacherVO = new TeacherVO();
        HttpSession session = request.getSession();
        String url = "login/login";
        List<StudentWordClassVO> studentClassVO = new ArrayList();
        studentVO = studentService.loginStudent(id, password);
        if (studentVO == null) {
            request.setAttribute("message", "아이디가 존재하지 않습니다.");
        } else if (studentVO.getAvailable().equals("o")) {
            session.setAttribute("loginStudent", studentVO);
            session.setAttribute("id", studentVO.getId());
            //클래스 목록
            int checkClass = studentService.studentClassCount(studentVO.getId());
            if (checkClass != 0) {
                studentClassVO = studentService.studentClassList(studentVO.getId());
                session.setAttribute("studentClass", studentClassVO);
            }
            url = "redirect:/mainStudent.do";
        }
        return url;
    }


    //로그인시 메인 페이지
    //강사
    @RequestMapping("/main.do")
    public ModelAndView main(HttpServletRequest request) {
        HttpSession session = request.getSession();
        int id = (int) session.getAttribute("id");
        ModelAndView mav = new ModelAndView();
        TeacherVO teacherVO = new TeacherVO();
        teacherVO = teacherService.teacherOne(id);
        mav.addObject("teacher", teacherVO);


        mav.setViewName("user/main");
        return mav;
    }

    //학생
    @RequestMapping("/mainStudent.do")
    public ModelAndView mainStudent(HttpServletRequest request) {
        HttpSession session = request.getSession();
        int id = (int) session.getAttribute("id");
        ModelAndView mav = new ModelAndView();
        StudentVO studentVO = new StudentVO();
        studentVO = studentService.studentOne(id);
        mav.addObject("student", studentVO);


        mav.setViewName("user/mainStudent");
        return mav;
    }

    //마이페이지
    @RequestMapping("/mypage")
    public ModelAndView mypage(HttpServletRequest request,
                               @RequestParam("teaOrStu") String teaOrStu) {
        ModelAndView mav = new ModelAndView();
        HttpSession session = request.getSession();
        int id = (int) session.getAttribute("id");
        if (teaOrStu.equals("teacher")) {
            TeacherVO mypage = teacherService.teacherOne(id);
            mav.addObject("mypage", mypage);
        } else if (teaOrStu.equals("student")) {
            StudentVO mypage = studentService.studentOne(id);
            mav.addObject("mypage", mypage);
        }
        mav.addObject("teaOrStu", teaOrStu);
        mav.setViewName("user/mypage");
        return mav;
    }

    //수정
    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    public ModelAndView modify(HttpServletRequest request,
                               @RequestParam(value = "password", required = false) String password,
                               @RequestParam(value = "number", required = false) String number,
                               @RequestParam("teaOrStu") String teaOrStu) {
        ModelAndView mav = new ModelAndView();
        HttpSession session = request.getSession();
        int id = (int) session.getAttribute("id");
        if (teaOrStu.equals("teacher")) {
            if (password.equals(null)) {
                teacherService.modifyNumber(id, number);
            } else {
                teacherService.modifyPasswordAndNumber(id, password, number);
            }
        } else if (teaOrStu.equals("student")) {

            if (password.equals(null)) {
                studentService.modifyStudentNumber(id, number);
            } else {
                studentService.modifyStudentPasswordAndNumber(id, password, number);
            }
        }
        mav.setViewName("redirect:/mypage?teaOrStu=" + teaOrStu);
        return mav;

    }
}
