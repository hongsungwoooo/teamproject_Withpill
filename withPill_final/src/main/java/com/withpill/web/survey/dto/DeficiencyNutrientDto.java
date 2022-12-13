package com.withpill.web.survey.dto;

public class DeficiencyNutrientDto {
	private int id;
	private int deficiencyId;
	private int nutrientId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getDeficiencyId() {
		return deficiencyId;
	}
	public void setDeficiencyId(int deficiencyId) {
		this.deficiencyId = deficiencyId;
	}
	public int getNutrientId() {
		return nutrientId;
	}
	public void setNutrientId(int nutrientId) {
		this.nutrientId = nutrientId;
	}
}
