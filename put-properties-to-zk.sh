#!/usr/bin/env bash

## zkCli.sh

### Dev Environment

    create /config ""
    create /config/tppService,dev ""
    create /config/tppService,dev/spring.datasource.url jdbc:mysql://10.0.10.233:3306/xinzhen_oct?useUnicode=true&characterEncoding=utf-8
    create /config/tppService,dev/spring.datasource.username dev
    create /config/tppService,dev/spring.datasource.password Yvti3yZ8U9tmcCkQdRFA
    create /config/tppService,dev/spring.datasource.driver-class-name com.mysql.jdbc.Driver

    create /config/tppService,dev/spring.redis.database 0
    create /config/tppService,dev/spring.redis.host 10.0.10.234
    create /config/tppService,dev/spring.redis.port 6379
    create /config/tppService,dev/spring.redis.password ePgBckhguJTk2KyaoFYH
    create /config/tppService,dev/spring.redis.timeout 0
    create /config/tppService,dev/spring.redis.pool.max-active 8
    create /config/tppService,dev/spring.redis.pool.max-idle 8
    create /config/tppService,dev/spring.redis.pool.min-idle 0
    create /config/tppService,dev/spring.redis.pool.max-wait -1

    create /config/tppService,dev/mybatis.type-aliases-package com.xinzhentech.user.common.domain
    create /config/tppService,dev/mybatis.mapper-locations mappers/*

    create /config/tppService,dev/logging.level.com.xinzhentech DEBUG

    create /config/tppService,dev/spring.mvc.throw-exception-if-no-handler-found true
    create /config/tppService,dev/spring.resources.add-mappings false
    create /config/tppService,dev/spring.server.zkAddress 10.240.184.24:2181

    create /config/tppService,dev/idWorker.group default
    create /config/tppService,dev/idWorker.serverList 10.240.184.24:2181
    create /config/tppService,dev/idWorker.namespace idWorker
    create /config/tppService,dev/idWorker.baseSleepTimeMillisSeconds 1000
    create /config/tppService,dev/idWorker.maxSleepTimeMillisSeconds 3000
    create /config/tppService,dev/idWorker.maxRetries 3
    create /config/tppService,dev/idWorker.sessionTimeoutMillisSeconds 3000
    create /config/tppService,dev/idWorker.connectionTimeoutMillisSeconds 3000
    create /config/tppService,dev/idWorker.digest ""
  
    ##电子签章 安心签
    create /config/tppService,dev/sign.ax.platId 5639151B1D8E5814E05311016B0A7B8D
    create /config/tppService,dev/sign.ax.client.jks /usr/local/octopus/client_rdkj_new.jks
    create /config/tppService,dev/sign.ax.url https://210.74.42.33:9443/FEP/
    create /config/tppService,dev/sign.ax.jks_pwd 111111
    create /config/tppService,dev/sign.alias "anxinsign@深圳信真科技有限公司@n91440300ma5ejwkr8q@1 (cfca test oca1)"
    create /config/tppService,dev/sign.channel 信真科技
    create /config/tppService,dev/sign.ax.filePath /usr/local/octopus/sign/axFile

    ##电子签章 E签宝
    create /config/tppService,dev/sign.e.project.id "1111563517"
    create /config/tppService,dev/sign.e.project.secret "95439b0863c241c63a861b87d1e647b7"
    create /config/tppService,dev/sign.e.api.url http://121.40.164.61:8080/tgmonitor/rest/app!getAPIInfo2
    create /config/tppService,dev/sign.e.filePath /usr/local/octopus/sign/eFile

    ##电子签章 上上签
    create /config/tppService,dev/sign.bestsign.serviceHost https://openapi.bestsign.info/openapi/v2
    create /config/tppService,dev/sign.bestsign.baseUrl /openapi/v2
    create /config/tppService,dev/sign.bestsign.developId 1993165268431405603
    create /config/tppService,dev/sign.bestsign.privateKeyPath /tpp/bestsign/prikey.PIK

    ##百融征信
    create /config/tppService,dev/credit.br.crawler.url http://pigeon.100credit.com/pigeon/v1/api
    create /config/tppService,dev/credit.br.login.username xinzhen
    create /config/tppService,dev/credit.br.login.pwd xinzhen
    create /config/tppService,dev/credit.br.apiCode 3000841
    create /config/tppService,dev/credit.br.login.url https://api.100credit.cn/bankServer2/user/login.action
    #是否使用重试机制(重试3次,每次重试前会睡眠200毫秒)
    create /config/tppService,dev/credit.br.isRetry true
    
    ##OCR
    create /config/tppService,dev/ocr_api_id 13cd38fdb13e420cbace15ac99cabed6
    create /config/tppService,dev/ocr_api_secret cc1a6ded79ad42cabaabd7793c96242f
    create /config/tppService,dev/ocr_verification_url https://cloudapi.linkface.cn/identity/historical_selfie_verification


    #通联支付
    create /config/tppService,dev/allinpay.url https://113.108.182.3/aipg/ProcessServlet
    create /config/tppService,dev/allinpay.user.name 20060400000044502
    create /config/tppService,dev/allinpay.user.pass `12qwe
    create /config/tppService,dev/allinpay.merchant.id 200604000000445
    create /config/tppService,dev/allinpay.cert.isResource false
    create /config/tppService,dev/allinpay.cert.path /usr/local/octopus/20060400000044502.p12
    create /config/tppService,dev/allinpay.cert.pass 111111
    create /config/tppService,dev/allinpay.cert.md5key "test"
    create /config/tppService,dev/allinpay.gateway.url http://ceshi.allinpay.com/gateway/index.do
    create /config/tppService,dev/allinpay.mchtoq.url http://ceshi.allinpay.com/mchtoq/index.do
    
    #商汤
    create /config/tppService,dev/st.api.id 13cd38fdb13e420cbace15ac99cabed6
    create /config/tppService,dev/st.api.secret cc1a6ded79ad42cabaabd7793c96242f
    create /config/tppService,dev/st.idcard.url https://cloudapi.linkface.cn/data/verify_id_name
    
    #九江银行
    create /config/tppService,dev/jiujiang.powerpay.url 10.15.12.91
    create /config/tppService,dev/jiujiang.powerpay.port 18001
    create /config/tppService,dev/jiujiang.powercore.url 10.15.12.92
    create /config/tppService,dev/jiujiang.powercore.port 18000
    create /config/tppService,dev/jiujiang.platform.no 256489
    create /config/tppService,dev/jiujiang.platform.shortname XZGS
    create /config/tppService,dev/jiujiang.asset.channelno  J00000001
    create /config/tppService,dev/jiujiang.asseturl http://116.211.87.4:44032
    create /config/tppService,dev/jiujiang.asset.publicKeyPath /tpp/jjb/J00000001.PUK
    create /config/tppService,dev/jiujiang.asset.privateKeyPath /tpp/jjb/J00000001.PIK


	#大汉三通    
    create /config/tppService,dev/sms.dahantc.url http://www.dh3t.com/json/sms/Submit
    create /config/tppService,dev/sms.dahantc.account dh76231
    create /config/tppService,dev/sms.dahantc.pwd h33Oy8xj
    
    #创蓝
    create /config/tppService,dev/sms.cl.url http://smsbj1.253.com/msg/send/json
    create /config/tppService,dev/sms.cl.account N4276342
    create /config/tppService,dev/sms.cl.pwd Bjcl688bjfl8
    
    #助通科技    
    create /config/tppService,dev/sms.zt.url http://www.ztsms.cn/sendNSms.do
    create /config/tppService,dev/sms.zt.account xz666
    create /config/tppService,dev/sms.zt.pwd xLLryiFF
    create /config/tppService,dev/sms.zt.productid.varcode 676767
    create /config/tppService,dev/sms.zt.productid.notice 676766
    
	#阿里云
	#过期时间，单位：秒
    create /config/tppService,dev/sms.aliyun.outTime 10000
    #间隔时间，单位：秒
    create /config/tppService,dev/sms.aliyun.intervalTime 10000
    create /config/tppService,dev/sms.aliyun.accessKeyId LTAIoSJ8wgK6Ck9j
    create /config/tppService,dev/sms.aliyun.accessKeySecret i5jFGTCYXRnC8GwUSlRLAMPwTkfBhl
    #产品名称:云通信短信API产品,开发者无需替换
    create /config/tppService,dev/sms.aliyun.product Dysmsapi
    #产品域名,开发者无需替换
    create /config/tppService,dev/sms.aliyun.domain dysmsapi.aliyuncs.com

    # 大兴安岭
    create /config/tppService,dev/sms.dxal.username 101004
    create /config/tppService,dev/sms.dxal.password 13089906050

    #通华基金
    create /config/tppService,dev/tonghua.filedown.posturl http://116.228.64.55:28082/AppStsWeb/service/orgDownloadReconFile.action
    create /config/tppService,dev/upload.statics.url https://statics-boj-dev.xinzhentech.com
    create /config/tppService,dev/tonghua.callback.url http://hongwei.viphk.ngrok.org
    create /config/tppService,dev/tonghua.commontrade.posturl http://116.228.64.55:28082/AppStsWeb/service/acquireAction.action
#   create /config/tppService,dev/tonghua.filedown.path /home/downn/
    create /config/tppService,dev/tonghua.filedown.path D:\\zip\\
    create /config/tppService,dev/tonghua.foundation.inst_id 78470000
    create /config/tppService,dev/tonghua.PriKey C:\\tpp\\fps-111111.pfx
    create /config/tppService,dev/tonghua.PriKeyPassword 111111
    create /config/tppService,dev/tonghua.PubKey C:\\tpp\\fps.cer
    create /config/tppService,dev/tonghua.ed_switch 1
    create /config/tppService,dev/liantai.foundation.inst_id F00000283
    create /config/tppService,dev/liantai.commontrade.posturl http://test.66toutou.com:16899/api-gateway

    #RabbitMQ
    #create /config/tppService,dev/spring.rabbitmq.host 47.98.151.171
    create /config/tppService,dev/spring.rabbitmq.host 10.240.212.224
    create /config/tppService,dev/spring.rabbitmq.port 5672
    #create /config/tppService,dev/spring.rabbitmq.username ouzuting
    create /config/tppService,dev/spring.rabbitmq.username rabbit
    #create /config/tppService,dev/spring.rabbitmq.password ouyang2961
    create /config/tppService,dev/spring.rabbitmq.password aTjHMj7opZ3d5Kw6

    #是否为调整模式 1是 0不是
    create /config/tppService,dev/isDebug 1


    
    ####################test#####################3
    create /config/tppService,test ""
    create /config/tppService,test/spring.datasource.url jdbc:mysql://10.0.11.93:3306/xinzhen_oct?useUnicode=true&characterEncoding=utf-8
    create /config/tppService,test/spring.datasource.username xinzhentech
    create /config/tppService,test/spring.datasource.password jJ2s2Wdjh8eitMJS
    create /config/tppService,test/spring.datasource.driver-class-name com.mysql.jdbc.Driver

    create /config/tppService,test/spring.redis.database 0
    create /config/tppService,test/spring.redis.host 10.0.11.94
    create /config/tppService,test/spring.redis.port 6379
    create /config/tppService,test/spring.redis.password LZkXhMm33SXWb8M2
    create /config/tppService,test/spring.redis.timeout 0
    create /config/tppService,test/spring.redis.pool.max-active 8
    create /config/tppService,test/spring.redis.pool.max-idle 8
    create /config/tppService,test/spring.redis.pool.min-idle 0
    create /config/tppService,test/spring.redis.pool.max-wait -1

    create /config/tppService,test/mybatis.type-aliases-package com.xinzhentech.user.common.domain
    create /config/tppService,test/mybatis.mapper-locations mappers/*

    create /config/tppService,test/logging.level.com.xinzhentech DEBUG

    create /config/tppService,test/spring.mvc.throw-exception-if-no-handler-found true
    create /config/tppService,test/spring.resources.add-mappings false
    create /config/tppService,test/spring.server.zkAddress 10.0.11.95:2181

    create /config/tppService,test/idWorker.group default
    create /config/tppService,test/idWorker.serverList 10.0.11.95:2181
    create /config/tppService,test/idWorker.namespace idWorker
    create /config/tppService,test/idWorker.baseSleepTimeMillisSeconds 1000
    create /config/tppService,test/idWorker.maxSleepTimeMillisSeconds 3000
    create /config/tppService,test/idWorker.maxRetries 3
    create /config/tppService,test/idWorker.sessionTimeoutMillisSeconds 3000
    create /config/tppService,test/idWorker.connectionTimeoutMillisSeconds 3000
    create /config/tppService,test/idWorker.digest ""
	
	
	
	##电子签章 安心签
    create /config/tppService,test/sign.ax.platId 5639151B1D8E5814E05311016B0A7B8D
    create /config/tppService,test/sign.ax.client.jks /usr/local/octopus/client_rdkj_new.jks
    create /config/tppService,test/sign.ax.url https://210.74.42.33:9443/FEP/
    create /config/tppService,test/sign.ax.jks_pwd 111111
    create /config/tppService,test/sign.alias "anxinsign@深圳信真科技有限公司@n91440300ma5ejwkr8q@1 (cfca test oca1)"
    create /config/tppService,test/sign.channel 信真科技
    create /config/tppService,test/sign.ax.filePath /usr/local/octopus/sign/axFile

    ##电子签章 E签宝
    create /config/tppService,test/sign.e.project.id "1111563517"
    create /config/tppService,test/sign.e.project.secret "95439b0863c241c63a861b87d1e647b7"
    create /config/tppService,test/sign.e.api.url http://121.40.164.61:8080/tgmonitor/rest/app!getAPIInfo2
    create /config/tppService,test/sign.e.filePath  /usr/local/octopus/sign/eFile

    ##电子签章 上上签
    create /config/tppService,test/sign.e.bestsign.serviceHost https://openapi.bestsign.info/openapi/v2
    create /config/tppService,test/sign.e.bestsign.baseUrl /openapi/v2
    create /config/tppService,test/sign.e.bestsign.developId 1993165268431405603
    create /config/tppService,test/sign.bestsign.privateKeyPath /tpp/bestsign/prikey.PIK
    
    ##百融征信
    create /config/tppService,test/credit.br.crawler.url http://pigeon.100credit.com/pigeon/v1/api
    create /config/tppService,test/credit.br.login.username xinzhen
    create /config/tppService,test/credit.br.login.pwd xinzhen
    create /config/tppService,test/credit.br.apiCode 3000841
    create /config/tppService,test/credit.br.login.url https://api.100credit.cn/bankServer2/user/login.action
    #是否使用重试机制(重试3次,每次重试前会睡眠200毫秒)
    create /config/tppService,test/credit.br.isRetry true
    
    ##OCR
    create /config/tppService,test/ocr_api_id 13cd38fdb13e420cbace15ac99cabed6
    create /config/tppService,test/ocr_api_secret cc1a6ded79ad42cabaabd7793c96242f
    create /config/tppService,test/ocr_verification_url https://cloudapi.linkface.cn/identity/historical_selfie_verification


    #通联支付
    create /config/tppService,test/allinpay.url https://113.108.182.3/aipg/ProcessServlet
    create /config/tppService,test/allinpay.user.name 20060400000044502
    create /config/tppService,test/allinpay.user.pass `12qwe
    create /config/tppService,test/allinpay.merchant.id 200604000000445
    create /config/tppService,test/allinpay.cert.isResource false
    create /config/tppService,test/allinpay.cert.path /usr/local/octopus/20060400000044502.p12
    create /config/tppService,test/allinpay.cert.pass 111111
    create /config/tppService,test/allinpay.cert.md5key "test"
    create /config/tppService,test/allinpay.gateway.url http://ceshi.allinpay.com/gateway/index.do
    create /config/tppService,test/allinpay.mchtoq.url http://ceshi.allinpay.com/mchtoq/index.do
    
    #商汤
    create /config/tppService,test/st.api.id 13cd38fdb13e420cbace15ac99cabed6
    create /config/tppService,test/st.api.secret cc1a6ded79ad42cabaabd7793c96242f
    create /config/tppService,test/st.idcard.url https://cloudapi.linkface.cn/data/verify_id_name
    
    #九江银行
    create /config/tppService,test/jiujiang.powerpay.url 10.15.12.91
    create /config/tppService,test/jiujiang.powerpay.port 18001
    create /config/tppService,test/jiujiang.powercore.url 10.15.12.92
    create /config/tppService,test/jiujiang.powercore.port 18000
    create /config/tppService,test/jiujiang.platform.no 256489
    create /config/tppService,test/jiujiang.platform.shortname XZGS
    create /config/tppService,test/jiujiang.asset.channelno  J00000001
    create /config/tppService,test/jiujiang.asseturl http://116.211.87.4:44032
    create /config/tppService,test/jiujiang.asset.publicKeyPath /tpp/jjb/J00000001.PUK
    create /config/tppService,test/jiujiang.asset.privateKeyPath /tpp/jjb/J00000001.PIK

	#大汉三通    
    create /config/tppService,test/sms.dahantc.url http://www.dh3t.com/json/sms/Submit
    create /config/tppService,test/sms.dahantc.account dh76231
    create /config/tppService,test/sms.dahantc.pwd h33Oy8xj
    
    #创蓝
    create /config/tppService,test/sms.cl.url http://smsbj1.253.com/msg/send/json
    create /config/tppService,test/sms.cl.account N4276342
    create /config/tppService,test/sms.cl.pwd Bjcl688bjfl8
    
    #助通科技    
    create /config/tppService,test/sms.zt.url http://www.ztsms.cn/sendNSms.do
    create /config/tppService,test/sms.zt.account xz666
    create /config/tppService,test/sms.zt.pwd xLLryiFF
    create /config/tppService,test/sms.zt.productid.varcode 676767
    create /config/tppService,test/sms.zt.productid.notice 676766
    
    #阿里云
    #过期时间，单位：秒
    create /config/tppService,test/sms.aliyun.outTime 10000
    #间隔时间，单位：秒
    create /config/tppService,test/sms.aliyun.intervalTime 10000
    create /config/tppService,test/sms.aliyun.accessKeyId LTAIoSJ8wgK6Ck9j
    create /config/tppService,test/sms.aliyun.accessKeySecret i5jFGTCYXRnC8GwUSlRLAMPwTkfBhl
    #产品名称:云通信短信API产品,开发者无需替换
    create /config/tppService,test/sms.aliyun.product Dysmsapi
    #产品域名,开发者无需替换
    create /config/tppService,test/sms.aliyun.domain dysmsapi.aliyuncs.com

    # 大兴安岭
    create /config/tppService,test/sms.dxal.username 101004
    create /config/tppService,test/sms.dxal.password 13089906050

    #是否为调整模式 1是 0不是
    create /config/tppService,test/isDebug 1

