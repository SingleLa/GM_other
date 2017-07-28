package com.rafo.weixin.mapper.game;

import com.rafo.weixin.model.game.TurnTable;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface TurnTableMapper {
    int deleteByPrimaryKey(String id);

    int insert(TurnTable record);

    int insertSelective(TurnTable record);

    TurnTable selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(TurnTable record);

    int updateByPrimaryKey(TurnTable record);

    List<TurnTable> selectAll();

    List<TurnTable> selectByTurnTable(TurnTable record);

    void updateReceive(@Param("receive") Integer receive,@Param("id") String id,@Param("receivetime") Date receivetime);


}