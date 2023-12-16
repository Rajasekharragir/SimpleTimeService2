package com.TimeService.sampleapplication;

public class Response {
	String ip;
	String timeStamp;
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(String timeStamp) {
		this.timeStamp = timeStamp;
	}
	@Override
	public String toString() {
		return "Response [ip=" + ip + ", timeStamp=" + timeStamp + ", getIp()=" + getIp() + ", getTimeStamp()="
				+ getTimeStamp() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	

}
