## Share1024 开发版本
## 网站 [www.share1024.com](http://www.share1024.com/)
### v 1.0.0 
1. 页面素材查找。
2. 修改某些页面为jsp页面。
3. 搭建系统环境
4. 构建maven项目
5. 搭建jenkins,git,maven,tomcat
6. 阿里云服务器搭建，域名审核

### v 1.1.0
1. 服务器环境搭建。配置好spring，springmvc，mybatis项目。
2. 数据库环境配置，加入测试数据。
3. 建好毕业设计环境数据
4. 增加aop切面，记录每次接口请求时间，检测系统慢的原因
5. 用firbug 发现有个导入css的地方请求速度非常慢，直接删掉速度就快了很多

#### v.1.1.1
1. spring与ehcache整合，数据库请求数据缓存下来
2. 增加阿里云oss存储
3. 新增java资料工具类，调整管理员页面
4. 新增清除缓存功能
5. 添加404 505返回页面 web.xml中配置
6. 新增系统管理员登录界面
7. 修改bug如果修改链接 查不到数据 应该返回404而不是错误

#### v1.2.0
1. 修改js，jsp文件目录形式，采用sea.js来统一管理js文件 sea.js文档请参考[sea.js](http://www.zhangxinxu.com/sp/seajs/docs/zh-cn/index.html)
使用sea.js自己感觉管理js很方便
2. shiro cache 与spring注解缓存两个结合使用一直无法结合成功。我的想法是spring cache做数据缓存，而shiro只做验证缓存。现在暂时不用spring缓存，等到后面看看再用ecache缓存工具，还是再解决该问题。
3. 解决2的问题，我们分开用两个不同的缓存xml,然后用两个不同的cacheManger注意命名要不一样
4. 增加logback日志管理
5. 去掉重eclipse 上的多余文件,从github导入项目后,删除其他 只留pom src即可