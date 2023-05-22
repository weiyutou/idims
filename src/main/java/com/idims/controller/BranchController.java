package com.idims.controller;

import com.idims.domain.Branch;
import com.idims.service.BranchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


/**
 * @author coli
 * @date 2023/5/18 下午 5:33
 */
@Controller
@RequestMapping("/branch")
public class BranchController {
    @Autowired
    private BranchService branchService;

    @RequestMapping("/selectBranch")
    public ModelAndView getBooks() {
        List<Branch> branchs = branchService.getAllBranch();
        ModelAndView modelAndView = new ModelAndView("main");
        modelAndView.addObject("branchs", branchs);
        return modelAndView;
    }


}
