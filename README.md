## 本项目实现的最终作用是基于JSP在线学生选课管理系统
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 修改密码
 - 学生管理
 - 教师管理
 - 添加学生
 - 添加教师
 - 添加班级
 - 添加用户
 - 添加课程
 - 班级管理
 - 管理员登录
 - 系统用户管理
 - 课程管理
### 第2个角色为教师角色，实现了如下功能：
 - 修改密码
 - 成绩管理
 - 教师登录
 - 查看个人档案
 - 查看学生信息
 - 查看班级信息
 - 添加成绩
 - 添加选课学生
 - 选课管理
### 第3个角色为学生角色，实现了如下功能：
 - 修改密码
 - 学生登录
 - 成绩查看
 - 查看个人档案
 - 选课管理
## 数据库设计如下：
# 数据库设计文档

**数据库名：** jwglxt

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [admin](#admin) | 管理员表 |
| [banji](#banji) |  |
| [chengji](#chengji) |  |
| [jiaoshi](#jiaoshi) |  |
| [kecheng](#kecheng) |  |
| [kechengtable](#kechengtable) |  |
| [taoke](#taoke) |  |
| [xuanke](#xuanke) |  |
| [xuesheng](#xuesheng) |  |

**表名：** <a id="admin">admin</a>

**说明：** 管理员表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | name |   varchar   | 255 |   0    |    N     |  Y   |       | 名字  |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | shenfen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="banji">banji</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | name |   varchar   | 255 |   0    |    N     |  Y   |       | 名字  |
|  3   | nianji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | banzhuren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | renshu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | shuoming |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="chengji">chengji</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | xuesheng |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | kemu |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | shijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 时间  |
|  5   | fenshu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="jiaoshi">jiaoshi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | name |   varchar   | 255 |   0    |    N     |  Y   |       | 名字  |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | jiaoshihao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | zhenname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  7   | shengri |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | yuanxiao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | zhuanye |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | phone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 手机号码  |
|  11   | ADDRESS |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  12   | email |   varchar   | 45 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  13   | shenfen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="kecheng">kecheng</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | name |   varchar   | 255 |   0    |    N     |  Y   |       | 名字  |
|  3   | jiaoshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | keshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | beizhu |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="kechengtable">kechengtable</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | kecheng |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | didian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | xingqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | shangxiawu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | kejie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | beizhu |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="taoke">taoke</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | xuesheng |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | dates |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | yuanyin |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |
|  5   | pingyu |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="xuanke">xuanke</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | xuesheng |   int   | 10 |   0    |    N     |  Y   |       |   |
|  3   | kecheng |   int   | 10 |   0    |    N     |  Y   |       |   |

**表名：** <a id="xuesheng">xuesheng</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  N   |       |   |
|  2   | name |   varchar   | 255 |   0    |    N     |  Y   |       | 名字  |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | banji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 班级  |
|  5   | xuehao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 学号  |
|  6   | zhiwu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 职务  |
|  7   | zhenname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  8   | sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  9   | shengri |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 出生日期  |
|  10   | zuohao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 座号  |
|  11   | shenfenzheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 身份证号  |
|  12   | minzu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 民族  |
|  13   | jiguan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 籍贯  |
|  14   | hukou |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 户口所在地  |
|  15   | address |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 家庭住址  |
|  16   | phone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 联系电话  |
|  17   | email |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电子邮箱  |
|  18   | beizhu |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 备注  |
|  19   | shenfen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**
