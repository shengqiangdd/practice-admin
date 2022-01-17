/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.4.0

Source Server         : oracle
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : RENREN

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2022-01-14 17:44:31
*/


-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE "RENREN"."QRTZ_BLOB_TRIGGERS";
CREATE TABLE "RENREN"."QRTZ_BLOB_TRIGGERS" (
"SCHED_NAME" VARCHAR2(120 BYTE) NOT NULL ,
"TRIGGER_NAME" VARCHAR2(200 BYTE) NOT NULL ,
"TRIGGER_GROUP" VARCHAR2(200 BYTE) NOT NULL ,
"BLOB_DATA" BLOB NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of QRTZ_BLOB_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE "RENREN"."QRTZ_CALENDARS";
CREATE TABLE "RENREN"."QRTZ_CALENDARS" (
"SCHED_NAME" VARCHAR2(120 BYTE) NOT NULL ,
"CALENDAR_NAME" VARCHAR2(200 BYTE) NOT NULL ,
"CALENDAR" BLOB NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of QRTZ_CALENDARS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
DROP TABLE "RENREN"."QRTZ_CRON_TRIGGERS";
CREATE TABLE "RENREN"."QRTZ_CRON_TRIGGERS" (
"SCHED_NAME" VARCHAR2(120 BYTE) NOT NULL ,
"TRIGGER_NAME" VARCHAR2(200 BYTE) NOT NULL ,
"TRIGGER_GROUP" VARCHAR2(200 BYTE) NOT NULL ,
"CRON_EXPRESSION" VARCHAR2(120 BYTE) NOT NULL ,
"TIME_ZONE_ID" VARCHAR2(80 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of QRTZ_CRON_TRIGGERS
-- ----------------------------
INSERT INTO "RENREN"."QRTZ_CRON_TRIGGERS" VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', '0 0/30 * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE "RENREN"."QRTZ_FIRED_TRIGGERS";
CREATE TABLE "RENREN"."QRTZ_FIRED_TRIGGERS" (
"SCHED_NAME" VARCHAR2(120 BYTE) NOT NULL ,
"ENTRY_ID" VARCHAR2(95 BYTE) NOT NULL ,
"TRIGGER_NAME" VARCHAR2(200 BYTE) NOT NULL ,
"TRIGGER_GROUP" VARCHAR2(200 BYTE) NOT NULL ,
"INSTANCE_NAME" VARCHAR2(200 BYTE) NOT NULL ,
"FIRED_TIME" NUMBER(13) NOT NULL ,
"SCHED_TIME" NUMBER(13) NOT NULL ,
"PRIORITY" NUMBER(13) NOT NULL ,
"STATE" VARCHAR2(16 BYTE) NOT NULL ,
"JOB_NAME" VARCHAR2(200 BYTE) NULL ,
"JOB_GROUP" VARCHAR2(200 BYTE) NULL ,
"IS_NONCONCURRENT" VARCHAR2(1 BYTE) NULL ,
"REQUESTS_RECOVERY" VARCHAR2(1 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of QRTZ_FIRED_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
DROP TABLE "RENREN"."QRTZ_JOB_DETAILS";
CREATE TABLE "RENREN"."QRTZ_JOB_DETAILS" (
"SCHED_NAME" VARCHAR2(120 BYTE) NOT NULL ,
"JOB_NAME" VARCHAR2(200 BYTE) NOT NULL ,
"JOB_GROUP" VARCHAR2(200 BYTE) NOT NULL ,
"DESCRIPTION" VARCHAR2(250 BYTE) NULL ,
"JOB_CLASS_NAME" VARCHAR2(250 BYTE) NOT NULL ,
"IS_DURABLE" VARCHAR2(1 BYTE) NOT NULL ,
"IS_NONCONCURRENT" VARCHAR2(1 BYTE) NOT NULL ,
"IS_UPDATE_DATA" VARCHAR2(1 BYTE) NOT NULL ,
"REQUESTS_RECOVERY" VARCHAR2(1 BYTE) NOT NULL ,
"JOB_DATA" BLOB NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of QRTZ_JOB_DETAILS
-- ----------------------------
INSERT INTO "RENREN"."QRTZ_JOB_DETAILS" VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', null, 'io.renren.modules.job.utils.ScheduleJob', '0', '0', '0', '0', HexToRaw('ACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200074C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017E47351FF87874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672656E72656E74000CE58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800'));

-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
DROP TABLE "RENREN"."QRTZ_LOCKS";
CREATE TABLE "RENREN"."QRTZ_LOCKS" (
"SCHED_NAME" VARCHAR2(120 BYTE) NOT NULL ,
"LOCK_NAME" VARCHAR2(40 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of QRTZ_LOCKS
-- ----------------------------
INSERT INTO "RENREN"."QRTZ_LOCKS" VALUES ('RenrenScheduler', 'STATE_ACCESS');
INSERT INTO "RENREN"."QRTZ_LOCKS" VALUES ('RenrenScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE "RENREN"."QRTZ_PAUSED_TRIGGER_GRPS";
CREATE TABLE "RENREN"."QRTZ_PAUSED_TRIGGER_GRPS" (
"SCHED_NAME" VARCHAR2(120 BYTE) NOT NULL ,
"TRIGGER_GROUP" VARCHAR2(200 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
DROP TABLE "RENREN"."QRTZ_SCHEDULER_STATE";
CREATE TABLE "RENREN"."QRTZ_SCHEDULER_STATE" (
"SCHED_NAME" VARCHAR2(120 BYTE) NOT NULL ,
"INSTANCE_NAME" VARCHAR2(200 BYTE) NOT NULL ,
"LAST_CHECKIN_TIME" NUMBER(13) NOT NULL ,
"CHECKIN_INTERVAL" NUMBER(13) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of QRTZ_SCHEDULER_STATE
-- ----------------------------
INSERT INTO "RENREN"."QRTZ_SCHEDULER_STATE" VALUES ('RenrenScheduler', 'USER-20210802VN1642153158902', '1642153263643', '15000');

-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE "RENREN"."QRTZ_SIMPLE_TRIGGERS";
CREATE TABLE "RENREN"."QRTZ_SIMPLE_TRIGGERS" (
"SCHED_NAME" VARCHAR2(120 BYTE) NOT NULL ,
"TRIGGER_NAME" VARCHAR2(200 BYTE) NOT NULL ,
"TRIGGER_GROUP" VARCHAR2(200 BYTE) NOT NULL ,
"REPEAT_COUNT" NUMBER(7) NOT NULL ,
"REPEAT_INTERVAL" NUMBER(12) NOT NULL ,
"TIMES_TRIGGERED" NUMBER(10) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of QRTZ_SIMPLE_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE "RENREN"."QRTZ_SIMPROP_TRIGGERS";
CREATE TABLE "RENREN"."QRTZ_SIMPROP_TRIGGERS" (
"SCHED_NAME" VARCHAR2(120 BYTE) NOT NULL ,
"TRIGGER_NAME" VARCHAR2(200 BYTE) NOT NULL ,
"TRIGGER_GROUP" VARCHAR2(200 BYTE) NOT NULL ,
"STR_PROP_1" VARCHAR2(512 BYTE) NULL ,
"STR_PROP_2" VARCHAR2(512 BYTE) NULL ,
"STR_PROP_3" VARCHAR2(512 BYTE) NULL ,
"INT_PROP_1" NUMBER(10) NULL ,
"INT_PROP_2" NUMBER(10) NULL ,
"LONG_PROP_1" NUMBER(13) NULL ,
"LONG_PROP_2" NUMBER(13) NULL ,
"DEC_PROP_1" NUMBER(13,4) NULL ,
"DEC_PROP_2" NUMBER(13,4) NULL ,
"BOOL_PROP_1" VARCHAR2(1 BYTE) NULL ,
"BOOL_PROP_2" VARCHAR2(1 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of QRTZ_SIMPROP_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE "RENREN"."QRTZ_TRIGGERS";
CREATE TABLE "RENREN"."QRTZ_TRIGGERS" (
"SCHED_NAME" VARCHAR2(120 BYTE) NOT NULL ,
"TRIGGER_NAME" VARCHAR2(200 BYTE) NOT NULL ,
"TRIGGER_GROUP" VARCHAR2(200 BYTE) NOT NULL ,
"JOB_NAME" VARCHAR2(200 BYTE) NOT NULL ,
"JOB_GROUP" VARCHAR2(200 BYTE) NOT NULL ,
"DESCRIPTION" VARCHAR2(250 BYTE) NULL ,
"NEXT_FIRE_TIME" NUMBER(13) NULL ,
"PREV_FIRE_TIME" NUMBER(13) NULL ,
"PRIORITY" NUMBER(13) NULL ,
"TRIGGER_STATE" VARCHAR2(16 BYTE) NOT NULL ,
"TRIGGER_TYPE" VARCHAR2(8 BYTE) NOT NULL ,
"START_TIME" NUMBER(13) NOT NULL ,
"END_TIME" NUMBER(13) NULL ,
"CALENDAR_NAME" VARCHAR2(200 BYTE) NULL ,
"MISFIRE_INSTR" NUMBER(2) NULL ,
"JOB_DATA" BLOB NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of QRTZ_TRIGGERS
-- ----------------------------
INSERT INTO "RENREN"."QRTZ_TRIGGERS" VALUES ('RenrenScheduler', 'TASK_1', 'DEFAULT', 'TASK_1', 'DEFAULT', null, '1641873600000', '-1', '5', 'WAITING', 'CRON', '1641872591000', '0', null, '2', HexToRaw('ACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200074C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017E47351FF87874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672656E72656E74000CE58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800'));

-- ----------------------------
-- Table structure for SCHEDULE_JOB
-- ----------------------------
DROP TABLE "RENREN"."SCHEDULE_JOB";
CREATE TABLE "RENREN"."SCHEDULE_JOB" (
"JOB_ID" NUMBER(20) NOT NULL ,
"BEAN_NAME" VARCHAR2(200 BYTE) NULL ,
"PARAMS" VARCHAR2(2000 BYTE) NULL ,
"CRON_EXPRESSION" VARCHAR2(100 BYTE) NULL ,
"STATUS" NUMBER(2) NOT NULL ,
"REMARK" VARCHAR2(255 BYTE) NULL ,
"CREATE_TIME" TIMESTAMP(6)  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SCHEDULE_JOB
-- ----------------------------
INSERT INTO "RENREN"."SCHEDULE_JOB" VALUES ('1', 'testTask', 'renren', '0 0/30 * * * ?', '0', '参数测试', TO_TIMESTAMP(' 2022-01-11 11:36:11:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'));

-- ----------------------------
-- Table structure for SCHEDULE_JOB_LOG
-- ----------------------------
DROP TABLE "RENREN"."SCHEDULE_JOB_LOG";
CREATE TABLE "RENREN"."SCHEDULE_JOB_LOG" (
"LOG_ID" NUMBER(20) NOT NULL ,
"JOB_ID" NUMBER(20) NOT NULL ,
"BEAN_NAME" VARCHAR2(200 BYTE) NULL ,
"PARAMS" VARCHAR2(2000 BYTE) NULL ,
"STATUS" NUMBER(2) NOT NULL ,
"ERROR" VARCHAR2(2000 BYTE) NULL ,
"TIMES" NUMBER(10) NOT NULL ,
"CREATE_TIME" TIMESTAMP(6)  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SCHEDULE_JOB_LOG
-- ----------------------------
INSERT INTO "RENREN"."SCHEDULE_JOB_LOG" VALUES ('1480751319370313730', '1', 'testTask', 'renren', '0', null, '0', TO_TIMESTAMP(' 2022-01-11 12:00:00:023000', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "RENREN"."SCHEDULE_JOB_LOG" VALUES ('1480804166694744066', '1', 'testTask', 'renren', '0', null, '2', TO_TIMESTAMP(' 2022-01-11 15:30:00:006000', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "RENREN"."SCHEDULE_JOB_LOG" VALUES ('1480826816787783681', '1', 'testTask', 'renren', '0', null, '1', TO_TIMESTAMP(' 2022-01-11 17:00:00:017000', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "RENREN"."SCHEDULE_JOB_LOG" VALUES ('1480811717226303490', '1', 'testTask', 'renren', '0', null, '1', TO_TIMESTAMP(' 2022-01-11 16:00:00:014000', 'YYYY-MM-DD HH24:MI:SS:FF6'));

-- ----------------------------
-- Table structure for SYS_CAPTCHA
-- ----------------------------
DROP TABLE "RENREN"."SYS_CAPTCHA";
CREATE TABLE "RENREN"."SYS_CAPTCHA" (
"UUID" VARCHAR2(36 BYTE) NOT NULL ,
"CODE" VARCHAR2(6 BYTE) NOT NULL ,
"EXPIRE_TIME" TIMESTAMP(6)  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SYS_CAPTCHA
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_CONFIG
-- ----------------------------
DROP TABLE "RENREN"."SYS_CONFIG";
CREATE TABLE "RENREN"."SYS_CONFIG" (
"ID" NUMBER(20) NOT NULL ,
"PARAM_KEY" VARCHAR2(50 BYTE) NULL ,
"PARAM_VALUE" VARCHAR2(4000 BYTE) NULL ,
"STATUS" NUMBER(2) DEFAULT 1  NOT NULL ,
"REMARK" VARCHAR2(500 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SYS_CONFIG
-- ----------------------------
INSERT INTO "RENREN"."SYS_CONFIG" VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{"aliyunAccessKeyId":"","aliyunAccessKeySecret":"","aliyunBucketName":"","aliyunDomain":"","aliyunEndPoint":"","aliyunPrefix":"","qcloudBucketName":"","qcloudDomain":"","qcloudPrefix":"","qcloudSecretId":"","qcloudSecretKey":"","qiniuAccessKey":"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ","qiniuBucketName":"ios-app","qiniuDomain":"http://7xlij2.com1.z0.glb.clouddn.com","qiniuPrefix":"upload","qiniuSecretKey":"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV","type":1}', '0', '云存储配置信息');

-- ----------------------------
-- Table structure for SYS_LOG
-- ----------------------------
DROP TABLE "RENREN"."SYS_LOG";
CREATE TABLE "RENREN"."SYS_LOG" (
"ID" NUMBER(20) NOT NULL ,
"USERNAME" VARCHAR2(50 BYTE) NULL ,
"OPERATION" VARCHAR2(50 BYTE) NULL ,
"METHOD" VARCHAR2(200 BYTE) NULL ,
"PARAMS" CLOB NULL ,
"TIME" NUMBER(20) NOT NULL ,
"IP" VARCHAR2(64 BYTE) NULL ,
"CREATE_DATE" TIMESTAMP(6)  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SYS_LOG
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_MENU
-- ----------------------------
DROP TABLE "RENREN"."SYS_MENU";
CREATE TABLE "RENREN"."SYS_MENU" (
"MENU_ID" NUMBER(20) NOT NULL ,
"PARENT_ID" NUMBER(20) NOT NULL ,
"NAME" VARCHAR2(50 BYTE) NULL ,
"URL" VARCHAR2(200 BYTE) NULL ,
"PERMS" VARCHAR2(500 BYTE) NULL ,
"TYPE" NUMBER(2) NULL ,
"ICON" VARCHAR2(50 BYTE) NULL ,
"ORDER_NUM" NUMBER(8) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SYS_MENU
-- ----------------------------
INSERT INTO "RENREN"."SYS_MENU" VALUES ('1', '0', '系统管理', null, null, '0', 'system', '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('2', '1', '管理员列表', 'sys/user', null, '1', 'admin', '1');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('3', '1', '角色管理', 'sys/role', null, '1', 'role', '2');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('4', '1', '菜单管理', 'sys/menu', null, '1', 'menu', '3');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('5', '1', 'SQL监控', 'http://localhost:8080/renren-fast/druid/sql.html', null, '1', 'sql', '4');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('6', '1', '定时任务', 'job/schedule', null, '1', 'job', '5');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('7', '6', '查看', null, 'sys:schedule:list,sys:schedule:info', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('8', '6', '新增', null, 'sys:schedule:save', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('9', '6', '修改', null, 'sys:schedule:update', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('10', '6', '删除', null, 'sys:schedule:delete', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('11', '6', '暂停', null, 'sys:schedule:pause', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('12', '6', '恢复', null, 'sys:schedule:resume', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('13', '6', '立即执行', null, 'sys:schedule:run', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('14', '6', '日志列表', null, 'sys:schedule:log', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('15', '2', '查看', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('16', '2', '新增', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('17', '2', '修改', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('18', '2', '删除', null, 'sys:user:delete', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('19', '3', '查看', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('20', '3', '新增', null, 'sys:role:save,sys:menu:list', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('21', '3', '修改', null, 'sys:role:update,sys:menu:list', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('22', '3', '删除', null, 'sys:role:delete', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('23', '4', '查看', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('24', '4', '新增', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('25', '4', '修改', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('26', '4', '删除', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('27', '1', '参数管理', 'sys/config', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'config', '6');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('29', '1', '系统日志', 'sys/log', 'sys:log:list', '1', 'log', '7');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('30', '1', '文件上传', 'oss/oss', 'sys:oss:all', '1', 'oss', '6');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('31', '1', '车辆档案', 'generator/tcarcar', null, '1', 'config', '6');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('32', '31', '查看', null, 'generator:tcarcar:list,generator:tcarcar:info', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('33', '31', '新增', null, 'generator:tcarcar:save', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('34', '31', '修改', null, 'generator:tcarcar:update', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('35', '31', '删除', null, 'generator:tcarcar:delete', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('36', '1', '司机表', 'generator/tcardriver', null, '1', 'config', '7');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('37', '36', '查看', null, 'generator:tcardriver:list,generator:tcardriver:info', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('38', '36', '新增', null, 'generator:tcardriver:save', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('39', '36', '修改', null, 'generator:tcardriver:update', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('40', '36', '删除', null, 'generator:tcardriver:delete', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('41', '1', '年检记录', 'generator/tcarinspection', null, '1', 'config', '8');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('42', '41', '查看', null, 'generator:tcarinspection:list,generator:tcarinspection:info', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('43', '41', '新增', null, 'generator:tcarinspection:save', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('44', '41', '修改', null, 'generator:tcarinspection:update', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('45', '41', '删除', null, 'generator:tcarinspection:delete', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('46', '1', '保险记录', 'generator/tcarinsurance', null, '1', 'config', '9');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('47', '46', '查看', null, 'generator:tcarinsurance:list,generator:tcarinsurance:info', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('48', '46', '新增', null, 'generator:tcarinsurance:save', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('49', '46', '修改', null, 'generator:tcarinsurance:update', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('50', '46', '删除', null, 'generator:tcarinsurance:delete', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('51', '1', '出车记录', 'generator/tcarrun', null, '1', 'config', '10');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('52', '51', '查看', null, 'generator:tcarrun:list,generator:tcarrun:info', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('53', '51', '新增', null, 'generator:tcarrun:save', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('54', '51', '修改', null, 'generator:tcarrun:update', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('55', '51', '删除', null, 'generator:tcarrun:delete', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('56', '1', '车辆司机关联表', 'generator/tcarcardriver', null, '1', 'config', '11');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('57', '56', '查看', null, 'generator:tcarcardriver:list,generator:tcarcardriver:info', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('58', '56', '新增', null, 'generator:tcarcardriver:save', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('59', '56', '修改', null, 'generator:tcarcardriver:update', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('60', '56', '删除', null, 'generator:tcarcardriver:delete', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('61', '1', '派车档案', 'generator/tcarrun', null, '1', 'config', '12');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('62', '61', '查看', null, 'generator:tcarrun:list,generator:tcarrun:info', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('63', '61', '新增', null, 'generator:tcarrun:save', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('64', '61', '修改', null, 'generator:tcarrun:update', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('65', '61', '删除', null, 'generator:tcarrun:delete', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('66', '1', '车辆状态查询', 'generator/tcarstatus', null, '1', 'config', '13');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('67', '66', '查看', null, 'generator:tcarrun:list,generator:tcarrun:info', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('68', '66', '新增', null, 'generator:tcarrun:save', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('69', '66', '修改', null, 'generator:tcarrun:update', '2', null, '0');
INSERT INTO "RENREN"."SYS_MENU" VALUES ('70', '66', '删除', null, 'generator:tcarrun:delete', '2', null, '0');

-- ----------------------------
-- Table structure for SYS_OSS
-- ----------------------------
DROP TABLE "RENREN"."SYS_OSS";
CREATE TABLE "RENREN"."SYS_OSS" (
"ID" NUMBER(20) NOT NULL ,
"URL" VARCHAR2(200 BYTE) NULL ,
"CREATE_DATE" TIMESTAMP(6)  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SYS_OSS
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_ROLE
-- ----------------------------
DROP TABLE "RENREN"."SYS_ROLE";
CREATE TABLE "RENREN"."SYS_ROLE" (
"ROLE_ID" NUMBER(20) NOT NULL ,
"ROLE_NAME" VARCHAR2(100 BYTE) NULL ,
"REMARK" VARCHAR2(100 BYTE) NULL ,
"CREATE_USER_ID" NUMBER(20) NOT NULL ,
"CREATE_TIME" TIMESTAMP(6)  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SYS_ROLE
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_ROLE_MENU
-- ----------------------------
DROP TABLE "RENREN"."SYS_ROLE_MENU";
CREATE TABLE "RENREN"."SYS_ROLE_MENU" (
"ID" NUMBER(20) NOT NULL ,
"ROLE_ID" NUMBER(20) NOT NULL ,
"MENU_ID" NUMBER(20) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SYS_ROLE_MENU
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_USER
-- ----------------------------
DROP TABLE "RENREN"."SYS_USER";
CREATE TABLE "RENREN"."SYS_USER" (
"USER_ID" NUMBER(20) NOT NULL ,
"USERNAME" VARCHAR2(50 BYTE) NOT NULL ,
"PASSWORD" VARCHAR2(100 BYTE) NULL ,
"SALT" VARCHAR2(20 BYTE) NULL ,
"EMAIL" VARCHAR2(100 BYTE) NULL ,
"MOBILE" VARCHAR2(100 BYTE) NULL ,
"STATUS" NUMBER(2) NOT NULL ,
"CREATE_USER_ID" NUMBER(20) NOT NULL ,
"CREATE_TIME" TIMESTAMP(6)  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SYS_USER
-- ----------------------------
INSERT INTO "RENREN"."SYS_USER" VALUES ('1', 'admin', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'root@renren.io', '13612345678', '1', '1', TO_TIMESTAMP(' 2022-01-11 11:36:10:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'));

-- ----------------------------
-- Table structure for SYS_USER_ROLE
-- ----------------------------
DROP TABLE "RENREN"."SYS_USER_ROLE";
CREATE TABLE "RENREN"."SYS_USER_ROLE" (
"ID" NUMBER(20) NOT NULL ,
"USER_ID" NUMBER(20) NOT NULL ,
"ROLE_ID" NUMBER(20) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SYS_USER_ROLE
-- ----------------------------

-- ----------------------------
-- Table structure for SYS_USER_TOKEN
-- ----------------------------
DROP TABLE "RENREN"."SYS_USER_TOKEN";
CREATE TABLE "RENREN"."SYS_USER_TOKEN" (
"USER_ID" NUMBER(20) NOT NULL ,
"TOKEN" VARCHAR2(100 BYTE) NOT NULL ,
"EXPIRE_TIME" TIMESTAMP(6)  NULL ,
"UPDATE_TIME" TIMESTAMP(6)  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SYS_USER_TOKEN
-- ----------------------------
INSERT INTO "RENREN"."SYS_USER_TOKEN" VALUES ('1', '77b15b2b3443cbab2b1516bffe475397', TO_TIMESTAMP(' 2022-01-14 22:40:57:701000', 'YYYY-MM-DD HH24:MI:SS:FF6'), TO_TIMESTAMP(' 2022-01-14 10:40:57:701000', 'YYYY-MM-DD HH24:MI:SS:FF6'));

-- ----------------------------
-- Table structure for T_CAR_CAR
-- ----------------------------
DROP TABLE "RENREN"."T_CAR_CAR";
CREATE TABLE "RENREN"."T_CAR_CAR" (
"ID" NUMBER NOT NULL ,
"number" NVARCHAR2(50) NULL ,
"BRAND" NVARCHAR2(50) NULL ,
"MODEL" NVARCHAR2(50) NULL ,
"type" NUMBER NULL ,
"COLOR" NVARCHAR2(20) NULL ,
"load" NUMBER NULL ,
"SEATING" NUMBER NULL ,
"FUELCONSUMPTION" NUMBER(15,2) NULL ,
"INITMILEAGE" NUMBER(15,2) NULL ,
"SERVICEMILEAGE" NUMBER(15,2) NULL ,
"SERVICECYCLE" NVARCHAR2(20) NULL ,
"ENGINENUMBER" NVARCHAR2(50) NULL ,
"FRAMENUMBER" NVARCHAR2(50) NULL ,
"vendor" NVARCHAR2(50) NULL ,
"BUYPRICE" NUMBER(15,2) NULL ,
"BUYDATE" DATE NULL ,
"COMPANY" NVARCHAR2(50) NULL ,
"DEPTID" NUMBER NULL ,
"DEPTID_NAME" NVARCHAR2(50) NULL ,
"USECOMPANY" NVARCHAR2(50) NULL ,
"USEDEPT" NUMBER NULL ,
"STATUS" NUMBER NULL ,
"REMARK" NVARCHAR2(100) NULL ,
"ISSTOP" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "RENREN"."T_CAR_CAR" IS '车辆档案';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."ID" IS '主键';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."number" IS '车牌';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."BRAND" IS '车辆品牌';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."MODEL" IS '车型';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."type" IS '车辆类型
1小轿车
2大客车';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."COLOR" IS '车辆颜色';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."load" IS '载重(吨)';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."SEATING" IS '载客人数';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."FUELCONSUMPTION" IS '油耗(L/百公里)';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."INITMILEAGE" IS '初始里程(公里)';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."SERVICEMILEAGE" IS '保养里程(公里)';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."SERVICECYCLE" IS '保养周期';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."ENGINENUMBER" IS '发动机号';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."FRAMENUMBER" IS '车架号';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."vendor" IS '供应商';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."BUYPRICE" IS '购入价格(元)';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."BUYDATE" IS '购置时间';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."COMPANY" IS '注册单位';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."DEPTID" IS '所属部门';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."DEPTID_NAME" IS '部门';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."USECOMPANY" IS '使用单位';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."USEDEPT" IS '使用部门';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."STATUS" IS '当前状态';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."REMARK" IS '备注';
COMMENT ON COLUMN "RENREN"."T_CAR_CAR"."ISSTOP" IS '是否停用';

-- ----------------------------
-- Records of T_CAR_CAR
-- ----------------------------
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('2', '桂B8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dawdawd', 'heshse', 'gdgdrg', '500000', TO_DATE('2022-01-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '单位2', null, null, '使用单位1', null, '1', 'gsgsegsegse', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('3', '桂C8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dawdawd', 'heshse', 'gdgdrg', '500000', TO_DATE('2022-01-06 16:57:36', 'YYYY-MM-DD HH24:MI:SS'), '单位3', null, null, '使用单位3', null, '1', 'gsgsegsegse', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('4', '桂D8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dawdawd', 'heshse', 'gdgdrg', '500000', TO_DATE('2022-01-06 16:57:36', 'YYYY-MM-DD HH24:MI:SS'), '单位1', null, null, '使用单位2', null, '1', 'gsgsegsegse', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('5', '桂E8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dawdawd', 'heshse', 'gdgdrg', '500000', TO_DATE('2022-01-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '单位2', null, null, '使用单位3', null, '1', 'gsgsegsegse', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('6', '粤A8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dawdawd', 'heshse', 'gdgdrg', '500000', TO_DATE('2022-01-06 16:57:36', 'YYYY-MM-DD HH24:MI:SS'), '单位1', null, null, '使用单位2', null, '1', 'gsgsegsegse', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('7', '粤B8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dawdawd', 'heshse', 'gdgdrg', '500000', TO_DATE('2022-01-06 16:57:36', 'YYYY-MM-DD HH24:MI:SS'), '单位3', null, null, '使用单位1', null, '1', 'gsgsegsegse', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('8', '粤C8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dawdawd', 'heshse', 'gdgdrg', '500000', TO_DATE('2022-01-06 16:57:36', 'YYYY-MM-DD HH24:MI:SS'), '单位3', null, null, '使用单位2', null, '1', 'gsgsegsegse', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('9', '粤D8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dawdawd', 'heshse', 'gdgdrg', '500000', TO_DATE('2022-01-06 16:57:36', 'YYYY-MM-DD HH24:MI:SS'), '单位3', null, null, '使用单位2', null, '1', 'gsgsegsegse', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('10', '粤E8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dawdawd', 'heshse', 'gdgdrg', '500000', TO_DATE('2022-01-06 16:57:36', 'YYYY-MM-DD HH24:MI:SS'), '单位1', null, null, '使用单位1', null, '1', 'gsgsegsegse', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('11', '京A8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dawdawd', 'heshse', 'gdgdrg', '500000', TO_DATE('2022-01-06 16:57:36', 'YYYY-MM-DD HH24:MI:SS'), '单位2', null, null, '使用单位3', null, '1', 'gsgsegsegse', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('12', '京B8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dawdawd', 'heshse', 'gdgdrg', '500000', TO_DATE('2022-01-06 16:57:36', 'YYYY-MM-DD HH24:MI:SS'), '单位1', null, null, '使用单位3', null, '1', 'gsgsegsegse', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('13', '京C8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dawdawd', 'heshse', 'gdgdrg', '500000', TO_DATE('2022-01-06 16:57:36', 'YYYY-MM-DD HH24:MI:SS'), '单位2', null, null, '使用单位1', null, '1', 'gsgsegsegse', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('14', '京D8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dawdawd', 'heshse', 'gdgdrg', '500000', TO_DATE('2022-01-06 16:57:36', 'YYYY-MM-DD HH24:MI:SS'), '单位1', null, null, '使用单位3', null, '1', 'gsgsegsegse', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('16', '京D6666', '奔驰', 'a', '1', '黑色', '1', '6', '100', '200', '300', '20', 'daw1700', 'jyf200', 'gsgses', '400000', TO_DATE('2022-01-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '单位4', null, null, '使用单位4', null, null, 'jtfjtfj', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('316', '京E6666', '奔驰', 'a', '1', '黑色', '1', '6', '100', '200', '300', '20', 'fgaf200', 'jfh400', 'fafwa', '200000', TO_DATE('2022-01-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '单位1', null, null, '使用单位5', null, null, 'gasgagaw', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('346', '闽B6666', '奔驰', 'b', '1', '红色', '1', '4', '300', '500', '200', '10', 'jft10', 'klgkuy2', 'hshsh', '5800000', TO_DATE('2022-01-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '单位4', null, null, '使用单位5', null, null, 'fafawf', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('361', '京Y6666', 'dawd', 'f', '1', 'fwaf', '1', '6', '100', '200', '200', '10', 'lkhu1', 'khuk', 'kuhk', '100000', TO_DATE('2022-01-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'jfj', null, null, 'jffj', null, null, 'gsdgrd', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('1', '桂A8888', '宝马', 'a', '1', '黑色', '1', '6', '200', '300', '400', '500', 'dfsagwa', 'ktfujdrs', 'jdrhjlu', '500000', TO_DATE('2022-01-06 16:57:36', 'YYYY-MM-DD HH24:MI:SS'), '单位1', null, null, '使用单位2', null, '1', 'fawhsesa', '0');
INSERT INTO "RENREN"."T_CAR_CAR" VALUES ('331', '闽A8888', '宝马', 'b', '2', '蓝色', '1', '6', '200', '400', '600', '10', 'kg200', 'sey400', 'fafkug', '6000000', TO_DATE('2022-01-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '单位6', null, null, '使用单位2', null, null, 'dasdsath', '0');

-- ----------------------------
-- Table structure for T_CAR_CARDRIVER
-- ----------------------------
DROP TABLE "RENREN"."T_CAR_CARDRIVER";
CREATE TABLE "RENREN"."T_CAR_CARDRIVER" (
"DRIVERID" NUMBER NULL ,
"CARID" NUMBER NULL ,
"ID" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "RENREN"."T_CAR_CARDRIVER" IS '车辆司机关联表';
COMMENT ON COLUMN "RENREN"."T_CAR_CARDRIVER"."DRIVERID" IS '司机ID';
COMMENT ON COLUMN "RENREN"."T_CAR_CARDRIVER"."CARID" IS '车辆ID';

-- ----------------------------
-- Records of T_CAR_CARDRIVER
-- ----------------------------
INSERT INTO "RENREN"."T_CAR_CARDRIVER" VALUES ('1', '5', '21');
INSERT INTO "RENREN"."T_CAR_CARDRIVER" VALUES ('1', '1', '3');
INSERT INTO "RENREN"."T_CAR_CARDRIVER" VALUES ('2', '2', '4');
INSERT INTO "RENREN"."T_CAR_CARDRIVER" VALUES ('3', '3', '5');
INSERT INTO "RENREN"."T_CAR_CARDRIVER" VALUES ('4', '4', '6');
INSERT INTO "RENREN"."T_CAR_CARDRIVER" VALUES ('5', '5', '7');

-- ----------------------------
-- Table structure for T_CAR_DRIVER
-- ----------------------------
DROP TABLE "RENREN"."T_CAR_DRIVER";
CREATE TABLE "RENREN"."T_CAR_DRIVER" (
"ID" NUMBER NOT NULL ,
"NAME" NVARCHAR2(50) NULL ,
"SEX" NUMBER NULL ,
"TEL" VARCHAR2(50 BYTE) NULL ,
"type" NVARCHAR2(100) NULL ,
"REMARK" NVARCHAR2(500) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "RENREN"."T_CAR_DRIVER" IS '司机表';
COMMENT ON COLUMN "RENREN"."T_CAR_DRIVER"."ID" IS '司机ID';
COMMENT ON COLUMN "RENREN"."T_CAR_DRIVER"."NAME" IS '车辆ID';
COMMENT ON COLUMN "RENREN"."T_CAR_DRIVER"."SEX" IS '1男
2女';

-- ----------------------------
-- Records of T_CAR_DRIVER
-- ----------------------------
INSERT INTO "RENREN"."T_CAR_DRIVER" VALUES ('1', '老吴', '2', '13498765698', '小轿车', 'fawfawfwa');
INSERT INTO "RENREN"."T_CAR_DRIVER" VALUES ('4', '老杨', '2', '13679676988', '小轿车', 'dawdawt');
INSERT INTO "RENREN"."T_CAR_DRIVER" VALUES ('2', '老王', '1', '13679846999', '小轿车', 'tgawt');
INSERT INTO "RENREN"."T_CAR_DRIVER" VALUES ('3', '老曹', '1', '13754566977', '小轿车', 'ywayaw');

-- ----------------------------
-- Table structure for T_CAR_INSPECTION
-- ----------------------------
DROP TABLE "RENREN"."T_CAR_INSPECTION";
CREATE TABLE "RENREN"."T_CAR_INSPECTION" (
"ID" NUMBER NOT NULL ,
"CARID" NUMBER NULL ,
"number" NVARCHAR2(50) NULL ,
"NJDATE" DATE NULL ,
"NJCOST" NUMBER(15,2) NULL ,
"ADMINOFFICE" NVARCHAR2(50) NULL ,
"EXPIREDATE" DATE NULL ,
"REMARK" NVARCHAR2(100) NULL ,
"TRANSACTOR" NVARCHAR2(50) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "RENREN"."T_CAR_INSPECTION" IS '年检记录';
COMMENT ON COLUMN "RENREN"."T_CAR_INSPECTION"."ID" IS '主键';
COMMENT ON COLUMN "RENREN"."T_CAR_INSPECTION"."CARID" IS '车辆ID';
COMMENT ON COLUMN "RENREN"."T_CAR_INSPECTION"."number" IS '年检号';
COMMENT ON COLUMN "RENREN"."T_CAR_INSPECTION"."NJDATE" IS '年检日期';
COMMENT ON COLUMN "RENREN"."T_CAR_INSPECTION"."NJCOST" IS '年检费用';
COMMENT ON COLUMN "RENREN"."T_CAR_INSPECTION"."ADMINOFFICE" IS '车管所';
COMMENT ON COLUMN "RENREN"."T_CAR_INSPECTION"."EXPIREDATE" IS '到期日期';
COMMENT ON COLUMN "RENREN"."T_CAR_INSPECTION"."REMARK" IS '备注';
COMMENT ON COLUMN "RENREN"."T_CAR_INSPECTION"."TRANSACTOR" IS '经手人';

-- ----------------------------
-- Records of T_CAR_INSPECTION
-- ----------------------------
INSERT INTO "RENREN"."T_CAR_INSPECTION" VALUES ('1', '2', '202201125746', TO_DATE('2022-01-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '6000', '朝阳车管所', TO_DATE('2022-04-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'fwfawf', 'faef');

-- ----------------------------
-- Table structure for T_CAR_INSURANCE
-- ----------------------------
DROP TABLE "RENREN"."T_CAR_INSURANCE";
CREATE TABLE "RENREN"."T_CAR_INSURANCE" (
"ID" NUMBER NOT NULL ,
"CARID" NUMBER NULL ,
"number" NVARCHAR2(50) NULL ,
"BXDATE" DATE NULL ,
"BXTYPE" NUMBER NULL ,
"COST" NUMBER(15,2) NULL ,
"AMOUNT" NUMBER(15,2) NULL ,
"COMPANY" NVARCHAR2(50) NULL ,
"TRANSACTOR" NVARCHAR2(50) NULL ,
"EXPIREDATE" DATE NULL ,
"REMARK" NVARCHAR2(50) NULL ,
"USECOMPANY" NVARCHAR2(50) NULL ,
"CARMODEL" NVARCHAR2(50) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "RENREN"."T_CAR_INSURANCE" IS '保险记录';
COMMENT ON COLUMN "RENREN"."T_CAR_INSURANCE"."ID" IS '主键';
COMMENT ON COLUMN "RENREN"."T_CAR_INSURANCE"."CARID" IS '车辆ID';
COMMENT ON COLUMN "RENREN"."T_CAR_INSURANCE"."number" IS '保单号';
COMMENT ON COLUMN "RENREN"."T_CAR_INSURANCE"."BXDATE" IS '保险时间';
COMMENT ON COLUMN "RENREN"."T_CAR_INSURANCE"."BXTYPE" IS '保险种类
1交强险
2第三者责任险';
COMMENT ON COLUMN "RENREN"."T_CAR_INSURANCE"."COST" IS '保险费用';
COMMENT ON COLUMN "RENREN"."T_CAR_INSURANCE"."AMOUNT" IS '保险金额';
COMMENT ON COLUMN "RENREN"."T_CAR_INSURANCE"."COMPANY" IS '保险公司';
COMMENT ON COLUMN "RENREN"."T_CAR_INSURANCE"."TRANSACTOR" IS '经手人';
COMMENT ON COLUMN "RENREN"."T_CAR_INSURANCE"."EXPIREDATE" IS '到期时间';
COMMENT ON COLUMN "RENREN"."T_CAR_INSURANCE"."REMARK" IS '备注';
COMMENT ON COLUMN "RENREN"."T_CAR_INSURANCE"."USECOMPANY" IS '使用单位';
COMMENT ON COLUMN "RENREN"."T_CAR_INSURANCE"."CARMODEL" IS '车型';

-- ----------------------------
-- Records of T_CAR_INSURANCE
-- ----------------------------
INSERT INTO "RENREN"."T_CAR_INSURANCE" VALUES ('1', '2', '20220112676878', TO_DATE('2022-01-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1', '300000', '3000', '中国人寿', 'gesaw', TO_DATE('2022-04-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'segse', '使用单位1', 'a');

-- ----------------------------
-- Table structure for T_CAR_RUN
-- ----------------------------
DROP TABLE "RENREN"."T_CAR_RUN";
CREATE TABLE "RENREN"."T_CAR_RUN" (
"if" NUMBER NOT NULL ,
"CARID" NUMBER NULL ,
"USERID" NUMBER NULL ,
"USERNAME" NVARCHAR2(20) NULL ,
"number" NVARCHAR2(50) NULL ,
"BEGINTIME" DATE NULL ,
"PLANRETURNTIME" DATE NULL ,
"ENDTIME" DATE NULL ,
"DEPTID" NUMBER NULL ,
"DEPTNAME" NVARCHAR2(50) NULL ,
"PARTY" NVARCHAR2(100) NULL ,
"DRIVER" NVARCHAR2(50) NULL ,
"DRIVERTEL" NVARCHAR2(50) NULL ,
"BEGINPLACE" NVARCHAR2(50) NULL ,
"ENDPLACE" NVARCHAR2(50) NULL ,
"REASON" NVARCHAR2(100) NULL ,
"BEGINNUMBER" NUMBER(15,2) NULL ,
"ENDNUMBER" NUMBER(15,2) NULL ,
"MILEAGE" NUMBER(15,2) NULL ,
"REMARK" NVARCHAR2(100) NULL ,
"type" NUMBER NULL ,
"STATUS" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "RENREN"."T_CAR_RUN" IS '出车记录';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."if" IS '主键';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."CARID" IS '车号';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."USERID" IS '用车人';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."USERNAME" IS '姓名';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."number" IS '申请单号';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."BEGINTIME" IS '开始时间';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."PLANRETURNTIME" IS '预计回车时间';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."ENDTIME" IS '结束时间';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."DEPTID" IS '用车人单位';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."DEPTNAME" IS '部门';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."PARTY" IS '随行人员';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."DRIVER" IS '司机';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."DRIVERTEL" IS '司机电话';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."BEGINPLACE" IS '起始地';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."ENDPLACE" IS '目的地';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."REASON" IS '用车事由';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."BEGINNUMBER" IS '开始里程';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."ENDNUMBER" IS '结束里程';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."MILEAGE" IS '行驶里程';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."REMARK" IS '备注';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."type" IS '类型(1、普通类型2、借出类型)';
COMMENT ON COLUMN "RENREN"."T_CAR_RUN"."STATUS" IS '状态';

-- ----------------------------
-- Records of T_CAR_RUN
-- ----------------------------
INSERT INTO "RENREN"."T_CAR_RUN" VALUES ('1', '1', '1', null, '202201136545', TO_DATE('2022-01-13 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, TO_DATE('2022-01-15 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1', null, null, '老曹', '13754566977', '南宁', '广州', 'fgagawg', '200', '400', '600', 'jtdurd', null, '1');
INSERT INTO "RENREN"."T_CAR_RUN" VALUES ('22', '5', '1', null, 'gefe9989', TO_DATE('2021-08-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, TO_DATE('2021-12-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1', null, null, '老曹', '13754566977', '南宁', '广州', 'fgagawg', '200', '400', '600', 'jtdurd', null, '1');
INSERT INTO "RENREN"."T_CAR_RUN" VALUES ('23', '4', '1', null, 'hdr6546', TO_DATE('2021-04-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, TO_DATE('2021-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1', null, null, '老曹', '13754566977', '南宁', '广州', 'fgagawg', '200', '400', '600', 'jtdurd', null, '1');

-- ----------------------------
-- Table structure for TB_USER
-- ----------------------------
DROP TABLE "RENREN"."TB_USER";
CREATE TABLE "RENREN"."TB_USER" (
"USER_ID" NUMBER(20) NOT NULL ,
"USERNAME" VARCHAR2(50 BYTE) NOT NULL ,
"MOBILE" VARCHAR2(20 BYTE) NOT NULL ,
"PASSWORD" VARCHAR2(64 BYTE) NULL ,
"CREATE_TIME" TIMESTAMP(6)  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of TB_USER
-- ----------------------------
INSERT INTO "RENREN"."TB_USER" VALUES ('1', 'mark', '13612345678', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', TO_TIMESTAMP(' 2022-01-11 11:36:11:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'));

-- ----------------------------
-- Sequence structure for T_CAR_CAR_SEQ
-- ----------------------------
DROP SEQUENCE "RENREN"."T_CAR_CAR_SEQ";
CREATE SEQUENCE "RENREN"."T_CAR_CAR_SEQ"
 INCREMENT BY 15
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 616
 CACHE 20;

-- ----------------------------
-- Sequence structure for T_CAR_CARDRIVER_SEQ
-- ----------------------------
DROP SEQUENCE "RENREN"."T_CAR_CARDRIVER_SEQ";
CREATE SEQUENCE "RENREN"."T_CAR_CARDRIVER_SEQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 41
 CACHE 20;

-- ----------------------------
-- Sequence structure for T_CAR_DRIVER_SEQ
-- ----------------------------
DROP SEQUENCE "RENREN"."T_CAR_DRIVER_SEQ";
CREATE SEQUENCE "RENREN"."T_CAR_DRIVER_SEQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Sequence structure for T_CAR_INSPECTION_SEQ
-- ----------------------------
DROP SEQUENCE "RENREN"."T_CAR_INSPECTION_SEQ";
CREATE SEQUENCE "RENREN"."T_CAR_INSPECTION_SEQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Sequence structure for T_CAR_INSURANCE_SEQ
-- ----------------------------
DROP SEQUENCE "RENREN"."T_CAR_INSURANCE_SEQ";
CREATE SEQUENCE "RENREN"."T_CAR_INSURANCE_SEQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Sequence structure for T_CAR_RUN_SEQ
-- ----------------------------
DROP SEQUENCE "RENREN"."T_CAR_RUN_SEQ";
CREATE SEQUENCE "RENREN"."T_CAR_RUN_SEQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 41
 CACHE 20;

-- ----------------------------
-- Indexes structure for table QRTZ_BLOB_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Checks structure for table QRTZ_BLOB_TRIGGERS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_BLOB_TRIGGERS" ADD CHECK ("SCHED_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_BLOB_TRIGGERS" ADD CHECK ("TRIGGER_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_BLOB_TRIGGERS" ADD CHECK ("TRIGGER_GROUP" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table QRTZ_BLOB_TRIGGERS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_BLOB_TRIGGERS" ADD PRIMARY KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");

-- ----------------------------
-- Indexes structure for table QRTZ_CALENDARS
-- ----------------------------

-- ----------------------------
-- Checks structure for table QRTZ_CALENDARS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_CALENDARS" ADD CHECK ("SCHED_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_CALENDARS" ADD CHECK ("CALENDAR_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_CALENDARS" ADD CHECK ("CALENDAR" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table QRTZ_CALENDARS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_CALENDARS" ADD PRIMARY KEY ("SCHED_NAME", "CALENDAR_NAME");

-- ----------------------------
-- Indexes structure for table QRTZ_CRON_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Checks structure for table QRTZ_CRON_TRIGGERS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_CRON_TRIGGERS" ADD CHECK ("SCHED_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_CRON_TRIGGERS" ADD CHECK ("TRIGGER_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_CRON_TRIGGERS" ADD CHECK ("TRIGGER_GROUP" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_CRON_TRIGGERS" ADD CHECK ("CRON_EXPRESSION" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table QRTZ_CRON_TRIGGERS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_CRON_TRIGGERS" ADD PRIMARY KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");

-- ----------------------------
-- Indexes structure for table QRTZ_FIRED_TRIGGERS
-- ----------------------------
CREATE INDEX "RENREN"."IDX_QRTZ_FT_INST_JOB_REQ_RCVRY"
ON "RENREN"."QRTZ_FIRED_TRIGGERS" ("SCHED_NAME" ASC, "INSTANCE_NAME" ASC, "REQUESTS_RECOVERY" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_FT_JG"
ON "RENREN"."QRTZ_FIRED_TRIGGERS" ("SCHED_NAME" ASC, "JOB_GROUP" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_FT_J_G"
ON "RENREN"."QRTZ_FIRED_TRIGGERS" ("SCHED_NAME" ASC, "JOB_NAME" ASC, "JOB_GROUP" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_FT_TG"
ON "RENREN"."QRTZ_FIRED_TRIGGERS" ("SCHED_NAME" ASC, "TRIGGER_GROUP" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_FT_TRIG_INST_NAME"
ON "RENREN"."QRTZ_FIRED_TRIGGERS" ("SCHED_NAME" ASC, "INSTANCE_NAME" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_FT_T_G"
ON "RENREN"."QRTZ_FIRED_TRIGGERS" ("SCHED_NAME" ASC, "TRIGGER_NAME" ASC, "TRIGGER_GROUP" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table QRTZ_FIRED_TRIGGERS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_FIRED_TRIGGERS" ADD CHECK ("SCHED_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_FIRED_TRIGGERS" ADD CHECK ("ENTRY_ID" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_FIRED_TRIGGERS" ADD CHECK ("TRIGGER_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_FIRED_TRIGGERS" ADD CHECK ("TRIGGER_GROUP" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_FIRED_TRIGGERS" ADD CHECK ("INSTANCE_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_FIRED_TRIGGERS" ADD CHECK ("FIRED_TIME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_FIRED_TRIGGERS" ADD CHECK ("SCHED_TIME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_FIRED_TRIGGERS" ADD CHECK ("PRIORITY" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_FIRED_TRIGGERS" ADD CHECK ("STATE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table QRTZ_FIRED_TRIGGERS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_FIRED_TRIGGERS" ADD PRIMARY KEY ("SCHED_NAME", "ENTRY_ID");

-- ----------------------------
-- Indexes structure for table QRTZ_JOB_DETAILS
-- ----------------------------
CREATE INDEX "RENREN"."IDX_QRTZ_J_GRP"
ON "RENREN"."QRTZ_JOB_DETAILS" ("SCHED_NAME" ASC, "JOB_GROUP" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_J_REQ_RECOVERY"
ON "RENREN"."QRTZ_JOB_DETAILS" ("SCHED_NAME" ASC, "REQUESTS_RECOVERY" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table QRTZ_JOB_DETAILS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_JOB_DETAILS" ADD CHECK ("SCHED_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_JOB_DETAILS" ADD CHECK ("JOB_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_JOB_DETAILS" ADD CHECK ("JOB_GROUP" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_JOB_DETAILS" ADD CHECK ("JOB_CLASS_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_JOB_DETAILS" ADD CHECK ("IS_DURABLE" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_JOB_DETAILS" ADD CHECK ("IS_NONCONCURRENT" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_JOB_DETAILS" ADD CHECK ("IS_UPDATE_DATA" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_JOB_DETAILS" ADD CHECK ("REQUESTS_RECOVERY" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table QRTZ_JOB_DETAILS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_JOB_DETAILS" ADD PRIMARY KEY ("SCHED_NAME", "JOB_NAME", "JOB_GROUP");

-- ----------------------------
-- Indexes structure for table QRTZ_LOCKS
-- ----------------------------

-- ----------------------------
-- Checks structure for table QRTZ_LOCKS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_LOCKS" ADD CHECK ("SCHED_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_LOCKS" ADD CHECK ("LOCK_NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table QRTZ_LOCKS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_LOCKS" ADD PRIMARY KEY ("SCHED_NAME", "LOCK_NAME");

-- ----------------------------
-- Indexes structure for table QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------

-- ----------------------------
-- Checks structure for table QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_PAUSED_TRIGGER_GRPS" ADD CHECK ("SCHED_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_PAUSED_TRIGGER_GRPS" ADD CHECK ("TRIGGER_GROUP" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_PAUSED_TRIGGER_GRPS" ADD PRIMARY KEY ("SCHED_NAME", "TRIGGER_GROUP");

-- ----------------------------
-- Indexes structure for table QRTZ_SCHEDULER_STATE
-- ----------------------------

-- ----------------------------
-- Checks structure for table QRTZ_SCHEDULER_STATE
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_SCHEDULER_STATE" ADD CHECK ("SCHED_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_SCHEDULER_STATE" ADD CHECK ("INSTANCE_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_SCHEDULER_STATE" ADD CHECK ("LAST_CHECKIN_TIME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_SCHEDULER_STATE" ADD CHECK ("CHECKIN_INTERVAL" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table QRTZ_SCHEDULER_STATE
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_SCHEDULER_STATE" ADD PRIMARY KEY ("SCHED_NAME", "INSTANCE_NAME");

-- ----------------------------
-- Indexes structure for table QRTZ_SIMPLE_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Checks structure for table QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_SIMPLE_TRIGGERS" ADD CHECK ("SCHED_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_SIMPLE_TRIGGERS" ADD CHECK ("TRIGGER_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_SIMPLE_TRIGGERS" ADD CHECK ("TRIGGER_GROUP" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_SIMPLE_TRIGGERS" ADD CHECK ("REPEAT_COUNT" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_SIMPLE_TRIGGERS" ADD CHECK ("REPEAT_INTERVAL" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_SIMPLE_TRIGGERS" ADD CHECK ("TIMES_TRIGGERED" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_SIMPLE_TRIGGERS" ADD PRIMARY KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");

-- ----------------------------
-- Indexes structure for table QRTZ_SIMPROP_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Checks structure for table QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_SIMPROP_TRIGGERS" ADD CHECK ("SCHED_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_SIMPROP_TRIGGERS" ADD CHECK ("TRIGGER_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_SIMPROP_TRIGGERS" ADD CHECK ("TRIGGER_GROUP" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_SIMPROP_TRIGGERS" ADD PRIMARY KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");

-- ----------------------------
-- Indexes structure for table QRTZ_TRIGGERS
-- ----------------------------
CREATE INDEX "RENREN"."IDX_QRTZ_T_C"
ON "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME" ASC, "CALENDAR_NAME" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_T_G"
ON "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME" ASC, "TRIGGER_GROUP" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_T_J"
ON "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME" ASC, "JOB_NAME" ASC, "JOB_GROUP" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_T_JG"
ON "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME" ASC, "JOB_GROUP" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_T_NEXT_FIRE_TIME"
ON "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME" ASC, "NEXT_FIRE_TIME" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_T_NFT_MISFIRE"
ON "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME" ASC, "MISFIRE_INSTR" ASC, "NEXT_FIRE_TIME" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_T_NFT_ST"
ON "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME" ASC, "TRIGGER_STATE" ASC, "NEXT_FIRE_TIME" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_T_NFT_ST_MISFIRE"
ON "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME" ASC, "MISFIRE_INSTR" ASC, "NEXT_FIRE_TIME" ASC, "TRIGGER_STATE" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_T_NFT_ST_MISFIRE_GRP"
ON "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME" ASC, "MISFIRE_INSTR" ASC, "NEXT_FIRE_TIME" ASC, "TRIGGER_GROUP" ASC, "TRIGGER_STATE" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_T_N_G_STATE"
ON "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME" ASC, "TRIGGER_GROUP" ASC, "TRIGGER_STATE" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_T_N_STATE"
ON "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME" ASC, "TRIGGER_NAME" ASC, "TRIGGER_GROUP" ASC, "TRIGGER_STATE" ASC)
LOGGING
VISIBLE;
CREATE INDEX "RENREN"."IDX_QRTZ_T_STATE"
ON "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME" ASC, "TRIGGER_STATE" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table QRTZ_TRIGGERS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_TRIGGERS" ADD CHECK ("SCHED_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_TRIGGERS" ADD CHECK ("TRIGGER_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_TRIGGERS" ADD CHECK ("TRIGGER_GROUP" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_TRIGGERS" ADD CHECK ("JOB_NAME" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_TRIGGERS" ADD CHECK ("JOB_GROUP" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_TRIGGERS" ADD CHECK ("TRIGGER_STATE" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_TRIGGERS" ADD CHECK ("TRIGGER_TYPE" IS NOT NULL);
ALTER TABLE "RENREN"."QRTZ_TRIGGERS" ADD CHECK ("START_TIME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table QRTZ_TRIGGERS
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_TRIGGERS" ADD PRIMARY KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");

-- ----------------------------
-- Indexes structure for table SCHEDULE_JOB
-- ----------------------------

-- ----------------------------
-- Checks structure for table SCHEDULE_JOB
-- ----------------------------
ALTER TABLE "RENREN"."SCHEDULE_JOB" ADD CHECK ("JOB_ID" IS NOT NULL);
ALTER TABLE "RENREN"."SCHEDULE_JOB" ADD CHECK ("STATUS" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SCHEDULE_JOB
-- ----------------------------
ALTER TABLE "RENREN"."SCHEDULE_JOB" ADD PRIMARY KEY ("JOB_ID");

-- ----------------------------
-- Indexes structure for table SCHEDULE_JOB_LOG
-- ----------------------------
CREATE INDEX "RENREN"."INDEX_JOB_ID"
ON "RENREN"."SCHEDULE_JOB_LOG" ("JOB_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table SCHEDULE_JOB_LOG
-- ----------------------------
ALTER TABLE "RENREN"."SCHEDULE_JOB_LOG" ADD CHECK ("LOG_ID" IS NOT NULL);
ALTER TABLE "RENREN"."SCHEDULE_JOB_LOG" ADD CHECK ("JOB_ID" IS NOT NULL);
ALTER TABLE "RENREN"."SCHEDULE_JOB_LOG" ADD CHECK ("STATUS" IS NOT NULL);
ALTER TABLE "RENREN"."SCHEDULE_JOB_LOG" ADD CHECK ("TIMES" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SCHEDULE_JOB_LOG
-- ----------------------------
ALTER TABLE "RENREN"."SCHEDULE_JOB_LOG" ADD PRIMARY KEY ("LOG_ID");

-- ----------------------------
-- Indexes structure for table SYS_CAPTCHA
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_CAPTCHA
-- ----------------------------
ALTER TABLE "RENREN"."SYS_CAPTCHA" ADD CHECK ("UUID" IS NOT NULL);
ALTER TABLE "RENREN"."SYS_CAPTCHA" ADD CHECK ("CODE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_CAPTCHA
-- ----------------------------
ALTER TABLE "RENREN"."SYS_CAPTCHA" ADD PRIMARY KEY ("UUID");

-- ----------------------------
-- Indexes structure for table SYS_CONFIG
-- ----------------------------
CREATE UNIQUE INDEX "RENREN"."INDEX_PARAM_KEY"
ON "RENREN"."SYS_CONFIG" ("PARAM_KEY" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table SYS_CONFIG
-- ----------------------------
ALTER TABLE "RENREN"."SYS_CONFIG" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "RENREN"."SYS_CONFIG" ADD CHECK ("STATUS" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_CONFIG
-- ----------------------------
ALTER TABLE "RENREN"."SYS_CONFIG" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table SYS_LOG
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_LOG
-- ----------------------------
ALTER TABLE "RENREN"."SYS_LOG" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "RENREN"."SYS_LOG" ADD CHECK ("TIME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_LOG
-- ----------------------------
ALTER TABLE "RENREN"."SYS_LOG" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table SYS_MENU
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_MENU
-- ----------------------------
ALTER TABLE "RENREN"."SYS_MENU" ADD CHECK ("MENU_ID" IS NOT NULL);
ALTER TABLE "RENREN"."SYS_MENU" ADD CHECK ("PARENT_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_MENU
-- ----------------------------
ALTER TABLE "RENREN"."SYS_MENU" ADD PRIMARY KEY ("MENU_ID");

-- ----------------------------
-- Indexes structure for table SYS_OSS
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_OSS
-- ----------------------------
ALTER TABLE "RENREN"."SYS_OSS" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_OSS
-- ----------------------------
ALTER TABLE "RENREN"."SYS_OSS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table SYS_ROLE
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_ROLE
-- ----------------------------
ALTER TABLE "RENREN"."SYS_ROLE" ADD CHECK ("ROLE_ID" IS NOT NULL);
ALTER TABLE "RENREN"."SYS_ROLE" ADD CHECK ("CREATE_USER_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_ROLE
-- ----------------------------
ALTER TABLE "RENREN"."SYS_ROLE" ADD PRIMARY KEY ("ROLE_ID");

-- ----------------------------
-- Indexes structure for table SYS_ROLE_MENU
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_ROLE_MENU
-- ----------------------------
ALTER TABLE "RENREN"."SYS_ROLE_MENU" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "RENREN"."SYS_ROLE_MENU" ADD CHECK ("ROLE_ID" IS NOT NULL);
ALTER TABLE "RENREN"."SYS_ROLE_MENU" ADD CHECK ("MENU_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_ROLE_MENU
-- ----------------------------
ALTER TABLE "RENREN"."SYS_ROLE_MENU" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table SYS_USER
-- ----------------------------
CREATE UNIQUE INDEX "RENREN"."INDEX_SYS_USER_USERNAME"
ON "RENREN"."SYS_USER" ("USERNAME" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table SYS_USER
-- ----------------------------
ALTER TABLE "RENREN"."SYS_USER" ADD CHECK ("USER_ID" IS NOT NULL);
ALTER TABLE "RENREN"."SYS_USER" ADD CHECK ("USERNAME" IS NOT NULL);
ALTER TABLE "RENREN"."SYS_USER" ADD CHECK ("STATUS" IS NOT NULL);
ALTER TABLE "RENREN"."SYS_USER" ADD CHECK ("CREATE_USER_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_USER
-- ----------------------------
ALTER TABLE "RENREN"."SYS_USER" ADD PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Indexes structure for table SYS_USER_ROLE
-- ----------------------------

-- ----------------------------
-- Checks structure for table SYS_USER_ROLE
-- ----------------------------
ALTER TABLE "RENREN"."SYS_USER_ROLE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "RENREN"."SYS_USER_ROLE" ADD CHECK ("USER_ID" IS NOT NULL);
ALTER TABLE "RENREN"."SYS_USER_ROLE" ADD CHECK ("ROLE_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_USER_ROLE
-- ----------------------------
ALTER TABLE "RENREN"."SYS_USER_ROLE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table SYS_USER_TOKEN
-- ----------------------------
CREATE UNIQUE INDEX "RENREN"."INDEX_TOKEN"
ON "RENREN"."SYS_USER_TOKEN" ("TOKEN" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table SYS_USER_TOKEN
-- ----------------------------
ALTER TABLE "RENREN"."SYS_USER_TOKEN" ADD CHECK ("USER_ID" IS NOT NULL);
ALTER TABLE "RENREN"."SYS_USER_TOKEN" ADD CHECK ("TOKEN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SYS_USER_TOKEN
-- ----------------------------
ALTER TABLE "RENREN"."SYS_USER_TOKEN" ADD PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Indexes structure for table T_CAR_CAR
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_CAR_CAR
-- ----------------------------
ALTER TABLE "RENREN"."T_CAR_CAR" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_CAR_CAR
-- ----------------------------
ALTER TABLE "RENREN"."T_CAR_CAR" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table T_CAR_CARDRIVER
-- ----------------------------
ALTER TABLE "RENREN"."T_CAR_CARDRIVER" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table T_CAR_DRIVER
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_CAR_DRIVER
-- ----------------------------
ALTER TABLE "RENREN"."T_CAR_DRIVER" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_CAR_DRIVER
-- ----------------------------
ALTER TABLE "RENREN"."T_CAR_DRIVER" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table T_CAR_INSPECTION
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_CAR_INSPECTION
-- ----------------------------
ALTER TABLE "RENREN"."T_CAR_INSPECTION" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_CAR_INSPECTION
-- ----------------------------
ALTER TABLE "RENREN"."T_CAR_INSPECTION" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table T_CAR_INSURANCE
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_CAR_INSURANCE
-- ----------------------------
ALTER TABLE "RENREN"."T_CAR_INSURANCE" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_CAR_INSURANCE
-- ----------------------------
ALTER TABLE "RENREN"."T_CAR_INSURANCE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table T_CAR_RUN
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_CAR_RUN
-- ----------------------------
ALTER TABLE "RENREN"."T_CAR_RUN" ADD CHECK ("if" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_CAR_RUN
-- ----------------------------
ALTER TABLE "RENREN"."T_CAR_RUN" ADD PRIMARY KEY ("if");

-- ----------------------------
-- Indexes structure for table TB_USER
-- ----------------------------
CREATE UNIQUE INDEX "RENREN"."INDEX_TB_USER_USERNAME"
ON "RENREN"."TB_USER" ("USERNAME" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table TB_USER
-- ----------------------------
ALTER TABLE "RENREN"."TB_USER" ADD CHECK ("USER_ID" IS NOT NULL);
ALTER TABLE "RENREN"."TB_USER" ADD CHECK ("USERNAME" IS NOT NULL);
ALTER TABLE "RENREN"."TB_USER" ADD CHECK ("MOBILE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table TB_USER
-- ----------------------------
ALTER TABLE "RENREN"."TB_USER" ADD PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Foreign Key structure for table "RENREN"."QRTZ_BLOB_TRIGGERS"
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_BLOB_TRIGGERS" ADD FOREIGN KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP") REFERENCES "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");

-- ----------------------------
-- Foreign Key structure for table "RENREN"."QRTZ_CRON_TRIGGERS"
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_CRON_TRIGGERS" ADD FOREIGN KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP") REFERENCES "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");

-- ----------------------------
-- Foreign Key structure for table "RENREN"."QRTZ_SIMPLE_TRIGGERS"
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_SIMPLE_TRIGGERS" ADD FOREIGN KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP") REFERENCES "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");

-- ----------------------------
-- Foreign Key structure for table "RENREN"."QRTZ_SIMPROP_TRIGGERS"
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_SIMPROP_TRIGGERS" ADD FOREIGN KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP") REFERENCES "RENREN"."QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");

-- ----------------------------
-- Foreign Key structure for table "RENREN"."QRTZ_TRIGGERS"
-- ----------------------------
ALTER TABLE "RENREN"."QRTZ_TRIGGERS" ADD FOREIGN KEY ("SCHED_NAME", "JOB_NAME", "JOB_GROUP") REFERENCES "RENREN"."QRTZ_JOB_DETAILS" ("SCHED_NAME", "JOB_NAME", "JOB_GROUP");
