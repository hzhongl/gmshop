package com.yueqian.dao.entity;

public class Image {
	private Long mid;

	private Long productId;

	private String url;

	public Long getMid() {
		return mid;
	}

	public void setMid(Long mid) {
		this.mid = mid;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url == null ? null : url.trim();
	}

	@Override
	public String toString() {
		return "Image [mid=" + mid + ", productId=" + productId + ", url=" + url + "]";
	}

}