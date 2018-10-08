//分页
package com.sj.exe.vo;

import java.util.List;

public class PageVO implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int limit = 1;
	private int offset = 10;
	private int rows;
	private int pageNumber = 1; // 初始化加载第一页，默认第一页
	private int pageSize = 10;
	private int total;
	private int start;
	private int max;
	private String pageflag;
	private List<?> resultList;

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<?> getResultList() {
		return resultList;
	}

	public void setResultList(List<?> resultList) {
		this.resultList = resultList;
	}

	public int getStart() {
		return this.pageNumber * this.pageSize;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getMax() {
		return this.pageSize;
	}

	public void setMax(int max) {
		this.max = max;
	}

	public String getPageflag() {
		return pageflag;
	}

	public void setPageflag(String pageflag) {
		this.pageflag = pageflag;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

}
