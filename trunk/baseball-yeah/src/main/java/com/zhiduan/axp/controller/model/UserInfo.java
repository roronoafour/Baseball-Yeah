package com.zhiduan.axp.controller.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.zhiduan.axp.dao.manager.bean.ExpressBean;
import com.zhiduan.axp.dao.store.bean.AxpBean;
import com.zhiduan.axp.dao.store.bean.ExpStoreBean;

/**
 * @author ZhangLei
 * @ClassName: UserInfo
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @date 2016年3月22日 下午10:13:36
 */

public class UserInfo extends BasePage implements Serializable {

	private static final long serialVersionUID = -3438877352147602903L;
	/**
	 *验证说明
	 */
	private String verifyInfo;



	/**
	 * 认证备注
	 */
	private String verifyRemark;
	/**
	 * 真实姓名
	 */
	private String realName;

	private String idNo;
	/**
	 * 负责人手机号
	 */
	private String headPhone;
	/**
	 * 快递公司编码
	 */
	private Long expressCompanyId;
	/**
	 * 学校列表
	 */
	private List<Long> collegeList;

	public List<Long> getUserIds() {
		return userIds;
	}

	public void setUserIds(List<Long> userIds) {
		this.userIds = userIds;
	}

	private List<Long> userIds;

	/**
	 * 短信剩余条数
	 */
	private Integer smsCount;
	/**
	 * 是否首次登陆 0 否 1 是
	 */
	private Byte firstLogin;

	public String getIdNo() {
		return idNo;
	}

	public void setIdNo(String idNo) {
		this.idNo = idNo;
	}

	public String getCityId() {
		return cityId;

	}

	public void setCityId(String cityId) {
		this.cityId = cityId;
	}

	private  String cityId;

	/**
	 * @Fields age :搜索条件开始时间
	 */
	private String startDate;
	/**
	 * @Fields age :搜索条件结束时间
	 */
	private  String endDate;

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public Integer getSmsCount() {
		return smsCount;
	}

	public void setSmsCount(Integer smsCount) {
		this.smsCount = smsCount;
	}

	public Byte getFirstLogin() {
		return firstLogin;
	}

	public void setFirstLogin(Byte firstLogin) {
		this.firstLogin = firstLogin;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getHeadPhone() {
		return headPhone;
	}

	public void setHeadPhone(String headPhone) {
		this.headPhone = headPhone;
	}

	public Long getExpressCompanyId() {
		return expressCompanyId;
	}

	public void setExpressCompanyId(Long expressCompanyId) {
		this.expressCompanyId = expressCompanyId;
	}

	public List<Long> getCollegeList() {
		return collegeList;
	}

	public void setCollegeList(List<Long> collegeList) {
		this.collegeList = collegeList;
	}
	/*
	 * TbUser 参数
	 */
	/**
	 * 用户ID
	 */
	private Long userId;
	/**
	 * 用户昵称
	 */
	private String nickname;
	/**
	 * 用户名
	 */
	private String userName;
	/**
	 * 用户密码
	 */
	private String accountPwd;
	/**
	 * 用户认证状态
	 * 0：注册未完善信息
	 * 1：提交完善提交
	 * 2：提交的信息审核通过
	 * 3：提交的信息审核失败
	 */
	private Byte verifyStatus;
	/**
	 * 手机号
	 */
	private String phone;
	/**
	 * 性别
	 */
	private String gender;
	/**
	 * 用户性别
	 */
	private Byte age;
	/**
	 * 所属地区
	 */
	private Long countyId;
	/**
	 * 注册时间
	 */
	private Date signupTime;
	/**
	 * 注册IP
	 */
	private String signupIp;
	/**
	 * 头像
	 */
	private String icon;
	/**
	 * 是否删除
	 */
	private Byte beDeleted;

	/*
	 * TbUserType 参数
	 */
	/**
	 * 用户类型ID
	 */
	private Long userTypeId;
	/**
	 * 用户类型
	 */
	private Integer userType;
	/**
	 * 是否启用
	 */
	private Byte beEnabled;

	/*
	 * TbUserStoreExp 字段
	 */
	/**
	 * 是否负责人
	 */
	private Byte beSupervisor;
	/**
	 * 商户ID
	 */
	private Long storeId;

	private  String expressId;

	public String getExpressId() {
		return expressId;
	}

	public void setExpressId(String expressId) {
		this.expressId = expressId;
	}

	/**
	 * 是否删除
	 */
	private String identityNumber;

	/*
	 * 前台参数
	 */

	/**
	 * 新手机号
	 */
	private String newPhone;

	/**
	 * 新密码
	 */
	private String newPwd;

	/**
	 * 更换手机的方式
	 */
	private String changePnMethod;

	/**
	 * 验证码
	 */
	private String verifycode;

	/**
	 * 手机imei
	 */
	private String imei;

	/**
	 * 验证码
	 */
	private String code;

	/**
	 * 验证码类型
	 */
	private String codeType;

	/**
	 * token
	 */
	private String token;

	/**
	 * 手机服务appid
	 */
	private String appid;

	/**
	 * 格式化
	 */
	private String format;

	/**
	 * 版本
	 */
	private String version;

	/**
	 * 时间戳
	 */
	private String timestamp;

	/**
	 * 签名
	 */
	private String sign;
	

	/*
	 * tb_store字段
	 */

	/**
	 * 位置
	 */
	private String location;

	/**
	 * 商户编码
	 */
	private String storeCode;

	/**
	 * 商户名称
	 */
	private String storeName;

	/**
	 * 类型
	 */
	private Integer type;

	/**
	 * 关联的快递信息
	 */
	private List<ExpressBean> ecs;
	/**
	 * 关联的axp门店信息
	 */
	private List<AxpBean> axps;

    /**
     * 关联的exp门店信息
     */
    private List<ExpStoreBean> exps;

	public List<ExpressBean> getEcs() {
		return ecs;
	}

	public void setEcs(List<ExpressBean> ecs) {
		this.ecs = ecs;
	}

	public List<AxpBean> getAxps() {
		return axps;
	}

	public void setAxps(List<AxpBean> axps) {
		this.axps = axps;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getStoreCode() {
		return storeCode;
	}

	public void setStoreCode(String storeCode) {
		this.storeCode = storeCode;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	private String verifyCode;

	public UserInfo() {
	}

	public Long getUserId() {
		return userId;
	}


	public void setUserId(Long userId) {
		this.userId = userId;
	}


	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAccountPwd() {
		return accountPwd;
	}

	public void setAccountPwd(String accountPwd) {
		this.accountPwd = accountPwd;
	}

	public Byte getVerifyStatus() {
		return verifyStatus;
	}

	public void setVerifyStatus(Byte verifyStatus) {
		this.verifyStatus = verifyStatus;
	}

	public Byte getBeDeleted() {
		return beDeleted;
	}

	public void setBeDeleted(Byte beDeleted) {
		this.beDeleted = beDeleted;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Byte getAge() {
		return age;
	}

	public void setAge(Byte age) {
		this.age = age;
	}


	public Date getSignupTime() {
		return signupTime;
	}

	public void setSignupTime(Date signupTime) {
		this.signupTime = signupTime;
	}

	public String getSignupIp() {
		return signupIp;
	}

	public void setSignupIp(String signupIp) {
		this.signupIp = signupIp;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public Long getUserTypeId() {
		return userTypeId;
	}

	public void setUserTypeId(Long userTypeId) {
		this.userTypeId = userTypeId;
	}

	public Integer getUserType() {
		return userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
	}

	public Byte getBeEnabled() {
		return beEnabled;
	}

	public void setBeEnabled(Byte beEnabled) {
		this.beEnabled = beEnabled;
	}

	public Byte getBeSupervisor() {
		return beSupervisor;
	}

	public void setBeSupervisor(Byte beSupervisor) {
		this.beSupervisor = beSupervisor;
	}

	public String getIdentityNumber() {
		return identityNumber;
	}

	public void setIdentityNumber(String identityNumber) {
		this.identityNumber = identityNumber;
	}

	public String getNewPhone() {
		return newPhone;
	}

	public void setNewPhone(String newPhone) {
		this.newPhone = newPhone;
	}

	public String getChangePnMethod() {
		return changePnMethod;
	}

	public void setChangePnMethod(String changePnMethod) {
		this.changePnMethod = changePnMethod;
	}

	public String getNewPwd() {
		return newPwd;
	}

	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getVerifyCode() {
		return verifyCode;
	}

	public void setVerifyCode(String verifyCode) {
		this.verifyCode = verifyCode;
	}


	public Long getCountyId() {
		return countyId;
	}

	public void setCountyId(Long countyId) {
		this.countyId = countyId;
	}


	public Long getStoreId() {
		return storeId;
	}

	public void setStoreId(Long storeId) {
		this.storeId = storeId;
	}


	public String getVerifycode() {
		return verifycode;
	}

	public void setVerifycode(String verifycode) {
		this.verifycode = verifycode;
	}

	public String getImei() {
		return imei;
	}

	public void setImei(String imei) {
		this.imei = imei;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getCodeType() {
		return codeType;
	}

	public void setCodeType(String codeType) {
		this.codeType = codeType;
	}


	public String getAppid() {
		return appid;
	}

	public void setAppid(String appid) {
		this.appid = appid;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	public String getVerifyInfo() {
		return verifyInfo;
	}

	public void setVerifyInfo(String verifyInfo) {
		this.verifyInfo = verifyInfo;
	}

    public List<ExpStoreBean> getExps() {
        return exps;
    }

    public void setExps(List<ExpStoreBean> exps) {
        this.exps = exps;
    }

	public String getVerifyRemark() {
		return verifyRemark;
	}

	public void setVerifyRemark(String verifyRemark) {
		this.verifyRemark = verifyRemark;
	}

	public UserInfo(Long userId, String nickname, String userName,
					String accountPwd, Byte verifyStatus, String phone, String gender,
					Byte age, Long countyId, Date signupTime, String signupIp,
					String icon, Byte beDeleted, Long userTypeId, Integer userType,
					Byte beEnabled, Byte beSupervisor, Long storeId,
					String identityNumber, String newPhone, String newPwd,
					String changePnMethod, String verifycode, String imei, String code,
					String codeType, String token, String appid, String format,
					String version, String timestamp, String sign, String location,
					String storeCode, String storeName, Integer type, String verifyCode2) {
		super();
		this.userId = userId;
		this.nickname = nickname;
		this.userName = userName;
		this.accountPwd = accountPwd;
		this.verifyStatus = verifyStatus;
		this.phone = phone;
		this.gender = gender;
		this.age = age;
		this.countyId = countyId;
		this.signupTime = signupTime;
		this.signupIp = signupIp;
		this.icon = icon;
		this.beDeleted = beDeleted;
		this.userTypeId = userTypeId;
		this.userType = userType;
		this.beEnabled = beEnabled;
		this.beSupervisor = beSupervisor;
		this.storeId = storeId;
		this.identityNumber = identityNumber;
		this.newPhone = newPhone;
		this.newPwd = newPwd;
		this.changePnMethod = changePnMethod;
		this.verifycode = verifycode;
		this.imei = imei;
		this.code = code;
		this.codeType = codeType;
		this.token = token;
		this.appid = appid;
		this.format = format;
		this.version = version;
		this.timestamp = timestamp;
		this.sign = sign;
		this.location = location;
		this.storeCode = storeCode;
		this.storeName = storeName;
		this.type = type;
		verifyCode = verifyCode2;
	}

	@Override
	public String toString() {
		return "UserInfo [userId=" + userId + ", nickname=" + nickname
				+ ", userName=" + userName + ", accountPwd=" + accountPwd
				+ ", verifyStatus=" + verifyStatus + ", phone=" + phone
				+ ", gender=" + gender + ", age=" + age + ", countyId="
				+ countyId + ", signupTime=" + signupTime + ", signupIp="
				+ signupIp + ", icon=" + icon + ", beDeleted=" + beDeleted
				+ ", userTypeId=" + userTypeId + ", userType=" + userType
				+ ", beEnabled=" + beEnabled + ", beSupervisor=" + beSupervisor
				+ ", storeId=" + storeId + ", identityNumber=" + identityNumber
				+ ", newPhone=" + newPhone + ", newPwd=" + newPwd
				+ ", changePnMethod=" + changePnMethod + ", verifycode="
				+ verifycode + ", imei=" + imei + ", code=" + code
				+ ", codeType=" + codeType + ", token=" + token + ", appid="
				+ appid + ", format=" + format + ", version=" + version
				+ ", timestamp=" + timestamp + ", sign=" + sign + ", location="
				+ location + ", storeCode=" + storeCode + ", storeName="
				+ storeName + ", type=" + type + ", ecs=" + ecs + ", axps="
				+ axps + ", verifyCode=" + verifyCode + ", realName="
				+ realName + ",headPhone=" + headPhone + ",expressCompanyId="+expressCompanyId+"]";
	}


}
