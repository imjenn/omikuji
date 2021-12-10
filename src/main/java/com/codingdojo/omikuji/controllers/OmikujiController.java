package com.codingdojo.omikuji.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.omikuji.Form;

@Controller
@RequestMapping("/omikuji")
public class OmikujiController {
	Form form = new Form();

	@RequestMapping("")
	public String displayForm() {
		return "form.jsp";
	}
	
	@RequestMapping(value="/process", method=RequestMethod.POST)
	public String index(
			@RequestParam(value="num") String num,
			@RequestParam(value="city") String city,
			@RequestParam(value="name") String name,
			@RequestParam(value="hobby") String hobby,
			@RequestParam(value="thing") String thing,
			@RequestParam(value="message") String message) {
		form.setNum(num);
		form.setCity(city);
		System.out.println(form.getCity());
		form.setName(name);
		form.setHobby(hobby);
		form.setThing(thing);
		form.setMessage(message);
		
	
		return "redirect:/omikuji/show";
		
	}
	
	@RequestMapping("/show")
	public String displayIndex(Model model) {
//		model.addAttribute("num", form.getNum());
//		model.addAttribute("city", form.getCity());
//		model.addAttribute("name", form.getName());
//		model.addAttribute("hobby", form.getHobby());
//		model.addAttribute("thing", form.getThing());
//		model.addAttribute("message", form.getMessage());
		model.addAttribute("form", form);
		return "index.jsp";
	}
}
