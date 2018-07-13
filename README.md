Zookeeper做配置中心
如何使用Spring Cloud Zookeeper Config
1.在客户端（调用方）pom.xml中加入以下依赖
2.在客户端配置文件bootstrap.yml / bootstrap.properties中加入zookeeper连接信息
3.导入配置文件到Zookeeper
    3.1、属性命名规则（假设你在上面的root配置项设置为/config）：
    /config/{application-name},{profile}={key}={value}
    服务名和dev （profile名）以逗号隔开，可以设置spring.cloud.zookeeper.config.profile-separator 来用其他符号隔开，譬如”-”等
    3.2、配置文件例子： 
    testApp-dev.txt
    /config/testApp,dev=server.port=8080
4、客户端获取配置方式 
    我了解到有三种，可能还有其他的，大家可以自行百度 
    4.1、通过@Value注解
    @Value("${db.url}")
    String dbUrl;    
    4.2、配置文件(xml)中直接使用（用${propertyName}）
    
    <bean id="globalDbConfig" class="com.demo.connector.GlobalDbConfig">
        <property name="globalDbUsername" value="${global.username}"/>
        <property name="globalDbPassword" value="${global.password}"/>
    </bean>




（1）application.yml配置文件属性详解：
connect-string：ZooKeeper的地址，如果是集群，逗号分隔节点，格式：ip:port[,ip2:port2,.....]
root：指定zookeeper中，属性的根目录
spring.application.name: 定义你的项目的名称，zk会在你指定的根目录下寻找以这个项目名命名的目录下的配置
watcher.enabled:  默认值是true, 监控配置变更后是否自动更新，需配合Spring Boot Actuators 使用

配置优先级
远程配置（zookeeper等） > 命令行参数配置 > application.yml> bootstrap.yml
参考资料
    https://blog.csdn.net/liusanchun/article/details/78597644
    https://blog.csdn.net/CSDN_Stephen/article/details/78856323