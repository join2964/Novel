package com.dzkj.pojo;

/**
 * @author john
 * 管理员表
 */
public class Gly {
	private int gly_id;   //管理员编号
	private String gly_zh;//管理员账号
	private String gly_mm;//管理员密码
	public Gly() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Gly(int gly_id, String gly_zh, String gly_mm) {
		super();
		this.gly_id = gly_id;
		this.gly_zh = gly_zh;
		this.gly_mm = gly_mm;
	}
	public int getGly_id() {
		return gly_id;
	}
	public void setGly_id(int gly_id) {
		this.gly_id = gly_id;
	}
	public String getGly_zh() {
		return gly_zh;
	}
	public void setGly_zh(String gly_zh) {
		this.gly_zh = gly_zh;
	}
	public String getGly_mm() {
		return gly_mm;
	}
	public void setGly_mm(String gly_mm) {
		this.gly_mm = gly_mm;
	}
	@Override
	public String toString() {
		return "Gly [gly_id=" + gly_id + ", gly_zh=" + gly_zh + ", gly_mm=" + gly_mm + "]";
	}
	
}
