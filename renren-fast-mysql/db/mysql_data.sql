/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : renren_fast

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2022-01-20 08:05:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car_company
-- ----------------------------
DROP TABLE IF EXISTS `car_company`;
CREATE TABLE `car_company` (
  `company` bigint NOT NULL AUTO_INCREMENT COMMENT '注册单位ID',
  `parent_id` bigint DEFAULT NULL COMMENT '父ID',
  `company_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '注册单位名称',
  `ordernum` int DEFAULT NULL COMMENT '显示顺序',
  PRIMARY KEY (`company`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='注册单位表\r\n';

-- ----------------------------
-- Records of car_company
-- ----------------------------
INSERT INTO `car_company` VALUES ('100', '0', '按注册单位', '0');
INSERT INTO `car_company` VALUES ('101', '100', '单位1', '1');
INSERT INTO `car_company` VALUES ('102', '100', '单位2', '1');
INSERT INTO `car_company` VALUES ('103', '100', '单位3', '1');

-- ----------------------------
-- Table structure for car_type
-- ----------------------------
DROP TABLE IF EXISTS `car_type`;
CREATE TABLE `car_type` (
  `type` bigint NOT NULL AUTO_INCREMENT COMMENT '类型ID',
  `parent_id` bigint DEFAULT NULL COMMENT '父ID',
  `type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '类型名称',
  `ordernum` int DEFAULT NULL COMMENT '显示顺序',
  PRIMARY KEY (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='类型表';

-- ----------------------------
-- Records of car_type
-- ----------------------------
INSERT INTO `car_type` VALUES ('100', '0', '按车辆类型', '0');
INSERT INTO `car_type` VALUES ('101', '100', '小轿车', '1');
INSERT INTO `car_type` VALUES ('102', '100', '大客车', '1');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CRON_EXPRESSION` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ENTRY_ID` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FIRED_TIME` bigint NOT NULL,
  `SCHED_TIME` bigint NOT NULL,
  `PRIORITY` int NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`) USING BTREE,
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE,
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`) USING BTREE,
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`) USING BTREE,
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', null, 'io.renren.modules.job.utils.ScheduleJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200074C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017BBA0503C07874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672656E72656E74000CE58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LOCK_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint NOT NULL,
  `CHECKIN_INTERVAL` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RenrenScheduler', 'USER-20210802VN1642636978788', '1642637115980', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPEAT_COUNT` bigint NOT NULL,
  `REPEAT_INTERVAL` bigint NOT NULL,
  `TIMES_TRIGGERED` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INT_PROP_1` int DEFAULT NULL,
  `INT_PROP_2` int DEFAULT NULL,
  `LONG_PROP_1` bigint DEFAULT NULL,
  `LONG_PROP_2` bigint DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint DEFAULT NULL,
  `PREV_FIRE_TIME` bigint DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `START_TIME` bigint NOT NULL,
  `END_TIME` bigint DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MISFIRE_INSTR` smallint DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE,
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`) USING BTREE,
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`) USING BTREE,
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`) USING BTREE,
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`) USING BTREE,
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`) USING BTREE,
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`) USING BTREE,
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`) USING BTREE,
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', 'TASK_1', 'DEFAULT', null, '1642638600000', '-1', '5', 'WAITING', 'CRON', '1630914095000', '0', null, '2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200074C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017BBBBC77C07874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672656E72656E74000CE58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800);

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'spring bean名称',
  `params` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint DEFAULT NULL COMMENT '任务状态  0：正常  1：暂停',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='定时任务';

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES ('1', 'testTask', 'renren', '0 0/30 * * * ?', '0', '参数测试', '2021-09-06 15:31:36');

-- ----------------------------
-- Table structure for schedule_job_log
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'spring bean名称',
  `params` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数',
  `status` tinyint NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '失败信息',
  `times` int NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`) USING BTREE,
  KEY `job_id` (`job_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=759 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='定时任务日志';

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------
INSERT INTO `schedule_job_log` VALUES ('1', '1', 'testTask', 'renren', '0', null, '3', '2021-09-06 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('2', '1', 'testTask', 'renren', '0', null, '1', '2021-09-06 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('3', '1', 'testTask', 'renren', '0', null, '0', '2021-09-06 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('4', '1', 'testTask', 'renren', '0', null, '2', '2021-09-06 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('5', '1', 'testTask', 'renren', '0', null, '1', '2021-09-06 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('6', '1', 'testTask', 'renren', '0', null, '1', '2021-09-07 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('7', '1', 'testTask', 'renren', '0', null, '1', '2021-09-07 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('8', '1', 'testTask', 'renren', '0', null, '1', '2021-09-07 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('9', '1', 'testTask', 'renren', '0', null, '0', '2021-09-07 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('10', '1', 'testTask', 'renren', '0', null, '1', '2021-09-08 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('11', '1', 'testTask', 'renren', '0', null, '1', '2021-09-08 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('12', '1', 'testTask', 'renren', '0', null, '2', '2021-09-08 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('13', '1', 'testTask', 'renren', '0', null, '1', '2021-09-08 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('14', '1', 'testTask', 'renren', '0', null, '1', '2021-09-08 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('15', '1', 'testTask', 'renren', '0', null, '2', '2021-09-08 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('16', '1', 'testTask', 'renren', '0', null, '6', '2021-09-08 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('17', '1', 'testTask', 'renren', '0', null, '5', '2021-09-08 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('18', '1', 'testTask', 'renren', '0', null, '1', '2021-09-08 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('19', '1', 'testTask', 'renren', '0', null, '2', '2021-09-08 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('20', '1', 'testTask', 'renren', '0', null, '1', '2021-09-08 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('21', '1', 'testTask', 'renren', '0', null, '6', '2021-09-08 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('22', '1', 'testTask', 'renren', '0', null, '3', '2021-09-08 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('23', '1', 'testTask', 'renren', '0', null, '2', '2021-09-08 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('24', '1', 'testTask', 'renren', '0', null, '1', '2021-09-08 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('25', '1', 'testTask', 'renren', '0', null, '0', '2021-09-08 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('26', '1', 'testTask', 'renren', '0', null, '0', '2021-09-08 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('27', '1', 'testTask', 'renren', '0', null, '0', '2021-09-08 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('28', '1', 'testTask', 'renren', '0', null, '1', '2021-09-08 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('29', '1', 'testTask', 'renren', '0', null, '1', '2021-09-08 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('30', '1', 'testTask', 'renren', '0', null, '1', '2021-09-09 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('31', '1', 'testTask', 'renren', '0', null, '1', '2021-09-09 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('32', '1', 'testTask', 'renren', '0', null, '1', '2021-09-09 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('33', '1', 'testTask', 'renren', '0', null, '1', '2021-09-09 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('34', '1', 'testTask', 'renren', '0', null, '0', '2021-09-09 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('35', '1', 'testTask', 'renren', '0', null, '1', '2021-09-09 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('36', '1', 'testTask', 'renren', '0', null, '1', '2021-09-09 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('37', '1', 'testTask', 'renren', '0', null, '1', '2021-09-09 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('38', '1', 'testTask', 'renren', '0', null, '6', '2021-09-09 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('39', '1', 'testTask', 'renren', '0', null, '1', '2021-09-09 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('40', '1', 'testTask', 'renren', '0', null, '2', '2021-09-09 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('41', '1', 'testTask', 'renren', '0', null, '0', '2021-09-09 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('42', '1', 'testTask', 'renren', '0', null, '2', '2021-09-09 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('43', '1', 'testTask', 'renren', '0', null, '217', '2021-09-09 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('44', '1', 'testTask', 'renren', '0', null, '0', '2021-09-09 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('45', '1', 'testTask', 'renren', '0', null, '0', '2021-09-09 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('46', '1', 'testTask', 'renren', '0', null, '43', '2021-09-09 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('47', '1', 'testTask', 'renren', '0', null, '1', '2021-09-09 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('48', '1', 'testTask', 'renren', '0', null, '0', '2021-09-09 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('49', '1', 'testTask', 'renren', '0', null, '1', '2021-09-09 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('50', '1', 'testTask', 'renren', '0', null, '1', '2021-09-10 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('51', '1', 'testTask', 'renren', '0', null, '1', '2021-09-10 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('52', '1', 'testTask', 'renren', '0', null, '5', '2021-09-10 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('53', '1', 'testTask', 'renren', '0', null, '1', '2021-09-10 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('54', '1', 'testTask', 'renren', '0', null, '1', '2021-09-10 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('55', '1', 'testTask', 'renren', '0', null, '1', '2021-09-10 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('56', '1', 'testTask', 'renren', '0', null, '1', '2021-09-10 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('57', '1', 'testTask', 'renren', '0', null, '2', '2021-09-10 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('58', '1', 'testTask', 'renren', '0', null, '1', '2021-09-10 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('59', '1', 'testTask', 'renren', '0', null, '1', '2021-09-10 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('60', '1', 'testTask', 'renren', '0', null, '1', '2021-09-10 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('61', '1', 'testTask', 'renren', '0', null, '1', '2021-09-10 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('62', '1', 'testTask', 'renren', '0', null, '0', '2021-09-10 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('63', '1', 'testTask', 'renren', '0', null, '0', '2021-09-10 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('64', '1', 'testTask', 'renren', '0', null, '0', '2021-09-10 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('65', '1', 'testTask', 'renren', '0', null, '0', '2021-09-10 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('66', '1', 'testTask', 'renren', '0', null, '1', '2021-09-10 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('67', '1', 'testTask', 'renren', '0', null, '1', '2021-09-10 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('68', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('69', '1', 'testTask', 'renren', '0', null, '2', '2021-09-13 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('70', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('71', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('72', '1', 'testTask', 'renren', '0', null, '0', '2021-09-13 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('73', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('74', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('75', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('76', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('77', '1', 'testTask', 'renren', '0', null, '6', '2021-09-13 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('78', '1', 'testTask', 'renren', '0', null, '0', '2021-09-13 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('79', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('80', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('81', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('82', '1', 'testTask', 'renren', '0', null, '0', '2021-09-13 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('83', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('84', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('85', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('86', '1', 'testTask', 'renren', '0', null, '1', '2021-09-13 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('87', '1', 'testTask', 'renren', '0', null, '0', '2021-09-13 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('88', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('89', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('90', '1', 'testTask', 'renren', '0', null, '0', '2021-09-14 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('91', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('92', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('93', '1', 'testTask', 'renren', '0', null, '0', '2021-09-14 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('94', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('95', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('96', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('97', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('98', '1', 'testTask', 'renren', '0', null, '0', '2021-09-14 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('99', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('100', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('101', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('102', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('103', '1', 'testTask', 'renren', '0', null, '0', '2021-09-14 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('104', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('105', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('106', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('107', '1', 'testTask', 'renren', '0', null, '1', '2021-09-14 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('108', '1', 'testTask', 'renren', '0', null, '1', '2021-09-15 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('109', '1', 'testTask', 'renren', '0', null, '1', '2021-09-15 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('110', '1', 'testTask', 'renren', '0', null, '1', '2021-09-15 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('111', '1', 'testTask', 'renren', '0', null, '0', '2021-09-15 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('112', '1', 'testTask', 'renren', '0', null, '1', '2021-09-15 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('113', '1', 'testTask', 'renren', '0', null, '0', '2021-09-15 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('114', '1', 'testTask', 'renren', '0', null, '1', '2021-09-15 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('115', '1', 'testTask', 'renren', '0', null, '2', '2021-09-15 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('116', '1', 'testTask', 'renren', '0', null, '2', '2021-09-15 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('117', '1', 'testTask', 'renren', '0', null, '1', '2021-09-15 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('118', '1', 'testTask', 'renren', '0', null, '1', '2021-09-15 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('119', '1', 'testTask', 'renren', '0', null, '1', '2021-09-15 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('120', '1', 'testTask', 'renren', '0', null, '1', '2021-09-15 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('121', '1', 'testTask', 'renren', '0', null, '1', '2021-09-15 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('122', '1', 'testTask', 'renren', '0', null, '1', '2021-09-15 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('123', '1', 'testTask', 'renren', '0', null, '0', '2021-09-15 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('124', '1', 'testTask', 'renren', '0', null, '1', '2021-09-15 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('125', '1', 'testTask', 'renren', '0', null, '1', '2021-09-16 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('126', '1', 'testTask', 'renren', '0', null, '1', '2021-09-16 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('127', '1', 'testTask', 'renren', '0', null, '1', '2021-09-16 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('128', '1', 'testTask', 'renren', '0', null, '3', '2021-09-16 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('129', '1', 'testTask', 'renren', '0', null, '2', '2021-09-16 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('130', '1', 'testTask', 'renren', '0', null, '2', '2021-09-16 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('131', '1', 'testTask', 'renren', '0', null, '1', '2021-09-16 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('132', '1', 'testTask', 'renren', '0', null, '1', '2021-09-16 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('133', '1', 'testTask', 'renren', '0', null, '1', '2021-09-16 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('134', '1', 'testTask', 'renren', '0', null, '1', '2021-09-16 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('135', '1', 'testTask', 'renren', '0', null, '2', '2021-09-16 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('136', '1', 'testTask', 'renren', '0', null, '1', '2021-09-16 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('137', '1', 'testTask', 'renren', '0', null, '1', '2021-09-17 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('138', '1', 'testTask', 'renren', '0', null, '0', '2021-09-17 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('139', '1', 'testTask', 'renren', '0', null, '1', '2021-09-17 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('140', '1', 'testTask', 'renren', '0', null, '0', '2021-09-17 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('141', '1', 'testTask', 'renren', '0', null, '0', '2021-09-17 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('142', '1', 'testTask', 'renren', '0', null, '1', '2021-09-17 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('143', '1', 'testTask', 'renren', '0', null, '2', '2021-09-17 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('144', '1', 'testTask', 'renren', '0', null, '1', '2021-09-17 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('145', '1', 'testTask', 'renren', '0', null, '2', '2021-09-17 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('146', '1', 'testTask', 'renren', '0', null, '1', '2021-09-17 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('147', '1', 'testTask', 'renren', '0', null, '3', '2021-09-17 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('148', '1', 'testTask', 'renren', '0', null, '3', '2021-09-17 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('149', '1', 'testTask', 'renren', '0', null, '3', '2021-09-17 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('150', '1', 'testTask', 'renren', '0', null, '1', '2021-09-17 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('151', '1', 'testTask', 'renren', '0', null, '1', '2021-09-17 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('152', '1', 'testTask', 'renren', '0', null, '1', '2021-09-17 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('153', '1', 'testTask', 'renren', '0', null, '1', '2021-09-17 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('154', '1', 'testTask', 'renren', '0', null, '2', '2021-09-17 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('155', '1', 'testTask', 'renren', '0', null, '1', '2021-09-17 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('156', '1', 'testTask', 'renren', '0', null, '0', '2021-09-17 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('157', '1', 'testTask', 'renren', '0', null, '1', '2021-09-18 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('158', '1', 'testTask', 'renren', '0', null, '2', '2021-09-18 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('159', '1', 'testTask', 'renren', '0', null, '0', '2021-09-18 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('160', '1', 'testTask', 'renren', '0', null, '0', '2021-09-18 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('161', '1', 'testTask', 'renren', '0', null, '1', '2021-09-18 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('162', '1', 'testTask', 'renren', '0', null, '1', '2021-09-18 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('163', '1', 'testTask', 'renren', '0', null, '1', '2021-09-18 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('164', '1', 'testTask', 'renren', '0', null, '1', '2021-09-18 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('165', '1', 'testTask', 'renren', '0', null, '1', '2021-09-18 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('166', '1', 'testTask', 'renren', '0', null, '1', '2021-09-18 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('167', '1', 'testTask', 'renren', '0', null, '2', '2021-09-18 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('168', '1', 'testTask', 'renren', '0', null, '1', '2021-09-18 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('169', '1', 'testTask', 'renren', '0', null, '1', '2021-09-18 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('170', '1', 'testTask', 'renren', '0', null, '1', '2021-09-18 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('171', '1', 'testTask', 'renren', '0', null, '1', '2021-09-18 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('172', '1', 'testTask', 'renren', '0', null, '0', '2021-09-18 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('173', '1', 'testTask', 'renren', '0', null, '0', '2021-09-18 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('174', '1', 'testTask', 'renren', '0', null, '1', '2021-09-18 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('175', '1', 'testTask', 'renren', '0', null, '1', '2021-09-22 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('176', '1', 'testTask', 'renren', '0', null, '1', '2021-09-22 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('177', '1', 'testTask', 'renren', '0', null, '1', '2021-09-22 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('178', '1', 'testTask', 'renren', '0', null, '1', '2021-09-22 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('179', '1', 'testTask', 'renren', '0', null, '0', '2021-09-22 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('180', '1', 'testTask', 'renren', '0', null, '1', '2021-09-22 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('181', '1', 'testTask', 'renren', '0', null, '6', '2021-09-22 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('182', '1', 'testTask', 'renren', '0', null, '1', '2021-09-22 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('183', '1', 'testTask', 'renren', '0', null, '7', '2021-09-22 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('184', '1', 'testTask', 'renren', '0', null, '1', '2021-09-22 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('185', '1', 'testTask', 'renren', '0', null, '9', '2021-09-22 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('186', '1', 'testTask', 'renren', '0', null, '1', '2021-09-22 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('187', '1', 'testTask', 'renren', '0', null, '0', '2021-09-22 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('188', '1', 'testTask', 'renren', '0', null, '1', '2021-09-22 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('189', '1', 'testTask', 'renren', '0', null, '1', '2021-09-22 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('190', '1', 'testTask', 'renren', '0', null, '1', '2021-09-22 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('191', '1', 'testTask', 'renren', '0', null, '2', '2021-09-22 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('192', '1', 'testTask', 'renren', '0', null, '1', '2021-09-22 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('193', '1', 'testTask', 'renren', '0', null, '1', '2021-09-22 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('194', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('195', '1', 'testTask', 'renren', '0', null, '0', '2021-09-23 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('196', '1', 'testTask', 'renren', '0', null, '2', '2021-09-23 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('197', '1', 'testTask', 'renren', '0', null, '0', '2021-09-23 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('198', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('199', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('200', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('201', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('202', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('203', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('204', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('205', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('206', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('207', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('208', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('209', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('210', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('211', '1', 'testTask', 'renren', '0', null, '0', '2021-09-23 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('212', '1', 'testTask', 'renren', '0', null, '1', '2021-09-23 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('213', '1', 'testTask', 'renren', '0', null, '0', '2021-09-23 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('214', '1', 'testTask', 'renren', '0', null, '0', '2021-09-24 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('215', '1', 'testTask', 'renren', '0', null, '1', '2021-09-24 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('216', '1', 'testTask', 'renren', '0', null, '0', '2021-09-24 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('217', '1', 'testTask', 'renren', '0', null, '1', '2021-09-24 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('218', '1', 'testTask', 'renren', '0', null, '1', '2021-09-24 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('219', '1', 'testTask', 'renren', '0', null, '2', '2021-09-24 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('220', '1', 'testTask', 'renren', '0', null, '2', '2021-09-24 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('221', '1', 'testTask', 'renren', '0', null, '0', '2021-09-24 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('222', '1', 'testTask', 'renren', '0', null, '1', '2021-09-24 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('223', '1', 'testTask', 'renren', '0', null, '1', '2021-09-24 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('224', '1', 'testTask', 'renren', '0', null, '0', '2021-09-24 13:30:01');
INSERT INTO `schedule_job_log` VALUES ('225', '1', 'testTask', 'renren', '0', null, '1', '2021-09-24 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('226', '1', 'testTask', 'renren', '0', null, '1', '2021-09-24 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('227', '1', 'testTask', 'renren', '0', null, '1', '2021-09-24 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('228', '1', 'testTask', 'renren', '0', null, '1', '2021-09-24 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('229', '1', 'testTask', 'renren', '0', null, '1', '2021-09-24 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('230', '1', 'testTask', 'renren', '0', null, '1', '2021-09-24 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('231', '1', 'testTask', 'renren', '0', null, '1', '2021-09-24 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('232', '1', 'testTask', 'renren', '0', null, '1', '2021-09-24 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('233', '1', 'testTask', 'renren', '0', null, '0', '2021-09-24 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('234', '1', 'testTask', 'renren', '0', null, '1', '2021-09-26 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('235', '1', 'testTask', 'renren', '0', null, '1', '2021-09-26 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('236', '1', 'testTask', 'renren', '0', null, '1', '2021-09-26 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('237', '1', 'testTask', 'renren', '0', null, '0', '2021-09-26 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('238', '1', 'testTask', 'renren', '0', null, '0', '2021-09-26 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('239', '1', 'testTask', 'renren', '0', null, '1', '2021-09-26 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('240', '1', 'testTask', 'renren', '0', null, '1', '2021-09-26 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('241', '1', 'testTask', 'renren', '0', null, '1', '2021-09-26 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('242', '1', 'testTask', 'renren', '0', null, '1', '2021-09-26 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('243', '1', 'testTask', 'renren', '0', null, '2', '2021-09-26 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('244', '1', 'testTask', 'renren', '0', null, '2', '2021-09-26 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('245', '1', 'testTask', 'renren', '0', null, '1', '2021-09-26 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('246', '1', 'testTask', 'renren', '0', null, '1', '2021-09-26 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('247', '1', 'testTask', 'renren', '0', null, '1', '2021-09-26 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('248', '1', 'testTask', 'renren', '0', null, '0', '2021-09-26 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('249', '1', 'testTask', 'renren', '0', null, '0', '2021-09-26 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('250', '1', 'testTask', 'renren', '0', null, '0', '2021-09-26 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('251', '1', 'testTask', 'renren', '0', null, '1', '2021-09-26 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('252', '1', 'testTask', 'renren', '0', null, '0', '2021-09-27 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('253', '1', 'testTask', 'renren', '0', null, '0', '2021-09-27 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('254', '1', 'testTask', 'renren', '0', null, '0', '2021-09-27 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('255', '1', 'testTask', 'renren', '0', null, '1', '2021-09-27 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('256', '1', 'testTask', 'renren', '0', null, '0', '2021-09-27 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('257', '1', 'testTask', 'renren', '0', null, '0', '2021-09-27 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('258', '1', 'testTask', 'renren', '0', null, '0', '2021-09-27 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('259', '1', 'testTask', 'renren', '0', null, '1', '2021-09-27 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('260', '1', 'testTask', 'renren', '0', null, '1', '2021-09-27 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('261', '1', 'testTask', 'renren', '0', null, '2', '2021-09-27 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('262', '1', 'testTask', 'renren', '0', null, '1', '2021-09-27 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('263', '1', 'testTask', 'renren', '0', null, '3', '2021-09-27 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('264', '1', 'testTask', 'renren', '0', null, '1', '2021-09-27 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('265', '1', 'testTask', 'renren', '0', null, '1', '2021-09-27 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('266', '1', 'testTask', 'renren', '0', null, '1', '2021-09-27 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('267', '1', 'testTask', 'renren', '0', null, '1', '2021-09-27 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('268', '1', 'testTask', 'renren', '0', null, '35', '2021-09-28 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('269', '1', 'testTask', 'renren', '0', null, '0', '2021-09-28 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('270', '1', 'testTask', 'renren', '0', null, '18', '2021-09-28 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('271', '1', 'testTask', 'renren', '0', null, '0', '2021-09-28 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('272', '1', 'testTask', 'renren', '0', null, '1', '2021-09-28 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('273', '1', 'testTask', 'renren', '0', null, '1', '2021-09-28 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('274', '1', 'testTask', 'renren', '0', null, '1', '2021-09-28 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('275', '1', 'testTask', 'renren', '0', null, '1', '2021-09-28 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('276', '1', 'testTask', 'renren', '0', null, '0', '2021-09-28 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('277', '1', 'testTask', 'renren', '0', null, '0', '2021-09-28 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('278', '1', 'testTask', 'renren', '0', null, '1', '2021-09-28 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('279', '1', 'testTask', 'renren', '0', null, '1', '2021-09-28 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('280', '1', 'testTask', 'renren', '0', null, '1', '2021-09-28 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('281', '1', 'testTask', 'renren', '0', null, '0', '2021-09-28 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('282', '1', 'testTask', 'renren', '0', null, '2', '2021-09-28 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('283', '1', 'testTask', 'renren', '0', null, '1', '2021-09-28 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('284', '1', 'testTask', 'renren', '0', null, '1', '2021-09-28 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('285', '1', 'testTask', 'renren', '0', null, '1', '2021-09-28 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('286', '1', 'testTask', 'renren', '0', null, '1', '2021-09-28 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('287', '1', 'testTask', 'renren', '0', null, '1', '2021-09-28 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('288', '1', 'testTask', 'renren', '0', null, '0', '2021-09-29 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('289', '1', 'testTask', 'renren', '0', null, '1', '2021-09-29 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('290', '1', 'testTask', 'renren', '0', null, '1', '2021-09-29 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('291', '1', 'testTask', 'renren', '0', null, '1', '2021-09-29 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('292', '1', 'testTask', 'renren', '0', null, '4', '2021-09-29 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('293', '1', 'testTask', 'renren', '0', null, '0', '2021-09-29 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('294', '1', 'testTask', 'renren', '0', null, '0', '2021-09-29 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('295', '1', 'testTask', 'renren', '0', null, '0', '2021-09-29 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('296', '1', 'testTask', 'renren', '0', null, '0', '2021-09-29 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('297', '1', 'testTask', 'renren', '0', null, '1', '2021-09-29 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('298', '1', 'testTask', 'renren', '0', null, '1', '2021-09-29 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('299', '1', 'testTask', 'renren', '0', null, '0', '2021-09-29 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('300', '1', 'testTask', 'renren', '0', null, '0', '2021-09-29 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('301', '1', 'testTask', 'renren', '0', null, '1', '2021-09-29 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('302', '1', 'testTask', 'renren', '0', null, '0', '2021-09-29 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('303', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('304', '1', 'testTask', 'renren', '0', null, '0', '2021-09-30 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('305', '1', 'testTask', 'renren', '0', null, '0', '2021-09-30 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('306', '1', 'testTask', 'renren', '0', null, '0', '2021-09-30 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('307', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('308', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('309', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('310', '1', 'testTask', 'renren', '0', null, '0', '2021-09-30 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('311', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('312', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('313', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('314', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('315', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('316', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('317', '1', 'testTask', 'renren', '0', null, '0', '2021-09-30 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('318', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('319', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('320', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('321', '1', 'testTask', 'renren', '0', null, '1', '2021-09-30 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('322', '1', 'testTask', 'renren', '0', null, '2', '2021-09-30 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('323', '1', 'testTask', 'renren', '0', null, '0', '2021-10-08 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('324', '1', 'testTask', 'renren', '0', null, '1', '2021-10-08 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('325', '1', 'testTask', 'renren', '0', null, '1', '2021-10-08 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('326', '1', 'testTask', 'renren', '0', null, '0', '2021-10-08 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('327', '1', 'testTask', 'renren', '0', null, '0', '2021-10-08 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('328', '1', 'testTask', 'renren', '0', null, '6', '2021-10-08 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('329', '1', 'testTask', 'renren', '0', null, '0', '2021-10-09 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('330', '1', 'testTask', 'renren', '0', null, '1', '2021-10-09 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('331', '1', 'testTask', 'renren', '0', null, '1', '2021-10-09 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('332', '1', 'testTask', 'renren', '0', null, '2', '2021-10-09 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('333', '1', 'testTask', 'renren', '0', null, '0', '2021-10-09 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('334', '1', 'testTask', 'renren', '0', null, '0', '2021-10-09 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('335', '1', 'testTask', 'renren', '0', null, '0', '2021-10-09 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('336', '1', 'testTask', 'renren', '0', null, '2', '2021-10-09 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('337', '1', 'testTask', 'renren', '0', null, '3', '2021-10-09 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('338', '1', 'testTask', 'renren', '0', null, '8', '2021-10-09 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('339', '1', 'testTask', 'renren', '0', null, '0', '2021-10-09 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('340', '1', 'testTask', 'renren', '0', null, '1', '2021-10-09 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('341', '1', 'testTask', 'renren', '0', null, '2', '2021-10-09 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('342', '1', 'testTask', 'renren', '0', null, '0', '2021-10-09 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('343', '1', 'testTask', 'renren', '0', null, '0', '2021-10-09 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('344', '1', 'testTask', 'renren', '0', null, '1', '2021-10-09 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('345', '1', 'testTask', 'renren', '0', null, '0', '2021-10-09 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('346', '1', 'testTask', 'renren', '0', null, '1', '2021-10-09 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('347', '1', 'testTask', 'renren', '0', null, '0', '2021-10-09 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('348', '1', 'testTask', 'renren', '0', null, '1', '2021-10-09 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('349', '1', 'testTask', 'renren', '0', null, '1', '2021-10-11 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('350', '1', 'testTask', 'renren', '0', null, '0', '2021-10-11 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('351', '1', 'testTask', 'renren', '0', null, '1', '2021-10-11 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('352', '1', 'testTask', 'renren', '0', null, '1', '2021-10-12 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('353', '1', 'testTask', 'renren', '0', null, '0', '2021-10-12 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('354', '1', 'testTask', 'renren', '0', null, '1', '2021-10-12 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('355', '1', 'testTask', 'renren', '0', null, '0', '2021-10-12 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('356', '1', 'testTask', 'renren', '0', null, '1', '2021-10-12 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('357', '1', 'testTask', 'renren', '0', null, '2', '2021-10-12 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('358', '1', 'testTask', 'renren', '0', null, '2', '2021-10-12 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('359', '1', 'testTask', 'renren', '0', null, '1', '2021-10-12 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('360', '1', 'testTask', 'renren', '0', null, '1', '2021-10-12 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('361', '1', 'testTask', 'renren', '0', null, '4', '2021-10-12 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('362', '1', 'testTask', 'renren', '0', null, '4', '2021-10-12 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('363', '1', 'testTask', 'renren', '0', null, '1', '2021-10-12 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('364', '1', 'testTask', 'renren', '0', null, '1', '2021-10-12 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('365', '1', 'testTask', 'renren', '0', null, '1', '2021-10-12 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('366', '1', 'testTask', 'renren', '0', null, '0', '2021-10-12 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('367', '1', 'testTask', 'renren', '0', null, '1', '2021-10-12 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('368', '1', 'testTask', 'renren', '0', null, '1', '2021-10-12 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('369', '1', 'testTask', 'renren', '0', null, '0', '2021-10-12 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('370', '1', 'testTask', 'renren', '0', null, '0', '2021-10-13 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('371', '1', 'testTask', 'renren', '0', null, '1', '2021-10-13 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('372', '1', 'testTask', 'renren', '0', null, '0', '2021-10-13 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('373', '1', 'testTask', 'renren', '0', null, '0', '2021-10-13 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('374', '1', 'testTask', 'renren', '0', null, '1', '2021-10-13 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('375', '1', 'testTask', 'renren', '0', null, '0', '2021-10-13 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('376', '1', 'testTask', 'renren', '0', null, '1', '2021-10-13 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('377', '1', 'testTask', 'renren', '0', null, '1', '2021-10-13 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('378', '1', 'testTask', 'renren', '0', null, '1', '2021-10-13 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('379', '1', 'testTask', 'renren', '0', null, '0', '2021-10-13 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('380', '1', 'testTask', 'renren', '0', null, '1', '2021-10-13 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('381', '1', 'testTask', 'renren', '0', null, '0', '2021-10-13 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('382', '1', 'testTask', 'renren', '0', null, '1', '2021-10-13 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('383', '1', 'testTask', 'renren', '0', null, '1', '2021-10-13 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('384', '1', 'testTask', 'renren', '0', null, '0', '2021-10-13 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('385', '1', 'testTask', 'renren', '0', null, '0', '2021-10-13 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('386', '1', 'testTask', 'renren', '0', null, '1', '2021-10-13 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('387', '1', 'testTask', 'renren', '0', null, '1', '2021-10-13 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('388', '1', 'testTask', 'renren', '0', null, '0', '2021-10-14 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('389', '1', 'testTask', 'renren', '0', null, '1', '2021-10-14 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('390', '1', 'testTask', 'renren', '0', null, '0', '2021-10-14 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('391', '1', 'testTask', 'renren', '0', null, '1', '2021-10-14 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('392', '1', 'testTask', 'renren', '0', null, '0', '2021-10-14 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('393', '1', 'testTask', 'renren', '0', null, '0', '2021-10-14 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('394', '1', 'testTask', 'renren', '0', null, '1', '2021-10-14 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('395', '1', 'testTask', 'renren', '0', null, '0', '2021-10-14 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('396', '1', 'testTask', 'renren', '0', null, '1', '2021-10-14 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('397', '1', 'testTask', 'renren', '0', null, '0', '2021-10-14 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('398', '1', 'testTask', 'renren', '0', null, '0', '2021-10-14 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('399', '1', 'testTask', 'renren', '0', null, '0', '2021-10-14 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('400', '1', 'testTask', 'renren', '0', null, '0', '2021-10-14 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('401', '1', 'testTask', 'renren', '0', null, '1', '2021-10-14 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('402', '1', 'testTask', 'renren', '0', null, '2', '2021-10-14 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('403', '1', 'testTask', 'renren', '0', null, '0', '2021-10-14 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('404', '1', 'testTask', 'renren', '0', null, '1', '2021-10-15 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('405', '1', 'testTask', 'renren', '0', null, '1', '2021-10-15 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('406', '1', 'testTask', 'renren', '0', null, '0', '2021-10-15 10:30:02');
INSERT INTO `schedule_job_log` VALUES ('407', '1', 'testTask', 'renren', '0', null, '0', '2021-10-15 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('408', '1', 'testTask', 'renren', '0', null, '1', '2021-10-15 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('409', '1', 'testTask', 'renren', '0', null, '1', '2021-10-15 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('410', '1', 'testTask', 'renren', '0', null, '0', '2021-10-15 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('411', '1', 'testTask', 'renren', '0', null, '3', '2021-10-15 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('412', '1', 'testTask', 'renren', '0', null, '1', '2021-10-15 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('413', '1', 'testTask', 'renren', '0', null, '0', '2021-10-15 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('414', '1', 'testTask', 'renren', '0', null, '1', '2021-10-15 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('415', '1', 'testTask', 'renren', '0', null, '0', '2021-10-15 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('416', '1', 'testTask', 'renren', '0', null, '4', '2021-10-15 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('417', '1', 'testTask', 'renren', '0', null, '0', '2021-10-15 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('418', '1', 'testTask', 'renren', '0', null, '1', '2021-10-15 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('419', '1', 'testTask', 'renren', '0', null, '1', '2021-10-15 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('420', '1', 'testTask', 'renren', '0', null, '0', '2021-10-15 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('421', '1', 'testTask', 'renren', '0', null, '1', '2021-10-18 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('422', '1', 'testTask', 'renren', '0', null, '0', '2021-10-18 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('423', '1', 'testTask', 'renren', '0', null, '0', '2021-10-18 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('424', '1', 'testTask', 'renren', '0', null, '1', '2021-10-18 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('425', '1', 'testTask', 'renren', '0', null, '0', '2021-10-18 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('426', '1', 'testTask', 'renren', '0', null, '0', '2021-10-18 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('427', '1', 'testTask', 'renren', '0', null, '1', '2021-10-20 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('428', '1', 'testTask', 'renren', '0', null, '1', '2021-10-20 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('429', '1', 'testTask', 'renren', '0', null, '0', '2021-10-20 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('430', '1', 'testTask', 'renren', '0', null, '3', '2021-10-20 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('431', '1', 'testTask', 'renren', '0', null, '0', '2021-10-20 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('432', '1', 'testTask', 'renren', '0', null, '0', '2021-10-20 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('433', '1', 'testTask', 'renren', '0', null, '0', '2021-10-20 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('434', '1', 'testTask', 'renren', '0', null, '0', '2021-10-20 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('435', '1', 'testTask', 'renren', '0', null, '0', '2021-10-20 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('436', '1', 'testTask', 'renren', '0', null, '1', '2021-10-20 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('437', '1', 'testTask', 'renren', '0', null, '1', '2021-10-20 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('438', '1', 'testTask', 'renren', '0', null, '1', '2021-10-20 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('439', '1', 'testTask', 'renren', '0', null, '0', '2021-10-20 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('440', '1', 'testTask', 'renren', '0', null, '0', '2021-10-20 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('441', '1', 'testTask', 'renren', '0', null, '1', '2021-10-20 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('442', '1', 'testTask', 'renren', '0', null, '1', '2021-10-20 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('443', '1', 'testTask', 'renren', '0', null, '1', '2021-10-20 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('444', '1', 'testTask', 'renren', '0', null, '0', '2021-10-20 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('445', '1', 'testTask', 'renren', '0', null, '0', '2021-10-21 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('446', '1', 'testTask', 'renren', '0', null, '0', '2021-10-21 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('447', '1', 'testTask', 'renren', '0', null, '2', '2021-10-21 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('448', '1', 'testTask', 'renren', '0', null, '1', '2021-10-21 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('449', '1', 'testTask', 'renren', '0', null, '1', '2021-10-21 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('450', '1', 'testTask', 'renren', '0', null, '0', '2021-10-21 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('451', '1', 'testTask', 'renren', '0', null, '1', '2021-10-21 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('452', '1', 'testTask', 'renren', '0', null, '1', '2021-10-21 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('453', '1', 'testTask', 'renren', '0', null, '2', '2021-10-21 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('454', '1', 'testTask', 'renren', '0', null, '1', '2021-10-21 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('455', '1', 'testTask', 'renren', '0', null, '0', '2021-10-21 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('456', '1', 'testTask', 'renren', '0', null, '0', '2021-10-21 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('457', '1', 'testTask', 'renren', '0', null, '0', '2021-10-21 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('458', '1', 'testTask', 'renren', '0', null, '1', '2021-10-21 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('459', '1', 'testTask', 'renren', '0', null, '0', '2021-10-21 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('460', '1', 'testTask', 'renren', '0', null, '1', '2021-10-21 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('461', '1', 'testTask', 'renren', '0', null, '0', '2021-10-21 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('462', '1', 'testTask', 'renren', '0', null, '1', '2021-10-21 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('463', '1', 'testTask', 'renren', '0', null, '2', '2021-10-21 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('464', '1', 'testTask', 'renren', '0', null, '0', '2021-10-22 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('465', '1', 'testTask', 'renren', '0', null, '0', '2021-10-22 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('466', '1', 'testTask', 'renren', '0', null, '1', '2021-10-22 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('467', '1', 'testTask', 'renren', '0', null, '2', '2021-10-22 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('468', '1', 'testTask', 'renren', '0', null, '2', '2021-10-22 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('469', '1', 'testTask', 'renren', '0', null, '1', '2021-10-22 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('470', '1', 'testTask', 'renren', '0', null, '0', '2021-10-22 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('471', '1', 'testTask', 'renren', '0', null, '0', '2021-10-22 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('472', '1', 'testTask', 'renren', '0', null, '1', '2021-10-22 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('473', '1', 'testTask', 'renren', '0', null, '0', '2021-10-22 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('474', '1', 'testTask', 'renren', '0', null, '0', '2021-10-22 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('475', '1', 'testTask', 'renren', '0', null, '1', '2021-10-22 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('476', '1', 'testTask', 'renren', '0', null, '0', '2021-10-22 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('477', '1', 'testTask', 'renren', '0', null, '1', '2021-10-22 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('478', '1', 'testTask', 'renren', '0', null, '0', '2021-10-22 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('479', '1', 'testTask', 'renren', '0', null, '2', '2021-10-22 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('480', '1', 'testTask', 'renren', '0', null, '1', '2021-10-22 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('481', '1', 'testTask', 'renren', '0', null, '1', '2021-10-22 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('482', '1', 'testTask', 'renren', '0', null, '3', '2021-10-22 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('483', '1', 'testTask', 'renren', '0', null, '1', '2021-10-22 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('484', '1', 'testTask', 'renren', '0', null, '1', '2021-10-25 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('485', '1', 'testTask', 'renren', '0', null, '0', '2021-10-25 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('486', '1', 'testTask', 'renren', '0', null, '1', '2021-10-25 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('487', '1', 'testTask', 'renren', '0', null, '0', '2021-10-25 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('488', '1', 'testTask', 'renren', '0', null, '2', '2021-10-25 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('489', '1', 'testTask', 'renren', '0', null, '0', '2021-10-25 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('490', '1', 'testTask', 'renren', '0', null, '4', '2021-10-25 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('491', '1', 'testTask', 'renren', '0', null, '2', '2021-10-25 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('492', '1', 'testTask', 'renren', '0', null, '1', '2021-10-25 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('493', '1', 'testTask', 'renren', '0', null, '0', '2021-10-25 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('494', '1', 'testTask', 'renren', '0', null, '0', '2021-10-25 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('495', '1', 'testTask', 'renren', '0', null, '2', '2021-10-25 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('496', '1', 'testTask', 'renren', '0', null, '0', '2021-10-25 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('497', '1', 'testTask', 'renren', '0', null, '0', '2021-10-25 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('498', '1', 'testTask', 'renren', '0', null, '6', '2021-10-25 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('499', '1', 'testTask', 'renren', '0', null, '1', '2021-10-25 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('500', '1', 'testTask', 'renren', '0', null, '0', '2021-10-25 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('501', '1', 'testTask', 'renren', '0', null, '0', '2021-10-25 17:00:02');
INSERT INTO `schedule_job_log` VALUES ('502', '1', 'testTask', 'renren', '0', null, '0', '2021-10-26 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('503', '1', 'testTask', 'renren', '0', null, '0', '2021-10-26 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('504', '1', 'testTask', 'renren', '0', null, '4', '2021-10-26 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('505', '1', 'testTask', 'renren', '0', null, '1', '2021-10-26 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('506', '1', 'testTask', 'renren', '0', null, '1', '2021-10-26 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('507', '1', 'testTask', 'renren', '0', null, '1', '2021-10-26 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('508', '1', 'testTask', 'renren', '0', null, '1', '2021-10-26 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('509', '1', 'testTask', 'renren', '0', null, '0', '2021-10-26 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('510', '1', 'testTask', 'renren', '0', null, '3', '2021-10-26 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('511', '1', 'testTask', 'renren', '0', null, '1', '2021-10-26 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('512', '1', 'testTask', 'renren', '0', null, '0', '2021-10-26 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('513', '1', 'testTask', 'renren', '0', null, '3', '2021-10-26 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('514', '1', 'testTask', 'renren', '0', null, '1', '2021-10-27 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('515', '1', 'testTask', 'renren', '0', null, '1', '2021-10-27 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('516', '1', 'testTask', 'renren', '0', null, '1', '2021-10-27 09:30:51');
INSERT INTO `schedule_job_log` VALUES ('517', '1', 'testTask', 'renren', '0', null, '0', '2021-10-27 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('518', '1', 'testTask', 'renren', '0', null, '1', '2021-10-27 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('519', '1', 'testTask', 'renren', '0', null, '1', '2021-10-27 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('520', '1', 'testTask', 'renren', '0', null, '2', '2021-10-27 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('521', '1', 'testTask', 'renren', '0', null, '0', '2021-10-27 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('522', '1', 'testTask', 'renren', '0', null, '0', '2021-10-27 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('523', '1', 'testTask', 'renren', '0', null, '1', '2021-10-27 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('524', '1', 'testTask', 'renren', '0', null, '1', '2021-10-27 15:30:09');
INSERT INTO `schedule_job_log` VALUES ('525', '1', 'testTask', 'renren', '0', null, '0', '2021-10-27 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('526', '1', 'testTask', 'renren', '0', null, '0', '2021-10-27 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('527', '1', 'testTask', 'renren', '0', null, '1', '2021-10-27 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('528', '1', 'testTask', 'renren', '0', null, '3', '2021-10-27 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('529', '1', 'testTask', 'renren', '0', null, '0', '2021-10-27 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('530', '1', 'testTask', 'renren', '0', null, '0', '2021-10-28 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('531', '1', 'testTask', 'renren', '0', null, '0', '2021-10-28 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('532', '1', 'testTask', 'renren', '0', null, '1', '2021-10-28 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('533', '1', 'testTask', 'renren', '0', null, '2', '2021-10-28 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('534', '1', 'testTask', 'renren', '0', null, '1', '2021-10-28 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('535', '1', 'testTask', 'renren', '0', null, '1', '2021-10-28 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('536', '1', 'testTask', 'renren', '0', null, '1', '2021-10-28 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('537', '1', 'testTask', 'renren', '0', null, '1', '2021-10-28 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('538', '1', 'testTask', 'renren', '0', null, '0', '2021-10-28 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('539', '1', 'testTask', 'renren', '0', null, '1', '2021-10-28 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('540', '1', 'testTask', 'renren', '0', null, '1', '2021-10-28 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('541', '1', 'testTask', 'renren', '0', null, '1', '2021-10-28 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('542', '1', 'testTask', 'renren', '0', null, '1', '2021-10-28 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('543', '1', 'testTask', 'renren', '0', null, '0', '2021-10-28 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('544', '1', 'testTask', 'renren', '0', null, '0', '2021-10-28 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('545', '1', 'testTask', 'renren', '0', null, '0', '2021-10-28 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('546', '1', 'testTask', 'renren', '0', null, '2', '2021-10-28 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('547', '1', 'testTask', 'renren', '0', null, '1', '2021-10-28 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('548', '1', 'testTask', 'renren', '0', null, '1', '2021-10-28 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('549', '1', 'testTask', 'renren', '0', null, '1', '2021-10-29 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('550', '1', 'testTask', 'renren', '0', null, '2', '2021-10-29 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('551', '1', 'testTask', 'renren', '0', null, '0', '2021-10-29 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('552', '1', 'testTask', 'renren', '0', null, '0', '2021-10-29 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('553', '1', 'testTask', 'renren', '0', null, '0', '2021-10-29 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('554', '1', 'testTask', 'renren', '0', null, '0', '2021-10-29 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('555', '1', 'testTask', 'renren', '0', null, '0', '2021-10-29 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('556', '1', 'testTask', 'renren', '0', null, '2', '2021-10-29 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('557', '1', 'testTask', 'renren', '0', null, '1', '2021-10-29 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('558', '1', 'testTask', 'renren', '0', null, '0', '2021-10-29 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('559', '1', 'testTask', 'renren', '0', null, '0', '2021-10-29 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('560', '1', 'testTask', 'renren', '0', null, '1', '2021-10-29 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('561', '1', 'testTask', 'renren', '0', null, '2', '2021-10-29 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('562', '1', 'testTask', 'renren', '0', null, '1', '2021-10-29 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('563', '1', 'testTask', 'renren', '0', null, '0', '2021-10-29 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('564', '1', 'testTask', 'renren', '0', null, '1', '2021-10-29 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('565', '1', 'testTask', 'renren', '0', null, '0', '2021-10-29 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('566', '1', 'testTask', 'renren', '0', null, '1', '2021-10-29 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('567', '1', 'testTask', 'renren', '0', null, '1', '2021-10-29 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('568', '1', 'testTask', 'renren', '0', null, '0', '2021-10-29 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('569', '1', 'testTask', 'renren', '0', null, '1', '2021-10-29 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('570', '1', 'testTask', 'renren', '0', null, '0', '2021-10-29 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('571', '1', 'testTask', 'renren', '0', null, '4', '2021-10-30 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('572', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('573', '1', 'testTask', 'renren', '0', null, '1', '2021-10-30 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('574', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('575', '1', 'testTask', 'renren', '0', null, '1', '2021-10-30 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('576', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('577', '1', 'testTask', 'renren', '0', null, '1', '2021-10-30 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('578', '1', 'testTask', 'renren', '0', null, '1', '2021-10-30 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('579', '1', 'testTask', 'renren', '0', null, '2', '2021-10-30 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('580', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('581', '1', 'testTask', 'renren', '0', null, '1', '2021-10-30 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('582', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('583', '1', 'testTask', 'renren', '0', null, '2', '2021-10-30 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('584', '1', 'testTask', 'renren', '0', null, '1', '2021-10-30 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('585', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('586', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('587', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 18:30:00');
INSERT INTO `schedule_job_log` VALUES ('588', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 19:00:00');
INSERT INTO `schedule_job_log` VALUES ('589', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 19:30:00');
INSERT INTO `schedule_job_log` VALUES ('590', '1', 'testTask', 'renren', '0', null, '1', '2021-10-30 20:00:00');
INSERT INTO `schedule_job_log` VALUES ('591', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 20:30:00');
INSERT INTO `schedule_job_log` VALUES ('592', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('593', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 21:30:00');
INSERT INTO `schedule_job_log` VALUES ('594', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 22:00:00');
INSERT INTO `schedule_job_log` VALUES ('595', '1', 'testTask', 'renren', '0', null, '1', '2021-10-30 22:30:00');
INSERT INTO `schedule_job_log` VALUES ('596', '1', 'testTask', 'renren', '0', null, '0', '2021-10-30 23:00:00');
INSERT INTO `schedule_job_log` VALUES ('597', '1', 'testTask', 'renren', '0', null, '1', '2021-10-30 23:30:00');
INSERT INTO `schedule_job_log` VALUES ('598', '1', 'testTask', 'renren', '0', null, '3', '2021-10-31 00:00:00');
INSERT INTO `schedule_job_log` VALUES ('599', '1', 'testTask', 'renren', '0', null, '1', '2021-10-31 00:30:00');
INSERT INTO `schedule_job_log` VALUES ('600', '1', 'testTask', 'renren', '0', null, '0', '2021-10-31 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('601', '1', 'testTask', 'renren', '0', null, '1', '2021-10-31 21:00:00');
INSERT INTO `schedule_job_log` VALUES ('602', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('603', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('604', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('605', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('606', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('607', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('608', '1', 'testTask', 'renren', '0', null, '2', '2021-11-01 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('609', '1', 'testTask', 'renren', '0', null, '1', '2021-11-01 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('610', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('611', '1', 'testTask', 'renren', '0', null, '1', '2021-11-01 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('612', '1', 'testTask', 'renren', '0', null, '1', '2021-11-01 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('613', '1', 'testTask', 'renren', '0', null, '1', '2021-11-01 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('614', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('615', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('616', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('617', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('618', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('619', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('620', '1', 'testTask', 'renren', '0', null, '0', '2021-11-01 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('621', '1', 'testTask', 'renren', '0', null, '0', '2021-11-02 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('622', '1', 'testTask', 'renren', '0', null, '0', '2021-11-02 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('623', '1', 'testTask', 'renren', '0', null, '0', '2021-11-02 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('624', '1', 'testTask', 'renren', '0', null, '0', '2021-11-02 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('625', '1', 'testTask', 'renren', '0', null, '1', '2021-11-02 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('626', '1', 'testTask', 'renren', '0', null, '1', '2021-11-02 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('627', '1', 'testTask', 'renren', '0', null, '1', '2021-11-02 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('628', '1', 'testTask', 'renren', '0', null, '0', '2021-11-02 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('629', '1', 'testTask', 'renren', '0', null, '1', '2021-11-02 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('630', '1', 'testTask', 'renren', '0', null, '0', '2021-11-02 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('631', '1', 'testTask', 'renren', '0', null, '0', '2021-11-02 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('632', '1', 'testTask', 'renren', '0', null, '1', '2021-11-02 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('633', '1', 'testTask', 'renren', '0', null, '1', '2021-11-02 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('634', '1', 'testTask', 'renren', '0', null, '0', '2021-11-02 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('635', '1', 'testTask', 'renren', '0', null, '0', '2021-11-02 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('636', '1', 'testTask', 'renren', '0', null, '0', '2021-11-02 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('637', '1', 'testTask', 'renren', '0', null, '0', '2021-11-02 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('638', '1', 'testTask', 'renren', '0', null, '0', '2021-11-02 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('639', '1', 'testTask', 'renren', '0', null, '0', '2021-11-02 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('640', '1', 'testTask', 'renren', '0', null, '1', '2021-11-03 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('641', '1', 'testTask', 'renren', '0', null, '0', '2021-11-03 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('642', '1', 'testTask', 'renren', '0', null, '0', '2021-11-03 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('643', '1', 'testTask', 'renren', '0', null, '0', '2021-11-03 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('644', '1', 'testTask', 'renren', '0', null, '3', '2021-11-03 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('645', '1', 'testTask', 'renren', '0', null, '2', '2021-11-03 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('646', '1', 'testTask', 'renren', '0', null, '0', '2021-11-03 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('647', '1', 'testTask', 'renren', '0', null, '1', '2021-11-03 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('648', '1', 'testTask', 'renren', '0', null, '0', '2021-11-03 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('649', '1', 'testTask', 'renren', '0', null, '1', '2021-11-03 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('650', '1', 'testTask', 'renren', '0', null, '1', '2021-11-03 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('651', '1', 'testTask', 'renren', '0', null, '1', '2021-11-03 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('652', '1', 'testTask', 'renren', '0', null, '1', '2021-11-04 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('653', '1', 'testTask', 'renren', '0', null, '0', '2021-11-04 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('654', '1', 'testTask', 'renren', '0', null, '2', '2021-11-04 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('655', '1', 'testTask', 'renren', '0', null, '1', '2021-11-04 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('656', '1', 'testTask', 'renren', '0', null, '0', '2021-11-04 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('657', '1', 'testTask', 'renren', '0', null, '3', '2021-11-04 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('658', '1', 'testTask', 'renren', '0', null, '0', '2021-11-04 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('659', '1', 'testTask', 'renren', '0', null, '0', '2021-11-04 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('660', '1', 'testTask', 'renren', '0', null, '0', '2021-11-04 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('661', '1', 'testTask', 'renren', '0', null, '0', '2021-11-04 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('662', '1', 'testTask', 'renren', '0', null, '1', '2021-11-04 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('663', '1', 'testTask', 'renren', '0', null, '1', '2021-11-04 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('664', '1', 'testTask', 'renren', '0', null, '0', '2021-11-04 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('665', '1', 'testTask', 'renren', '0', null, '5', '2021-11-04 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('666', '1', 'testTask', 'renren', '0', null, '1', '2021-11-04 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('667', '1', 'testTask', 'renren', '0', null, '1', '2021-11-05 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('668', '1', 'testTask', 'renren', '0', null, '1', '2021-11-05 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('669', '1', 'testTask', 'renren', '0', null, '0', '2021-11-05 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('670', '1', 'testTask', 'renren', '0', null, '0', '2021-11-05 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('671', '1', 'testTask', 'renren', '0', null, '0', '2021-11-05 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('672', '1', 'testTask', 'renren', '0', null, '1', '2021-11-05 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('673', '1', 'testTask', 'renren', '0', null, '1', '2021-11-05 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('674', '1', 'testTask', 'renren', '0', null, '0', '2021-11-05 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('675', '1', 'testTask', 'renren', '0', null, '1', '2021-11-05 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('676', '1', 'testTask', 'renren', '0', null, '0', '2021-11-05 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('677', '1', 'testTask', 'renren', '0', null, '1', '2021-11-05 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('678', '1', 'testTask', 'renren', '0', null, '0', '2021-11-05 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('679', '1', 'testTask', 'renren', '0', null, '2', '2021-11-05 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('680', '1', 'testTask', 'renren', '0', null, '2', '2021-11-05 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('681', '1', 'testTask', 'renren', '0', null, '1', '2021-11-05 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('682', '1', 'testTask', 'renren', '0', null, '0', '2021-11-05 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('683', '1', 'testTask', 'renren', '0', null, '0', '2021-11-05 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('684', '1', 'testTask', 'renren', '0', null, '0', '2021-11-08 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('685', '1', 'testTask', 'renren', '0', null, '1', '2021-11-08 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('686', '1', 'testTask', 'renren', '0', null, '1', '2021-11-08 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('687', '1', 'testTask', 'renren', '0', null, '1', '2021-11-08 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('688', '1', 'testTask', 'renren', '0', null, '1', '2021-11-08 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('689', '1', 'testTask', 'renren', '0', null, '1', '2021-11-08 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('690', '1', 'testTask', 'renren', '0', null, '0', '2021-11-08 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('691', '1', 'testTask', 'renren', '0', null, '0', '2021-11-08 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('692', '1', 'testTask', 'renren', '0', null, '1', '2021-11-08 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('693', '1', 'testTask', 'renren', '0', null, '1', '2021-11-08 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('694', '1', 'testTask', 'renren', '0', null, '1', '2021-11-08 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('695', '1', 'testTask', 'renren', '0', null, '1', '2021-11-08 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('696', '1', 'testTask', 'renren', '0', null, '1', '2021-11-08 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('697', '1', 'testTask', 'renren', '0', null, '0', '2021-11-08 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('698', '1', 'testTask', 'renren', '0', null, '1', '2021-11-08 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('699', '1', 'testTask', 'renren', '0', null, '1', '2021-11-08 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('700', '1', 'testTask', 'renren', '0', null, '3', '2021-11-08 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('701', '1', 'testTask', 'renren', '0', null, '0', '2021-11-09 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('702', '1', 'testTask', 'renren', '0', null, '0', '2021-11-09 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('703', '1', 'testTask', 'renren', '0', null, '1', '2021-11-09 09:30:00');
INSERT INTO `schedule_job_log` VALUES ('704', '1', 'testTask', 'renren', '0', null, '1', '2021-11-09 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('705', '1', 'testTask', 'renren', '0', null, '1', '2021-11-09 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('706', '1', 'testTask', 'renren', '0', null, '2', '2021-11-09 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('707', '1', 'testTask', 'renren', '0', null, '0', '2021-11-09 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('708', '1', 'testTask', 'renren', '0', null, '0', '2021-11-09 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('709', '1', 'testTask', 'renren', '0', null, '1', '2021-11-09 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('710', '1', 'testTask', 'renren', '0', null, '0', '2021-11-09 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('711', '1', 'testTask', 'renren', '0', null, '1', '2021-11-09 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('712', '1', 'testTask', 'renren', '0', null, '0', '2021-11-09 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('713', '1', 'testTask', 'renren', '0', null, '1', '2021-11-09 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('714', '1', 'testTask', 'renren', '0', null, '2', '2021-11-09 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('715', '1', 'testTask', 'renren', '0', null, '0', '2021-11-09 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('716', '1', 'testTask', 'renren', '0', null, '0', '2021-11-09 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('717', '1', 'testTask', 'renren', '0', null, '3', '2021-11-09 17:00:00');
INSERT INTO `schedule_job_log` VALUES ('718', '1', 'testTask', 'renren', '0', null, '1', '2021-11-09 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('719', '1', 'testTask', 'renren', '0', null, '4', '2021-11-09 18:00:00');
INSERT INTO `schedule_job_log` VALUES ('720', '1', 'testTask', 'renren', '0', null, '0', '2021-11-10 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('721', '1', 'testTask', 'renren', '0', null, '0', '2021-11-10 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('722', '1', 'testTask', 'renren', '0', null, '1', '2021-11-10 10:30:00');
INSERT INTO `schedule_job_log` VALUES ('723', '1', 'testTask', 'renren', '0', null, '1', '2021-11-10 11:00:00');
INSERT INTO `schedule_job_log` VALUES ('724', '1', 'testTask', 'renren', '0', null, '0', '2021-11-10 11:30:00');
INSERT INTO `schedule_job_log` VALUES ('725', '1', 'testTask', 'renren', '0', null, '1', '2021-11-10 12:00:00');
INSERT INTO `schedule_job_log` VALUES ('726', '1', 'testTask', 'renren', '0', null, '1', '2021-11-10 12:30:00');
INSERT INTO `schedule_job_log` VALUES ('727', '1', 'testTask', 'renren', '0', null, '0', '2021-11-10 13:00:00');
INSERT INTO `schedule_job_log` VALUES ('728', '1', 'testTask', 'renren', '0', null, '1', '2021-11-10 13:30:00');
INSERT INTO `schedule_job_log` VALUES ('729', '1', 'testTask', 'renren', '0', null, '1', '2021-11-10 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('730', '1', 'testTask', 'renren', '0', null, '1', '2021-11-10 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('731', '1', 'testTask', 'renren', '0', null, '1', '2021-11-10 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('732', '1', 'testTask', 'renren', '0', null, '1', '2021-11-10 15:30:00');
INSERT INTO `schedule_job_log` VALUES ('733', '1', 'testTask', 'renren', '0', null, '1', '2021-11-10 16:00:00');
INSERT INTO `schedule_job_log` VALUES ('734', '1', 'testTask', 'renren', '0', null, '1', '2021-11-10 16:30:00');
INSERT INTO `schedule_job_log` VALUES ('735', '1', 'testTask', 'renren', '0', null, '1', '2021-11-10 17:30:00');
INSERT INTO `schedule_job_log` VALUES ('736', '1', 'testTask', 'renren', '0', null, '0', '2021-11-12 14:00:00');
INSERT INTO `schedule_job_log` VALUES ('737', '1', 'testTask', 'renren', '0', null, '1', '2021-11-12 14:30:00');
INSERT INTO `schedule_job_log` VALUES ('738', '1', 'testTask', 'renren', '0', null, '1', '2021-11-12 15:00:00');
INSERT INTO `schedule_job_log` VALUES ('739', '1', 'testTask', 'renren', '0', null, '1', '2021-12-07 01:00:00');
INSERT INTO `schedule_job_log` VALUES ('740', '1', 'testTask', 'renren', '0', null, '0', '2021-12-07 01:30:00');
INSERT INTO `schedule_job_log` VALUES ('741', '1', 'testTask', 'renren', '0', null, '0', '2021-12-07 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('742', '1', 'testTask', 'renren', '0', null, '0', '2021-12-07 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('743', '1', 'testTask', 'renren', '0', null, '0', '2021-12-07 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('744', '1', 'testTask', 'renren', '0', null, '0', '2021-12-07 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('745', '1', 'testTask', 'renren', '0', null, '0', '2021-12-07 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('746', '1', 'testTask', 'renren', '0', null, '0', '2021-12-07 10:00:00');
INSERT INTO `schedule_job_log` VALUES ('747', '1', 'testTask', 'renren', '0', null, '0', '2021-12-08 02:00:00');
INSERT INTO `schedule_job_log` VALUES ('748', '1', 'testTask', 'renren', '0', null, '0', '2021-12-08 02:30:00');
INSERT INTO `schedule_job_log` VALUES ('749', '1', 'testTask', 'renren', '0', null, '0', '2021-12-08 03:00:00');
INSERT INTO `schedule_job_log` VALUES ('750', '1', 'testTask', 'renren', '0', null, '0', '2021-12-08 03:30:00');
INSERT INTO `schedule_job_log` VALUES ('751', '1', 'testTask', 'renren', '0', null, '0', '2021-12-08 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('752', '1', 'testTask', 'renren', '0', null, '0', '2022-01-18 04:00:00');
INSERT INTO `schedule_job_log` VALUES ('753', '1', 'testTask', 'renren', '0', null, '0', '2022-01-18 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('754', '1', 'testTask', 'renren', '0', null, '1', '2022-01-18 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('755', '1', 'testTask', 'renren', '0', null, '3', '2022-01-19 08:00:00');
INSERT INTO `schedule_job_log` VALUES ('756', '1', 'testTask', 'renren', '0', null, '0', '2022-01-19 08:30:00');
INSERT INTO `schedule_job_log` VALUES ('757', '1', 'testTask', 'renren', '0', null, '1', '2022-01-19 09:00:00');
INSERT INTO `schedule_job_log` VALUES ('758', '1', 'testTask', 'renren', '0', null, '1', '2022-01-19 10:00:00');

-- ----------------------------
-- Table structure for sys_captcha
-- ----------------------------
DROP TABLE IF EXISTS `sys_captcha`;
CREATE TABLE `sys_captcha` (
  `uuid` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'uuid',
  `code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '验证码',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='系统验证码';

-- ----------------------------
-- Records of sys_captcha
-- ----------------------------
INSERT INTO `sys_captcha` VALUES ('01ae8452-a66f-4640-87d3-587e17bcb37a', 'acpw3', '2021-11-04 10:41:03');
INSERT INTO `sys_captcha` VALUES ('03bf4538-7191-4e16-8f0b-37f22805a41c', '77aaf', '2021-09-15 08:23:42');
INSERT INTO `sys_captcha` VALUES ('0a293b57-f1d4-4c43-8340-ad98e7d868de', 'p3epe', '2021-10-21 08:25:17');
INSERT INTO `sys_captcha` VALUES ('0cccbf7b-e146-41cf-8c4e-58f656e321e9', 'g8be4', '2021-10-26 16:48:48');
INSERT INTO `sys_captcha` VALUES ('111f400f-7baa-44f9-8bbe-e10788b2b108', 'empb4', '2021-11-10 16:46:54');
INSERT INTO `sys_captcha` VALUES ('1decebb7-0cdd-4de9-88d3-cc332ae8561f', '765g3', '2021-09-30 08:22:00');
INSERT INTO `sys_captcha` VALUES ('22e564ec-0be7-48c6-851d-86504b4eea69', 'p3wd3', '2021-10-12 08:09:48');
INSERT INTO `sys_captcha` VALUES ('25e5fe59-2cd0-413e-8da2-3853e0268a1d', 'wcww5', '2021-09-27 10:55:05');
INSERT INTO `sys_captcha` VALUES ('32de7beb-860d-44e3-845e-dc521b2975e5', 'd72w5', '2021-10-08 17:02:03');
INSERT INTO `sys_captcha` VALUES ('3d59cd9c-53b9-4db9-8366-54bfb579fbea', 'xmxgf', '2021-09-30 08:22:05');
INSERT INTO `sys_captcha` VALUES ('3dc41b82-6f5b-4d7a-85a9-312d32430f0f', 'n2f6m', '2021-10-15 10:35:02');
INSERT INTO `sys_captcha` VALUES ('41e31d54-81e3-4614-87d3-546a583a19c0', 'mn64d', '2021-10-12 08:16:36');
INSERT INTO `sys_captcha` VALUES ('46df4294-7e5a-4b68-8ae8-f77fff6b03f0', '8f8nw', '2021-10-26 16:19:39');
INSERT INTO `sys_captcha` VALUES ('48f6ff0a-56b3-442c-8e88-b2916f692a42', '82np3', '2021-09-27 11:02:04');
INSERT INTO `sys_captcha` VALUES ('5659b9e6-d8a5-4ab6-87c1-233b8537cd95', 'nxbcy', '2021-09-18 09:09:26');
INSERT INTO `sys_captcha` VALUES ('56c286da-c4c4-40e3-8e4d-43b1ce0be40e', 'wneyw', '2021-09-27 10:54:47');
INSERT INTO `sys_captcha` VALUES ('5bd77355-d211-4c87-8b3d-c2a834128f78', 'y8epc', '2021-10-11 16:37:38');
INSERT INTO `sys_captcha` VALUES ('5e5666e2-325b-4586-852f-6f5db51f656c', '3m8ng', '2021-11-05 10:20:18');
INSERT INTO `sys_captcha` VALUES ('5edae48f-280d-4ca4-88cd-22d88f0985a0', 'gfe48', '2021-10-29 19:16:27');
INSERT INTO `sys_captcha` VALUES ('5f4ce8aa-6ea7-4016-8229-6e87ba632342', '87mdx', '2021-09-27 11:13:06');
INSERT INTO `sys_captcha` VALUES ('6b9ed5f0-7530-4cbe-8104-02012ce50329', 'endcy', '2021-09-27 10:59:58');
INSERT INTO `sys_captcha` VALUES ('70a4e776-3e03-4894-8af0-ad652ba43e96', '5x5mw', '2021-10-28 09:33:50');
INSERT INTO `sys_captcha` VALUES ('7615771d-63da-4659-8fae-7135b3f1ce02', 'x264e', '2021-09-15 08:20:51');
INSERT INTO `sys_captcha` VALUES ('8840d15f-87bb-4b45-81c0-dd04b3e071ed', 'ngab5', '2021-09-27 10:54:55');
INSERT INTO `sys_captcha` VALUES ('8dbdb351-85a5-4a4c-8247-86302931ad00', 'bpnme', '2021-11-08 10:45:43');
INSERT INTO `sys_captcha` VALUES ('9196ad9d-c40f-4028-8979-db0e33f139e4', '77gn3', '2021-10-27 17:02:26');
INSERT INTO `sys_captcha` VALUES ('978a5543-4b57-43a6-8162-a8bb44040776', 'ed64n', '2021-10-15 09:31:05');
INSERT INTO `sys_captcha` VALUES ('9c9f6c13-2885-48e2-8d45-3256fdfa56e0', 'p8nxy', '2021-09-07 15:46:11');
INSERT INTO `sys_captcha` VALUES ('a46d7bf4-af93-4413-89ca-daa2d78a3956', 'mdnnn', '2021-09-18 08:18:32');
INSERT INTO `sys_captcha` VALUES ('ad584481-3148-45b2-8d18-26360ea72cf7', 'e3yg3', '2021-10-14 08:19:09');
INSERT INTO `sys_captcha` VALUES ('d0a3bc62-4795-4a6a-8ee2-7fada2b97a81', 'c53e4', '2021-10-14 16:48:56');
INSERT INTO `sys_captcha` VALUES ('d8a3f77b-148a-4614-8358-82824d7de5c7', 'wwamx', '2021-09-16 11:36:28');
INSERT INTO `sys_captcha` VALUES ('d9b9f754-4460-44b3-8ef9-b16adeb753a8', 'a3pwy', '2021-10-27 18:16:42');
INSERT INTO `sys_captcha` VALUES ('df4c7451-3e69-47e4-8b78-9a8e51de5552', 'fep3f', '2021-09-30 08:22:04');
INSERT INTO `sys_captcha` VALUES ('e957ab8f-7739-42b0-8888-bc825e35b3bb', 'gbnb4', '2021-09-27 10:57:02');
INSERT INTO `sys_captcha` VALUES ('eb2bc557-3048-401a-8b0e-e5a958511c5d', 'efb37', '2021-09-06 16:23:43');
INSERT INTO `sys_captcha` VALUES ('f8b3ac42-d8c6-4206-8115-a210b529b2d5', 'wgy7n', '2021-09-28 08:21:49');
INSERT INTO `sys_captcha` VALUES ('f8df2be5-24f1-464e-832a-d1e91325e3fb', 'df4wy', '2021-09-27 10:53:51');
INSERT INTO `sys_captcha` VALUES ('ff0edaec-6bae-4a35-84ac-1d7158e90611', 'c63c4', '2021-10-26 16:48:45');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'value',
  `status` tinyint DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `param_key` (`param_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', '0', '云存储配置信息');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求参数',
  `time` bigint NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[3]', '0', '0:0:0:0:0:0:0:1', '2021-09-07 18:02:15');
INSERT INTO `sys_log` VALUES ('2', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[30]', '0', '0:0:0:0:0:0:0:1', '2021-09-07 18:02:26');
INSERT INTO `sys_log` VALUES ('3', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[30]', '0', '0:0:0:0:0:0:0:1', '2021-09-08 08:14:18');
INSERT INTO `sys_log` VALUES ('4', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[36]', '5', '0:0:0:0:0:0:0:1', '2021-09-08 08:14:24');
INSERT INTO `sys_log` VALUES ('5', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[40]', '68', '0:0:0:0:0:0:0:1', '2021-09-08 08:14:31');
INSERT INTO `sys_log` VALUES ('6', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[39]', '65', '0:0:0:0:0:0:0:1', '2021-09-08 08:14:45');
INSERT INTO `sys_log` VALUES ('7', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[55]', '79', '0:0:0:0:0:0:0:1', '2021-09-08 08:14:59');
INSERT INTO `sys_log` VALUES ('8', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[38]', '67', '0:0:0:0:0:0:0:1', '2021-09-08 08:15:20');
INSERT INTO `sys_log` VALUES ('9', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[37]', '94', '0:0:0:0:0:0:0:1', '2021-09-08 08:15:30');
INSERT INTO `sys_log` VALUES ('10', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[36]', '92', '0:0:0:0:0:0:0:1', '2021-09-08 08:15:35');
INSERT INTO `sys_log` VALUES ('11', 'admin', '保存用户', 'io.renren.modules.sys.controller.SysUserController.save()', '[{\"userId\":2,\"username\":\"sys\",\"password\":\"94fdc90dc2ba6601eff2e5878eba0037715fa10df669050c40df89833abeefba\",\"salt\":\"xWnGzDmyzBaFPhlOBMJg\",\"email\":\"cbda@qq.com\",\"mobile\":\"15644891234\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Sep 10, 2021, 11:45:37 AM\"}]', '487', '0:0:0:0:0:0:0:1', '2021-09-10 11:45:38');
INSERT INTO `sys_log` VALUES ('12', 'admin', '保存用户', 'io.renren.modules.sys.controller.SysUserController.save()', '[{\"userId\":3,\"username\":\"dsada\",\"password\":\"9412c2c8fd4de80f68f080e95882edb3ee3496a7a2d281895420ae1fb270e877\",\"salt\":\"ls1onsjwjPzXd1L6PIup\",\"email\":\"bb@qq.com\",\"mobile\":\"12345678912\",\"status\":0,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Sep 10, 2021, 5:35:26 PM\"}]', '324', '0:0:0:0:0:0:0:1', '2021-09-10 17:35:26');
INSERT INTO `sys_log` VALUES ('13', 'admin', '删除用户', 'io.renren.modules.sys.controller.SysUserController.delete()', '[[2]]', '55', '0:0:0:0:0:0:0:1', '2021-09-10 17:35:32');
INSERT INTO `sys_log` VALUES ('14', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":78,\"parentId\":0,\"name\":\"出车记录\",\"url\":\"generator/tcarrun\",\"type\":1,\"icon\":\"config\",\"orderNum\":6,\"list\":[]}]', '104', '0:0:0:0:0:0:0:1', '2021-09-14 15:16:22');
INSERT INTO `sys_log` VALUES ('15', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":73,\"parentId\":0,\"name\":\"司机表\",\"url\":\"generator/tcardriver\",\"type\":1,\"icon\":\"config\",\"orderNum\":6,\"list\":[]}]', '79', '0:0:0:0:0:0:0:1', '2021-09-14 15:16:34');
INSERT INTO `sys_log` VALUES ('16', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":68,\"parentId\":0,\"name\":\"年检记录\",\"url\":\"generator/tcarinspection\",\"type\":1,\"icon\":\"config\",\"orderNum\":6,\"list\":[]}]', '151', '0:0:0:0:0:0:0:1', '2021-09-14 15:16:55');
INSERT INTO `sys_log` VALUES ('17', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":63,\"parentId\":0,\"name\":\"车辆档案\",\"url\":\"generator/tcarcar\",\"type\":1,\"icon\":\"config\",\"orderNum\":6,\"list\":[]}]', '92', '0:0:0:0:0:0:0:1', '2021-09-14 15:17:12');
INSERT INTO `sys_log` VALUES ('18', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":56,\"parentId\":0,\"name\":\"保险记录\",\"url\":\"generator/tcarinsurance\",\"type\":1,\"icon\":\"config\",\"orderNum\":6,\"list\":[]}]', '153', '0:0:0:0:0:0:0:1', '2021-09-14 15:17:35');
INSERT INTO `sys_log` VALUES ('19', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":83,\"parentId\":0,\"name\":\"使用单位表\",\"url\":\"generator/tcardept\",\"type\":1,\"icon\":\"config\",\"orderNum\":6,\"list\":[]}]', '181', '0:0:0:0:0:0:0:1', '2021-09-22 16:16:35');
INSERT INTO `sys_log` VALUES ('20', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":88,\"parentId\":0,\"name\":\"使用单位表\",\"url\":\"generator/tcardept\",\"type\":1,\"icon\":\"config\",\"orderNum\":6,\"list\":[]}]', '182', '0:0:0:0:0:0:0:1', '2021-09-22 16:58:15');
INSERT INTO `sys_log` VALUES ('21', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":88,\"parentId\":0,\"name\":\"出车单位表\",\"url\":\"generator/tcardept\",\"type\":1,\"icon\":\"config\",\"orderNum\":6,\"list\":[]}]', '92', '0:0:0:0:0:0:0:1', '2021-09-23 17:38:13');
INSERT INTO `sys_log` VALUES ('22', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":93,\"parentId\":0,\"name\":\"车辆档案部门\",\"url\":\"generator/tcarcardept\",\"type\":1,\"icon\":\"config\",\"orderNum\":6,\"list\":[]}]', '177', '0:0:0:0:0:0:0:1', '2021-09-23 18:06:23');
INSERT INTO `sys_log` VALUES ('23', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[88]', '5', '0:0:0:0:0:0:0:1', '2021-09-24 15:26:37');
INSERT INTO `sys_log` VALUES ('24', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[92]', '162', '0:0:0:0:0:0:0:1', '2021-09-24 15:26:45');
INSERT INTO `sys_log` VALUES ('25', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[91]', '173', '0:0:0:0:0:0:0:1', '2021-09-24 15:26:52');
INSERT INTO `sys_log` VALUES ('26', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[90]', '97', '0:0:0:0:0:0:0:1', '2021-09-24 15:26:58');
INSERT INTO `sys_log` VALUES ('27', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[89]', '76', '0:0:0:0:0:0:0:1', '2021-09-24 15:27:03');
INSERT INTO `sys_log` VALUES ('28', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[88]', '181', '0:0:0:0:0:0:0:1', '2021-09-24 15:27:07');
INSERT INTO `sys_log` VALUES ('29', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":93,\"parentId\":1,\"name\":\"车辆档案部门\",\"url\":\"generator/tcarcardept\",\"type\":1,\"icon\":\"config\",\"orderNum\":6,\"list\":[]}]', '166', '0:0:0:0:0:0:0:1', '2021-09-24 15:41:47');
INSERT INTO `sys_log` VALUES ('30', 'admin', '修改用户', 'io.renren.modules.sys.controller.SysUserController.update()', '[{\"userId\":2,\"username\":\"dsada\",\"salt\":\"ls1onsjwjPzXd1L6PIup\",\"email\":\"bb@qq.com\",\"mobile\":\"12345678912\",\"status\":1,\"roleIdList\":[],\"createUserId\":1}]', '355', '0:0:0:0:0:0:0:1', '2021-09-26 11:14:21');
INSERT INTO `sys_log` VALUES ('31', 'admin', '修改用户', 'io.renren.modules.sys.controller.SysUserController.update()', '[{\"userId\":2,\"username\":\"dsada\",\"salt\":\"ls1onsjwjPzXd1L6PIup\",\"email\":\"bb@qq.com\",\"mobile\":\"12345678912\",\"status\":0,\"roleIdList\":[],\"createUserId\":1}]', '173', '0:0:0:0:0:0:0:1', '2021-09-26 11:14:27');
INSERT INTO `sys_log` VALUES ('32', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":114,\"parentId\":0,\"name\":\"车辆状态\",\"url\":\"generator/tcarstate\",\"type\":1,\"icon\":\"config\",\"orderNum\":6,\"list\":[]}]', '19', '127.0.0.1', '2021-10-08 15:54:52');
INSERT INTO `sys_log` VALUES ('33', 'admin', '保存菜单', 'io.renren.modules.sys.controller.SysMenuController.save()', '[{\"menuId\":119,\"parentId\":0,\"name\":\"状态\",\"url\":\"car/tcarstate1\",\"perms\":\"\",\"type\":1,\"icon\":\"\",\"orderNum\":0,\"list\":[]}]', '15', '127.0.0.1', '2021-10-29 20:17:06');
INSERT INTO `sys_log` VALUES ('34', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":119,\"parentId\":0,\"name\":\"状态\",\"url\":\"car/tcarstate1\",\"perms\":\"\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":0,\"list\":[]}]', '10', '127.0.0.1', '2021-10-29 20:17:34');
INSERT INTO `sys_log` VALUES ('35', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":119,\"parentId\":0,\"name\":\"状态\",\"url\":\"generator/tcartravel\",\"perms\":\"\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":0,\"list\":[]}]', '5', '127.0.0.1', '2021-10-29 20:19:18');
INSERT INTO `sys_log` VALUES ('36', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":120,\"parentId\":0,\"name\":\"车辆司机关联表\",\"url\":\"generator/tcarcardriver\",\"type\":1,\"icon\":\"config\",\"orderNum\":6,\"list\":[]}]', '16', '127.0.0.1', '2021-11-01 09:47:24');
INSERT INTO `sys_log` VALUES ('37', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":119,\"parentId\":1,\"name\":\"状态\",\"url\":\"generator/tcartravel\",\"perms\":\"\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":0,\"list\":[]}]', '9', '127.0.0.1', '2021-11-01 11:46:15');
INSERT INTO `sys_log` VALUES ('38', 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '[{\"menuId\":119,\"parentId\":0,\"name\":\"状态\",\"url\":\"generator/tcartravel\",\"perms\":\"\",\"type\":1,\"icon\":\"zhedie\",\"orderNum\":0,\"list\":[]}]', '11', '127.0.0.1', '2021-11-03 16:51:31');
INSERT INTO `sys_log` VALUES ('39', 'admin', '删除菜单', 'io.renren.modules.sys.controller.SysMenuController.delete()', '[119]', '38', '127.0.0.1', '2021-11-10 16:52:29');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单图标',
  `order_num` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'system', '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '管理员列表', 'sys/user', null, '1', 'admin', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', 'sys/role', null, '1', 'role', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', '菜单管理', 'sys/menu', null, '1', 'menu', '3');
INSERT INTO `sys_menu` VALUES ('5', '1', 'SQL监控', 'http://localhost:8080/renren-fast/druid/sql.html', null, '1', 'sql', '4');
INSERT INTO `sys_menu` VALUES ('6', '1', '定时任务', 'job/schedule', null, '1', 'job', '5');
INSERT INTO `sys_menu` VALUES ('7', '2', '查看', null, 'sys:schedule:list,sys:schedule:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '3', '新增', null, 'sys:schedule:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '4', '修改', null, 'sys:schedule:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '6', '删除', null, 'sys:schedule:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '6', '暂停', null, 'sys:schedule:pause', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '6', '恢复', null, 'sys:schedule:resume', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '6', '立即执行', null, 'sys:schedule:run', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '6', '日志列表', null, 'sys:schedule:log', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '3', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '4', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '2', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:list', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '4', '修改', null, 'sys:role:update,sys:menu:list', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '2', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '3', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '参数管理', 'sys/config', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('29', '1', '系统日志', 'sys/log', 'sys:log:list', '1', 'log', '7');
INSERT INTO `sys_menu` VALUES ('30', '1', '文件上传', 'oss/oss', 'sys:oss:all', '1', 'oss', '6');
INSERT INTO `sys_menu` VALUES ('56', '0', '保险记录', 'generator/tcarinsurance', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('57', '56', '查看', null, 'generator:tcarinsurance:list,generator:tcarinsurance:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('58', '56', '新增', null, 'generator:tcarinsurance:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('59', '56', '修改', null, 'generator:tcarinsurance:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('60', '56', '删除', null, 'generator:tcarinsurance:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('63', '0', '车辆档案', 'generator/tcarcar', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('64', '63', '查看', null, 'generator:tcarcar:list,generator:tcarcar:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('65', '63', '新增', null, 'generator:tcarcar:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('66', '63', '修改', null, 'generator:tcarcar:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('67', '63', '删除', null, 'generator:tcarcar:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('68', '0', '年检记录', 'generator/tcarinspection', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('69', '68', '查看', null, 'generator:tcarinspection:list,generator:tcarinspection:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('70', '68', '新增', null, 'generator:tcarinspection:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('71', '68', '修改', null, 'generator:tcarinspection:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('72', '68', '删除', null, 'generator:tcarinspection:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('73', '0', '司机表', 'generator/tcardriver', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('74', '73', '查看', null, 'generator:tcardriver:list,generator:tcardriver:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('75', '73', '新增', null, 'generator:tcardriver:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('76', '73', '修改', null, 'generator:tcardriver:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('77', '73', '删除', null, 'generator:tcardriver:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('78', '0', '出车记录', 'generator/tcarrun', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('79', '78', '查看', null, 'generator:tcarrun:list,generator:tcarrun:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('80', '78', '新增', null, 'generator:tcarrun:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('81', '78', '修改', null, 'generator:tcarrun:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('82', '78', '删除', null, 'generator:tcarrun:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('93', '1', '车辆档案部门', 'generator/tcarcardept', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('94', '93', '查看', null, 'generator:tcarcardept:list,generator:tcarcardept:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('95', '93', '新增', null, 'generator:tcarcardept:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('96', '93', '修改', null, 'generator:tcarcardept:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('97', '93', '删除', null, 'generator:tcarcardept:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('99', '1', '使用单位表', 'generator/tcardept', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('100', '99', '查看', null, 'generator:tcardept:list,generator:tcardept:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('101', '99', '新增', null, 'generator:tcardept:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('102', '99', '修改', null, 'generator:tcardept:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('103', '99', '删除', null, 'generator:tcardept:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('104', '1', '类型表', 'generator/cartype', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('105', '104', '查看', null, 'generator:cartype:list,generator:cartype:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('106', '104', '新增', null, 'generator:cartype:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('107', '104', '修改', null, 'generator:cartype:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('108', '104', '删除', null, 'generator:cartype:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('109', '1', '注册单位表\r\n', 'generator/carcompany', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('110', '109', '查看', null, 'generator:carcompany:list,generator:carcompany:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('111', '109', '新增', null, 'generator:carcompany:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('112', '109', '修改', null, 'generator:carcompany:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('113', '109', '删除', null, 'generator:carcompany:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('114', '0', '车辆状态', 'generator/tcarstatus', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('115', '114', '查看', null, 'generator:tcarstate:list,generator:tcarstate:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('116', '114', '新增', null, 'generator:tcarstate:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('117', '114', '修改', null, 'generator:tcarstate:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('118', '114', '删除', null, 'generator:tcarstate:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('120', '0', '车辆司机关联表', 'generator/tcarcardriver', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('121', '120', '查看', null, 'generator:tcarcardriver:list,generator:tcarcardriver:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('122', '120', '新增', null, 'generator:tcarcardriver:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('123', '120', '修改', null, 'generator:tcarcardriver:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('124', '120', '删除', null, 'generator:tcarcardriver:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('125', '1', '商品管理', 'generator/goods', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('126', '125', '查看', null, 'generator:goods:list,generator:goods:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('127', '125', '新增', null, 'generator:goods:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('128', '125', '修改', null, 'generator:goods:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('129', '125', '删除', null, 'generator:goods:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('130', '1', '车辆档案', 'generator/tcarcar', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('131', '130', '查看', null, 'generator:tcarcar:list,generator:tcarcar:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('132', '130', '新增', null, 'generator:tcarcar:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('133', '130', '修改', null, 'generator:tcarcar:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('134', '130', '删除', null, 'generator:tcarcar:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('135', '1', '车辆档案部门', 'generator/tcarcardept', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('136', '135', '查看', null, 'generator:tcarcardept:list,generator:tcarcardept:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('137', '135', '新增', null, 'generator:tcarcardept:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('138', '135', '修改', null, 'generator:tcarcardept:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('139', '135', '删除', null, 'generator:tcarcardept:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('140', '1', '车辆司机关联表', 'generator/tcarcardriver', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('141', '140', '查看', null, 'generator:tcarcardriver:list,generator:tcarcardriver:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('142', '140', '新增', null, 'generator:tcarcardriver:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('143', '140', '修改', null, 'generator:tcarcardriver:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('144', '140', '删除', null, 'generator:tcarcardriver:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('145', '1', '部门表', 'generator/tcardept', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('146', '145', '查看', null, 'generator:tcardept:list,generator:tcardept:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('147', '145', '新增', null, 'generator:tcardept:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('148', '145', '修改', null, 'generator:tcardept:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('149', '145', '删除', null, 'generator:tcardept:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('150', '1', '司机表', 'generator/tcardriver', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('151', '150', '查看', null, 'generator:tcardriver:list,generator:tcardriver:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('152', '150', '新增', null, 'generator:tcardriver:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('153', '150', '修改', null, 'generator:tcardriver:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('154', '150', '删除', null, 'generator:tcardriver:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('155', '1', '年检记录', 'generator/tcarinspection', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('156', '155', '查看', null, 'generator:tcarinspection:list,generator:tcarinspection:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('157', '155', '新增', null, 'generator:tcarinspection:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('158', '155', '修改', null, 'generator:tcarinspection:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('159', '155', '删除', null, 'generator:tcarinspection:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('160', '1', '保险记录', 'generator/tcarinsurance', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('161', '160', '查看', null, 'generator:tcarinsurance:list,generator:tcarinsurance:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('162', '160', '新增', null, 'generator:tcarinsurance:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('163', '160', '修改', null, 'generator:tcarinsurance:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('164', '160', '删除', null, 'generator:tcarinsurance:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('165', '1', '出车记录', 'generator/tcarrun', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('166', '165', '查看', null, 'generator:tcarrun:list,generator:tcarrun:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('167', '165', '新增', null, 'generator:tcarrun:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('168', '165', '修改', null, 'generator:tcarrun:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('169', '165', '删除', null, 'generator:tcarrun:delete', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('170', '1', '', 'generator/tcarstate', null, '1', 'config', '6');
INSERT INTO `sys_menu` VALUES ('171', '170', '查看', null, 'generator:tcarstate:list,generator:tcarstate:info', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('172', '170', '新增', null, 'generator:tcarstate:save', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('173', '170', '修改', null, 'generator:tcarstate:update', '2', null, '6');
INSERT INTO `sys_menu` VALUES ('174', '170', '删除', null, 'generator:tcarstate:delete', '2', null, '6');

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='文件上传';

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '盐',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号',
  `status` tinyint DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'root@renren.io', '13612345678', '1', '1', '2016-11-11 11:11:11');
INSERT INTO `sys_user` VALUES ('2', 'dsada', '9412c2c8fd4de80f68f080e95882edb3ee3496a7a2d281895420ae1fb270e877', 'ls1onsjwjPzXd1L6PIup', 'bb@qq.com', '12345678912', '0', '1', '2021-09-10 17:35:26');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_token
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_token`;
CREATE TABLE `sys_user_token` (
  `user_id` bigint NOT NULL,
  `token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'token',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `token` (`token`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='系统用户Token';

-- ----------------------------
-- Records of sys_user_token
-- ----------------------------
INSERT INTO `sys_user_token` VALUES ('1', '449f27187c7a872f029d9a474be23a4f', '2022-01-20 12:03:21', '2022-01-20 00:03:21');

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `goods_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名',
  `intro` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '介绍',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `num` int DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='商品管理';

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('1', '朱强', '111', '99999.00', '1');
INSERT INTO `tb_goods` VALUES ('2', '99999', '1111', '112.00', '445654');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'mark', '13612345678', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '2017-03-23 22:37:41');

-- ----------------------------
-- Table structure for t_car_car
-- ----------------------------
DROP TABLE IF EXISTS `t_car_car`;
CREATE TABLE `t_car_car` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车牌',
  `brand` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车辆品牌',
  `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车型',
  `type` int DEFAULT NULL COMMENT '车辆类型\r\n            1小轿车\r\n            2大客车',
  `color` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车辆颜色',
  `load` int DEFAULT NULL COMMENT '载重(吨)',
  `seating` int DEFAULT NULL COMMENT '载客人数',
  `fuelconsumption` decimal(15,2) DEFAULT NULL COMMENT '油耗(L/百公里)',
  `initmileage` decimal(15,2) DEFAULT NULL COMMENT '初始里程(公里)',
  `servicemileage` decimal(15,2) DEFAULT NULL COMMENT '保养里程(公里)',
  `servicecycle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '保养周期',
  `enginenumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发动机号',
  `framenumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '车架号',
  `vendor` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '供应商',
  `buyprice` decimal(15,2) DEFAULT NULL COMMENT '购入价格(元)',
  `buydate` datetime DEFAULT NULL COMMENT '购置时间',
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '注册单位',
  `deptid` int DEFAULT NULL COMMENT '所属部门',
  `deptid_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '部门',
  `usecompany` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '使用单位',
  `usedept` int DEFAULT NULL COMMENT '使用部门',
  `status` int DEFAULT NULL COMMENT '当前状态',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `isstop` int DEFAULT NULL COMMENT '是否停用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='车辆档案';

-- ----------------------------
-- Records of t_car_car
-- ----------------------------
INSERT INTO `t_car_car` VALUES ('1', '桂A-8888', '宝马', 'd', '1', 'dfaw', '1', '4', '100.00', '200.00', '300.00', '20', 'jyf45', 'jfyj66', 'jtfh', '660000.00', '2022-01-17 16:00:00', '单位1', null, '', '使用单位1', null, null, 'jdrjuhrthrt', '0');
INSERT INTO `t_car_car` VALUES ('2', '桂B-8888', '宝马', 'a', '1', '黑色', '1', '6', '100.00', '200.00', '300.00', '30', 'dfwaf666', 'jhrdy999', 'jtdjdd', '600000.00', '2022-01-17 16:00:00', '单位2', null, '', '使用单位3', null, '1', 'jkdtjdr', '0');
INSERT INTO `t_car_car` VALUES ('3', '桂B-8888', '宝马', 'a', '1', '黑色', '1', '6', '100.00', '200.00', '300.00', '30', 'dfwaf666', 'jhrdy999', 'jtdjdd', '600000.00', '2022-01-17 16:00:00', '单位2', null, '', '使用单位3', null, '1', 'jkdtjdr', '0');
INSERT INTO `t_car_car` VALUES ('4', '桂B-8888', '宝马', 'a', '1', '黑色', '1', '6', '100.00', '200.00', '300.00', '30', 'dfwaf666', 'jhrdy999', 'jtdjdd', '600000.00', '2022-01-17 16:00:00', '单位2', null, '', '使用单位3', null, '1', 'jkdtjdr', '0');

-- ----------------------------
-- Table structure for t_car_cardriver
-- ----------------------------
DROP TABLE IF EXISTS `t_car_cardriver`;
CREATE TABLE `t_car_cardriver` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driverid` bigint DEFAULT NULL COMMENT '司机ID',
  `carid` bigint DEFAULT NULL COMMENT '车辆ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='车辆司机关联表';

-- ----------------------------
-- Records of t_car_cardriver
-- ----------------------------
INSERT INTO `t_car_cardriver` VALUES ('1', '1', '2');
INSERT INTO `t_car_cardriver` VALUES ('2', '7', '1');
INSERT INTO `t_car_cardriver` VALUES ('3', '16', '11');

-- ----------------------------
-- Table structure for t_car_car_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_car_car_dept`;
CREATE TABLE `t_car_car_dept` (
  `usecompany` bigint NOT NULL AUTO_INCREMENT COMMENT '使用单位ID',
  `parent_id` bigint DEFAULT NULL COMMENT '父ID',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '单位名称',
  `ordernum` int DEFAULT NULL COMMENT '显示顺序',
  PRIMARY KEY (`usecompany`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='车辆档案部门';

-- ----------------------------
-- Records of t_car_car_dept
-- ----------------------------
INSERT INTO `t_car_car_dept` VALUES ('100', '0', '所有信息', '0');
INSERT INTO `t_car_car_dept` VALUES ('101', '100', '按使用单位', '1');
INSERT INTO `t_car_car_dept` VALUES ('102', '101', '使用单位1', '2');
INSERT INTO `t_car_car_dept` VALUES ('103', '101', '使用单位2', '2');

-- ----------------------------
-- Table structure for t_car_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_car_dept`;
CREATE TABLE `t_car_dept` (
  `deptid` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `ordernum` int DEFAULT '0' COMMENT '显示顺序',
  PRIMARY KEY (`deptid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='部门表';

-- ----------------------------
-- Records of t_car_dept
-- ----------------------------
INSERT INTO `t_car_dept` VALUES ('100', '0', '所有记录', '0');
INSERT INTO `t_car_dept` VALUES ('101', '100', '按使用单位', '1');
INSERT INTO `t_car_dept` VALUES ('102', '101', '单位1', '2');
INSERT INTO `t_car_dept` VALUES ('103', '101', '单位2', '3');
INSERT INTO `t_car_dept` VALUES ('104', '101', '单位3', '4');
INSERT INTO `t_car_dept` VALUES ('105', '100', '按时间', '0');

-- ----------------------------
-- Table structure for t_car_driver
-- ----------------------------
DROP TABLE IF EXISTS `t_car_driver`;
CREATE TABLE `t_car_driver` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '司机ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '姓名',
  `sex` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '性别',
  `tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '手机',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '准驾车型',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='司机表';

-- ----------------------------
-- Records of t_car_driver
-- ----------------------------
INSERT INTO `t_car_driver` VALUES ('1', '明', '1', '13132134218', 'C1', '无');
INSERT INTO `t_car_driver` VALUES ('2', '平', '1', '13544681352', 'A1', '无');
INSERT INTO `t_car_driver` VALUES ('3', '风', '1', '14536984562', 'B11', '无');
INSERT INTO `t_car_driver` VALUES ('7', '小欧', '1', '123', '123', '123');
INSERT INTO `t_car_driver` VALUES ('8', '老王', '2', '123', 'A1', 'nnn');
INSERT INTO `t_car_driver` VALUES ('16', '乐乐', '1', '1111', '', '');

-- ----------------------------
-- Table structure for t_car_inspection
-- ----------------------------
DROP TABLE IF EXISTS `t_car_inspection`;
CREATE TABLE `t_car_inspection` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `carid` bigint DEFAULT NULL COMMENT '车辆ID',
  `number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '年检号',
  `njdate` datetime DEFAULT NULL COMMENT '年检日期',
  `njcost` decimal(15,2) DEFAULT NULL COMMENT '年检费用',
  `adminofficer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '车管所',
  `expiredate` datetime DEFAULT NULL COMMENT '到期日期',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `transactor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '经手人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='年检记录';

-- ----------------------------
-- Records of t_car_inspection
-- ----------------------------
INSERT INTO `t_car_inspection` VALUES ('1', '2', '213213132', '2021-09-13 00:00:00', '12133.00', '林', '2024-06-18 00:00:00', '无111', 'oxp111222');
INSERT INTO `t_car_inspection` VALUES ('2', '3', '1436213213', '2021-09-29 10:28:09', '4112.00', '小欧', '2022-01-13 00:00:00', '无', '欧111');
INSERT INTO `t_car_inspection` VALUES ('3', '1', '111', '2021-11-02 00:00:00', '0.00', '111', '2021-11-04 00:00:00', '1', '');
INSERT INTO `t_car_inspection` VALUES ('6', '11', '123123', '2021-11-02 00:00:00', '0.00', '', '2021-11-17 00:00:00', '', '');
INSERT INTO `t_car_inspection` VALUES ('7', '4', '11111', '2021-11-11 00:00:00', '0.00', '', '2021-11-02 00:00:00', '', '');

-- ----------------------------
-- Table structure for t_car_insurance
-- ----------------------------
DROP TABLE IF EXISTS `t_car_insurance`;
CREATE TABLE `t_car_insurance` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `carid` bigint DEFAULT NULL COMMENT '车辆ID',
  `number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '保单号',
  `bxdate` datetime(6) DEFAULT NULL COMMENT '保险时间',
  `bxtype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '保险种类',
  `cost` decimal(15,2) DEFAULT NULL COMMENT '保险费用',
  `amount` decimal(15,2) DEFAULT NULL COMMENT '保险金额',
  `company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '保险公司',
  `transactor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '经手人',
  `expiredate` datetime(6) DEFAULT NULL COMMENT '到期时间',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `usecompany` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备用单位',
  `carmodel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '车型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='保险记录';

-- ----------------------------
-- Records of t_car_insurance
-- ----------------------------
INSERT INTO `t_car_insurance` VALUES ('1', '2', '桂B-88888', '2021-09-15 00:00:00.000000', '1', '100.00', '100.00', '中国平安', '小李', '2021-09-25 00:00:00.000000', '6564', '546111', '456');
INSERT INTO `t_car_insurance` VALUES ('2', '3', '桂C-99999', '2021-09-01 00:00:00.000000', '2', '9999999.00', '99999.00', '中国人寿', '林', '2021-09-24 00:00:00.000000', '无', '财', 'SUV');
INSERT INTO `t_car_insurance` VALUES ('3', '4', '12458615213', '2021-09-13 00:00:00.000000', '1', '213321.00', '321321.00', '中国人寿', 'sss', '2021-09-14 00:00:00.000000', 'bb', 'ssss', 'djskal');
INSERT INTO `t_car_insurance` VALUES ('4', '1', '11', '2021-11-03 00:00:00.000000', '', '0.00', '0.00', '', '', '2021-11-11 00:00:00.000000', '', '', '');
INSERT INTO `t_car_insurance` VALUES ('5', '11', '12311231', '2021-11-11 00:00:00.000000', '', '0.00', '0.00', '', '', '2021-11-13 00:00:00.000000', '', '', '');

-- ----------------------------
-- Table structure for t_car_run
-- ----------------------------
DROP TABLE IF EXISTS `t_car_run`;
CREATE TABLE `t_car_run` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `carid` bigint DEFAULT NULL COMMENT '车号',
  `deptid` bigint DEFAULT NULL COMMENT '用车人单位',
  `userid` bigint DEFAULT NULL COMMENT '用车人',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '姓名',
  `number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '申请单号',
  `begintime` datetime DEFAULT NULL COMMENT '开始时间',
  `planreturntime` datetime DEFAULT NULL COMMENT '预计回车时间',
  `endtime` datetime DEFAULT NULL COMMENT '结束时间',
  `deptname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '部门',
  `party` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '随行人员',
  `driver` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '司机',
  `drivertel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '司机电话',
  `beginplace` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '起始地',
  `endplace` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '目的地',
  `reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用车事由',
  `beginnumber` decimal(15,2) DEFAULT NULL COMMENT '开始里程',
  `endnumber` decimal(15,2) DEFAULT NULL COMMENT '结束里程',
  `mileage` decimal(15,2) DEFAULT NULL COMMENT '行驶里程',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `type` int DEFAULT NULL COMMENT '类型',
  `status` int DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='出车记录';

-- ----------------------------
-- Records of t_car_run
-- ----------------------------
INSERT INTO `t_car_run` VALUES ('1', '2', '1', '456', '彭', '132132', '2021-08-30 01:02:01', '2021-09-12 02:02:02', '2021-09-09 15:50:34', '德', '李', '明', '12314456454', '南宁', '防城港', '出差', '132132.00', '12123.00', '13213.00', '无', '1', '1');
INSERT INTO `t_car_run` VALUES ('2', '3', '3', '12313', '爹', '132132', '2021-09-09 16:07:01', '2021-09-09 16:07:03', '2021-09-09 16:07:05', '业', '45646', '平', '113213', '桂林', '防城港', '23213', '0.00', '123123.00', '13213.00', '132132', '1', '1');
INSERT INTO `t_car_run` VALUES ('3', '4', '2', '1231', '强', '16161', '2021-09-14 15:40:25', '2021-09-18 15:40:30', '2021-09-14 15:40:34', '林', '李', '明', '141222354655', '南宁', '防城港', '41253', '1651.00', '156465.00', '4546.00', '123132', '1', '1');
INSERT INTO `t_car_run` VALUES ('5', '3', '1', '1', '张三', '123123', '2021-09-15 08:23:31', '2021-09-17 08:23:41', '2021-09-18 00:00:00', '开发部', '李四', '平', '123', '南宁', '防城港', '买菜', '2.00', '2.00', '2.00', '2', '2', '1');
INSERT INTO `t_car_run` VALUES ('7', '1', '2', '111', '小欧', '666', '2021-10-28 15:51:31', '2021-10-30 15:51:34', '2021-11-09 15:51:39', '综合部', '小欧', '欧', '123123', '南宁', '北海', '出差', '0.00', '0.00', '0.00', '1', '1', '1');
INSERT INTO `t_car_run` VALUES ('8', '1', '1', '1', '', '8768757757', '2022-01-17 16:00:00', null, '2022-01-19 16:00:00', '', '', '风', '14536984562', '南宁', '广州', 'fawfawfwa', '200.00', '300.00', '400.00', 'dawdagaw', null, '1');

-- ----------------------------
-- Table structure for t_car_state
-- ----------------------------
DROP TABLE IF EXISTS `t_car_state`;
CREATE TABLE `t_car_state` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `carid` bigint DEFAULT NULL COMMENT '车牌号',
  `begintime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_car_state
-- ----------------------------
INSERT INTO `t_car_state` VALUES ('1', '1', '2021-10-08 15:56:43', '2021-10-19 15:56:47', '1');
