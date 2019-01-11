package com.yueqian.dao.entity;

public class Shopcar {
	private Long sid;
	private Long productId;
	private Product product;
	private Long uid;

	public Long getUid() {
		return uid;
	}

	public void setUid(Long uid) {
		this.uid = uid;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Long getSid() {
		return sid;
	}

	public void setSid(Long sid) {
		this.sid = sid;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	@Override
	public String toString() {
		return "[sid=" + sid + ", productId=" + productId + "," + product + ", uid=" + uid + "]";
	}

}
