package com.dzkj.pojo;

import java.sql.Date;
import java.sql.Timestamp;

import org.springframework.format.annotation.DateTimeFormat;

public class Notice {
	private int n_id;   //公告编号
	private String n_lx;//公告类型
	private String n_bt;//公告类型
	private String n_xx;//公告详细
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date n_date;//公告发布时间
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(int n_id, String n_lx, String n_bt, String n_xx, Date n_date) {
		super();
		this.n_id = n_id;
		this.n_lx = n_lx;
		this.n_bt = n_bt;
		this.n_xx = n_xx;
		this.n_date = n_date;
	}
	public int getN_id() {
		return n_id;
	}
	public void setN_id(int n_id) {
		this.n_id = n_id;
	}
	public String getN_lx() {
		return n_lx;
	}
	public void setN_lx(String n_lx) {
		this.n_lx = n_lx;
	}
	public String getN_bt() {
		return n_bt;
	}
	public void setN_bt(String n_bt) {
		this.n_bt = n_bt;
	}
	public String getN_xx() {
		return n_xx;
	}
	public void setN_xx(String n_xx) {
		this.n_xx = n_xx;
	}
	public Date getN_date() {
		return n_date;
	}
	public void setN_date(Date n_date) {
		this.n_date = n_date;
	}
	@Override
	public String toString() {
		return "Notice [n_id=" + n_id + ", n_lx=" + n_lx + ", n_bt=" + n_bt + ", n_xx=" + n_xx + ", n_date=" + n_date
				+ "]";
	}
}