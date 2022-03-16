package com.spring.boot.jsp.page.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.boot.jsp.page.dao.PatientDAO;
import com.spring.boot.jsp.page.model.Patient;
import com.spring.boot.jsp.page.service.PatientService;

@Controller
public class PatientController {

	@Autowired
	private PatientService patientService;
	
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public String homeView() {
		return "index";
	}

	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String registerPatientView(Model model) {
		model.addAttribute("patient", new Patient());
		return "create";
	}

	
	@RequestMapping(value="/home_list",method=RequestMethod.GET)
	public String patientsList(Model model) {
		List<Patient> patientList = patientService.getAll();
	    model.addAttribute("patientList", patientList);
	    return "view";
	}
	
	@RequestMapping(value="/list",method=RequestMethod.POST)
	public String patientsList(Patient patient, Model model) {
	patientService.save(patient);
	List<Patient> patientList = patientService.getAll();
    model.addAttribute("patientList", patientList);
    return "view";
	}

	@RequestMapping("/edit/{id}")
	public String editForm(@PathVariable("id") int id, Model model) {
		Patient patient = patientService.get(id);
	    model.addAttribute("patient", patient);
	    return "update";
	}
	
	@RequestMapping(value="/update")
	public String updatePatient(Patient patient, Model model) {
		patientService.save(patient);
		System.out.println("Patient: " + patient);
		System.out.println("Model: " + model);
		List<Patient> patientList = patientService.getAll();
	    model.addAttribute("patientList", patientList);
		return "view";
	}
	
	@RequestMapping("/delete/{id}")
	public ModelAndView deletePatient(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView("view");
		patientService.delete(id);
		List<Patient> patientList = patientService.getAll();
		mav.addObject("patientList", patientList);
		return mav;
	}

}
