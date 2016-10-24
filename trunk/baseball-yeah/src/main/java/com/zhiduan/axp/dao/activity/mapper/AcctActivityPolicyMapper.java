package com.zhiduan.axp.dao.activity.mapper;

import com.zhiduan.axp.controller.model.SelectSet;
import com.zhiduan.axp.dao.activity.bean.AcctActivity;
import com.zhiduan.axp.dao.activity.bean.AcctActivityPolicyBean;

import javax.inject.Named;
import java.util.List;


@Named("acctActivityPolicyMapper")
public interface AcctActivityPolicyMapper {
    int deleteByPrimaryKey(Integer policyId);

    int insert(AcctActivityPolicyBean record);

    int insertSelective(AcctActivityPolicyBean record);

    AcctActivityPolicyBean selectByPrimaryKey(Integer policyId);


    List<AcctActivityPolicyBean>  selectByActivityId(Integer activityId);

    int updateByPrimaryKeySelective(AcctActivityPolicyBean record);

    int updateByPrimaryKey(AcctActivityPolicyBean record);

    List<SelectSet> selectActivity();

    List<SelectSet> selectPolicy(Long activityId);
}