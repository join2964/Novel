package com.dzkj.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.dzkj.mapper.XsMapper;
import com.dzkj.pojo.Comment;
import com.dzkj.pojo.Lsjl;
import com.dzkj.pojo.Notice;
import com.dzkj.pojo.PageInfo;
import com.dzkj.pojo.Stack;
import com.dzkj.pojo.User;
import com.dzkj.pojo.Yhsj;
import com.dzkj.service.XsService;

@Service
public class XsServiceImpl implements XsService {

	@Autowired
	private XsMapper intMapper;

	@Override
	public List<Stack> selStack() {
		// TODO Auto-generated method stub
		return intMapper.selStack();
	}

	@Override
	public List<Stack> selStackDjl() {
		// TODO Auto-generated method stub
		return intMapper.selStackDjl();
	}

	@Override
	public List<Stack> selStackTjl() {
		// TODO Auto-generated method stub
		return intMapper.selStackTjl();
	}

	@Override
	public List<Notice> selNotice() {
		// TODO Auto-generated method stub
		return intMapper.selNotice();
	}
	
	@Override
	public List<Lsjl> selLsjl(String user_zh) {
		// TODO Auto-generated method stub
		return intMapper.selLsjl(user_zh);
	}

	@Override
	public List<Lsjl> selLsjlPage(String user_zh,int pageStart,int pageSize) {
		// TODO Auto-generated method stub
		return intMapper.selLsjlPage(user_zh,pageStart,pageSize);
	}

	@Override
	public List<Yhsj> selYhsj(String user_zh) {
		// TODO Auto-generated method stub
		return intMapper.selYhsj(user_zh);
	}

	@Override
	public List<Stack> selXslx(String xs_lx) {
		// TODO Auto-generated method stub
		return intMapper.selXslx(xs_lx);
	}

	@Override
	public int delYhsj(String user_zh, String xs_sjxsid) {
		// TODO Auto-generated method stub
		return intMapper.delYhsj(user_zh, xs_sjxsid);
	}

	@Override
	public List<Yhsj> selYhsjPage(String user_zh,int pageStart,int pageSize){
		// TODO Auto-generated method stub
		return intMapper.selYhsjPage(user_zh,pageStart,pageSize);
	}
	
	@Override
	public User selUser(User user) {
		// TODO Auto-generated method stub
		return intMapper.selUser(user);
	}

	@Override
	public List<Stack> selToupdate() {
		// TODO Auto-generated method stub
		return intMapper.selToupdate();
	}

	@Override
	public Stack selCover(int xs_id) {
		// TODO Auto-generated method stub
		return intMapper.selCover(xs_id);
	}

	@Override
	public List<Comment> selComment(int xs_id) {
		// TODO Auto-generated method stub
		return intMapper.selComment(xs_id);
	}

	@Override
	public int insComment(Comment comment) {
		// TODO Auto-generated method stub
		return intMapper.insComment(comment);
	}

	@Override
	public Notice selNoticeId(int n_id) {
		// TODO Auto-generated method stub
		return intMapper.selNoticeId(n_id);
	}

	@Override
	public List<Notice> selNoticeLx(String n_lx) {
		// TODO Auto-generated method stub
		return intMapper.selNoticeLx(n_lx);
	}

	@Override
	public int insStack(Yhsj yhsj) {
		// TODO Auto-generated method stub
		return intMapper.insStack(yhsj);
	}

	@Override
	public String selNovel(int xs_sjxsid, String user_zh) {
		// TODO Auto-generated method stub
		return intMapper.selNovel(xs_sjxsid,user_zh);
	}

	@Override
	public Stack selShelf(int xs_sjxsid) {
		// TODO Auto-generated method stub
		return intMapper.selShelf(xs_sjxsid);
	}

	@Override
	public List<Stack> selVague(String selectValue) {
		// TODO Auto-generated method stub
		return intMapper.selVague(selectValue);
	}

	
}
