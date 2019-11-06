package com.web.blog;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

@Controller
@RequestMapping("/main")
public class mycontroller {
	private MapperDAO mapper;
	HttpServletRequest request = null;
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/list")
	public String list(Model model) {
		mapper = sqlSession.getMapper(MapperDAO.class);
		ArrayList<gesiDTO> a = mapper.selectGesi();
			model.addAttribute("mylist", a);
//			MultipartRequest multi = new MultipartRequest(request, path,sizeLimit,encType,new DefaultFileRenamePolicy());
//			String email = ((ServletRequest) multi).getParameter("name");
//			String type = ((ServletRequest) multi).getParameter("type");
//			int price = Integer.parseInt(((ServletRequest) multi).getParameter("price"));
//			String url = ((Object) multi).getFilesystemName("pictureUrl");
		
		return "index";
	}

	@RequestMapping("/login")
	public String login() {
		
		
		
		return "login";
	}
	
	@RequestMapping("/gesi")
	public String gesi() {
		
		return "gesi";
	}
	
	@RequestMapping(value = "/fileUpload", method = RequestMethod.POST)
	public String fileUpload(HttpServletRequest req, HttpServletResponse rep, Model model,@RequestParam("content") String text,@RequestParam MultipartFile url) {
		// 파일이 저장될 path 설정
		String path = "C:/Program Files/Apache Software Foundation/Tomcat 7.0/wtpwebapps/webProj/resources/img/";
		
		mapper = sqlSession.getMapper(MapperDAO.class);
		gesiDTO r = new gesiDTO();
		r.setText(text);
		r.setEmail(sessionAO.getInstance().getSID(req));
		System.out.println("path : " + path);
		String saveFileName = "";
		Map returnObject = new HashMap();
		try {
			// MultipartHttpServletRequest 생성
			MultipartHttpServletRequest mhsr = (MultipartHttpServletRequest) req;
			Iterator iter = mhsr.getFileNames();
			
			MultipartFile mfile = null;
			String fieldName = "";
			List resultList = new ArrayList();

			// 디레토리가 없다면 생성
//			File dir = new File(path);
//			if (!dir.isDirectory()) {
//				dir.mkdirs();
//			}

			// 값이 나올때까지
			while (iter.hasNext()) {
				fieldName = (String) iter.next(); // 내용을 가져와서
				System.out.println(fieldName+"////////////////////sadfasf");
				mfile = mhsr.getFile(fieldName);
				String origName;
				origName = new String(mfile.getOriginalFilename().getBytes("8859_1"), "UTF-8"); // 한글꺠짐 방지
				
				System.out.println("origName: " + origName);
				// 파일명이 없다면
				if ("".equals(origName)) {
					continue;
				}

				saveFileName = origName;

				System.out.println("saveFileName : " + saveFileName);

				// 설정한 path에 파일저장
				File serverFile = new File(path + File.separator + saveFileName);
				mfile.transferTo(serverFile);

				Map file = new HashMap();
				file.put("origName", origName);
				file.put("sfile", serverFile);
				resultList.add(file);
			}

			returnObject.put("files", resultList);
			returnObject.put("params", mhsr.getParameterMap());
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalStateException e) { // TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}
		r.setUrl(saveFileName);
		System.out.println(r.getText()+"//"+r.getUrl()+"//"+r.getEmail());
		mapper.insertGesi(r);

		return "redirect:list";
	}

	@RequestMapping("/logOut")
	public String logOut(Model model) {
		request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		sessionAO.getInstance().exitSession(request);
		model.addAttribute("i", 3);

		return "AlertCenter";
	}

	@RequestMapping("/sign")
	public String sign(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
		System.out.println(email + "/" + password);
		model.addAttribute("i", 1);
		mapper = sqlSession.getMapper(MapperDAO.class);
		memberDTO m = new memberDTO();
		m.setEmail(email);
		m.setPassword(password);
		mapper.insertUser(m);
		return "AlertCenter";
	}

	@RequestMapping("/logchk")
	public String logchk(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
		mapper = sqlSession.getMapper(MapperDAO.class);
		memberDTO m = new memberDTO();
		m.setEmail(email);
		m.setPassword(password);
		memberDTO g = mapper.loginchk(m);
		if (g == null) {
			System.out.println("/로그인안됨");
			model.addAttribute("i", 2);
			return "AlertCenter";
		} else {
			request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
			sessionAO.getInstance().setSession(request, email);
			System.out.println(g.getEmail() + "/로그인한 이메일");
			return "redirect:list";
		}

	}

}
