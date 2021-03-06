/*
 * 文 件 名:  ReportOrderStatisticsMapper.java
 * 版    权:  Shanghai zhiduan Mdt InfoTech Ltd
 * 描    述:  <描述>
 * 修 改 人:  tongfei
 * 修改时间:  2016年10月14日
 * 跟踪单号:  <跟踪单号>
 * 修改单号:  <修改单号>
 * 修改内容:  <修改内容>
 */
package com.rofour.baseball.dao.report.mapper;

import java.util.List;

import javax.inject.Named;

import com.rofour.baseball.dao.report.bean.ReportOrderStatisticsBean;
import com.rofour.baseball.dao.report.bean.ReportOrderStatisticsInfo;
import com.rofour.baseball.dao.report.bean.ReportPuserBean;
import com.rofour.baseball.dao.report.bean.SearchCriteria;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  tongfei
 * @version  [版本号, 2016年10月14日]
 * @see  [相关类/方法]
 * @since  [产品/模块版本]
 */
@Named("reportOrderStatisticsMapper")
public interface ReportOrderStatisticsMapper
{
    public void insert(ReportOrderStatisticsBean reportOrderStatisticsBean);
    public void delete(int id);
    public List<ReportOrderStatisticsBean> getOrderFromName(SearchCriteria searchCriteria );
    public ReportOrderStatisticsBean getOrderFromId(SearchCriteria searchCriteria );
    public List<ReportOrderStatisticsInfo> getOrderStatisticsInfo(SearchCriteria searchCriteria);
}
