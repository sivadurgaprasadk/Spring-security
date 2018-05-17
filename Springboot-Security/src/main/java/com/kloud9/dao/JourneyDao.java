package com.kloud9.dao;

import java.util.List;

import com.kloud9.bo.SearchJourneybo;

public interface JourneyDao {

	public List<SearchJourneybo> getJournies(String source, String destination);
}
