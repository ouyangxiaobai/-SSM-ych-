# 项目名称

[含论文+答辩PPT+任务书+源码等]基于SSM框架演唱会网上订票系统

# 系统介绍
后台框架：Spring、SpringMVC、MyBatis

数据库：MySQL

系统中的核心用户是系统管理员，管理员登录后，主要功能有管理员信息管理、网站用户管理、新闻公告信息管理、演唱会类型信息管理、演唱会信息管理、票务信息管理、订单信息管理。

用户功能模块的实现

用户注册

用户通过账号、密码、真实姓名、联系电话等信息可以进行登注册

用户登录

用户通过账号和密码可以进行登录

用户登录后可进行首页、网站公告、推荐演唱会、全部演唱会等，用户主界面展示如图5-11所示。

用户可以进行演唱会信息浏览等操作

购物车界面

用户可将演唱会门票加入购物车，移除、下订单等操作，购物车界面。

我的订单界面

用户可进行付款等操作，订单管理界面

# 环境需要

1.运行环境：最好是java jdk 1.8，我们在这个平台上运行的。其他版本理论上也可以。\
2.IDE环境：IDEA，Eclipse,Myeclipse都可以。推荐IDEA;\
3.tomcat环境：Tomcat 7.x,8.x,9.x版本均可\
4.硬件环境：windows 7/8/10 1G内存以上；或者 Mac OS； \
5.数据库：MySql 5.7版本；\
6.是否Maven项目：否；

# 技术栈

1. 后端：Spring+SpringMVC+Mybatis\
2. 前端：JSP+CSS+JavaScript+jQuery

# 使用说明

1. 使用Navicat或者其它工具，在mysql中创建对应名称的数据库，并导入项目的sql文件；\
2. 使用IDEA/Eclipse/MyEclipse导入项目，Eclipse/MyEclipse导入时，若为maven项目请选择maven;\
若为maven项目，导入成功后请执行maven clean;maven install命令，然后运行；\
3. 将项目中springmvc-servlet.xml配置文件中的数据库配置改为自己的配置;\
4. 运行项目，在浏览器中输入http://localhost:8080/ 登录

# 高清视频演示

https://www.bilibili.com/video/BV1WY4y177o1/


​