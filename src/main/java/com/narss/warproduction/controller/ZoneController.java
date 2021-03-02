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

import com.narss.warproduction.entity.Zone;
import com.narss.warproduction.service.ZoneService;

/**
 * @author ahmed.kotb
 *
 */
@Controller
public class ZoneController {

	@Autowired
	ZoneService zs;

	@GetMapping("/z_list")
	public ModelAndView getAllZones() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show_zones");
		List<Zone> zones = zs.getAllZones();
		mv.addObject("msg", zones);
		return mv;
	}

	@GetMapping(value = "/addzone")
	public String addZone(Zone zone) {
		zs.addZone(zone);

		return "redirect:/z_list";
	}

	@GetMapping("/z_showadditionform")
	public String showAdditionForm() {
		return "add_zone";
	}

	@GetMapping("/deletezone")
	public String deleteZone(@RequestParam("zci") String zonCity, @RequestParam("ac") String areaCode,
			@RequestParam("rc") String regionCode, @RequestParam("zc") String zoneCode) {
		zs.deleteZone(zonCity, areaCode, regionCode, zoneCode);
		return "redirect:/z_list";
	}

	@GetMapping("/z_backtoindex")
	public String backToIndexPage() {
		return "redirect:/manage_zones";
	}

	@GetMapping("/manage_zones")
	public String manageZones() {
		return "manage_zones";
	}
}