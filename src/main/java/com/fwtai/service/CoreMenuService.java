package com.fwtai.service;

import com.fwtai.dao.DaoBase;
import com.fwtai.tool.ToolClient;
import com.fwtai.tool.ToolMenu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @作者 田应平
 * @版本 v1.0
 * @创建时间 2018-06-01 8:58
 * @QQ号码 444141300
 * @官网 http://www.fwtai.com
*/
@Service
public class CoreMenuService{

    @Autowired
    private DaoBase daoBase;

    /**获取List<HashMap*/
    private final List<HashMap<String,Object>> queryListMap(){
        try{
            return daoBase.queryForListHashMap("sys_code.queryMenu",null);
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    /**获取数据菜单*/
    public String queryAllMenu(){
        try{
            final List<HashMap<String,Object>> allMenu = queryListMap();
            if(allMenu != null && allMenu.size() > 0){
                final List<HashMap<String,Object>> rootMenu = new ToolMenu("id","pid","children").initMenu(allMenu,"88888888888888888888888888888888");
                return ToolClient.queryJson(rootMenu);
            }
            return ToolClient.queryJson(null);
        }catch(Exception e){
            e.printStackTrace();
            return ToolClient.exceptionJson("系统出现异常!");
        }
    }
}