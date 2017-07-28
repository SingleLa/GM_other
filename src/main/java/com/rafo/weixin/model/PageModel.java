package com.rafo.weixin.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by Administrator on 2017/3/21.
 */
public class PageModel {
    private  int start=0;
    private int length=10;
    private String pattern=null;
    private String draw="1";
    private String order = null;
    private String dir = null;
    private String account = null;

    public PageModel(HttpServletRequest request){
        HttpSession session = request.getSession();
        this.account = (String) session.getAttribute("account");
        Map<String,String[]> params = request.getParameterMap();
        for(String attr:params.keySet()){
            String[] val=params.get(attr);

            if(attr.equals("start"))
                this.start=Integer.parseInt(val[0])>0?Integer.parseInt(val[0]):1 ;
            if(attr.equals("length"))
                this.length=Integer.parseInt(val[0]);
            if(attr.equals("search[value]"))
                this.pattern="".equals(val[0])?null:val[0];
            if(attr.equals("draw"))
                this.draw=val[0];
            if(attr.equals("order[0][column]"))
                this.order=val[0];
            if(attr.equals("order[0][dir]"))
                this.dir=val[0];
        }
//        if(order != null){
//            order = params.get("columns["+order+"][data]")[0];
//        }
    }

    public int getLength() {
        return length;
    }

    public int getStart() {
        return start/length+1;
    }

    public String getDir() {
        return dir;
    }

    public String getDraw() {
        return draw;
    }

    public String getOrder() {
        return order;
    }

    public String getPattern() {
        return pattern;
    }

    public void setDir(String dir) {
        this.dir = dir;
    }

    public void setDraw(String draw) {
        this.draw = draw;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public void setPattern(String pattern) {
        this.pattern = pattern;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }
}
