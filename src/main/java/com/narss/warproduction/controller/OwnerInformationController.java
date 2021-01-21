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

import com.narss.warproduction.entity.OwnerInformation;
import com.narss.warproduction.service.OwnerInformationService;

/**
 * @author ahmed.kotb
 *
 */
@Controller
public class OwnerInformationController {

	@Autowired
	OwnerInformationService ois;

	@GetMapping("/oi_list")
	public ModelAndView getOwnersInformation() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show_ownersinformation");
		List<OwnerInformation> ownersInformation = ois.getAllOwnersInformation();
		mv.addObject("msg", ownersInformation);
		return mv;
	}

	@PostMapping(value = "/addownerinformation")
	public String addOwnerInformation(OwnerInformation ownerInformation) {
		ois.addOwnerInformation(ownerInformation);
		return "redirect:/oi_list";
	}

	@GetMapping("/oi_showadditionform")
	public String showAdditionForm() {
		return "add_ownerinformation";
	}

	@GetMapping("/deleteownerinformation")
	public String deleteOwnerInformation(@RequestParam("oios") String oiOwnerSequence) {
		ois.deleteOwnerInformation(oiOwnerSequence);
		return "redirect:/oi_list";
	}

	@GetMapping("/oi_backtoindex")
	public String backToIndexPage() {
		return "redirect:/manage_owners_information";
	}
	
	@GetMapping("/manage_owners_information")
	public String manageOwnersInformation() {
		return "manage_ownersinformation";
	}
}