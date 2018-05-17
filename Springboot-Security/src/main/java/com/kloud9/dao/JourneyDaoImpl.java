package com.kloud9.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.kloud9.bo.SearchJourneybo;

@Repository
public class JourneyDaoImpl implements JourneyDao {

	private final String SQL_SEARCH_JOURNEY = "select bus_number,bus_name,source,destination,bus_type,fare,seats,rating,boarding_time,dropping_time from journey where source like :source and destination like :destination order by fare";

	@Autowired
	private NamedParameterJdbcTemplate namedJdbcTemplate;

	@Override
	public List<SearchJourneybo> getJournies(String source, String destination) {
		Map<String, String> params = null;

		params = new HashMap<>();
		params.put("source", source.toLowerCase());
		params.put("destination", destination.toLowerCase());
		return namedJdbcTemplate.query(SQL_SEARCH_JOURNEY, params, new ResultSetExtractor<List<SearchJourneybo>>() {

			@Override
			public List<SearchJourneybo> extractData(ResultSet rs) throws SQLException, DataAccessException {
				SearchJourneybo result = null;
				List<SearchJourneybo> results = null;

				results = new ArrayList<>();
				while (rs.next()) {
					result = new SearchJourneybo();
					result.setBusNumber(rs.getInt(1));
					result.setBusName(rs.getString(2));
					result.setSource(rs.getString(3));
					result.setDestination(rs.getString(4));
					result.setBusType(rs.getString(5));
					result.setFare(rs.getInt(6));
					result.setSeats(rs.getInt(7));
					result.setRating(rs.getFloat(8));
					result.setBoarding(rs.getTime(9).toLocalTime());
					result.setDropping(rs.getTime(10).toLocalTime());
					results.add(result);
				}
				return results;
			}
		});
	}
}
