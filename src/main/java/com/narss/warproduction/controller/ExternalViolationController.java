/**
 * 
 */
package com.narss.warproduction.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.narss.warproduction.entity.ExternalViolation;
import com.narss.warproduction.service.ExternalViolationService;

/**
 * @author ahmed.kotb
 *
 */
@Controller
public class ExternalViolationController {

	@Autowired
	ExternalViolationService evs;

	@GetMapping("/ev_list")
	public ModelAndView getAllExternalViolations() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show_externalviolations");
		List<ExternalViolation> externalViolations = evs.getAllExternalViolations();
		mv.addObject("msg", externalViolations);
		return mv;
	}

	@PostMapping(value = "/addexternalviolation")
	public String addExternalViolation(ExternalViolation externalViolation) {
		evs.addExternalViolation(externalViolation);
		return "redirect:/ev_list";
	}

	@GetMapping("/ev_showadditionform")
	public String showAdditionForm() {
		return "add_externalviolation";
	}

	@GetMapping("/deleteexternalviolation")
	public String deleteExternalViolation(@RequestParam("evnvn") String evNewViolationNo) {
		evs.deleteExternalViolation(evNewViolationNo);
		return "redirect:/ev_list";
	}

	@GetMapping("/ev_backtoindex")
	public String backToIndexPage() {
		return "redirect:/manage_external_violations";
	}
	
	@GetMapping("/manage_external_violations")
	public String manageExternalViolations() {
		return "manage_externalviolations";
	}
}