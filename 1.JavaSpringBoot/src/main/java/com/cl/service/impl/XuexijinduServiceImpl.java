package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.XuexijinduDao;
import com.cl.entity.XuexijinduEntity;
import com.cl.service.XuexijinduService;
import com.cl.entity.view.XuexijinduView;

@Service("xuexijinduService")
public class XuexijinduServiceImpl extends ServiceImpl<XuexijinduDao, XuexijinduEntity> implements XuexijinduService {
	
	@Override
	public PageUtils queryPageGroupBy(Map<String, Object> params, Wrapper<XuexijinduEntity> wrapper) {
		Page<XuexijinduView> page =new Query<XuexijinduView>(params).getPage();
        page.setRecords(baseMapper.selectGroupBy(page,wrapper));
    	PageUtils pageUtil = new PageUtils(page);
    	return pageUtil;
	}
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XuexijinduEntity> page = this.selectPage(
                new Query<XuexijinduEntity>(params).getPage(),
                new EntityWrapper<XuexijinduEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XuexijinduEntity> wrapper) {
		  Page<XuexijinduView> page =new Query<XuexijinduView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<XuexijinduView> selectListView(Wrapper<XuexijinduEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XuexijinduView selectView(Wrapper<XuexijinduEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
