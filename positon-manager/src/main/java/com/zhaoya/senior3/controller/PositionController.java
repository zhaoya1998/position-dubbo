package com.zhaoya.senior3.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.dubbo.config.annotation.Reference;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.zhaoya.senior3.pojo.Company;
import com.zhaoya.senior3.pojo.Position;
import com.zhaoya.senior3.pojo.Vo;
import com.zhaoya.senior3.service.PositionService;

@Controller
public class PositionController {

	@Reference
	private PositionService service;

	// ��ѯ�б�
	@RequestMapping("list")
	public String list(HttpServletRequest request, Vo vo, @RequestParam(defaultValue = "1") int pageNum) {
		PageInfo<Position> info = service.list(vo, pageNum);
		request.setAttribute("vo", vo);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("info", info);
		return "list";
	}

	// ��ת���ҳ��
	@RequestMapping("toAdd")
	public String toAdd() {
		return "add";
	}

	// ����
	@RequestMapping("add")
	public String add(HttpServletRequest request, Position position) {
		service.addPosition(position);
		request.setAttribute("position", position);
		return "redirect:list";
	}

	// ��תְλ����
	@RequestMapping("look")
	public String look(Integer pid, HttpServletRequest request) {
		ArrayList<Position> list = service.look(pid);
		request.setAttribute("list", list);
		return "look";
	}

	// ��תְλ����
	@RequestMapping("clook")
	public String clook(Integer cid, HttpServletRequest request) {
		ArrayList<Company> list = service.clook(cid);
		request.setAttribute("list", list);
		return "clook";
	}
}
