package com.yhc.mvc04;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yhc.mvc04.vo.MemberVo;

@Controller
public class MemberController {
	
	@Autowired
	private SqlSession session;
	
	@RequestMapping("member_insert_form")
	public String member_insert_form() {
		
		return "member/member_insert_form";
	}
	
	@RequestMapping("member_insert_action")
	public String member_insert_action(
			Model model,
			MemberVo vo
			) {
		System.out.println(vo);
		session.insert("MemberMapper.insert", vo);
		
		return "member/member_insert_action";
	}
	
	@RequestMapping("member_list")
	public String member_list(
			Model model
			) {
		
		List<MemberVo> memList = session.selectList("MemberMapper.selectAll");
		model.addAttribute("memList", memList);
		
		return "member/member_list";
	}
	
	@RequestMapping("member_detail")
	public String member_detail(
			Model model,
			@RequestParam String mid
			) {
		
		MemberVo vo = session.selectOne("MemberMapper.selectOne", mid);
		model.addAttribute("vo", vo);
		return "member/member_detail";
	}
	
	@RequestMapping("member_update_form")
	public String member_update_form(
			Model model,
			@RequestParam String mid
			) {
		
		MemberVo vo = session.selectOne("MemberMapper.selectOne", mid);
		model.addAttribute("vo", vo);
		return "member/member_update_form";
	}
	
	@RequestMapping("member_update_action")
	public String member_update_action(
			Model model,
			MemberVo vo
			) {
		System.out.println(vo);
		session.update("MemberMapper.update", vo);
		
		return "member/member_update_action";
	}
	
	@RequestMapping("member_delete_form")
	public String member_delete_form(
			Model model,
			@RequestParam String mid
			) {
		
		MemberVo vo = session.selectOne("MemberMapper.selectOne", mid);
		model.addAttribute("vo", vo);
		return "member/member_delete_form";
	}
	
	@RequestMapping("member_delete_action")
	public String member_delete_action(
			Model model,
			@RequestParam String mid,
			@RequestParam String mpwd
			) {
		MemberVo vo = session.selectOne("MemberMapper.selectOne", mid);
		String msg;
		
		if(mpwd.equals(vo.getMpwd())) {
			System.out.println("delete : " + mid);
			session.delete("MemberMapper.delete", mid);
			msg = "Delete Success";
		}else {
			msg = "Delete Fail";
		}
		
		model.addAttribute("msg", msg);
		
		return "member/member_delete_action";
	}
}
