package com.rafo.weixin.model.game;

import org.apache.commons.lang.StringUtils;

import java.util.Date;

public class TurnTable {
    private String id;

    private String playerid;

    private Integer awardid;

    private Integer awardnum;

    private Byte taskdone;

    private Byte receive;

    private Date drawtime;

    private Date receivetime;

    private String startDrawtime;

    private String endDrawtime;

    private String startReceivetime;

    private String endReceivetime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = StringUtils.isBlank(id) ? null : id.trim();
    }

    public String getPlayerid() {
        return playerid;
    }

    public void setPlayerid(String playerid) {
        this.playerid = StringUtils.isBlank(playerid) ? null : playerid.trim();
    }

    public Integer getAwardid() {
        return awardid;
    }

    public void setAwardid(Integer awardid) {
        this.awardid = awardid;
    }

    public Integer getAwardnum() {
        return awardnum;
    }

    public void setAwardnum(Integer awardnum) {
        this.awardnum = awardnum;
    }

    public Byte getTaskdone() {
        return taskdone;
    }

    public void setTaskdone(Byte taskdone) {
        this.taskdone = taskdone;
    }

    public Byte getReceive() {
        return receive;
    }

    public void setReceive(Byte receive) {
        this.receive = receive;
    }

    public Date getDrawtime() {
        return drawtime;
    }

    public void setDrawtime(Date drawtime) {
        this.drawtime = drawtime;
    }

    public Date getReceivetime() {
        return receivetime;
    }

    public void setReceivetime(Date receivetime) {
        this.receivetime = receivetime;
    }

    public String getStartDrawtime() {
        return startDrawtime;
    }

    public void setStartDrawtime(String startDrawtime) {
        this.startDrawtime = StringUtils.isBlank(startDrawtime) ? null : startDrawtime.trim();
    }

    public String getEndDrawtime() {
        return endDrawtime;
    }

    public void setEndDrawtime(String endDrawtime) {
        this.endDrawtime = StringUtils.isBlank(endDrawtime) ? null : endDrawtime.trim();
    }

    public String getStartReceivetime() {
        return startReceivetime;
    }

    public void setStartReceivetime(String startReceivetime) {
        this.startReceivetime = StringUtils.isBlank(startReceivetime) ? null : startReceivetime.trim();
    }

    public String getEndReceivetime() {
        return endReceivetime;
    }

    public void setEndReceivetime(String endReceivetime) {
        this.endReceivetime = StringUtils.isBlank(endReceivetime) ? null : endReceivetime.trim();
    }
}