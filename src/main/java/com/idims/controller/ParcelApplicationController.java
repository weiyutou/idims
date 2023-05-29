package com.idims.controller;

import com.idims.domain.Employee;
import com.idims.domain.ParcelApplication;
import com.idims.mapper.ParcelApplicationMapper;
import com.idims.service.ParcelApplicationService;
import entity.PageRequestDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author coli
 * @date 2023/5/28 下午 7:32
 */
@Controller
@RequestMapping("/parcel-applications")
public class ParcelApplicationController {
    private ParcelApplicationService parcelApplicationService;

    @Autowired
    public ParcelApplicationController(ParcelApplicationService parcelApplicationService) {
        this.parcelApplicationService = parcelApplicationService;
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String getParcelApplicationsByPage(Model model, @RequestParam(defaultValue = "0") int page) {
        if (page < 0){
            page = 0;
        }
        PageRequestDTO pageRequestDTO = new PageRequestDTO();
        pageRequestDTO.setPage(page);
        List<ParcelApplication> parcelApplications = parcelApplicationService.getParcelApplicationsByPage(pageRequestDTO);
        model.addAttribute("parcelApplications", parcelApplications);
        model.addAttribute("pageRequestDTO", pageRequestDTO);
        return "parcelApplicationList";
    }

    @RequestMapping("/slist")
    public String ParcelApplications(Model model) {
        List<ParcelApplication> parcelApplications = parcelApplicationService.All();
        model.addAttribute("parcelApplications", parcelApplications);
        return "parcelApplicationshouli";
    }

    @RequestMapping("/dlist")
    public String ParcelApplications1(Model model) {
        List<ParcelApplication> parcelApplications = parcelApplicationService.All();
        model.addAttribute("parcelApplications", parcelApplications);
        return "parcelApplicationdiaodu";
    }

    @RequestMapping(value = "/updateStatus1", method = RequestMethod.POST)
    @ResponseBody
    public String updateStatus1(@RequestParam("applicationId") int applicationId) {
        // 更新订单状态为已受理
        int rowsUpdated = parcelApplicationService.updateStatus(applicationId, 1);
        if (rowsUpdated == 1) {
            return "success";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "/updateStatus2", method = RequestMethod.POST)
    @ResponseBody
    public String updateStatus2(@RequestParam("applicationId") int applicationId) {
        // 更新订单状态为已受理
        int rowsUpdated = parcelApplicationService.updateStatus(applicationId, 2);
        if (rowsUpdated == 1) {
            return "success";
        } else {
            return "error";
        }
    }

    @PostMapping("/addPar")
    public String addPar(ParcelApplication parcelApplication) {
        parcelApplicationService.addParcelApplication(parcelApplication);
        return "redirect:/parcel-applications/mypar";
    }

    @PostMapping("/selectById")
    public String searchEmployees(@RequestParam("customerId") Long customerId, Model model) {
        List<ParcelApplication> parcelApplications = parcelApplicationService.getParcelApplicationsByCustomerId(customerId);
        model.addAttribute("parcelApplications", parcelApplications);
        return "parcelApplicationList"; // 返回给前端的视图名称，可以根据自己的需求修改
    }

    @RequestMapping("/mypar")
    public String mypar(Model model) {
        List<ParcelApplication> parcelApplications = parcelApplicationService.getParcelApplicationsById();
        model.addAttribute("parcelApplications", parcelApplications);
        return "myy";
    }
}
