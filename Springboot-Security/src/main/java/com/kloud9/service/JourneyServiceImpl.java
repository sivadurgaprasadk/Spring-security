package com.kloud9.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kloud9.bo.SearchJourneybo;
import com.kloud9.dao.JourneyDao;
import com.kloud9.dto.JourneyDto;
import com.kloud9.model.SearchJourneyModel;

@Service
public class JourneyServiceImpl implements JourneyService {

	@Autowired
	private JourneyDao journeyDao;

	@Override
	public List<JourneyDto> getJourneyList(SearchJourneyModel search) {
		JourneyDto dto = null;
		List<JourneyDto> dtos = new ArrayList<>();

		List<SearchJourneybo> bos = journeyDao.getJournies(search.getSource(), search.getDestination());
		for (SearchJourneybo bo : bos) {
			dto = new JourneyDto();
			dto.setBusName(bo.getBusName());
			dto.setSource(bo.getSource());
			dto.setDestination(bo.getDestination());
			dto.setBusType(bo.getBusType());
			dto.setFare(bo.getFare());
			dto.setSeats(bo.getSeats());
			dto.setRating(bo.getRating());
			dto.setBoardingTime(bo.getBoarding());
			dto.setDroppingTime(bo.getDropping());
			dtos.add(dto);
		}
		return dtos;
	}
}
