package com.cl.dao;

import com.cl.entity.XuexijinduEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XuexijinduView;


/**
 * 学习进度
 * 
 * @author 
 * @email 
 * @date 2024-02-29 19:23:19
 */
public interface XuexijinduDao extends BaseMapper<XuexijinduEntity> {
	
	List<XuexijinduView> selectListView(@Param("ew") Wrapper<XuexijinduEntity> wrapper);

	List<XuexijinduView> selectListView(Pagination page,@Param("ew") Wrapper<XuexijinduEntity> wrapper);
	
	XuexijinduView selectView(@Param("ew") Wrapper<XuexijinduEntity> wrapper);
	
	List<XuexijinduView> selectGroupBy(Pagination page,@Param("ew") Wrapper<XuexijinduEntity> wrapper);

}
