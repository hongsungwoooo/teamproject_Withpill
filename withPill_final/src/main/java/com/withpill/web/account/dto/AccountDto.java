package com.withpill.web.account.dto;

public class AccountDto {
	private int id;
	private String userId;
	private String password;
	private String name;
	private String phone;
	private String birth;
	private int genderId;
	private String email;
	private String signdate;
	private String note;
	private String allNotice;
	private String promotionNotice;
	
	public String getAllNotice() {
		return allNotice;
	}

	public void setAllNotice(String allNotice) {
		this.allNotice = allNotice;
	}

	public String getPromotionNotice() {
		return promotionNotice;
	}

	public void setPromotionNotice(String promotionNotice) {
		this.promotionNotice = promotionNotice;
	}

	@Override
	public String toString() {
		return "AccountDto [id=" + id + ", userId=" + userId + ", password=" + password + ", name=" + name + ", phone="
				+ phone + ", birth=" + birth + ", genderId=" + genderId + ", email=" + email + ", signdate=" + signdate
				+ ", note=" + note + "]";
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getGenderId() {
		return genderId;
	}
	public void setGenderId(int genderId) {
		this.genderId = genderId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSigndate() {
		return signdate;
	}
	public void setSigndate(String signdate) {
		this.signdate = signdate;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
}
