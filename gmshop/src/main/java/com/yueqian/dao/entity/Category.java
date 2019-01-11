package com.yueqian.dao.entity;

import java.util.Set;

public class Category {
	private Long cid;

	private String cname;

	private Long parentId;

	private Category parent;

	private Set<Category> chrids;

	public Category getParent() {
		return parent;
	}

	public void setParent(Category parent) {
		this.parent = parent;
	}

	public Set<Category> getChrids() {
		return chrids;
	}

	public void setChrids(Set<Category> chrids) {
		this.chrids = chrids;
	}

	public Long getCid() {
		return cid;
	}

	public void setCid(Long cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	@Override
	public String toString() {
		return "Category [cid=" + cid + ", cname=" + cname + ", parentId=" + parentId + ", parent=" + parent
				+ ", chrids=" + chrids + "]";
	}

}