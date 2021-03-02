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

import com.narss.warproduction.entity.CityCode;
import com.narss.warproduction.service.CityCodeService;

/**
 * @author ahmed.kotb
 *
 */
@Controller
public class CityCodeController {

	@Autowired
	CityCodeService ccs;

	@GetMapping("/list")
	public ModelAndView getAllCityCodes() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show_citycodes");
		List<CityCode> cityCodes = ccs.getAllCityCodes();
		mv.addObject("msg", cityCodes);
		return mv;
	}

	@GetMapping(value = "/addcitycode")
	public String addCityCode(CityCode cityCode) {
		ccs.addCityCode(cityCode);
		return "redirect:/list";
	}

	@GetMapping("/showadditionform")
	public String showAdditionForm() {
		return "add_citycode";
	}

	@GetMapping("/deletecitycode")
	public String deleteCityCode(@RequestParam("cc") String cityCode) {
		ccs.deleteCityCode(cityCode);
		return "redirect:/list";
	}
	
	@GetMapping("/getcitycode")
	public ModelAndView getCityCode(@RequestParam("cc") String cityCode) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("update_citycode");
		CityCode cityCodeObj = ccs.getCityCode(cityCode);
		mv.addObject("citycode", cityCodeObj);
		return mv;
	}
	
	@GetMapping(value = "/updatecitycode")
	public String updateCityCode(CityCode cityCode) {
		ccs.updateCityCode(cityCode);
		return "redirect:/list";
	}

	@GetMapping("/backtoindex")
	public String backToIndexPage() {
		return "redirect:/manage_city_codes";
	}
	
	@GetMapping("/manage_city_codes")
	public String manageCityCodes() {
		return "manage_citycodes";
	}
}