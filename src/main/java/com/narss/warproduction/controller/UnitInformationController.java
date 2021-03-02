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

import com.narss.warproduction.entity.UnitInformation;
import com.narss.warproduction.service.UnitInformationService;

/**
 * @author ahmed.kotb
 *
 */
@Controller
public class UnitInformationController {

	@Autowired
	UnitInformationService uis;

	@GetMapping("/ui_list")
	public ModelAndView getUnitsInformation() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show_unitsinformation");
		List<UnitInformation> unitsInformation = uis.getAllUnitsInformation();
		mv.addObject("msg", unitsInformation);
		return mv;
	}

	@GetMapping(value = "/addunitinformation")
	public String addUnitInformation(UnitInformation unitInformation) {
		uis.addUnitInformation(unitInformation);
		return "redirect:/ui_list";
	}

	@GetMapping("/ui_showadditionform")
	public String showAdditionForm() {
		return "add_unitinformation";
	}

	@GetMapping("/deleteunitinformation")
	public String deleteUnitInformation(@RequestParam("fltb") String fltBarcode) {
		uis.deleteUnitInformation(fltBarcode);
		return "redirect:/ui_list";
	}

	@GetMapping("/ui_backtoindex")
	public String backToIndexPage() {
		return "redirect:/manage_units_information";
	}
	
	@GetMapping("/manage_units_information")
	public String manageUnitsInformation() {
		return "manage_unitsinformation";
	}
}