package com.xinzhen.controller;

import com.xinzhen.config.FundProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/zookeeper")
@RefreshScope // 必须添加，否则不会自动刷新name的值
public class ZookeeperController {

    /**
     * 基金接口属性配置获取接口
     */
    @Autowired
    @Qualifier("fundProperties")
    private FundProperties fundProperties;


    @GetMapping("/getRedisHost")
    public String test() {
      return "数据库连接地址："+fundProperties;
    }
}
