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

import com.narss.warproduction.entity.AreaCode;
import com.narss.warproduction.service.AreaCodeService;

/**
 * @author ahmed.kotb
 *
 */
@Controller
public class AreaCodeController {

	@Autowired
	AreaCodeService acs;

	@GetMapping("/ar_list")
	public ModelAndView getAllAreaCodes() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show_areacodes");
		List<AreaCode> areaCodes = acs.getAllAreaCodes();
		mv.addObject("msg", areaCodes);
		return mv;
	}

	@PostMapping(value = "/addareacode")
	public String addAreaCode(AreaCode areaCode) {
		acs.addAreaCode(areaCode);

		return "redirect:/";
	}

	@GetMapping("/ar_showadditionform")
	public String showAdditionForm() {
		return "add_areacode";
	}

	@GetMapping("/deleteareacode")
	public String deleteAreaCode(@RequestParam("cc") String cityCode, @RequestParam("ac") String areaCode) {
		acs.deleteAreaCode(cityCode, areaCode);
		return "redirect:/";
	}

	@GetMapping("/ar_backtoindex")
	public String backToIndexPage() {
		return "redirect:/";
	}
}