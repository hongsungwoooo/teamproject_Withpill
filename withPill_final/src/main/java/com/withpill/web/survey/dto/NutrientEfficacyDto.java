package com.withpill.web.survey.dto;

public class NutrientEfficacyDto {
	private int id;
	private int nutrientId;
	private int efficacyId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNutrientId() {
		return nutrientId;
	}
	public void setNutrientId(int nutrientId) {
		this.nutrientId = nutrientId;
	}
	public int getEfficacyId() {
		return efficacyId;
	}
	public void setEfficacyId(int efficacyId) {
		this.efficacyId = efficacyId;
	}
}
