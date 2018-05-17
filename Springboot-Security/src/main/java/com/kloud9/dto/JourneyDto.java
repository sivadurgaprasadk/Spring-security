package com.kloud9.dto;

import java.time.LocalTime;

public class JourneyDto {

	private String busName;
	private String source;
	private String destination;
	private String busType;
	private int fare;
	private int seats;
	private float rating;
	private LocalTime boardingTime;
	private LocalTime droppingTime;

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

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	public LocalTime getBoardingTime() {
		return boardingTime;
	}

	public void setBoardingTime(LocalTime boardingTime) {
		this.boardingTime = boardingTime;
	}

	public LocalTime getDroppingTime() {
		return droppingTime;
	}

	public void setDroppingTime(LocalTime droppingTime) {
		this.droppingTime = droppingTime;
	}

	@Override
	public String toString() {
		return "JourneyDto [busName=" + busName + ", source=" + source + ", destination=" + destination + ", busType="
				+ busType + ", fare=" + fare + ", seats=" + seats + ", rating=" + rating + ", boardingTime="
				+ boardingTime + ", droppingTime=" + droppingTime + "]";
	}

}
