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

import com.narss.warproduction.entity.Key;
import com.narss.warproduction.service.KeyService;

/**
 * @author ahmed.kotb
 *
 */
@Controller
public class KeyController {

	@Autowired
	KeyService ks;

	@GetMapping("/k_list")
	public ModelAndView getAllKeys() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show_keys");
		List<Key> keys = ks.getAllKeys();
		mv.addObject("msg", keys);
		return mv;
	}

	@PostMapping(value = "/addkey")
	public String addKey(Key key) {
		ks.addKey(key);

		return "redirect:/k_list";
	}

	@GetMapping("/k_showadditionform")
	public String showAdditionForm() {
		return "add_key";
	}

	@GetMapping("/deletekey")
	public String deleteKey(@RequestParam("ka") String keyAll) {
		ks.deleteKey(keyAll);
		return "redirect:/k_list";
	}

	@GetMapping("/k_backtoindex")
	public String backToIndexPage() {
		return "redirect:/manage_keys";
	}

	@GetMapping("/manage_keys")
	public String manageKeys() {
		return "manage_keys";
	}
}