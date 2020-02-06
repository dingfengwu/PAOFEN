-- MySQL database dump










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












  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) NOT NULL COMMENT 'uid',
  `name` varchar(225) NOT NULL COMMENT '持卡人',
  `bankname` varchar(225) NOT NULL COMMENT '所属银行',
  `banknum` varchar(225) NOT NULL COMMENT '银行卡号',
  `addtime` varchar(225) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='银行卡管理';



















  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '投诉人id',
  `content` text CHARACTER SET utf8mb4 COMMENT '投诉内容',
  `imgs` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '图片路径',
  `status` tinyint(1) DEFAULT '0' COMMENT '0 未查看 1 已查看',
  `create_time` int(10) DEFAULT NULL COMMENT '投诉时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='投诉建议表';










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













  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;











  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '游戏名称',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `price` decimal(10,2) DEFAULT NULL COMMENT '金额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;










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









  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_tittle` varchar(80) NOT NULL COMMENT '公告标题',
  `notice_content` varchar(600) NOT NULL COMMENT '公告详情',
  `notice_addtime` varchar(20) NOT NULL COMMENT '公告添加时间',
  `notice_read` text NOT NULL COMMENT '看过公告会员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;









  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '轮播信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;




























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







































  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wxewm` varchar(225) NOT NULL,
  `zfbewm` varchar(225) NOT NULL,
  `bankewm` varchar(225) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收款码';










  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `jl_class` int(11) NOT NULL COMMENT '流水类别：1佣金2团队奖励3充值4提现5订单匹配',
  `info` varchar(225) NOT NULL COMMENT '说明',
  `addtime` varchar(225) NOT NULL COMMENT '事件时间',
  `jc_class` varchar(225) NOT NULL COMMENT '分+ 或-',
  `num` float(10,2) NOT NULL COMMENT '币量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员流水账单';





































































































  `uid` int(11) unsigned NOT NULL COMMENT '用户id',
  `cangku_num` decimal(13,5) NOT NULL DEFAULT '0.00000' COMMENT '钱包余额',
  `fengmi_num` decimal(13,5) NOT NULL DEFAULT '0.00000' COMMENT '积分',
  `plant_num` decimal(13,4) NOT NULL DEFAULT '0.0000' COMMENT '播种总数',
  `huafei_total` decimal(13,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '施肥累计',
  `vip_grade` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;









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








