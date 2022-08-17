package com.buba.controller;

import com.buba.pojo.Students;
import com.buba.service.StudentService;
import com.buba.service.StudentServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author chenrui
 * @version 1.0
 * @description: TODO
 * @date 2022/8/17 09:20
 */
@Controller
// @RequestMapping的value属性设置访问controller的url
@RequestMapping(value = "/student")
public class StudentController {

    @RequestMapping(value = "/list")
    public String listStudent(HttpServletRequest request) {
        StudentService studentService = new StudentServiceImpl();
        List<Students> studentsList = studentService.listStudent();
        request.setAttribute("studentsList", studentsList);
        // /jsp/studentlist.jsp
        return "studentlist";
    }

    @RequestMapping(value = "/insert")
    public String insertStudent() {
        return null;
    }
}
