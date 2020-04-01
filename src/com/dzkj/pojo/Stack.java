package com.dzkj.pojo;

public class Stack {
	private int xs_id;        //小说id
	private String xs_tp;     //小说图片
	private String xs_nm;     //小说名称
	private String xs_lx;     //类型名称
	private String xs_auter;  //小说作者
	private int xs_chapter;   //小说章节
	private String xs_end;	  //小说状态
	private int xs_num;       //小说字数
	private String xs_ms;     //小说详情
	private int xs_djl;       //小说点击量
	private int xs_scl;       //小说收藏量
	private String xs_updatetime;//小说更新时间
	public Stack() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Stack(int xs_id, String xs_tp, String xs_nm, String xs_lx, String xs_auter, int xs_chapter, String xs_end,
			int xs_num, String xs_ms, int xs_djl, int xs_scl, String xs_updatetime) {
		super();
		this.xs_id = xs_id;
		this.xs_tp = xs_tp;
		this.xs_nm = xs_nm;
		this.xs_lx = xs_lx;
		this.xs_auter = xs_auter;
		this.xs_chapter = xs_chapter;
		this.xs_end = xs_end;
		this.xs_num = xs_num;
		this.xs_ms = xs_ms;
		this.xs_djl = xs_djl;
		this.xs_scl = xs_scl;
		this.xs_updatetime = xs_updatetime;
	}
	public int getXs_id() {
		return xs_id;
	}
	public void setXs_id(int xs_id) {
		this.xs_id = xs_id;
	}
	public String getXs_tp() {
		return xs_tp;
	}
	public void setXs_tp(String xs_tp) {
		this.xs_tp = xs_tp;
	}
	public String getXs_nm() {
		return xs_nm;
	}
	public void setXs_nm(String xs_nm) {
		this.xs_nm = xs_nm;
	}
	public String getXs_lx() {
		return xs_lx;
	}
	public void setXs_lx(String xs_lx) {
		this.xs_lx = xs_lx;
	}
	public String getXs_auter() {
		return xs_auter;
	}
	public void setXs_auter(String xs_auter) {
		this.xs_auter = xs_auter;
	}
	public int getXs_chapter() {
		return xs_chapter;
	}
	public void setXs_chapter(int xs_chapter) {
		this.xs_chapter = xs_chapter;
	}
	public String getXs_end() {
		return xs_end;
	}
	public void setXs_end(String xs_end) {
		this.xs_end = xs_end;
	}
	public int getXs_num() {
		return xs_num;
	}
	public void setXs_num(int xs_num) {
		this.xs_num = xs_num;
	}
	public String getXs_ms() {
		return xs_ms;
	}
	public void setXs_ms(String xs_ms) {
		this.xs_ms = xs_ms;
	}
	public int getXs_djl() {
		return xs_djl;
	}
	public void setXs_djl(int xs_djl) {
		this.xs_djl = xs_djl;
	}
	public int getXs_scl() {
		return xs_scl;
	}
	public void setXs_scl(int xs_scl) {
		this.xs_scl = xs_scl;
	}
	public String getXs_updatetime() {
		return xs_updatetime;
	}
	public void setXs_updatetime(String xs_updatetime) {
		this.xs_updatetime = xs_updatetime;
	}
	@Override
	public String toString() {
		return "Stack [xs_id=" + xs_id + ", xs_tp=" + xs_tp + ", xs_nm=" + xs_nm + ", xs_lx=" + xs_lx + ", xs_auter="
				+ xs_auter + ", xs_chapter=" + xs_chapter + ", xs_end=" + xs_end + ", xs_num=" + xs_num + ", xs_ms="
				+ xs_ms + ", xs_djl=" + xs_djl + ", xs_scl=" + xs_scl + ", xs_updatetime=" + xs_updatetime + "]";
	}
	
	
}
