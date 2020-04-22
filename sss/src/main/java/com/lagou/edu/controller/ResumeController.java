package com.lagou.edu.controller;

import com.lagou.edu.pojo.Resume;
import com.lagou.edu.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/resume")
public class ResumeController {

    /**
     * Spring容器和SpringMVC容器是有层次的（父子容器）
     * Spring容器：service对象+dao对象
     * SpringMVC容器：controller对象，，，，可以引用到Spring容器中的对象
     */

    @Autowired
    private ResumeService resumeService;

    @RequestMapping("/queryAll")
    @ResponseBody
    public List<Resume> queryAll(HttpServletRequest request) throws Exception {

        List<Resume> list = resumeService.queryAccountList();
        request.setAttribute("list",list);
        return list;
    }

    @RequestMapping("/queryOne")
    @ResponseBody
    public Resume queryOne(String id) throws Exception {
        return resumeService.queryOne(id);
    }

    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest request) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        List<Resume> list = resumeService.queryAccountList();
        modelAndView.addObject("list",list);
        modelAndView.setViewName("login_action");
        return modelAndView;
    }

    @RequestMapping("/loginFail")
    public ModelAndView loginFail() throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login_fail");
        return modelAndView;
    }


    @RequestMapping("/update")
    public ModelAndView update(String id) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        Resume resume = resumeService.queryOne(id);
        modelAndView.addObject("data",resume);
        modelAndView.setViewName("add");
        return modelAndView;
    }

    @RequestMapping("/save")
    public ModelAndView save(Resume resume) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        resumeService.save(resume);
        List<Resume> list = resumeService.queryAccountList();
        modelAndView.addObject("list",list);
        modelAndView.setViewName("login_temp");
        return modelAndView;
    }

    @RequestMapping("/del")
    public ModelAndView del(String id) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        resumeService.del(id);
        List<Resume> list = resumeService.queryAccountList();
        modelAndView.addObject("list",list);
        modelAndView.setViewName("login_temp");
        return modelAndView;
    }
}
