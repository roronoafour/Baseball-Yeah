/**  
 * Copyright (c) 2016, 指端科技.
 */

package com.zhiduan.axp.service.user.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.druid.util.StringUtils;
import com.zhiduan.axp.common.CipherPwdUtils;
import com.zhiduan.axp.controller.model.UserModel;
import com.zhiduan.axp.dao.user.bean.UserManagerLoginBean;
import com.zhiduan.axp.dao.user.mapper.UserManagerLoginMapper;
import com.zhiduan.axp.service.user.UserManagerLoginService;

/**
 * @ClassName: UserManagerServiceImp
 * @Description: 管理员用户管理服务
 * @author wny
 * @date 2016年4月11日 下午4:34:43
 *
 */
@Service("userManagerLoginService")
public class UserManagerLoginServiceImp implements UserManagerLoginService {

	/**
	 * 管理用户操作数据
	 */
	@Autowired
	@Qualifier("userManagerLoginMapper")
	private UserManagerLoginMapper userManagerMapper;
	
	
	
	private static final Logger logger = LoggerFactory.getLogger(UserManagerLoginServiceImp.class);


	/**
	 * @Description: 管理员用户登录
	 * @param user
	 * @return ModelAndView
	 * @throws Exception 
	 * @see com.zhiduan.axp.service.UserManagerLoginService#login(com.zhiduan.axp.controller.model.UserModel) 
	 */
	@Override
	public UserManagerLoginBean login(UserModel user) throws Exception {
		UserManagerLoginBean userManager=userManagerMapper.loginSelect(user.getName());
		return userManager;
	}

}
