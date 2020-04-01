package com.dzkj.pojo;

import java.sql.Timestamp;

public class Yhsj {
	private int xs_sjxsid;         //小说id
	private String user_zh;        //用户账号
	private String xs_sjtp;        //小说图片
	private String xs_sjnm;        //小说名称
	private String xs_sjlx;        //类型名称
	private String xs_sjauter;     //小说作者
	private int xs_sjchapter;      //小说章节
	private String xs_sjms;        //小说详情
	private Timestamp xs_sjupdatetime;//上次阅读时间
	public Yhsj() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Yhsj(int xs_sjxsid, String user_zh, String xs_sjtp, String xs_sjnm, String xs_sjlx, String xs_sjauter,
			int xs_sjchapter, String xs_sjms, Timestamp xs_sjupdatetime) {
		super();
		this.xs_sjxsid = xs_sjxsid;
		this.user_zh = user_zh;
		this.xs_sjtp = xs_sjtp;
		this.xs_sjnm = xs_sjnm;
		this.xs_sjlx = xs_sjlx;
		this.xs_sjauter = xs_sjauter;
		this.xs_sjchapter = xs_sjchapter;
		this.xs_sjms = xs_sjms;
		this.xs_sjupdatetime = xs_sjupdatetime;
	}
	public int getXs_sjxsid() {
		return xs_sjxsid;
	}
	public void setXs_sjxsid(int xs_sjxsid) {
		this.xs_sjxsid = xs_sjxsid;
	}
	public String getUser_zh() {
		return user_zh;
	}
	public void setUser_zh(String user_zh) {
		this.user_zh = user_zh;
	}
	public String getXs_sjtp() {
		return xs_sjtp;
	}
	public void setXs_sjtp(String xs_sjtp) {
		this.xs_sjtp = xs_sjtp;
	}
	public String getXs_sjnm() {
		return xs_sjnm;
	}
	public void setXs_sjnm(String xs_sjnm) {
		this.xs_sjnm = xs_sjnm;
	}
	public String getXs_sjlx() {
		return xs_sjlx;
	}
	public void setXs_sjlx(String xs_sjlx) {
		this.xs_sjlx = xs_sjlx;
	}
	public String getXs_sjauter() {
		return xs_sjauter;
	}
	public void setXs_sjauter(String xs_sjauter) {
		this.xs_sjauter = xs_sjauter;
	}
	public int getXs_sjchapter() {
		return xs_sjchapter;
	}
	public void setXs_sjchapter(int xs_sjchapter) {
		this.xs_sjchapter = xs_sjchapter;
	}
	public String getXs_sjms() {
		return xs_sjms;
	}
	public void setXs_sjms(String xs_sjms) {
		this.xs_sjms = xs_sjms;
	}
	public Timestamp getXs_sjupdatetime() {
		return xs_sjupdatetime;
	}
	public void setXs_sjupdatetime(Timestamp xs_sjupdatetime) {
		this.xs_sjupdatetime = xs_sjupdatetime;
	}
	@Override
	public String toString() {
		return "Yhsj [xs_sjxsid=" + xs_sjxsid + ", user_zh=" + user_zh + ", xs_sjtp=" + xs_sjtp + ", xs_sjnm=" + xs_sjnm
				+ ", xs_sjlx=" + xs_sjlx + ", xs_sjauter=" + xs_sjauter + ", xs_sjchapter=" + xs_sjchapter
				+ ", xs_sjms=" + xs_sjms + ", xs_sjupdatetime=" + xs_sjupdatetime + "]";
	}
	
}
