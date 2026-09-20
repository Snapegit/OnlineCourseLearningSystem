package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.XuexijinduEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XuexijinduView;


/**
 * 学习进度
 *
 * @author 
 * @email 
 * @date 2024-02-29 19:23:19
 */
public interface XuexijinduService extends IService<XuexijinduEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XuexijinduView> selectListView(Wrapper<XuexijinduEntity> wrapper);
   	
   	XuexijinduView selectView(@Param("ew") Wrapper<XuexijinduEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XuexijinduEntity> wrapper);
   	
   	PageUtils queryPageGroupBy(Map<String, Object> params,Wrapper<XuexijinduEntity> wrapper);

}

