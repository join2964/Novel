package com.dzkj.pojo;

import java.sql.Timestamp;

import org.springframework.format.annotation.DateTimeFormat;

public class Comment {
	private int cm_id;			//评论编号
	private int user_id;		//用户编号
	private int xs_id;			//小说编号
	private String cm_name; 	//用户昵称
	private String cm_img;		//用户头像
	private String cm_collect;  //评论信息
	private Timestamp cm_date;  //评论时间
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Comment(int cm_id, int user_id, int xs_id, String cm_name, String cm_img, String cm_collect,
			Timestamp cm_date) {
		super();
		this.cm_id = cm_id;
		this.user_id = user_id;
		this.xs_id = xs_id;
		this.cm_name = cm_name;
		this.cm_img = cm_img;
		this.cm_collect = cm_collect;
		this.cm_date = cm_date;
	}
	public int getCm_id() {
		return cm_id;
	}
	public void setCm_id(int cm_id) {
		this.cm_id = cm_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getXs_id() {
		return xs_id;
	}
	public void setXs_id(int xs_id) {
		this.xs_id = xs_id;
	}
	public String getCm_name() {
		return cm_name;
	}
	public void setCm_name(String cm_name) {
		this.cm_name = cm_name;
	}
	public String getCm_img() {
		return cm_img;
	}
	public void setCm_img(String cm_img) {
		this.cm_img = cm_img;
	}
	public String getCm_collect() {
		return cm_collect;
	}
	public void setCm_collect(String cm_collect) {
		this.cm_collect = cm_collect;
	}
	public Timestamp getCm_date() {
		return cm_date;
	}
	public void setCm_date(Timestamp cm_date) {
		this.cm_date = cm_date;
	}
	@Override
	public String toString() {
		return "Comment [cm_id=" + cm_id + ", user_id=" + user_id + ", xs_id=" + xs_id + ", cm_name=" + cm_name
				+ ", cm_img=" + cm_img + ", cm_collect=" + cm_collect + ", cm_date=" + cm_date + "]";
	}
	
}
