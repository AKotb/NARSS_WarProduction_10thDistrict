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

import com.narss.warproduction.entity.RegionCode;
import com.narss.warproduction.service.RegionCodeService;

/**
 * @author ahmed.kotb
 *
 */
@Controller
public class RegionCodeController {

	@Autowired
	RegionCodeService rcs;

	@GetMapping("/rc_list")
	public ModelAndView getAllRegionCodes() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show_regioncodes");
		List<RegionCode> regionCodes = rcs.getAllRegionCodes();
		mv.addObject("msg", regionCodes);
		return mv;
	}

	@GetMapping(value = "/addregioncode")
	public String addRegionCode(RegionCode regionCode) {
		rcs.addRegionCode(regionCode);

		return "redirect:/rc_list";
	}

	@GetMapping("/rc_showadditionform")
	public String showAdditionForm() {
		return "add_regioncode";
	}

	@GetMapping("/deleteregioncode")
	public String deleteRegionCode(@RequestParam("cc") String cityCode, @RequestParam("ac") String areaCode, @RequestParam("rc") String regionCode) {
		rcs.deleteRegionCode(cityCode, areaCode, regionCode);
		return "redirect:/rc_list";
	}

	@GetMapping("/rc_backtoindex")
	public String backToIndexPage() {
		return "redirect:/manage_region_codes";
	}
	
	@GetMapping("/manage_region_codes")
	public String manageRegionCodes() {
		return "manage_regioncodes";
	}
}