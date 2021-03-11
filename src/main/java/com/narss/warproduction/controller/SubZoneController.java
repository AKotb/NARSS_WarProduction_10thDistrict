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

import com.narss.warproduction.entity.SubZone;
import com.narss.warproduction.service.SubZoneService;

/**
 * @author ahmed.kotb
 *
 */
@Controller
public class SubZoneController {

	@Autowired
	SubZoneService szs;

	@GetMapping("/sz_list")
	public ModelAndView getAllSubZones() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show_subzones");
		List<SubZone> subZones = szs.getAllSubZones();
		mv.addObject("msg", subZones);
		return mv;
	}
	
	@GetMapping("/getsubzone")
	public ModelAndView getSubZone(@RequestParam("azc") String azCity, @RequestParam("azac") String azAreaCode,
			@RequestParam("azrc") String azRegionCode, @RequestParam("azzc") String azZoneCode, @RequestParam("azszc") String azSubZoneCode) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("update_subzone");
		SubZone subzoneObj = szs.getSubZone(azCity, azAreaCode, azRegionCode, azZoneCode, azSubZoneCode);
		mv.addObject("subzone", subzoneObj);
		return mv;
	}

	@GetMapping(value = "/addsubzone")
	public String addSubZone(SubZone subZone) {
		szs.addSubZone(subZone);

		return "redirect:/sz_list";
	}
	
	@GetMapping(value = "/updatesubzone")
	public String updateSubZone(SubZone subZone) {
		szs.updateSubZone(subZone);
		return "redirect:/sz_list";
	}

	@GetMapping("/sz_showadditionform")
	public String showAdditionForm() {
		return "add_subzone";
	}

	@GetMapping("/deletesubzone")
	public String deleteSubZone(@RequestParam("azc") String azCity, @RequestParam("azac") String azAreaCode,
			@RequestParam("azrc") String azRegionCode, @RequestParam("azzc") String azZoneCode, @RequestParam("azszc") String azSubZoneCode) {
		szs.deleteSubZone(azCity, azAreaCode, azRegionCode, azZoneCode, azSubZoneCode);
		return "redirect:/sz_list";
	}

	@GetMapping("/sz_backtoindex")
	public String backToIndexPage() {
		return "redirect:/manage_sub_zones";
	}

	@GetMapping("/manage_sub_zones")
	public String manageSubZones() {
		return "manage_subzones";
	}
}