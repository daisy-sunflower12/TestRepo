package com.model;

import java.sql.Date;

public class Product {

	private int id;
	private String prodName;
	private String prodDesc;
	private String prodImg;
	private Double prodSellPrice;
	private Double prodCostPrice;
	private int stockUnit;
	private int userCreated;
	private Date createdDate;
	private boolean isDeleted;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getProdDesc() {
		return prodDesc;
	}

	public void setProdDesc(String prodDesc) {
		this.prodDesc = prodDesc;
	}

	public Double getProdSellPrice() {
		return prodSellPrice;
	}

	public void setProdSellPrice(Double prodSellPrice) {
		this.prodSellPrice = prodSellPrice;
	}

	public Double getProdCostPrice() {
		return prodCostPrice;
	}

	public void setProdCostPrice(Double prodCostPrice) {
		this.prodCostPrice = prodCostPrice;
	}

	public int getStockUnit() {
		return stockUnit;
	}

	public void setStockUnit(int stockUnit) {
		this.stockUnit = stockUnit;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public boolean isDeleted() {
		return isDeleted;
	}

	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}

	public int getUserCreated() {
		return userCreated;
	}

	public void setUserCreated(int userCreated) {
		this.userCreated = userCreated;
	}

	public String getProdImg() {
		return prodImg;
	}

	public void setProdImg(String prodImg) {
		this.prodImg = prodImg;
	}

}
