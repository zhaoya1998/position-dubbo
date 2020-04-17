package com.zhaoya.senior3.service;

import java.util.ArrayList;


import com.github.pagehelper.PageInfo;
import com.zhaoya.senior3.pojo.Company;
import com.zhaoya.senior3.pojo.Position;
import com.zhaoya.senior3.pojo.Vo;

public interface PositionService {

	PageInfo<Position> list(Vo vo, int pageNum);

	ArrayList<Company> getCompanyList();

	void addPosition(Position position);

	ArrayList<Position> look(Integer pid);

	ArrayList<Company> clook(Integer cid);


}
