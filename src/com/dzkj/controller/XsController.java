package com.dzkj.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.imageio.ImageIO;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dzkj.pojo.Comment;
import com.dzkj.pojo.Lsjl;
import com.dzkj.pojo.Notice;
import com.dzkj.pojo.PageInfo;
import com.dzkj.pojo.Stack;
import com.dzkj.pojo.User;
import com.dzkj.pojo.Yhsj;
import com.dzkj.service.XsService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.code.kaptcha.Producer;

import static sun.management.Agent.error;



@Controller
public class XsController {
	@Autowired
	private XsService intServiceImpl;

// 	@Autowired
//    private Producer kaptchaProducer;
//
//    @RequestMapping(value = "Kaptcha", method = RequestMethod.GET)
//    public void getKaptcha(HttpServletResponse response, HttpSession session) {
//        // 生成验证码
//        String text = kaptchaProducer.createText();
//        BufferedImage image = kaptchaProducer.createImage(text);
//
//        // 将验证码存入session
//        session.setAttribute("kaptcha", text);
//
//        // 将突图片输出给浏览器
//        response.setContentType("img/png");
//        try {
//            OutputStream os = response.getOutputStream();
//            ImageIO.write(image, "png", os);
//        } catch (IOException e) {
//            error("响应验证码失败:" + e.getMessage());
//        }
//    }
	
	@RequestMapping("login")
    public String login(HttpSession session){
		List<Stack> stack=intServiceImpl.selStack();//查询所有小说
		List<Stack> stackDj=intServiceImpl.selStackDjl();//查询点击排行小说
		List<Stack> stackTj=intServiceImpl.selStackTjl();//查询书架排行小说
		List<Notice> notice=intServiceImpl.selNotice();//查询所有公告
        session.setAttribute("stack", stack);
        session.setAttribute("stackDj", stackDj);
        session.setAttribute("stackTj", stackTj);
        session.setAttribute("notice", notice);
        return "redirect:index.jsp";
	}

	@RequestMapping("sign")
    public String sign(Model model,User user,HttpSession session){
		System.out.println(user.getUser_zh()+"_"+ user.getUser_mm());
		User yh=intServiceImpl.selUser(user);//判断用户登录是否正确
		if(yh!=null) {
			System.out.println("登录成功");
			session.setAttribute("yh",yh);
			return "redirect:login";
		}else {
			System.out.println("登录失败");
			model.addAttribute("UserError", "账号密码错误，请重新输入");
			return "redirect:dl.jsp";
		}
	}
	
	@RequestMapping(value="bookShelf")
    public String bookShelf(HttpSession session,@RequestParam(value="user_zh")String user_zh,@RequestParam(defaultValue = "0",value="pageNumber") int pageNumber){
		int count = intServiceImpl.selYhsj(user_zh).size();
		PageInfo page = new PageInfo();
		page.setCount(count);
		page.setPageNumber(pageNumber);
		page.setPageStart(pageNumber*9);
		page.setPageSize(9);
		page.setTotal(count%9==0?count/9:count/9+1);
		List<Yhsj> pageYhsj=intServiceImpl.selYhsjPage(user_zh,page.getPageStart(),page.getPageSize());
		System.out.println("登录成功");
		session.setAttribute("pageYhsj",pageYhsj);
		session.setAttribute("page", page);
		return "redirect:sj.jsp";
	}
	
	@RequestMapping(value="delBookShelf")
	public String delBookShelf(String user_zh,String xs_sjxsid) {
		System.out.println(user_zh+xs_sjxsid);
		intServiceImpl.delYhsj(user_zh.trim(), xs_sjxsid.trim());
		return "bookShelf";
	}
	
	@RequestMapping("bookHistory")
    public String bookHistory(Model model,HttpSession session,String user_zh,@RequestParam(defaultValue = "0",value = "pageNumber")int pageNumber){
		int count=intServiceImpl.selLsjl(user_zh).size();
		PageInfo page = new PageInfo();
		page.setCount(count);
		page.setPageNumber(pageNumber);
		page.setPageStart(pageNumber*7);
		page.setPageSize(7);
		page.setTotal(count%7==0?count/7:count/7+1);
		List<Lsjl> pageLsjl=intServiceImpl.selLsjlPage(user_zh,page.getPageStart(),page.getPageSize());
		if(pageLsjl!=null) {
			System.out.println(pageLsjl);
			session.setAttribute("lsjl",pageLsjl);
			session.setAttribute("page", page);
			return "redirect:ls.jsp";
		}else {
			System.out.println("历史为空");
			model.addAttribute("lsjl", "null");
			return "redirect:dl.jsp";
		}
	}
	
	@RequestMapping("information")
    public String information(Model model,HttpSession session,@RequestParam(defaultValue = "1",value = "xh")int xh){
		User yh=(User) session.getAttribute("yh");
		int common=intServiceImpl.selLsjl(yh.getUser_zh()).size();
		model.addAttribute("common",common);
		model.addAttribute("xh",xh);
		return "grxx.jsp";
	}
	
	@RequestMapping("userSwitch")
    public String userSwitch(HttpServletRequest request){
		request.getSession().invalidate();
		return "redirect:dl.jsp";
	}
	
	@RequestMapping("signOut")
    public String signOut(HttpServletRequest request){
		request.getSession().invalidate();
		return "redirect:login";
	}
	
	@RequestMapping("category")
    public String category(Model model,HttpServletRequest request,String xs_lx){
			List<Stack> lbxs=intServiceImpl.selXslx(xs_lx);
			System.out.println(lbxs.toString());
			System.out.println(lbxs.size());
			model.addAttribute("lbxs", lbxs);
			return "lb.jsp";
	}
	
			/**
	 * 
	 * @param model
	 * @param request
	 * @param xs_id
	 * @return 
	 * 查询小说信息和评论 并跳转小说封面页面
	 */
	@RequestMapping("cover")
    public String cover(Model model,HttpSession session,int xs_id){
			Stack cove=intServiceImpl.selCover(xs_id);
			List<Comment> com=intServiceImpl.selComment(xs_id);
			System.out.println(cove);
			System.out.println(com);
			session.setAttribute("cove", cove);
			session.setAttribute("com", com);
			return "redirect:ll.jsp";
	}
	
	/**
	 * 
	 * @param model
	 * @param response
	 * @param comment
	 * @return
	 * @throws Exception
	 * 
	 * ajax 局部添加数据
	 */
	@RequestMapping(value = "discuss",method = RequestMethod.POST)
	@ResponseBody
    public String discuss(Model model,HttpServletResponse response,Comment comment) throws Exception{
			System.out.println(comment);
			int cove=intServiceImpl.insComment(comment);
			System.out.println("cove"+cove);
			if(cove>0) {
				System.out.println("添加成功");
			}
			ObjectMapper mapper=new ObjectMapper();
			String  json = mapper.writeValueAsString(comment);
			System.out.println(json);
			return json;
	}
	
	@RequestMapping("activity")
    public String activity(Model model,int n_id){
			Notice tiv=intServiceImpl.selNoticeId(n_id);
			System.out.println("tiv:"+tiv);
			model.addAttribute("tiv", tiv);
			return "gg.jsp";
	}

	@RequestMapping(value = "addNovel",method = RequestMethod.POST)
	@ResponseBody
    public String addNovel(Model model,HttpSession session,int xs_sjxsid,String user_zh) throws JsonProcessingException{
		ObjectMapper mapper=new ObjectMapper();
		System.out.println("user_zh   "+user_zh);
		if(user_zh != null && user_zh != "") {
			String exis=intServiceImpl.selNovel(xs_sjxsid, user_zh);
			if(exis==null||exis.equals("")) {
				Stack stack=intServiceImpl.selShelf(xs_sjxsid);
				Date date = new Date();       
				Timestamp nousedate = new Timestamp(date.getTime());
				Yhsj yhsj=new Yhsj();
				yhsj.setXs_sjxsid(stack.getXs_id());
				yhsj.setUser_zh(user_zh);
				yhsj.setXs_sjtp(stack.getXs_tp());
				yhsj.setXs_sjnm(stack.getXs_nm());
				yhsj.setXs_sjlx(stack.getXs_lx());
				yhsj.setXs_sjauter(stack.getXs_auter());
				yhsj.setXs_sjchapter(stack.getXs_chapter());
				yhsj.setXs_sjms(stack.getXs_ms());
				yhsj.setXs_sjupdatetime(nousedate);
				int novel=intServiceImpl.insStack(yhsj);
				System.out.println("放入书架成功");
				String  json = mapper.writeValueAsString("放入书架成功");
				return json;
			}else {
				System.out.println("书架已存在该书籍");
				String  json = mapper.writeValueAsString("书架已存在该书籍");
				return json;
			}
		}
		System.out.println("未登录");
		String  json = mapper.writeValueAsString("您还未登陆");
		return json;
    }
	
	@RequestMapping(value = "fuzzyQuery",method = RequestMethod.POST)
	@ResponseBody
    public String fuzzyQuery(Model model,String selectValue) throws JsonProcessingException{
		List<Stack> vague=intServiceImpl.selVague(selectValue);
		ObjectMapper mapper=new ObjectMapper();
		String  json = mapper.writeValueAsString(vague);
		System.out.println(json);
		return json;
	}
	
	@RequestMapping("error")
    public String error(Model model){
		return "error.jsp";
    }
}
