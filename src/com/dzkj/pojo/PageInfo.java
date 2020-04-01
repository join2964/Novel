package com.dzkj.pojo;

import java.util.List;

public class PageInfo {
	//每页显示个数
	private int pageSize;
	//当前第几页
	private int pageNumber;
	//总页数
	private int total;	
	//总数量
	private int count;
	
	private int pageStart;
	
	
	
	public PageInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PageInfo(int count,int pageNumber,int pageSize,int total) {
		super();
		this.count = count;
		this.pageNumber = pageNumber;
		this.pageSize = pageSize;
		this.total = total;
		
	}

	public PageInfo(int pageSize, int pageNumber, int total, int count, int pageStart) {
		super();
		this.pageSize = pageSize;
		this.pageNumber = pageNumber;
		this.total = total;
		this.count = count;
		this.pageStart = pageStart;
	}

	public int getPageStart() {
		return pageStart;
	}

	public void setPageStart(int pageStart) {
		this.pageStart = pageStart;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "PageInfo [pageSize=" + pageSize + ", pageNumber=" + pageNumber + ", total=" + total + ", count=" + count
				+ "]";
	}
	
}
