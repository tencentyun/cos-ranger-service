# cos-ranger-service
包含了部署cos/chdfs ranger 服务部署需要的组件.主要包含以下三个模块

## cos-ranger-client
由COS插件或者chdfs插件动态加载，转发请求给cos-ranger-server
## cos-ranger-server
负责进行鉴权，token生成，临时秘钥生成
## ranger-plugin
在Ranger服务侧扩展cos和chdfs服务的定义与JAR包