package com.dzkj.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.dzkj.pojo.Comment;
import com.dzkj.pojo.Lsjl;
import com.dzkj.pojo.Notice;
import com.dzkj.pojo.PageInfo;
import com.dzkj.pojo.Stack;
import com.dzkj.pojo.User;
import com.dzkj.pojo.Yhsj;

public interface XsService {
	//查询所有小说
	List<Stack> selStack();
	
	//根据小说点击量查询小说	
	List<Stack> selStackDjl();
	
	//根据小说点击量查询小说
	List<Stack> selStackTjl();
	
	//查询所有历史记录公告信息
	List<Notice> selNotice();
	
	//根据id查询公告信息
	Notice selNoticeId(int n_id);
	
	//根据公告类型查询所有公告信息
	List<Notice> selNoticeLx(String n_lx);

	//查询所有历史记录
	List<Lsjl> selLsjl(String user_zh);
	
	//分页查询用户浏览历史
	List<Lsjl> selLsjlPage(String user_zh,int pageStart,int pageSize);
	
	//查询用户书架
	List<Yhsj> selYhsj(String user_zh);
		
	//根据类别查询所有类别小说
	List<Stack> selXslx(String xs_lx);
	
	//删除用户书架
	int delYhsj(String user_zh,String xs_sjxsid);
	
	//分页查询用户书架
	List<Yhsj> selYhsjPage(String user_zh,int pageStart,int pageSize);
	
	//根据用户账号密码判断用户是否正确
	User selUser(User user);
	//更新时间排序
	List<Stack> selToupdate();
	
	//根据小说id查询小说信息
	Stack selCover(int xs_id);
	
	//所有评论
	List<Comment> selComment(int xs_id);
	
	//添加评论
	int insComment(Comment comment);
	
	//将小说添加到书架
	int insStack(Yhsj yhsj);
	
	//判断小说是否存在书架
	String selNovel(int xs_sjxsid,String user_zh);
	
	//查询小说存入书架的信息
	Stack selShelf(int xs_sjxsid);
	
	//模糊查询相关小说
	List<Stack> selVague(String selectValue);
}
