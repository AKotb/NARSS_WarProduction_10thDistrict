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

import com.narss.warproduction.entity.Authorization;
import com.narss.warproduction.service.AuthorizationService;

/**
 * @author ahmed.kotb
 *
 */
@Controller
public class AuthorizationController {

	@Autowired
	AuthorizationService auzs;

	@GetMapping("/auz_list")
	public ModelAndView getAllAuthorizations() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show_authorizations");
		List<Authorization> authorizations = auzs.getAllAuthorizations();
		mv.addObject("msg", authorizations);
		return mv;
	}
	
	@GetMapping("/getauthorization")
	public ModelAndView getAuthorization(@RequestParam("madn") String maDelegationNo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("update_authorization");
		Authorization authorizationObj = auzs.getAuthorization(maDelegationNo);
		mv.addObject("authorization", authorizationObj);
		return mv;
	}

	@GetMapping(value = "/addauthorization")
	public String addAuthorization(Authorization authorization) {
		auzs.addAuthorization(authorization);
		return "redirect:/auz_list";
	}
	
	@GetMapping(value = "/updateauthorization")
	public String updateAuthorization(Authorization authorization) {
		auzs.updateAuthorization(authorization);
		return "redirect:/auz_list";
	}

	@GetMapping("/auz_showadditionform")
	public String showAdditionForm() {
		return "add_authorization";
	}

	@GetMapping("/deleteauthorization")
	public String deleteAuthorization(@RequestParam("madn") String maDelegationNo) {
		auzs.deleteAuthorization(maDelegationNo);
		return "redirect:/auz_list";
	}

	@GetMapping("/auz_backtoindex")
	public String backToIndexPage() {
		return "redirect:/manage_authorizations";
	}
	
	@GetMapping("/manage_authorizations")
	public String manageAuthorizations() {
		return "manage_authorizations";
	}
}