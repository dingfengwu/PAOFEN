-- MySQL database dump
-- 主机: 
-- 生成日期: 2019 年  07 月 09 日 22:36
-- MySQL版本: 5.6.43-log
-- PHP 版本: 5.6.40
-- 数据库: `ltyxdc_cn`
-- ---------------------------------------------------------
-- 表的结构ysk_admin
--
DROP TABLE IF EXISTS `ysk_admin`;
CREATE TABLE `ysk_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'UID',
  `auth_id` int(11) NOT NULL DEFAULT '1' COMMENT '角色ID',
  `nickname` varchar(63) DEFAULT NULL COMMENT '昵称',
  `username` varchar(31) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(63) NOT NULL DEFAULT '' COMMENT '密码',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `reg_type` varchar(20) DEFAULT NULL COMMENT '注册人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='后台管理员表格';

--
-- 转存表中的数据 ysk_admin

INSERT INTO `ysk_admin` VALUES('1','1','超级管理员','admin','dab9dca5ad0d86dfdfe0c645dc457642','','0','1438651748','1558607409','1','');
INSERT INTO `ysk_admin` VALUES('2','1','jinshan','jinshan','7757aced15b280c0c65f2832a4ee618e','17696655319','2130706433','1562593250','1562682325','1','');
INSERT INTO `ysk_admin` VALUES('3','2','任天亮','rentianliang','7757aced15b280c0c65f2832a4ee618e','18037353773','2869817853','1562682819','1562682819','1','');
--
-- 表的结构ysk_bankcard
--
DROP TABLE IF EXISTS `ysk_bankcard`;
CREATE TABLE `ysk_bankcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) NOT NULL COMMENT 'uid',
  `name` varchar(225) NOT NULL COMMENT '持卡人',
  `bankname` varchar(225) NOT NULL COMMENT '所属银行',
  `banknum` varchar(225) NOT NULL COMMENT '银行卡号',
  `addtime` varchar(225) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='银行卡管理';

--
-- 转存表中的数据 ysk_bankcard

INSERT INTO `ysk_bankcard` VALUES('4','1','张学友','建设银行','62284812345698745678','1552018926');
INSERT INTO `ysk_bankcard` VALUES('2','1','张学友','工商银行','6228481234567895566','1552017910');
INSERT INTO `ysk_bankcard` VALUES('3','1','张学友','长沙银行','62284845648945164659','1552018162');
INSERT INTO `ysk_bankcard` VALUES('5','1','张学友','农业银行','622848123456785555','1552018956');
INSERT INTO `ysk_bankcard` VALUES('6','1','刘德华','中国人民银行','6228481234567895544564','1552113144');
INSERT INTO `ysk_bankcard` VALUES('8','6','小三子','中国银行','622848123456789258369','1552577950');
INSERT INTO `ysk_bankcard` VALUES('9','5','老实人','天地银行','111111','1553022819');
INSERT INTO `ysk_bankcard` VALUES('10','5','老实人','地天银行','5151515','1553022840');
INSERT INTO `ysk_bankcard` VALUES('11','7','159','中国银行','159159','1553025654');
INSERT INTO `ysk_bankcard` VALUES('12','3','WE QWEQ WE','aWEQQ','QWE QWEQ','1553274062');
--
-- 表的结构ysk_complaint
--
DROP TABLE IF EXISTS `ysk_complaint`;
CREATE TABLE `ysk_complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '投诉人id',
  `content` text CHARACTER SET utf8mb4 COMMENT '投诉内容',
  `imgs` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '图片路径',
  `status` tinyint(1) DEFAULT '0' COMMENT '0 未查看 1 已查看',
  `create_time` int(10) DEFAULT NULL COMMENT '投诉时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='投诉建议表';

--
-- 转存表中的数据 ysk_complaint

INSERT INTO `ysk_complaint` VALUES('1','1','','','0','1552122574');
--
-- 表的结构ysk_config
--
DROP TABLE IF EXISTS `ysk_config`;
CREATE TABLE `ysk_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '配置标题',
  `name` varchar(32) DEFAULT NULL COMMENT '配置名称',
  `value` text NOT NULL COMMENT '配置值',
  `group` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `type` varchar(16) NOT NULL DEFAULT '' COMMENT '配置类型',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '配置额外值',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统配置表';

--
-- 转存表中的数据 ysk_config

INSERT INTO `ysk_config` VALUES('1','站点开关','TOGGLE_WEB_SITE','1','3','0','0:关闭\r\n1:开启','商城建设中......','1378898976','1406992386','1','1');
INSERT INTO `ysk_config` VALUES('2','网站标题','WEB_SITE_TITLE','','1','0','','网站标题前台显示标题','1378898976','1379235274','2','1');
INSERT INTO `ysk_config` VALUES('3','网站LOGO','WEB_SITE_LOGO','','1','0','','网站LOGO','1407003397','1407004692','3','1');
INSERT INTO `ysk_config` VALUES('4','网站描述','WEB_SITE_DESCRIPTION','','1','0','','网站搜索引擎描述','1378898976','1379235841','4','1');
INSERT INTO `ysk_config` VALUES('5','网站关键字','WEB_SITE_KEYWORD','','1','0','','网站搜索引擎关键字','1378898976','1381390100','5','1');
INSERT INTO `ysk_config` VALUES('6','版权信息','WEB_SITE_COPYRIGHT','','1','0','','设置在网站底部显示的版权信息，如“版权所有 © 2014-2015 科斯克网络科技”','1406991855','1406992583','6','1');
INSERT INTO `ysk_config` VALUES('7','网站备案号','WEB_SITE_ICP','','1','0','','设置在网站底部显示的备案号，如“苏ICP备1502009号\"','1378900335','1415983236','9','1');
INSERT INTO `ysk_config` VALUES('26','微信二维码','WEB_SITE_WX','','1','','','','0','0','0','1');
INSERT INTO `ysk_config` VALUES('32','注册开关','close_reg','1','3','','0:关闭1:开启','关闭注册功能说明','0','0','12','1');
INSERT INTO `ysk_config` VALUES('33','交易开关','close_trading','1','3','','0:关闭1:开启','交易暂时关闭，16:00后开启','0','0','13','0');
INSERT INTO `ysk_config` VALUES('41','实时价格每分钟增长','growem','','2','','','','0','0','12','1');
INSERT INTO `ysk_config` VALUES('44','奖励开关','regjifen','0','1','0','','','1407003397','1407004692','3','1');
--
-- 表的结构ysk_ewm
--
DROP TABLE IF EXISTS `ysk_ewm`;
CREATE TABLE `ysk_ewm` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `ewm_class` int(11) NOT NULL COMMENT '二维码类型',
  `ewm_url` varchar(225) NOT NULL COMMENT '二维码地址',
  `ewm_price` float(10,2) NOT NULL COMMENT '二维码收款金额',
  `ewm_acc` varchar(225) NOT NULL COMMENT '二维码账号',
  `uaccount` varchar(225) NOT NULL COMMENT '用户账号',
  `uname` varchar(225) NOT NULL COMMENT '用户名',
  `addtime` varchar(225) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='二维码管理';

--
-- 转存表中的数据 ysk_ewm

INSERT INTO `ysk_ewm` VALUES('12','1','1','https://img.bukanba.com/ekcms/20190314/4bb33167808b07dd.png','300.00','13666666666','13888888888','九星耀世','1552575525');
INSERT INTO `ysk_ewm` VALUES('11','1','1','https://img.bukanba.com/ekcms/20190314/8f13a2f8a8407179.png','200.00','13888888888','13888888888','九星耀世','1552575497');
INSERT INTO `ysk_ewm` VALUES('3','1','2','https://img.bukanba.com/ekcms/20190309/4bb33167808b07dd.png','100000.00','13888888888','13888888888','九星耀世','1552123575');
INSERT INTO `ysk_ewm` VALUES('4','1','1','https://img.bukanba.com/ekcms/20190309/8f13a2f8a8407179.png','100.00','13888888888','13888888888','九星耀世','1552123658');
INSERT INTO `ysk_ewm` VALUES('10','1','3','https://img.bukanba.com/ekcms/20190309/6e605d96720537d7.jpg','898989.00','13333333333','13888888888','九星耀世','1552129995');
INSERT INTO `ysk_ewm` VALUES('6','1','2','https://img.bukanba.com/ekcms/20190309/52ad2222f9ef7f43.png','5000.00','13888888888','13888888888','九星耀世','1552123819');
--
-- 表的结构ysk_group
--
DROP TABLE IF EXISTS `ysk_group`;
CREATE TABLE `ysk_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级部门ID',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '部门名称',
  `icon` varchar(31) NOT NULL DEFAULT '' COMMENT '图标',
  `menu_auth` text NOT NULL COMMENT '权限列表',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `auth_id` int(11) DEFAULT NULL,
  `hylb` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门信息表';

--
-- 转存表中的数据 ysk_group

INSERT INTO `ysk_group` VALUES('1','0','超级管理员','','','1426881003','1427552428','0','1','1','0');
INSERT INTO `ysk_group` VALUES('2','0','财务查看','','1,7,8,9,348,349,350,351,359,360,361,362,363,352,353,354,355,356,357,3,5,6,327,323','1498324367','1562682153','0','0','2','1,2,3,4,5');
INSERT INTO `ysk_group` VALUES('7','0','超级管理','','1,3,4,6,327,7,8,9,316,318,322,323','1526152893','1528963727','0','-1','0','');
INSERT INTO `ysk_group` VALUES('8','0','数据管理','','1,3,4,327,7,8,10,11,315,324,325,334,329,328','1527085184','1527140823','0','-1','0','0');
--
-- 表的结构ysk_hyxz
--
DROP TABLE IF EXISTS `ysk_hyxz`;
CREATE TABLE `ysk_hyxz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 ysk_hyxz

INSERT INTO `ysk_hyxz` VALUES('2','测试12','2234.00');
INSERT INTO `ysk_hyxz` VALUES('3','21312qqqqq','343434343qqqq');
--
-- 表的结构ysk_index
--
DROP TABLE IF EXISTS `ysk_index`;
CREATE TABLE `ysk_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '游戏名称',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `price` decimal(10,2) DEFAULT NULL COMMENT '金额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 ysk_index

INSERT INTO `ysk_index` VALUES('2','测试12','/Public/uploads/2019-07-09/5d24a09c3d2be.jpg','2234.00');
--
-- 表的结构ysk_menu
--
DROP TABLE IF EXISTS `ysk_menu`;
CREATE TABLE `ysk_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `pid` int(11) NOT NULL COMMENT '父级id',
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '爷爷ID、',
  `col` varchar(30) NOT NULL COMMENT '控制器',
  `act` varchar(30) NOT NULL COMMENT '方法',
  `patch` varchar(50) DEFAULT NULL COMMENT '全路径',
  `level` int(11) NOT NULL COMMENT '级别',
  `icon` varchar(50) DEFAULT NULL,
  `sort` char(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 ysk_menu

INSERT INTO `ysk_menu` VALUES('327','数据库管理','3','1','Database','index','','2','fa fa-lock','14','1');
INSERT INTO `ysk_menu` VALUES('323','系统公告','3','1','News','index','','2','fa-twitter-square','51','1');
INSERT INTO `ysk_menu` VALUES('356','交易成功列表','352','1','Roborder','ordersucc','','2','fa-file-text','41','1');
INSERT INTO `ysk_menu` VALUES('355','匹配成功列表','352','1','Roborder','robsucc','','2','fa-file-text','40','1');
INSERT INTO `ysk_menu` VALUES('354','会员抢单列表','352','1','Roborder','userrob','','2','fa-file-text','39','1');
INSERT INTO `ysk_menu` VALUES('1','系统','0','0','','','','0','fa-cog','0','1');
INSERT INTO `ysk_menu` VALUES('9','推荐结构','7','1','Tree','index','','2','fa-th-large','22','1');
INSERT INTO `ysk_menu` VALUES('8','会员列表','7','1','User','index','','2','fa-user','21','1');
INSERT INTO `ysk_menu` VALUES('7','会员管理','1','1','','','','1','fa-folder-open-o','1','1');
INSERT INTO `ysk_menu` VALUES('5','角色管理','3','1','Group','index','','2','fa-sitemap','12','1');
INSERT INTO `ysk_menu` VALUES('3','统用功能','1','1','','','','1','fa-folder-open-o','3','1');
INSERT INTO `ysk_menu` VALUES('6','管理员管理','3','1','Manage','index','','2','fa fa-cog','13','1');
INSERT INTO `ysk_menu` VALUES('352','抢单管理','1','1','','','','1','fa-folder-open-o','2','1');
INSERT INTO `ysk_menu` VALUES('353','发布订单列表','352','1','Roborder','index','','2','fa-user','38','1');
INSERT INTO `ysk_menu` VALUES('357','游戏参数设置','352','1','Roborder','asystem','','2','fa-file-text','43','1');
INSERT INTO `ysk_menu` VALUES('351','银行卡管理','7','1','User','bankcard','','2','fa-file-text','37','1');
INSERT INTO `ysk_menu` VALUES('350','二维码管理','7','1','User','ewm','','2','fa-file-text','36','1');
INSERT INTO `ysk_menu` VALUES('349','提现管理','7','1','User','withdraw','','2','fa-file-text','35','1');
INSERT INTO `ysk_menu` VALUES('348','充值管理','7','1','User','recharge','','2','fa-file-text','34','1');
INSERT INTO `ysk_menu` VALUES('358','收款二维码管理','3','1','Roborder','skewm','','2','fa-twitter-square','42','0');
INSERT INTO `ysk_menu` VALUES('359','资金流水','7','1','User','bill','','2','fa-file-text','43','1');
INSERT INTO `ysk_menu` VALUES('360','首页管理','1','1','','','','1','fa-folder-open-o','1','1');
INSERT INTO `ysk_menu` VALUES('361','首页显示','360','1','Homeindex','index','','2','fa-user','21','1');
INSERT INTO `ysk_menu` VALUES('362','抢单显示','360','1','Qd','index','','2','fa-user','21','1');
INSERT INTO `ysk_menu` VALUES('363','会员须知','360','1','Hyxz','index','','2','fa-user','21','1');
--
-- 表的结构ysk_news
--
DROP TABLE IF EXISTS `ysk_news`;
CREATE TABLE `ysk_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '文章标题',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '文章图片',
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `is_out` tinyint(4) NOT NULL DEFAULT '0',
  `content` text NOT NULL COMMENT '内容',
  `from` varchar(255) NOT NULL DEFAULT '' COMMENT '文章来源',
  `visit` smallint(6) NOT NULL DEFAULT '0',
  `lang` tinyint(4) NOT NULL DEFAULT '0',
  `tuijian` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

--
-- 转存表中的数据 ysk_news

--
-- 表的结构ysk_notice
--
DROP TABLE IF EXISTS `ysk_notice`;
CREATE TABLE `ysk_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_tittle` varchar(80) NOT NULL COMMENT '公告标题',
  `notice_content` varchar(600) NOT NULL COMMENT '公告详情',
  `notice_addtime` varchar(20) NOT NULL COMMENT '公告添加时间',
  `notice_read` text NOT NULL COMMENT '看过公告会员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 ysk_notice

--
-- 表的结构ysk_qd
--
DROP TABLE IF EXISTS `ysk_qd`;
CREATE TABLE `ysk_qd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '轮播信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 ysk_qd

INSERT INTO `ysk_qd` VALUES('2','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('3','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('4','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('5','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('6','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('7','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('8','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('9','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('10','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('11','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('12','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('13','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('14','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('15','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('16','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('17','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('18','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('19','152****3712微信支付500元');
INSERT INTO `ysk_qd` VALUES('20','152****3712微信支付500元');
--
-- 表的结构ysk_qrcode
--
DROP TABLE IF EXISTS `ysk_qrcode`;
CREATE TABLE `ysk_qrcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `uname` varchar(225) NOT NULL COMMENT '会员名称',
  `code_class` int(2) NOT NULL COMMENT '二维码类型1支付宝2微信3银行卡',
  `code_url` varchar(225) NOT NULL COMMENT '二维码图片地址',
  `uaccount` varchar(225) NOT NULL COMMENT '会员账号',
  `code_acc` varchar(225) NOT NULL COMMENT '二维码账号，如支付宝账号',
  `addtime` varchar(225) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='二维码管理';

--
-- 转存表中的数据 ysk_qrcode

--
-- 表的结构ysk_recharge
--
DROP TABLE IF EXISTS `ysk_recharge`;
CREATE TABLE `ysk_recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `account` varchar(225) NOT NULL COMMENT '会员账号',
  `name` varchar(225) NOT NULL COMMENT '姓名',
  `price` float(10,2) NOT NULL COMMENT '充值金额',
  `way` int(11) NOT NULL COMMENT '充值方式：1支付宝2微信3银行卡',
  `addtime` varchar(225) NOT NULL COMMENT '充值日期',
  `status` int(11) NOT NULL COMMENT '充值状态1提交，2退回，3成功',
  `marker` varchar(225) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员充值表';

--
-- 转存表中的数据 ysk_recharge

INSERT INTO `ysk_recharge` VALUES('2','1','13888888888','张学友','2000.00','2','1552036575','3','123456');
INSERT INTO `ysk_recharge` VALUES('3','1','13888888888','张学友','3000.00','3','1552036603','3','123456');
INSERT INTO `ysk_recharge` VALUES('4','1','13888888888','孙悟空','5000.00','1','1552116267','3','2323');
INSERT INTO `ysk_recharge` VALUES('6','1','13888888888','小猪','6000.00','2','1552116626','3','2313223');
INSERT INTO `ysk_recharge` VALUES('7','1','13888888888','小沙','9000.00','3','1552117027','3','123456');
--
-- 表的结构ysk_roborder
--
DROP TABLE IF EXISTS `ysk_roborder`;
CREATE TABLE `ysk_roborder` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `class` int(2) NOT NULL COMMENT '收款类型',
  `price` float(10,2) NOT NULL COMMENT '收款金额',
  `addtime` varchar(225) NOT NULL COMMENT '添加时间',
  `status` int(2) NOT NULL COMMENT '订单状态',
  `uid` int(11) NOT NULL COMMENT '匹配用户ID',
  `uname` varchar(225) NOT NULL COMMENT '匹配用户名称',
  `umoney` float(10,2) NOT NULL COMMENT '匹配用户余额',
  `pipeitime` varchar(225) NOT NULL COMMENT '匹配时间',
  `finishtime` varchar(225) NOT NULL COMMENT '完成时间',
  `ordernum` varchar(225) NOT NULL COMMENT '订单号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='抢单表';

--
-- 转存表中的数据 ysk_roborder

INSERT INTO `ysk_roborder` VALUES('23','1','100.00','1552568947','3','1','ecolee','8862.00','1552569219','1552571384','N788867003859');
INSERT INTO `ysk_roborder` VALUES('19','2','100.00','1552568494','1','0','','0.00','','','N801289227537');
INSERT INTO `ysk_roborder` VALUES('24','2','100.00','1552568955','3','6','小三子','19162.00','1552580505','1552580527','N337086662806');
INSERT INTO `ysk_roborder` VALUES('22','1','100.00','1552568940','3','1','ecolee','8931.00','1552568979','1552569150','N590250994747');
INSERT INTO `ysk_roborder` VALUES('27','1','100.00','1552576307','3','1','ecolee','8793.00','1552576307','1552576415','N798089240081');
INSERT INTO `ysk_roborder` VALUES('28','1','100.00','1552579510','3','6','小三子','19372.00','1552579510','1552579527','N512031793192');
INSERT INTO `ysk_roborder` VALUES('29','1','100.00','1552580130','3','6','小三子','19302.00','1552580130','1552580141','N732729092750');
INSERT INTO `ysk_roborder` VALUES('30','1','100.00','1552580275','3','6','小三子','19232.00','1552580275','1552580286','N615284252013');
INSERT INTO `ysk_roborder` VALUES('31','1','100.00','1552580621','3','6','小三子','19083.00','1552583787','1552584254','N057622398659');
INSERT INTO `ysk_roborder` VALUES('32','1','100.00','1552588114','2','1','ecolee','22516.00','1552588114','','N430326561877');
INSERT INTO `ysk_roborder` VALUES('33','1','100.00','1552588117','2','6','小三子','19014.00','1552588117','','N415249724932');
INSERT INTO `ysk_roborder` VALUES('34','1','100.00','1553023006','3','5','老实人','10051.40','1553023006','1553023048','N501069079510');
INSERT INTO `ysk_roborder` VALUES('35','1','100.00','1553023174','3','5','老实人','9981.40','1553023174','1553023183','N940326607216');
INSERT INTO `ysk_roborder` VALUES('36','1','100.00','1553023258','3','5','老实人','9911.40','1553023258','1553023267','N541774684817');
INSERT INTO `ysk_roborder` VALUES('37','1','100.00','1553023372','3','5','老实人','9813.40','1553023372','1553023574','N714303226046');
INSERT INTO `ysk_roborder` VALUES('47','1','100.00','1553024414','3','5','老实人','9763.40','1553024414','1553024432','N575047187672');
INSERT INTO `ysk_roborder` VALUES('48','1','100.00','1553024722','3','5','老实人','9693.40','1553024722','1553024730','N265725369633');
INSERT INTO `ysk_roborder` VALUES('49','1','100.00','1553025086','3','5','老实人','9696.40','1553025086','1553025100','N334756953356');
INSERT INTO `ysk_roborder` VALUES('50','1','100.00','1553025701','3','7','159','10000.00','1553025701','1553025710','N230369309681');
INSERT INTO `ysk_roborder` VALUES('51','1','100.00','1553025858','3','7','159','9913.00','1553025858','1553025866','N752551819731');
INSERT INTO `ysk_roborder` VALUES('52','1','100.00','1553079076','3','7','159','19826.00','1553079076','1553079104','N981863965027');
INSERT INTO `ysk_roborder` VALUES('53','1','100.00','1553079347','3','8','laoshiren','10000.00','1553079347','1553079355','N840806303538');
INSERT INTO `ysk_roborder` VALUES('54','1','100.00','1553079716','3','8','laoshiren','9802.00','1553273563','1553274725','N956577536930');
INSERT INTO `ysk_roborder` VALUES('55','1','100.00','1553079733','3','8','laoshiren','9901.00','1553079733','1553079740','N332459254645');
INSERT INTO `ysk_roborder` VALUES('57','1','200.00','1553275788','2','3','QWE','98094.32','1553275788','','N176563257949');
INSERT INTO `ysk_roborder` VALUES('58','1','100.00','1553277046','3','8','laoshiren','9704.30','1553277046','1553277060','N424416080420');
INSERT INTO `ysk_roborder` VALUES('59','1','100.00','1553277075','3','8','laoshiren','9605.60','1553277075','1553277085','N633069468348');
INSERT INTO `ysk_roborder` VALUES('60','1','100.00','1553277103','3','8','laoshiren','9506.90','1553277103','1553277117','N478648876560');
INSERT INTO `ysk_roborder` VALUES('62','1','20.00','1553277663','2','3','QWE','98094.32','1553277663','','N976702068181');
INSERT INTO `ysk_roborder` VALUES('63','1','20.00','1562594753','2','3','QWE','98094.32','1562594753','','N926386449052');
--
-- 表的结构ysk_skm
--
DROP TABLE IF EXISTS `ysk_skm`;
CREATE TABLE `ysk_skm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wxewm` varchar(225) NOT NULL,
  `zfbewm` varchar(225) NOT NULL,
  `bankewm` varchar(225) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收款码';

--
-- 转存表中的数据 ysk_skm

INSERT INTO `ysk_skm` VALUES('1','2019pay/2019-03-20/5c911c22156dc.png','2019pay/2019-03-20/5c911c22188b8.png','2019pay/2019-03-20/5c911c221b2c7.png');
--
-- 表的结构ysk_somebill
--
DROP TABLE IF EXISTS `ysk_somebill`;
CREATE TABLE `ysk_somebill` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `jl_class` int(11) NOT NULL COMMENT '流水类别：1佣金2团队奖励3充值4提现5订单匹配',
  `info` varchar(225) NOT NULL COMMENT '说明',
  `addtime` varchar(225) NOT NULL COMMENT '事件时间',
  `jc_class` varchar(225) NOT NULL COMMENT '分+ 或-',
  `num` float(10,2) NOT NULL COMMENT '币量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员流水账单';

--
-- 转存表中的数据 ysk_somebill

INSERT INTO `ysk_somebill` VALUES('31','6','5','微信抢单本金','1552580286','-','100.00');
INSERT INTO `ysk_somebill` VALUES('32','6','1','微信抢单佣金','1552580286','+','30.00');
INSERT INTO `ysk_somebill` VALUES('33','5','1','直推抢单成功佣金','1552580286','+','3.00');
INSERT INTO `ysk_somebill` VALUES('34','4','1','二代抢单成功佣金','1552580286','+','1.50');
INSERT INTO `ysk_somebill` VALUES('35','3','1','三代抢单成功佣金','1552580286','+','0.90');
INSERT INTO `ysk_somebill` VALUES('36','6','5','支付宝抢单本金','1552580527','-','100.00');
INSERT INTO `ysk_somebill` VALUES('37','6','1','支付宝抢单佣金','1552580527','+','21.00');
INSERT INTO `ysk_somebill` VALUES('38','5','1','直推抢单成功佣金','1552580527','+','2.10');
INSERT INTO `ysk_somebill` VALUES('41','6','5','微信抢单本金','1552584254','-','100.00');
INSERT INTO `ysk_somebill` VALUES('42','6','1','微信抢单佣金','1552584254','+','31.00');
INSERT INTO `ysk_somebill` VALUES('43','5','1','直推抢单成功佣金','1552584254','+','3.10');
INSERT INTO `ysk_somebill` VALUES('44','4','1','二代抢单成功佣金','1552584254','+','1.55');
INSERT INTO `ysk_somebill` VALUES('46','5','5','微信抢单本金','1553023048','-','100.00');
INSERT INTO `ysk_somebill` VALUES('47','5','1','微信抢单佣金','1553023048','+','30.00');
INSERT INTO `ysk_somebill` VALUES('48','4','1','直推抢单成功佣金','1553023048','+','3.00');
INSERT INTO `ysk_somebill` VALUES('49','3','1','二代抢单成功佣金','1553023048','+','1.50');
INSERT INTO `ysk_somebill` VALUES('50','1','1','三代抢单成功佣金','1553023048','+','0.90');
INSERT INTO `ysk_somebill` VALUES('51','5','5','微信抢单本金','1553023183','-','100.00');
INSERT INTO `ysk_somebill` VALUES('52','5','1','微信抢单佣金','1553023183','+','30.00');
INSERT INTO `ysk_somebill` VALUES('53','4','1','直推抢单成功佣金','1553023183','+','3.00');
INSERT INTO `ysk_somebill` VALUES('54','3','1','二代抢单成功佣金','1553023183','+','1.50');
INSERT INTO `ysk_somebill` VALUES('55','1','1','三代抢单成功佣金','1553023183','+','0.90');
INSERT INTO `ysk_somebill` VALUES('56','5','5','微信抢单本金','1553023267','-','100.00');
INSERT INTO `ysk_somebill` VALUES('57','5','1','微信抢单佣金','1553023267','+','2.00');
INSERT INTO `ysk_somebill` VALUES('58','4','1','直推抢单成功佣金','1553023267','+','0.20');
INSERT INTO `ysk_somebill` VALUES('59','3','1','二代抢单成功佣金','1553023267','+','0.10');
INSERT INTO `ysk_somebill` VALUES('60','1','1','三代抢单成功佣金','1553023267','+','0.06');
INSERT INTO `ysk_somebill` VALUES('61','5','5','微信抢单本金','1553023574','-','100.00');
INSERT INTO `ysk_somebill` VALUES('62','5','1','微信抢单佣金','1553023574','+','2.00');
INSERT INTO `ysk_somebill` VALUES('63','4','1','直推抢单成功佣金','1553023574','+','0.20');
INSERT INTO `ysk_somebill` VALUES('64','3','1','二代抢单成功佣金','1553023574','+','0.10');
INSERT INTO `ysk_somebill` VALUES('65','1','1','三代抢单成功佣金','1553023574','+','0.06');
INSERT INTO `ysk_somebill` VALUES('66','5','5','微信抢单本金','1553023765','-','200.00');
INSERT INTO `ysk_somebill` VALUES('67','5','1','微信抢单佣金','1553023765','+','6.00');
INSERT INTO `ysk_somebill` VALUES('68','4','1','直推抢单成功佣金','1553023765','+','0.60');
INSERT INTO `ysk_somebill` VALUES('69','3','1','二代抢单成功佣金','1553023765','+','0.30');
INSERT INTO `ysk_somebill` VALUES('70','1','1','三代抢单成功佣金','1553023765','+','0.18');
INSERT INTO `ysk_somebill` VALUES('71','5','5','微信抢单本金','1553024260','-','200.00');
INSERT INTO `ysk_somebill` VALUES('72','5','1','微信抢单佣金','1553024260','+','442.00');
INSERT INTO `ysk_somebill` VALUES('73','4','1','直推抢单成功佣金','1553024260','+','44.20');
INSERT INTO `ysk_somebill` VALUES('74','3','1','二代抢单成功佣金','1553024260','+','22.10');
INSERT INTO `ysk_somebill` VALUES('75','1','1','三代抢单成功佣金','1553024260','+','13.26');
INSERT INTO `ysk_somebill` VALUES('76','5','5','微信抢单本金','1553024432','-','100.00');
INSERT INTO `ysk_somebill` VALUES('77','5','1','微信抢单佣金','1553024432','+','30.00');
INSERT INTO `ysk_somebill` VALUES('78','4','1','直推抢单成功佣金','1553024432','+','3.00');
INSERT INTO `ysk_somebill` VALUES('79','3','1','二代抢单成功佣金','1553024432','+','1.50');
INSERT INTO `ysk_somebill` VALUES('80','1','1','三代抢单成功佣金','1553024432','+','0.90');
INSERT INTO `ysk_somebill` VALUES('81','5','5','微信抢单本金','1553024730','-','100.00');
INSERT INTO `ysk_somebill` VALUES('82','5','1','微信抢单佣金','1553024730','+','103.00');
INSERT INTO `ysk_somebill` VALUES('83','4','1','直推抢单成功佣金','1553024730','+','10.30');
INSERT INTO `ysk_somebill` VALUES('84','3','1','二代抢单成功佣金','1553024730','+','5.15');
INSERT INTO `ysk_somebill` VALUES('85','1','1','三代抢单成功佣金','1553024730','+','3.09');
INSERT INTO `ysk_somebill` VALUES('86','5','5','微信抢单本金','1553025100','-','100.00');
INSERT INTO `ysk_somebill` VALUES('87','5','1','微信抢单佣金','1553025100','+','13.00');
INSERT INTO `ysk_somebill` VALUES('88','4','1','直推抢单成功佣金','1553025100','+','1.30');
INSERT INTO `ysk_somebill` VALUES('89','3','1','二代抢单成功佣金','1553025100','+','0.65');
INSERT INTO `ysk_somebill` VALUES('90','1','1','三代抢单成功佣金','1553025100','+','0.39');
INSERT INTO `ysk_somebill` VALUES('91','7','5','微信抢单本金','1553025710','-','100.00');
INSERT INTO `ysk_somebill` VALUES('92','7','1','微信抢单佣金','1553025710','+','13.00');
INSERT INTO `ysk_somebill` VALUES('93','1','1','直推抢单成功佣金','1553025710','+','1.30');
INSERT INTO `ysk_somebill` VALUES('94','7','5','微信抢单本金','1553025866','-','100.00');
INSERT INTO `ysk_somebill` VALUES('95','7','1','微信抢单佣金','1553025866','+','13.00');
INSERT INTO `ysk_somebill` VALUES('96','1','1','直推抢单成功佣金','1553025866','+','1.30');
INSERT INTO `ysk_somebill` VALUES('97','7','5','微信抢单本金','1553079104','-','100.00');
INSERT INTO `ysk_somebill` VALUES('98','7','1','微信抢单佣金','1553079104','+','13.00');
INSERT INTO `ysk_somebill` VALUES('99','1','1','直推抢单成功佣金','1553079104','+','1.30');
INSERT INTO `ysk_somebill` VALUES('101','8','1','微信抢单佣金','1553079355','+','1.00');
INSERT INTO `ysk_somebill` VALUES('102','7','1','直推抢单成功佣金','1553079355','+','0.10');
INSERT INTO `ysk_somebill` VALUES('103','1','1','二代抢单成功佣金','1553079355','+','0.05');
INSERT INTO `ysk_somebill` VALUES('104','8','5','微信抢单本金','1553079740','-','100.00');
INSERT INTO `ysk_somebill` VALUES('105','8','1','微信抢单佣金','1553079740','+','1.00');
INSERT INTO `ysk_somebill` VALUES('106','7','1','直推抢单成功佣金','1553079740','+','0.10');
INSERT INTO `ysk_somebill` VALUES('107','1','1','二代抢单成功佣金','1553079740','+','0.05');
INSERT INTO `ysk_somebill` VALUES('108','3','5','微信抢单本金','1553274457','-','2000.00');
INSERT INTO `ysk_somebill` VALUES('109','3','1','微信抢单佣金','1553274457','+','46.00');
INSERT INTO `ysk_somebill` VALUES('110','1','1','直推抢单成功佣金','1553274457','+','4.60');
INSERT INTO `ysk_somebill` VALUES('111','8','5','微信抢单本金','1553274725','-','100.00');
INSERT INTO `ysk_somebill` VALUES('112','8','1','微信抢单佣金','1553274725','+','2.30');
INSERT INTO `ysk_somebill` VALUES('113','7','1','直推抢单成功佣金','1553274725','+','0.23');
INSERT INTO `ysk_somebill` VALUES('114','1','1','二代抢单成功佣金','1553274725','+','0.12');
INSERT INTO `ysk_somebill` VALUES('115','8','5','微信抢单本金','1553277060','-','100.00');
INSERT INTO `ysk_somebill` VALUES('116','8','1','微信抢单佣金','1553277060','+','1.30');
INSERT INTO `ysk_somebill` VALUES('117','7','1','直推抢单成功佣金','1553277060','+','0.13');
INSERT INTO `ysk_somebill` VALUES('118','1','1','二代抢单成功佣金','1553277061','+','0.06');
INSERT INTO `ysk_somebill` VALUES('119','8','5','微信抢单本金','1553277085','-','100.00');
INSERT INTO `ysk_somebill` VALUES('120','8','1','微信抢单佣金','1553277085','+','1.30');
INSERT INTO `ysk_somebill` VALUES('121','7','1','直推抢单成功佣金','1553277085','+','0.13');
INSERT INTO `ysk_somebill` VALUES('122','1','1','二代抢单成功佣金','1553277085','+','0.06');
INSERT INTO `ysk_somebill` VALUES('123','8','5','微信抢单本金','1553277117','-','100.00');
INSERT INTO `ysk_somebill` VALUES('124','8','1','微信抢单佣金','1553277117','+','1.30');
INSERT INTO `ysk_somebill` VALUES('125','7','1','直推抢单成功佣金','1553277117','+','0.13');
INSERT INTO `ysk_somebill` VALUES('126','1','1','二代抢单成功佣金','1553277117','+','0.06');
--
-- 表的结构ysk_store
--
DROP TABLE IF EXISTS `ysk_store`;
CREATE TABLE `ysk_store` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户id',
  `cangku_num` decimal(13,5) NOT NULL DEFAULT '0.00000' COMMENT '钱包余额',
  `fengmi_num` decimal(13,5) NOT NULL DEFAULT '0.00000' COMMENT '积分',
  `plant_num` decimal(13,4) NOT NULL DEFAULT '0.0000' COMMENT '播种总数',
  `huafei_total` decimal(13,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '施肥累计',
  `vip_grade` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

--
-- 转存表中的数据 ysk_store

--
-- 表的结构ysk_system
--
DROP TABLE IF EXISTS `ysk_system`;
CREATE TABLE `ysk_system` (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `qd_cf` int(11) NOT NULL COMMENT '抢单余额比列',
  `qd_nd` varchar(225) NOT NULL COMMENT '抢单难度，数组(0.1,0.2,0.3)',
  `qd_wxyj` float(10,3) NOT NULL COMMENT '微信抢单佣金30%填0.3',
  `qd_zfbyj` float(10,3) NOT NULL COMMENT '支付宝抢单佣金30%填0.3',
  `qd_bkyj` float(10,3) NOT NULL COMMENT '银行卡抢单佣金30%填0.3',
  `qd_ndtime` varchar(225) NOT NULL COMMENT '增加难度时间点',
  `qd_yjjc` varchar(12) NOT NULL COMMENT '佣金加成',
  `qd_minmoney` float NOT NULL COMMENT '抢单最低额度',
  `min_recharge` float(10,3) NOT NULL COMMENT '最低充值额度',
  `mix_withdraw` float(10,3) NOT NULL COMMENT '最小提现额度',
  `max_withdraw` float(10,3) NOT NULL COMMENT '最大提现额度',
  `tx_yeb` float NOT NULL COMMENT '提现要求：收款与余额比例 ',
  `team_oneyj` float(10,3) NOT NULL COMMENT '1代佣金比例30%写0.3',
  `team_twoyj` float(10,3) NOT NULL COMMENT '2代佣金比例30%写0.3',
  `team_threeyj` float(10,2) NOT NULL COMMENT '3代佣金比例30%写0.3',
  `cz_yh` varchar(255) NOT NULL,
  `cz_xm` varchar(255) NOT NULL,
  `cz_kh` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='游戏参数设置表';

--
-- 转存表中的数据 ysk_system

INSERT INTO `ysk_system` VALUES('1','70','0.2','0.013','0.013','0.013','','','100','100.000','100.000','100.000','70','0.100','0.050','0.05','666','666','666');
--
-- 表的结构ysk_upload
--
DROP TABLE IF EXISTS `ysk_upload`;
CREATE TABLE `ysk_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'UID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `url` varchar(255) DEFAULT NULL COMMENT '文件链接',
  `ext` char(4) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) DEFAULT NULL COMMENT '文件md5',
  `sha1` char(40) DEFAULT NULL COMMENT '文件sha1编码',
  `location` varchar(15) NOT NULL DEFAULT '' COMMENT '文件存储位置',
  `download` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件上传表';

--
-- 转存表中的数据 ysk_upload

--
-- 表的结构ysk_user
--
DROP TABLE IF EXISTS `ysk_user`;
CREATE TABLE `ysk_user` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL COMMENT '上级ID',
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '上上级ID',
  `ggid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上上上级ID',
  `account` char(20) NOT NULL DEFAULT '0' COMMENT '用户账号',
  `mobile` char(20) NOT NULL COMMENT '用户手机号',
  `u_yqm` varchar(225) NOT NULL COMMENT '邀请码',
  `username` varchar(255) NOT NULL DEFAULT '',
  `login_pwd` varchar(225) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `login_salt` char(5) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `money` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户余额',
  `reg_date` int(11) NOT NULL COMMENT '注册时间',
  `reg_ip` varchar(20) NOT NULL COMMENT '注册IP',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户锁定  1 不锁  0拉黑  -1 删除',
  `activate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1-已激活 0-未激活',
  `session_id` varchar(225) DEFAULT NULL,
  `wx_no` varchar(225) DEFAULT NULL COMMENT '微信账号',
  `alipay` varchar(225) DEFAULT NULL COMMENT '支付宝',
  `truename` varchar(225) DEFAULT NULL COMMENT '真实姓名',
  `email` varchar(225) NOT NULL COMMENT '电子邮件',
  `userqq` varchar(32) NOT NULL COMMENT 'QQ',
  `usercard` varchar(32) NOT NULL COMMENT '身份证号码',
  `path` text,
  `use_grade` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户等级',
  `u_ztnum` int(11) NOT NULL COMMENT '直推人数',
  `rz_st` int(1) NOT NULL COMMENT '资料完善状态，1OK2no',
  `tx_status` int(11) NOT NULL COMMENT '提现状态',
  `zsy` float(10,2) NOT NULL COMMENT '总收益',
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  UNIQUE KEY `account` (`account`) USING BTREE,
  KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 ysk_user

--
-- 表的结构ysk_userrob
--
DROP TABLE IF EXISTS `ysk_userrob`;
CREATE TABLE `ysk_userrob` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `class` int(2) NOT NULL COMMENT '支付类别',
  `price` float(10,2) NOT NULL COMMENT '金额',
  `yjjc` float(10,2) NOT NULL COMMENT '佣金加成',
  `umoney` float(10,2) NOT NULL COMMENT '会员余额',
  `uaccount` varchar(225) NOT NULL COMMENT '会员账号',
  `uname` varchar(225) NOT NULL COMMENT '会员姓名',
  `ppid` int(11) NOT NULL COMMENT '匹配的ID号',
  `status` int(2) NOT NULL COMMENT '状态1等2匹配中3成功',
  `addtime` varchar(225) NOT NULL COMMENT '添加时间',
  `pipeitime` varchar(225) NOT NULL COMMENT '匹配成功时间',
  `finishtime` varchar(225) NOT NULL COMMENT '交易完成时间',
  `ordernum` varchar(225) NOT NULL COMMENT '订单号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员抢单表前台发起的';

--
-- 转存表中的数据 ysk_userrob

INSERT INTO `ysk_userrob` VALUES('20','6','1','100.00','0.00','19014.00','13222222222','小三子','33','4','1552587078','1552588117','','N415249724932');
INSERT INTO `ysk_userrob` VALUES('21','1','1','100.00','0.00','22516.00','13888888888','ecolee','32','4','1552587127','1552588114','','N430326561877');
INSERT INTO `ysk_userrob` VALUES('44','8','1','1000.00','0.00','9408.20','14725836999','laoshiren','38','4','1553277315','1553277315','','N793173919507');
INSERT INTO `ysk_userrob` VALUES('46','3','1','20.00','0.00','98094.32','13777777777','QWE','62','4','1553277647','1553277663','','N976702068181');
INSERT INTO `ysk_userrob` VALUES('47','3','1','20.00','0.00','98094.32','13777777777','QWE','63','4','1553277794','1562594753','','N926386449052');
--
-- 表的结构ysk_withdraw
--
DROP TABLE IF EXISTS `ysk_withdraw`;
CREATE TABLE `ysk_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `account` varchar(225) NOT NULL COMMENT '提现账号',
  `name` varchar(225) NOT NULL COMMENT '提现人姓名',
  `way` varchar(225) NOT NULL COMMENT '提现方式',
  `price` float(10,2) NOT NULL COMMENT '提现金额',
  `addtime` varchar(225) NOT NULL COMMENT '提现时间',
  `endtime` varchar(225) NOT NULL COMMENT '完成时间',
  `status` int(11) NOT NULL COMMENT '状态1提交，2退回3成功',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='提现申请表';

--
-- 转存表中的数据 ysk_withdraw

INSERT INTO `ysk_withdraw` VALUES('1','1','13888888888','张学友','支付宝','1000.00','1552053596','','1');
INSERT INTO `ysk_withdraw` VALUES('2','1','13888888888','张学友','微信','2000.00','1552053688','','3');
INSERT INTO `ysk_withdraw` VALUES('3','1','123456','孙悟空','支付宝','8888.00','1552117731','','3');
INSERT INTO `ysk_withdraw` VALUES('4','1','13689888888','小猪','微信','99999.00','1552117861','','1');
