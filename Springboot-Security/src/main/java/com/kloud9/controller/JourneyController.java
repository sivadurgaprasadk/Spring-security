package com.kloud9.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.kloud9.dto.JourneyDto;
import com.kloud9.model.SearchJourneyModel;
import com.kloud9.service.JourneyService;

@Controller
public class JourneyController {

	@Autowired
	private JourneyService journeyService;

	@PostMapping(value = "/search")
	public String showJournies(SearchJourneyModel searchJourney, Model model) {
		List<JourneyDto> dtos = journeyService.getJourneyList(searchJourney);
		model.addAttribute("journies", dtos);
		return "index";
	}
}
