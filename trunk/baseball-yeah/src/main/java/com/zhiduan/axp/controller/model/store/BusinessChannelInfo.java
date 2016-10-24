package com.zhiduan.axp.controller.model.store;

import com.zhiduan.axp.controller.model.BasePage;

import java.io.Serializable;
import java.util.Date;

public class BusinessChannelInfo extends BasePage implements Serializable {
    /**
     *渠道id
     */
    private Integer channelId;
    /**
     *渠道code
     */
    private String channelCode;
    /**
     *渠道名称
     */
    private String channelName;
    /**
     *联系人
     */
    private String contacts;
    /**
     *联系人号码
     */
    private String connectPhone;
    /**
     *推广URL
     */
    private String spreadUrl;
    /**
     *目标URL
     */
    private String targetUrl;
    /**
     *备注
     */
    private String remark;
    /**
     *状态
     */
    private Byte state;
    /**
     *是否删除
     */
    private Byte isDeleted;
    /**
     *创建时间
     */
    private Date createDate;
    /**
     *创建人Id
     */
    private Long createUser;
    /**
     *创建人姓名
     */
    private String nickName;
    /**
     *创建开始时间
     */
    private String createStartDate;
    /**
     *创建结束时间
     */
    private String createEndDate;

    public BusinessChannelInfo(Integer channelId, String channelCode, String channelName, String contacts, String connectPhone, String spreadUrl, String targetUrl, String remark, Byte state, Byte isDeleted, Date createDate, Long createUser, String nickName, String createStartDate, String createEndDate) {
        this.channelId = channelId;
        this.channelCode = channelCode;
        this.channelName = channelName;
        this.contacts = contacts;
        this.connectPhone = connectPhone;
        this.spreadUrl = spreadUrl;
        this.targetUrl = targetUrl;
        this.remark = remark;
        this.state = state;
        this.isDeleted = isDeleted;
        this.createDate = createDate;
        this.createUser = createUser;
        this.nickName = nickName;
        this.createStartDate = createStartDate;
        this.createEndDate = createEndDate;
    }

    public String getCreateStartDate() {
        return createStartDate;
    }

    public void setCreateStartDate(String createStartDate) {
        this.createStartDate = createStartDate;
    }

    public String getCreateEndDate() {
        return createEndDate;
    }

    public void setCreateEndDate(String createEndDate) {
        this.createEndDate = createEndDate;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public BusinessChannelInfo() {
        super();
    }

    public Integer getChannelId() {
        return channelId;
    }

    public void setChannelId(Integer channelId) {
        this.channelId = channelId;
    }

    public String getChannelCode() {
        return channelCode;
    }

    public void setChannelCode(String channelCode) {
        this.channelCode = channelCode == null ? null : channelCode.trim();
    }

    public String getChannelName() {
        return channelName;
    }

    public void setChannelName(String channelName) {
        this.channelName = channelName == null ? null : channelName.trim();
    }

    public String getContacts() {
        return contacts;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts == null ? null : contacts.trim();
    }

    public String getConnectPhone() {
        return connectPhone;
    }

    public void setConnectPhone(String connectPhone) {
        this.connectPhone = connectPhone == null ? null : connectPhone.trim();
    }

    public String getSpreadUrl() {
        return spreadUrl;
    }

    public void setSpreadUrl(String spreadUrl) {
        this.spreadUrl = spreadUrl == null ? null : spreadUrl.trim();
    }

    public String getTargetUrl() {
        return targetUrl;
    }

    public void setTargetUrl(String targetUrl) {
        this.targetUrl = targetUrl == null ? null : targetUrl.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Byte getState() {
        return state;
    }

    public void setState(Byte state) {
        this.state = state;
    }

    public Byte getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Byte isDeleted) {
        this.isDeleted = isDeleted;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Long getCreateUser() {
        return createUser;
    }

    public void setCreateUser(Long createUser) {
        this.createUser = createUser;
    }
}