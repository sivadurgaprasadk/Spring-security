package com.kloud9.model;

import org.hibernate.validator.constraints.NotEmpty;

public class SearchJourneyModel {

	@NotEmpty(message = "Source not blank")
	private String source;
	@NotEmpty(message = "Destination not blank")
	private String destination;

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	@Override
	public String toString() {
		return "SearchJourneyModel [source=" + source + ", destination=" + destination + "]";
	}

}
