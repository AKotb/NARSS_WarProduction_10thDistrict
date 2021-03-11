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

import com.narss.warproduction.entity.BuildingInformation;
import com.narss.warproduction.entity.Key;
import com.narss.warproduction.service.BuildingInformationService;

/**
 * @author ahmed.kotb
 *
 */
@Controller
public class BuildingInformationController {

	@Autowired
	BuildingInformationService bis;

	@GetMapping("/bi_list")
	public ModelAndView getBuildingsInformation() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show_buildingsinformation");
		List<BuildingInformation> buildingsInformation = bis.getAllBuildingsInformation();
		mv.addObject("msg", buildingsInformation);
		return mv;
	}
	
	@GetMapping("/getbuildinginformation")
	public ModelAndView getBuildingInformation(@RequestParam("bibb") String biBuildingBarcode) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("update_buildinginformation");
		BuildingInformation buildingInformationObj = bis.getBuildingInformation(biBuildingBarcode);
		mv.addObject("buildinginformation", buildingInformationObj);
		return mv;
	}

	@GetMapping(value = "/addbuildinginformation")
	public String addBuildingInformation(BuildingInformation buildingInformation) {
		bis.addBuildingInformation(buildingInformation);
		return "redirect:/bi_list";
	}
	
	@GetMapping(value = "/updatebuildinginformation")
	public String updateBuildingInformation(BuildingInformation buildingInformation) {
		bis.updateBuildingInformation(buildingInformation);
		return "redirect:/bi_list";
	}

	@GetMapping("/bi_showadditionform")
	public String showAdditionForm() {
		return "add_buildinginformation";
	}

	@GetMapping("/deletebuildinginformation")
	public String deleteBuildingInformation(@RequestParam("bibb") String biBuildingBarcode) {
		bis.deleteBuildingInformation(biBuildingBarcode);
		return "redirect:/bi_list";
	}

	@GetMapping("/bi_backtoindex")
	public String backToIndexPage() {
		return "redirect:/manage_buildings_information";
	}
	
	@GetMapping("/manage_buildings_information")
	public String manageBuildingsInformation() {
		return "manage_buildingsinformation";
	}
}