package com.zhaoya.senior3.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhaoya.senior3.dao.PositionDao;
import com.zhaoya.senior3.pojo.Company;
import com.zhaoya.senior3.pojo.Position;
import com.zhaoya.senior3.pojo.Vo;
import com.zhaoya.senior3.service.PositionService;


@Service(interfaceClass =PositionService.class)
public class PositionServiceImpl implements PositionService{
	@Autowired
	private PositionDao dao;

	@Override
	public PageInfo<Position> list(Vo vo, int pageNum) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, 5);
        List<Position> list=dao.list(vo);
		PageInfo<Position> info=new PageInfo<Position>(list);
		return info;
	}

	@Override
	public ArrayList<Company> getCompanyList() {
		// TODO Auto-generated method stub
		return dao.getCompanyList();
	}

	@Override
	public void addPosition(Position position) {
		// TODO Auto-generated method stub
		dao.addPosition(position);
	}

	@Override
	public ArrayList<Position> look(Integer pid) {
		// TODO Auto-generated method stub
		return dao.look(pid);
	}

	@Override
	public ArrayList<Company> clook(Integer cid) {
		// TODO Auto-generated method stub
		return dao.clook(cid);
	}


}
