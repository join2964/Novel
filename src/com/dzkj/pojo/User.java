package com.dzkj.pojo;
/**
 * 
 * @author john
 * 用户信息表
 */
public class User {
	private int user_id;       //用户编号
	private String user_nc;    //用户昵称
	private String user_img;   //用户头像
	private String user_zh;    //用户账号
	private String user_mm;    //用户密码
	private String user_sfid;  //用户身份证号
	private String user_nm;    //用户姓名
	private String user_sex;   //用户性别
	private String user_adress;//用户地址
	private String user_phone; //用户电话号码
	private String user_jb;    //用户级别
	private String user_qx;    //用户权限
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int user_id, String user_nc, String user_img, String user_zh, String user_mm, String user_sfid,
			String user_nm, String user_sex, String user_adress, String user_phone, String user_jb, String user_qx) {
		super();
		this.user_id = user_id;
		this.user_nc = user_nc;
		this.user_img = user_img;
		this.user_zh = user_zh;
		this.user_mm = user_mm;
		this.user_sfid = user_sfid;
		this.user_nm = user_nm;
		this.user_sex = user_sex;
		this.user_adress = user_adress;
		this.user_phone = user_phone;
		this.user_jb = user_jb;
		this.user_qx = user_qx;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_nc() {
		return user_nc;
	}
	public void setUser_nc(String user_nc) {
		this.user_nc = user_nc;
	}
	public String getUser_img() {
		return user_img;
	}
	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}
	public String getUser_zh() {
		return user_zh;
	}
	public void setUser_zh(String user_zh) {
		this.user_zh = user_zh;
	}
	public String getUser_mm() {
		return user_mm;
	}
	public void setUser_mm(String user_mm) {
		this.user_mm = user_mm;
	}
	public String getUser_sfid() {
		return user_sfid;
	}
	public void setUser_sfid(String user_sfid) {
		this.user_sfid = user_sfid;
	}
	public String getUser_nm() {
		return user_nm;
	}
	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public String getUser_adress() {
		return user_adress;
	}
	public void setUser_adress(String user_adress) {
		this.user_adress = user_adress;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_jb() {
		return user_jb;
	}
	public void setUser_jb(String user_jb) {
		this.user_jb = user_jb;
	}
	public String getUser_qx() {
		return user_qx;
	}
	public void setUser_qx(String user_qx) {
		this.user_qx = user_qx;
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_nc=" + user_nc + ", user_img=" + user_img + ", user_zh=" + user_zh
				+ ", user_mm=" + user_mm + ", user_sfid=" + user_sfid + ", user_nm=" + user_nm + ", user_sex="
				+ user_sex + ", user_adress=" + user_adress + ", user_phone=" + user_phone + ", user_jb=" + user_jb
				+ ", user_qx=" + user_qx + "]";
	}
	
}
