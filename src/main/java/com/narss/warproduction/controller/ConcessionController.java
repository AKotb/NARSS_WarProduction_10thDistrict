/**
 * 
 */
package com.narss.warproduction.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.narss.warproduction.entity.Concession;
import com.narss.warproduction.service.ConcessionService;

/**
 * @author ahmed.kotb
 *
 */
@Controller
public class ConcessionController {

	@Autowired
	ConcessionService concs;

	@GetMapping("/conc_list")
	public ModelAndView getAllConcessions() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show_concessions");
		List<Concession> concessions = concs.getAllConcessions();
		mv.addObject("msg", concessions);
		return mv;
	}
	
	@GetMapping("/getconcession")
	public ModelAndView getConcession(@RequestParam("concs") String coConcessionSerial) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("update_concession");
		double dcoConcessionSerial=Double.parseDouble(coConcessionSerial); 
		Concession concessionObj = concs.getConcession(dcoConcessionSerial);
		mv.addObject("concession", concessionObj);
		return mv;
	}

	@GetMapping(value = "/addconcession")
	public String addConcession(Concession concession) {
		concs.addConcession(concession);
		return "redirect:/conc_list";
	}
	
	@GetMapping(value = "/updateconcession")
	public String updateConcession(Concession concession) {
		concs.updateConcession(concession);
		return "redirect:/conc_list";
	}

	@GetMapping("/conc_showadditionform")
	public String showAdditionForm() {
		return "add_concession";
	}

	@GetMapping("/deleteconcession")
	public String deleteConcession(@RequestParam("concs") String coConcessionSerial) {
		double dcoConcessionSerial=Double.parseDouble(coConcessionSerial); 
		concs.deleteConcession(dcoConcessionSerial);
		return "redirect:/conc_list";
	}

	@GetMapping("/conc_backtoindex")
	public String backToIndexPage() {
		return "redirect:/manage_concessions";
	}
	
	@GetMapping("/manage_concessions")
	public String manageConcessions() {
		return "manage_concessions";
	}
}