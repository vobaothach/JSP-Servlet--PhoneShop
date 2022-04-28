package com.phoneshop.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Transient;
import java.util.ArrayList;
import java.util.List;

@Getter @Setter
public abstract class BaseEntity {
    public enum HttpStatus {
        OK,
        ERROR
    }

    @Transient
    private List<Object> listResult = new ArrayList<>();

    @Transient
    private String message;

    @Transient
    private HttpStatus httpStatus = HttpStatus.OK;

    @Transient
    private List<Object> listRequest = new ArrayList<>();

	public List<Object> getListResult() {
		return listResult;
	}

	public void setListResult(List<Object> listResult) {
		this.listResult = listResult;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public HttpStatus getHttpStatus() {
		return httpStatus;
	}

	public void setHttpStatus(HttpStatus httpStatus) {
		this.httpStatus = httpStatus;
	}

	public List<Object> getListRequest() {
		return listRequest;
	}

	public void setListRequest(List<Object> listRequest) {
		this.listRequest = listRequest;
	}
    
    
}
