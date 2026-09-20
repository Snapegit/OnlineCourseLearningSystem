package com.cl.entity.view;

import com.cl.entity.XuexijinduEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 学习进度
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-02-29 19:23:19
 */
@TableName("xuexijindu")
public class XuexijinduView  extends XuexijinduEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XuexijinduView(){
	}
 
 	public XuexijinduView(XuexijinduEntity xuexijinduEntity){
 	try {
			BeanUtils.copyProperties(this, xuexijinduEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
