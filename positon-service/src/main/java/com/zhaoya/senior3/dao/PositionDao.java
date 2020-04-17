package com.zhaoya.senior3.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhaoya.senior3.pojo.Company;
import com.zhaoya.senior3.pojo.Position;
import com.zhaoya.senior3.pojo.Vo;

public interface PositionDao {

	List<Position> list(Vo vo);

	ArrayList<Company> getCompanyList();

	void addPosition(Position position);

	ArrayList<Position> look(@Param("pid")Integer pid);

	ArrayList<Company> clook(@Param("cid")Integer cid);

}
