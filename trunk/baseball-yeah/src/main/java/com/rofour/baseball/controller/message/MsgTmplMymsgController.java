/**
 * Copyright (c) 2016, 指端科技.
 */
package com.rofour.baseball.controller.message;

import com.rofour.baseball.controller.base.BaseController;
import com.rofour.baseball.controller.model.DataGrid;
import com.rofour.baseball.controller.model.ResultInfo;
import com.rofour.baseball.controller.model.SelectModel;
import com.rofour.baseball.controller.model.message.MsgTmplMymsgInfo;
import com.rofour.baseball.exception.BusinessException;
import com.rofour.baseball.service.message.MsgTmplMymsgService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName: MsgTmplMymsgController
 * @Description: 用户消息模板操作接口
 * @author: xulang
 * @date: 2016年09月13日 13:43
 */
@Controller
@RequestMapping("/message/msgtmplmymsg")
public class MsgTmplMymsgController extends BaseController {

    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    @Qualifier("msgTmplMymsgService")
    private MsgTmplMymsgService msgTmplMymsgService;

    /**
     * 查询列表
     *
     * @param request
     * @param response
     * @param msgType
     * @param limit
     * @param offset
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public DataGrid<MsgTmplMymsgInfo> queryMsgTmplSmsGrid(HttpServletRequest request, HttpServletResponse response, Integer msgType, Integer limit, Integer offset) {
        List<MsgTmplMymsgInfo> list = msgTmplMymsgService.selectAll(msgType, limit, offset);
        DataGrid<MsgTmplMymsgInfo> dataList = new DataGrid<>();
        dataList.setRows(list);
        dataList.setTotal(msgTmplMymsgService.selectAllCount(msgType));
        return dataList;
    }

    /**
     * 查询列表--下拉框数据源
     *
     * @param request
     * @param response
     * @param msgType
     */
    @RequestMapping(value = "/sellist", method = RequestMethod.GET)
    public void getMsgTmplSmsSellList(HttpServletRequest request, HttpServletResponse response, Integer msgType) {
        List<SelectModel> sellist = new ArrayList<>();
        List<MsgTmplMymsgInfo> list = msgTmplMymsgService.selectAll(msgType, null, null);
        for (MsgTmplMymsgInfo item : list) {
            SelectModel temp = new SelectModel();
            temp.setText(item.getTmplName());
            temp.setId(item.getId().toString());
            sellist.add(temp);
        }
        writeJson(sellist, response);
    }

    /**
     * 新增
     *
     * @param request
     * @param response
     * @param msgTmplMymsgInfo
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo addMsgTmplSms(HttpServletRequest request, HttpServletResponse response, MsgTmplMymsgInfo msgTmplMymsgInfo) {
        ResultInfo result = new ResultInfo();
        result.setSuccess(0);
        result.setMessage("操作成功!");
        if (msgTmplMymsgInfo == null) {
            result.setSuccess(-1);
            result.setMessage("操作失败，参数不能为空!");
            return result;
        }
        try {
            int id = msgTmplMymsgService.insert(msgTmplMymsgInfo);
            if (id <= 0) {
                result.setSuccess(-1);
                result.setMessage("操作失败，添加数据失败!");
            }
        } catch (BusinessException e) {
            logger.error(e.getMessage(), e);
            result.setSuccess(-1);
            result.setMessage("占位符不存在");
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            result.setSuccess(-1);
            result.setMessage("操作失败!");
        } finally {
            return result;
        }
    }

    /**
     * 更新
     *
     * @param request
     * @param response
     * @param info
     * @return
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo updateMsgTmplSms(HttpServletRequest request, HttpServletResponse response, MsgTmplMymsgInfo info) {
        ResultInfo result = new ResultInfo();
        result.setSuccess(0);
        result.setMessage("操作成功!");
        if (info == null) {
            result.setSuccess(-1);
            result.setMessage("操作失败，参数不能为空!");
            return result;
        }
        try {
            msgTmplMymsgService.update(info);
        } catch (BusinessException e) {
            logger.error(e.getMessage(), e);
            result.setSuccess(-1);
            result.setMessage("占位符不存在");
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            result.setSuccess(-1);
            result.setMessage("操作失败!");
        } finally {
            return result;
        }
    }

    /**
     * 删除
     *
     * @param request
     * @param response
     * @param id
     * @return
     */
    @RequestMapping(value = "/del", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo delMsgTmplSms(HttpServletRequest request, HttpServletResponse response, Integer id) {
        ResultInfo result = new ResultInfo();
        result.setSuccess(0);
        result.setMessage("操作成功!");
        if (id == null) {
            result.setSuccess(-1);
            result.setMessage("操作失败，参数id不能为空!");
        }
        try {
            msgTmplMymsgService.delete(id);
        } catch (Exception e) {
            result.setSuccess(-1);
            result.setMessage("操作失败，删除数据失败!");
            logger.error(e.getMessage(), logger);
        }
        return result;
    }
}
