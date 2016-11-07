package com.joybike.server.api.model;

import java.io.Serializable;
import java.math.BigDecimal;

public class Product implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 主键
	 */
	private Long id;
	
	/**
	 * 产品code
	 */
	private String productCode;
	
	/**
	 * 产品名称
	 */
	private String productName;
	
	/**
	 * 售卖价
	 */
	private BigDecimal price;
	
	/**
	 * 刊例价
	 */
	private BigDecimal publishedPrice;
	
	/**
	 * 创建人id
	 */
	private Long createId;
	
	/**
	 * 创建时间
	 */
	private Integer createAt;
	
	/**
	 * 修改人
	 */
	private Long updateId;
	
	/**
	 * 修改时间
	 */
	private Integer updateAt;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getPublishedPrice() {
		return publishedPrice;
	}

	public void setPublishedPrice(BigDecimal publishedPrice) {
		this.publishedPrice = publishedPrice;
	}

	public Long getCreateId() {
		return createId;
	}

	public void setCreateId(Long createId) {
		this.createId = createId;
	}

	public Integer getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Integer createAt) {
		this.createAt = createAt;
	}

	public Long getUpdateId() {
		return updateId;
	}

	public void setUpdateId(Long updateId) {
		this.updateId = updateId;
	}

	public Integer getUpdateAt() {
		return updateAt;
	}

	public void setUpdateAt(Integer updateAt) {
		this.updateAt = updateAt;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", productCode=" + productCode + ", productName=" + productName + ", price="
				+ price + ", publishedPrice=" + publishedPrice + ", createId=" + createId + ", createAt=" + createAt
				+ ", updateId=" + updateId + ", updateAt=" + updateAt + "]";
	}

	public Product(String productCode, String productName, BigDecimal price, BigDecimal publishedPrice,
			Long createId, Integer createAt, Long updateId, Integer updateAt) {
		super();
		this.productCode = productCode;
		this.productName = productName;
		this.price = price;
		this.publishedPrice = publishedPrice;
		this.createId = createId;
		this.createAt = createAt;
		this.updateId = updateId;
		this.updateAt = updateAt;
	}

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
