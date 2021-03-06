/**  
 * Copyright (c) 2016, 指端科技.
 */



package com.rofour.baseball.controller.model.manager;

import java.io.Serializable;

/**
 * @ClassName: TbMenuInfo
 * @Description: 菜单DTO类,用作接口返回实体
 * @author xl
 * @date 2016年3月26日 下午1:43:33
 *
 */

public class MenuInfo implements Serializable {

	private static final long serialVersionUID = -5789523014945117136L;
	/**
	 * 编码
	 */
	private Long menuId;
	/**
	 * 编码
	 */
	private String menuIdStr;
	/**
	 * 路径
	 */
	private String menuCtrlPath;
	/**
	 * 菜单项状态
	 */
	private String menuStatusCode;
	/**
	 * 菜单项开发状态
	 */
	private String menuDevStatusCode;
	/**
	 * 是否叶子
	 */
	private Byte beLeaf;
	/**
	 * 菜单项标题
	 */
	private String caption;
	/**
	 * 菜单项帮助
	 */
	private String hint;
	/**
	 * 上级菜单Id
	 */
	private Long parentId;
	/**
	 * 菜单项类型
	 */
	private String menuTypeId;
	/**
	 * 兄弟排序号
	 */
	private Integer siblingSortNo;
	/**
	 * Dll文件
	 */
	private String dllFile;
	/**
	 * 图片文件
	 */
	private String picFile;
	/**
	 * 热键
	 */
	private String hotKey;
	/**
	 * 是否必须显示
	 */
	private Byte beMandatory;
	/**
	 * 所属部门组
	 */
	private Integer belongSiteKind;
	/**
	 * 动作
	 */
	private String action;

	public MenuInfo(Long menuId, String menuCtrlPath, String menuStatusCode, String menuDevStatusCode, Byte beLeaf,
			String caption, String hint, Long parentId, String menuTypeId, Integer siblingSortNo, String dllFile,
			String picFile, String hotKey, Byte beMandatory, Integer belongSiteKind, String action) {
		this.menuId = menuId;
		this.menuCtrlPath = menuCtrlPath;
		this.menuStatusCode = menuStatusCode;
		this.menuDevStatusCode = menuDevStatusCode;
		this.beLeaf = beLeaf;
		this.caption = caption;
		this.hint = hint;
		this.parentId = parentId;
		this.menuTypeId = menuTypeId;
		this.siblingSortNo = siblingSortNo;
		this.dllFile = dllFile;
		this.picFile = picFile;
		this.hotKey = hotKey;
		this.beMandatory = beMandatory;
		this.belongSiteKind = belongSiteKind;
		this.action = action;
	}

	public MenuInfo() {
		super();
	}

	public Long getMenuId() {
		return menuId;
	}

	public MenuInfo setMenuId(Long menuId) {
		this.menuId = menuId;
		setMenuIdStr(String.valueOf(menuId));
		return this;
	}

	public String getMenuCtrlPath() {
		return menuCtrlPath;
	}

	public void setMenuCtrlPath(String menuCtrlPath) {
		this.menuCtrlPath = menuCtrlPath == null ? null : menuCtrlPath.trim();
	}

	public String getMenuStatusCode() {
		return menuStatusCode;
	}

	public void setMenuStatusCode(String menuStatusCode) {
		this.menuStatusCode = menuStatusCode;
	}

	public String getMenuDevStatusCode() {
		return menuDevStatusCode;
	}

	public void setMenuDevStatusCode(String menuDevStatusCode) {
		this.menuDevStatusCode = menuDevStatusCode;
	}

	public Byte getBeLeaf() {
		return beLeaf;
	}

	public void setBeLeaf(Byte beLeaf) {
		this.beLeaf = beLeaf;
	}

	public String getCaption() {
		return caption;
	}

	public void setCaption(String caption) {
		this.caption = caption == null ? null : caption.trim();
	}

	public String getHint() {
		return hint;
	}

	public void setHint(String hint) {
		this.hint = hint == null ? null : hint.trim();
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	public String getMenuTypeId() {
		return menuTypeId;
	}

	public void setMenuTypeId(String menuTypeId) {
		this.menuTypeId = menuTypeId;
	}

	public Integer getSiblingSortNo() {
		return siblingSortNo;
	}

	public void setSiblingSortNo(Integer siblingSortNo) {
		this.siblingSortNo = siblingSortNo;
	}

	public String getDllFile() {
		return dllFile;
	}

	public void setDllFile(String dllFile) {
		this.dllFile = dllFile == null ? null : dllFile.trim();
	}

	public String getPicFile() {
		return picFile;
	}

	public void setPicFile(String picFile) {
		this.picFile = picFile == null ? null : picFile.trim();
	}

	public String getHotKey() {
		return hotKey;
	}

	public void setHotKey(String hotKey) {
		this.hotKey = hotKey == null ? null : hotKey.trim();
	}

	public Byte getBeMandatory() {
		return beMandatory;
	}

	public void setBeMandatory(Byte beMandatory) {
		this.beMandatory = beMandatory;
	}

	public Integer getBelongSiteKind() {
		return belongSiteKind;
	}

	public void setBelongSiteKind(Integer belongSiteKind) {
		this.belongSiteKind = belongSiteKind;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action == null ? null : action.trim();
	}

	public String getMenuIdStr() {
		return menuIdStr;
	}

	public MenuInfo setMenuIdStr(String menuIdStr) {
		this.menuIdStr = menuIdStr;
		return this;
	}
	
}