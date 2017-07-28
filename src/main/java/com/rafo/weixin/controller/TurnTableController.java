package com.rafo.weixin.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rafo.weixin.Enum.TurnTableEnum;
import com.rafo.weixin.mapper.game.TurnTableMapper;
import com.rafo.weixin.model.PageModel;
import com.rafo.weixin.model.game.TurnTable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/7/27.
 */
@Controller
public class TurnTableController {

    @Autowired
    TurnTableMapper turnTableMapper;

    @RequestMapping("turnTableList.do")
    public String turnTableList(Model model,HttpServletRequest request){
        return "turnTable/list";
    }
    @RequestMapping("turnTable.do")
    @ResponseBody
    public Map<String, Object> turnTable(HttpServletRequest request ,TurnTable turnTable){
        Map<String, Object> result = new HashMap<String, Object>();
        PageModel pageModel = new PageModel(request);
        String order = TurnTableEnum.getName(Integer.parseInt(pageModel.getOrder()));
        PageHelper.orderBy(order+" "+pageModel.getDir());
        PageHelper.startPage(pageModel.getStart(),pageModel.getLength());
        turnTable.setId(pageModel.getPattern());
        List<TurnTable> list = turnTableMapper.selectByTurnTable(turnTable);
        PageInfo<TurnTable> pageInfo = new PageInfo<TurnTable>(list);
        result.put("draw", pageModel.getDraw());
        result.put("recordsTotal", pageInfo.getTotal());
        result.put("recordsFiltered", pageInfo.getTotal());
        result.put("data",pageInfo.getList());
        return  result;
    }

    @RequestMapping("updateReceive.do")
    @ResponseBody
    public Map<String, Object> updateReceive(Model model, HttpServletRequest request,String id){
        Map<String, Object> result = new HashMap<String, Object>();
        TurnTable turnTable = turnTableMapper.selectByPrimaryKey(id);
        if(turnTable.getAwardid() == 3){
            turnTable.setReceivetime(new Date());
            turnTable.setReceive((byte)1);
            turnTableMapper.updateByPrimaryKeySelective(turnTable);
            result.put("success",true);
            result.put("msg","修改成功");
        }else{
            if(turnTable.getTaskdone() == 0){
                result.put("success",false);
                result.put("msg","任务没有完成");
                return result;
            }else{
                turnTable.setReceivetime(new Date());
                turnTable.setReceive((byte)1);
                turnTableMapper.updateByPrimaryKeySelective(turnTable);
                result.put("success",true);
                result.put("msg","修改成功");
            }
        }
        return result;
    }
}
