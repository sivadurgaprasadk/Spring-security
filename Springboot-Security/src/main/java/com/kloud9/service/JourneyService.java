package com.kloud9.service;

import java.util.List;

import com.kloud9.dto.JourneyDto;
import com.kloud9.model.SearchJourneyModel;

public interface JourneyService {

	List<JourneyDto> getJourneyList(SearchJourneyModel search);
}
