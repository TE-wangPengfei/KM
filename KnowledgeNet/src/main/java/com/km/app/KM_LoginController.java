package com.km.app;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.km.model.RegistrationForm;

@Controller
@RequestMapping("userMangement")
public class KM_LoginController {
	
	@RequestMapping(value = "login", method = { RequestMethod.GET, RequestMethod.POST })
	public String init(HttpServletRequest request, Model model) {
		return "login";
	}
	
	@RequestMapping(value = "registration", method = { RequestMethod.GET, RequestMethod.POST })
	public String registration(HttpServletRequest request, Model model) {
		RegistrationForm registrationForm = new RegistrationForm();
		model.addAttribute("registrationForm", registrationForm);
		return "registration";
	}
	
//	@ResponseBody
//	@RequestMapping(value = "createuser", method = RequestMethod.POST)
//	public String createUser(@RequestBody RegistrationForm registrationForm,
//			HttpServletRequest request, Model model) {
//		System.out.println(registrationForm.getUserName());
//		System.out.println(registrationForm.getEmail());
//		System.out.println(registrationForm.getUserPassword());
//		return "registration";
//	}
	
	@RequestMapping(value = "createuser", method = RequestMethod.POST)
	public String createUser(@ModelAttribute(value="registrationForm") @Validated RegistrationForm registrationForm,BindingResult result,
			HttpServletRequest request, Model model) {
		if (result.hasErrors()) {
			return "registration";
		}
		System.out.println(registrationForm.getUserName());
		System.out.println(registrationForm.getEmail());
		System.out.println(registrationForm.getUserPassword());
		return "registration";
		
	}
}
