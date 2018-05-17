package com.kloud9.bo;

import java.time.LocalTime;
import java.util.Date;

public class SearchJourneybo {

	private int busNumber;
	private String busName;
	private String source;
	private String destination;
	private String busType;
	private int fare;
	private int seats;
	private LocalTime boarding;
	private LocalTime dropping;
	private float rating;

	public int getBusNumber() {
		return busNumber;
	}

	public void setBusNumber(int busNumber) {
		this.busNumber = busNumber;
	}

	public String getBusName() {
		return busName;
	}

	public void setBusName(String busName) {
		this.busName = busName;
	}

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

	public String getBusType() {
		return busType;
	}

	public void setBusType(String busType) {
		this.busType = busType;
	}

	public int getFare() {
		return fare;
	}

	public void setFare(int fare) {
		this.fare = fare;
	}

	public int getSeats() {
		return seats;
	}

	public void setSeats(int seats) {
		this.seats = seats;
	}

	public LocalTime getBoarding() {
		return boarding;
	}

	public void setBoarding(LocalTime boarding) {
		this.boarding = boarding;
	}

	public LocalTime getDropping() {
		return dropping;
	}

	public void setDropping(LocalTime dropping) {
		this.dropping = dropping;
	}

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "SearchJourneybo [busNumber=" + busNumber + ", busName=" + busName + ", source=" + source
				+ ", destination=" + destination + ", busType=" + busType + ", fare=" + fare + ", seats=" + seats
				+ ", boarding=" + boarding + ", dropping=" + dropping + ", rating=" + rating + "]";
	}

}
