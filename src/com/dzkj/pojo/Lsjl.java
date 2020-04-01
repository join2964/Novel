package com.dzkj.pojo;

import java.sql.Timestamp;
/**
 * 
 * @author john
 * 历史阅读记录表
 */
public class Lsjl {
	private int xs_lsid;              //小说id
	private String user_zh;           //用户账号
	private String xs_lstp;           //小说图片
	private String xs_lsnm;           //小说名称
	private String xs_lslx;           //类型名称
	private String xs_lsauter;        //小说作者
	private int xs_lschapter;         //小说章节
	private String xs_lsms;           //小说详情
	private Timestamp xs_lsupdatetime;//历史阅读时间
	public Lsjl() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Lsjl(int xs_lsid, String user_zh, String xs_lstp, String xs_lsnm, String xs_lslx, String xs_lsauter,
			int xs_lschapter, String xs_lsms, Timestamp xs_lsupdatetime) {
		super();
		this.xs_lsid = xs_lsid;
		this.user_zh = user_zh;
		this.xs_lstp = xs_lstp;
		this.xs_lsnm = xs_lsnm;
		this.xs_lslx = xs_lslx;
		this.xs_lsauter = xs_lsauter;
		this.xs_lschapter = xs_lschapter;
		this.xs_lsms = xs_lsms;
		this.xs_lsupdatetime = xs_lsupdatetime;
	}
	public int getXs_lsid() {
		return xs_lsid;
	}
	public void setXs_lsid(int xs_lsid) {
		this.xs_lsid = xs_lsid;
	}
	public String getUser_zh() {
		return user_zh;
	}
	public void setUser_zh(String user_zh) {
		this.user_zh = user_zh;
	}
	public String getXs_lstp() {
		return xs_lstp;
	}
	public void setXs_lstp(String xs_lstp) {
		this.xs_lstp = xs_lstp;
	}
	public String getXs_lsnm() {
		return xs_lsnm;
	}
	public void setXs_lsnm(String xs_lsnm) {
		this.xs_lsnm = xs_lsnm;
	}
	public String getXs_lslx() {
		return xs_lslx;
	}
	public void setXs_lslx(String xs_lslx) {
		this.xs_lslx = xs_lslx;
	}
	public String getXs_lsauter() {
		return xs_lsauter;
	}
	public void setXs_lsauter(String xs_lsauter) {
		this.xs_lsauter = xs_lsauter;
	}
	public int getXs_lschapter() {
		return xs_lschapter;
	}
	public void setXs_lschapter(int xs_lschapter) {
		this.xs_lschapter = xs_lschapter;
	}
	public String getXs_lsms() {
		return xs_lsms;
	}
	public void setXs_lsms(String xs_lsms) {
		this.xs_lsms = xs_lsms;
	}
	public Timestamp getXs_lsupdatetime() {
		return xs_lsupdatetime;
	}
	public void setXs_lsupdatetime(Timestamp xs_lsupdatetime) {
		this.xs_lsupdatetime = xs_lsupdatetime;
	}
	@Override
	public String toString() {
		return "Lssj [xs_lsid=" + xs_lsid + ", user_zh=" + user_zh + ", xs_lstp=" + xs_lstp + ", xs_lsnm=" + xs_lsnm
				+ ", xs_lslx=" + xs_lslx + ", xs_lsauter=" + xs_lsauter + ", xs_lschapter=" + xs_lschapter
				+ ", xs_lsms=" + xs_lsms + ", xs_lsupdatetime=" + xs_lsupdatetime + "]";
	}
	
}
