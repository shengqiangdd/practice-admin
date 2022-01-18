/*
Navicat SQL Server Data Transfer

Source Server         : sqlserver
Source Server Version : 110000
Source Host           : 192.168.0.119:1433
Source Database       : renren_fast
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2022-01-17 17:13:26
*/


-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_BLOB_TRIGGERS]
GO
CREATE TABLE [dbo].[QRTZ_BLOB_TRIGGERS] (
[SCHED_NAME] varchar(120) NOT NULL ,
[TRIGGER_NAME] varchar(200) NOT NULL ,
[TRIGGER_GROUP] varchar(200) NOT NULL ,
[BLOB_DATA] image NULL 
)


GO

-- ----------------------------
-- Records of QRTZ_BLOB_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_CALENDARS]
GO
CREATE TABLE [dbo].[QRTZ_CALENDARS] (
[SCHED_NAME] varchar(120) NOT NULL ,
[CALENDAR_NAME] varchar(200) NOT NULL ,
[CALENDAR] image NOT NULL 
)


GO

-- ----------------------------
-- Records of QRTZ_CALENDARS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_CRON_TRIGGERS]
GO
CREATE TABLE [dbo].[QRTZ_CRON_TRIGGERS] (
[SCHED_NAME] varchar(120) NOT NULL ,
[TRIGGER_NAME] varchar(200) NOT NULL ,
[TRIGGER_GROUP] varchar(200) NOT NULL ,
[CRON_EXPRESSION] varchar(120) NOT NULL ,
[TIME_ZONE_ID] varchar(80) NULL 
)


GO

-- ----------------------------
-- Records of QRTZ_CRON_TRIGGERS
-- ----------------------------
INSERT INTO [dbo].[QRTZ_CRON_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP], [CRON_EXPRESSION], [TIME_ZONE_ID]) VALUES (N'RenrenScheduler', N'TASK_1', N'DEFAULT', N'0 0/30 * * * ?', N'Asia/Shanghai')
GO
GO

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_FIRED_TRIGGERS]
GO
CREATE TABLE [dbo].[QRTZ_FIRED_TRIGGERS] (
[SCHED_NAME] varchar(120) NOT NULL ,
[ENTRY_ID] varchar(95) NOT NULL ,
[TRIGGER_NAME] varchar(200) NOT NULL ,
[TRIGGER_GROUP] varchar(200) NOT NULL ,
[INSTANCE_NAME] varchar(200) NOT NULL ,
[FIRED_TIME] bigint NOT NULL ,
[SCHED_TIME] bigint NOT NULL ,
[PRIORITY] int NOT NULL ,
[STATE] varchar(16) NOT NULL ,
[JOB_NAME] varchar(200) NULL ,
[JOB_GROUP] varchar(200) NULL ,
[IS_NONCONCURRENT] varchar(1) NULL ,
[REQUESTS_RECOVERY] varchar(1) NULL 
)


GO

-- ----------------------------
-- Records of QRTZ_FIRED_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_JOB_DETAILS]
GO
CREATE TABLE [dbo].[QRTZ_JOB_DETAILS] (
[SCHED_NAME] varchar(120) NOT NULL ,
[JOB_NAME] varchar(200) NOT NULL ,
[JOB_GROUP] varchar(200) NOT NULL ,
[DESCRIPTION] varchar(250) NULL ,
[JOB_CLASS_NAME] varchar(250) NOT NULL ,
[IS_DURABLE] varchar(1) NOT NULL ,
[IS_NONCONCURRENT] varchar(1) NOT NULL ,
[IS_UPDATE_DATA] varchar(1) NOT NULL ,
[REQUESTS_RECOVERY] varchar(1) NOT NULL ,
[JOB_DATA] image NULL 
)


GO

-- ----------------------------
-- Records of QRTZ_JOB_DETAILS
-- ----------------------------
INSERT INTO [dbo].[QRTZ_JOB_DETAILS] ([SCHED_NAME], [JOB_NAME], [JOB_GROUP], [DESCRIPTION], [JOB_CLASS_NAME], [IS_DURABLE], [IS_NONCONCURRENT], [IS_UPDATE_DATA], [REQUESTS_RECOVERY], [JOB_DATA]) VALUES (N'RenrenScheduler', N'TASK_1', N'DEFAULT', null, N'io.renren.modules.job.utils.ScheduleJob', N'0', N'0', N'0', N'0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200074C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672656E72656E74000CE58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800)
GO
GO

-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_LOCKS]
GO
CREATE TABLE [dbo].[QRTZ_LOCKS] (
[SCHED_NAME] varchar(120) NOT NULL ,
[LOCK_NAME] varchar(40) NOT NULL 
)


GO

-- ----------------------------
-- Records of QRTZ_LOCKS
-- ----------------------------
INSERT INTO [dbo].[QRTZ_LOCKS] ([SCHED_NAME], [LOCK_NAME]) VALUES (N'RenrenScheduler', N'STATE_ACCESS')
GO
GO
INSERT INTO [dbo].[QRTZ_LOCKS] ([SCHED_NAME], [LOCK_NAME]) VALUES (N'RenrenScheduler', N'TRIGGER_ACCESS')
GO
GO

-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_PAUSED_TRIGGER_GRPS]
GO
CREATE TABLE [dbo].[QRTZ_PAUSED_TRIGGER_GRPS] (
[SCHED_NAME] varchar(120) NOT NULL ,
[TRIGGER_GROUP] varchar(200) NOT NULL 
)


GO

-- ----------------------------
-- Records of QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
DROP TABLE [dbo].[QRTZ_SCHEDULER_STATE]
GO
CREATE TABLE [dbo].[QRTZ_SCHEDULER_STATE] (
[SCHED_NAME] varchar(120) NOT NULL ,
[INSTANCE_NAME] varchar(200) NOT NULL ,
[LAST_CHECKIN_TIME] bigint NOT NULL ,
[CHECKIN_INTERVAL] bigint NOT NULL 
)


GO

-- ----------------------------
-- Records of QRTZ_SCHEDULER_STATE
-- ----------------------------
INSERT INTO [dbo].[QRTZ_SCHEDULER_STATE] ([SCHED_NAME], [INSTANCE_NAME], [LAST_CHECKIN_TIME], [CHECKIN_INTERVAL]) VALUES (N'RenrenScheduler', N'USER-20210802VN1642410434146', N'1642410796223', N'15000')
GO
GO

-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS]
GO
CREATE TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS] (
[SCHED_NAME] varchar(120) NOT NULL ,
[TRIGGER_NAME] varchar(200) NOT NULL ,
[TRIGGER_GROUP] varchar(200) NOT NULL ,
[REPEAT_COUNT] bigint NOT NULL ,
[REPEAT_INTERVAL] bigint NOT NULL ,
[TIMES_TRIGGERED] bigint NOT NULL 
)


GO

-- ----------------------------
-- Records of QRTZ_SIMPLE_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS]
GO
CREATE TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS] (
[SCHED_NAME] varchar(120) NOT NULL ,
[TRIGGER_NAME] varchar(200) NOT NULL ,
[TRIGGER_GROUP] varchar(200) NOT NULL ,
[STR_PROP_1] varchar(512) NULL ,
[STR_PROP_2] varchar(512) NULL ,
[STR_PROP_3] varchar(512) NULL ,
[INT_PROP_1] int NULL ,
[INT_PROP_2] int NULL ,
[LONG_PROP_1] bigint NULL ,
[LONG_PROP_2] bigint NULL ,
[DEC_PROP_1] numeric(13,4) NULL ,
[DEC_PROP_2] numeric(13,4) NULL ,
[BOOL_PROP_1] varchar(1) NULL ,
[BOOL_PROP_2] varchar(1) NULL 
)


GO

-- ----------------------------
-- Records of QRTZ_SIMPROP_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_TRIGGERS]
GO
CREATE TABLE [dbo].[QRTZ_TRIGGERS] (
[SCHED_NAME] varchar(120) NOT NULL ,
[TRIGGER_NAME] varchar(200) NOT NULL ,
[TRIGGER_GROUP] varchar(200) NOT NULL ,
[JOB_NAME] varchar(200) NOT NULL ,
[JOB_GROUP] varchar(200) NOT NULL ,
[DESCRIPTION] varchar(250) NULL ,
[NEXT_FIRE_TIME] bigint NULL ,
[PREV_FIRE_TIME] bigint NULL ,
[PRIORITY] int NULL ,
[TRIGGER_STATE] varchar(16) NOT NULL ,
[TRIGGER_TYPE] varchar(8) NOT NULL ,
[START_TIME] bigint NOT NULL ,
[END_TIME] bigint NULL ,
[CALENDAR_NAME] varchar(200) NULL ,
[MISFIRE_INSTR] smallint NULL ,
[JOB_DATA] image NULL 
)


GO

-- ----------------------------
-- Records of QRTZ_TRIGGERS
-- ----------------------------
INSERT INTO [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP], [JOB_NAME], [JOB_GROUP], [DESCRIPTION], [NEXT_FIRE_TIME], [PREV_FIRE_TIME], [PRIORITY], [TRIGGER_STATE], [TRIGGER_TYPE], [START_TIME], [END_TIME], [CALENDAR_NAME], [MISFIRE_INSTR], [JOB_DATA]) VALUES (N'RenrenScheduler', N'TASK_1', N'DEFAULT', N'TASK_1', N'DEFAULT', null, N'1642411800000', N'-1', N'5', N'WAITING', N'CRON', N'1639010536000', N'0', null, N'2', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200074C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672656E72656E74000CE58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800)
GO
GO

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE [dbo].[schedule_job]
GO
CREATE TABLE [dbo].[schedule_job] (
[job_id] bigint NOT NULL IDENTITY(1,1) ,
[bean_name] varchar(200) NULL ,
[params] varchar(2000) NULL ,
[cron_expression] varchar(100) NULL ,
[status] tinyint NULL ,
[remark] varchar(255) NULL ,
[create_time] datetime NULL 
)


GO

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
SET IDENTITY_INSERT [dbo].[schedule_job] ON
GO
INSERT INTO [dbo].[schedule_job] ([job_id], [bean_name], [params], [cron_expression], [status], [remark], [create_time]) VALUES (N'1', N'testTask', N'renren', N'0 0/30 * * * ?', N'0', N'参数测试', N'2016-12-01 23:16:46.000')
GO
GO
SET IDENTITY_INSERT [dbo].[schedule_job] OFF
GO

-- ----------------------------
-- Table structure for schedule_job_log
-- ----------------------------
DROP TABLE [dbo].[schedule_job_log]
GO
CREATE TABLE [dbo].[schedule_job_log] (
[log_id] bigint NOT NULL IDENTITY(1,1) ,
[job_id] bigint NOT NULL ,
[bean_name] varchar(200) NULL ,
[params] varchar(2000) NULL ,
[status] tinyint NOT NULL ,
[error] varchar(2000) NULL ,
[times] int NOT NULL ,
[create_time] datetime NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[schedule_job_log]', RESEED, 160)
GO

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------
SET IDENTITY_INSERT [dbo].[schedule_job_log] ON
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'1', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-09 09:00:00.030')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'2', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-09 10:00:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'3', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-09 10:30:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'4', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-09 11:00:00.013')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'5', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-09 11:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'6', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-09 12:00:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'7', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-09 15:30:00.027')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'8', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-09 16:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'9', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-09 16:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'10', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-09 17:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'11', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-09 17:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'12', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-09 18:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'13', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-10 09:00:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'14', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-10 09:30:00.063')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'15', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-10 10:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'16', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-10 10:30:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'17', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-10 11:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'18', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-10 11:30:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'19', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-10 12:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'20', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-10 12:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'21', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-10 13:00:00.023')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'22', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-10 13:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'23', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-10 14:00:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'24', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-10 14:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'25', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-10 15:00:00.013')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'26', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-10 15:30:00.023')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'27', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-10 16:00:00.030')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'28', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-10 16:30:00.033')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'29', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-10 17:30:00.030')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'30', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-10 18:00:00.117')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'31', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-13 08:30:00.033')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'32', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-13 09:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'33', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-13 09:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'34', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-13 10:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'35', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-13 10:30:00.097')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'36', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-13 11:00:00.103')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'37', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-13 11:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'38', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-13 12:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'39', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-13 15:00:00.010')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'40', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-13 15:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'41', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-13 16:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'42', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-13 16:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'43', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-13 17:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'44', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-13 17:30:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'45', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-13 18:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'46', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-14 08:30:00.040')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'47', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-14 09:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'48', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-14 09:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'49', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-14 10:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'50', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-14 10:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'51', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-14 11:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'52', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-14 11:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'53', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-14 12:00:00.013')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'54', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-14 15:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'55', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-14 15:30:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'56', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-14 16:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'57', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-14 16:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'58', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-14 17:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'59', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-14 17:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'60', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-14 18:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'61', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-15 08:00:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'62', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-15 08:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'63', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-15 09:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'64', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-15 09:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'65', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-15 10:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'66', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-15 10:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'67', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-15 11:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'68', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-15 11:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'69', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-15 12:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'70', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-15 12:30:00.010')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'71', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-15 13:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'72', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-15 13:30:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'73', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-15 14:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'74', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-15 14:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'75', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-15 15:00:00.027')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'76', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-15 15:30:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'77', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-15 16:00:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'78', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-15 16:30:00.030')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'79', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-15 17:00:00.037')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'80', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-15 17:30:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'81', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-15 18:00:00.033')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'82', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-16 08:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'83', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-16 09:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'84', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-16 09:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'85', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-16 10:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'86', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-16 10:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'87', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-16 11:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'88', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-16 11:30:00.010')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'89', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-16 12:00:00.003')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'90', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-16 15:00:00.003')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'91', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-16 15:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'92', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-16 16:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'93', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-16 16:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'94', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-16 17:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'95', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-16 17:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'96', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-16 18:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'97', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-17 08:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'98', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-17 09:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'99', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-17 09:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'100', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-17 10:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'101', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-17 10:30:00.010')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'102', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-17 11:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'103', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-17 11:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'104', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-17 12:00:00.013')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'105', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-17 15:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'106', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-17 16:00:00.027')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'107', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-17 16:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'108', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-17 17:00:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'109', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-17 17:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'110', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-17 18:00:00.027')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'111', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-20 08:30:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'112', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-20 09:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'113', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-20 09:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'114', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-20 10:00:00.013')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'115', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-20 10:30:00.063')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'116', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-20 11:00:00.023')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'117', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-20 11:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'118', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-20 12:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'119', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-20 15:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'120', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-20 16:00:00.013')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'121', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-20 16:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'122', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-20 17:00:00.037')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'123', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-20 17:30:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'124', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-20 18:00:00.013')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'125', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-21 08:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'126', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-21 09:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'127', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-21 09:30:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'128', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-21 10:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'129', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-21 10:30:00.010')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'130', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-21 11:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'131', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-21 11:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'132', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-21 12:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'133', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-21 16:00:00.013')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'134', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-21 16:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'135', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-21 17:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'136', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-21 17:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'137', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-22 08:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'138', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-22 09:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'139', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-22 09:30:00.003')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'140', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-22 10:00:00.010')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'141', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-22 10:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'142', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-22 11:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'143', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-22 11:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'144', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-22 12:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'145', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-22 15:30:00.010')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'146', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-22 16:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'147', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-22 16:30:18.700')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'148', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-22 17:00:00.027')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'149', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-22 17:30:00.033')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'150', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-22 18:00:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'151', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-23 08:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'152', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-23 09:00:00.030')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'153', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-23 09:30:00.017')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'154', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-23 10:00:00.027')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'155', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-23 10:30:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'156', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-23 11:00:00.023')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'157', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-23 11:30:00.020')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'158', N'1', N'testTask', N'renren', N'0', null, N'1', N'2021-12-23 12:00:00.030')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'159', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-23 15:00:00.007')
GO
GO
INSERT INTO [dbo].[schedule_job_log] ([log_id], [job_id], [bean_name], [params], [status], [error], [times], [create_time]) VALUES (N'160', N'1', N'testTask', N'renren', N'0', null, N'0', N'2021-12-23 15:30:00.017')
GO
GO
SET IDENTITY_INSERT [dbo].[schedule_job_log] OFF
GO

-- ----------------------------
-- Table structure for sys_captcha
-- ----------------------------
DROP TABLE [dbo].[sys_captcha]
GO
CREATE TABLE [dbo].[sys_captcha] (
[uuid] varchar(36) NOT NULL ,
[code] varchar(6) NOT NULL ,
[expire_time] datetime NULL 
)


GO

-- ----------------------------
-- Records of sys_captcha
-- ----------------------------
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'1d314951-6705-454b-8344-8da5cdfdb95f', N'da7an', N'2021-12-27 08:11:08.970')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'2693070c-6181-4e43-8e02-f5c95625ab6c', N'wbn3m', N'2021-12-31 08:14:46.750')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'2de18050-b29b-4db4-8a0b-180bea53df8d', N'xg2xp', N'2021-12-29 08:29:49.437')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'40111a38-1577-4cce-8ead-9a4e50be5193', N'fe2yy', N'2021-12-10 09:46:19.040')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'53b83ae6-1b80-4a0b-82e2-870e14c5e46f', N'bdm7n', N'2021-12-08 16:47:13.640')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'5944b5ba-157e-4ab9-8f53-fed08d42bd7f', N'7fn82', N'2022-01-07 16:10:05.987')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'5adc9c98-81e2-4b5c-8cba-128b165550cd', N'dfmdg', N'2021-12-08 16:46:05.517')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'61cf045e-b1aa-4bee-82fe-bc89de26ebb8', N'3b526', N'2021-12-31 10:53:54.087')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'6749b0e0-9bc8-4440-8245-a76dc288b4f3', N'8wayy', N'2021-12-13 08:10:34.850')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'6c4ded5a-9759-413a-8094-221b7fc94421', N'fnc5a', N'2021-12-16 08:12:18.477')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'930ed3b0-fb19-445d-874b-c87a8d5b8cce', N'x25nx', N'2022-01-05 08:08:09.617')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'af0a7c21-2922-487d-8050-39b319a8bd75', N'xfacn', N'2021-12-30 08:55:37.200')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'c2df8987-488b-48eb-846a-68dc081e98ea', N'7ffx7', N'2021-12-10 09:46:27.760')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'ca432ce8-3739-4e82-82bf-963bcf3c58ae', N'e3ypw', N'2021-12-16 08:13:39.910')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'd3c51cb4-9c01-4d3b-810d-3a2316441a49', N'y7ex6', N'2021-12-08 16:50:54.493')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'db117ccb-f601-4124-84e2-df1575f07b82', N'n4p3d', N'2021-12-28 16:18:07.183')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'e5358c89-c04a-4a10-88ca-fa6e872471a3', N'dmc67', N'2021-12-22 17:45:09.450')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'f6700471-4d50-4c5c-897b-0f3d435919a9', N'ccnbn', N'2021-12-27 08:11:00.740')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'fcf6721e-fea3-4807-8d31-c8200a6a4994', N'p54nm', N'2021-12-30 16:02:47.590')
GO
GO
INSERT INTO [dbo].[sys_captcha] ([uuid], [code], [expire_time]) VALUES (N'fd31356b-8c86-451b-8804-e8d1dcf3c306', N'paw87', N'2021-12-31 08:24:29.147')
GO
GO

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE [dbo].[sys_config]
GO
CREATE TABLE [dbo].[sys_config] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[param_key] varchar(50) NULL ,
[param_value] varchar(2000) NULL ,
[status] tinyint NULL DEFAULT ((1)) ,
[remark] varchar(500) NULL 
)


GO

-- ----------------------------
-- Records of sys_config
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_config] ON
GO
INSERT INTO [dbo].[sys_config] ([id], [param_key], [param_value], [status], [remark]) VALUES (N'1', N'CLOUD_STORAGE_CONFIG_KEY', N'{"aliyunAccessKeyId":"","aliyunAccessKeySecret":"","aliyunBucketName":"","aliyunDomain":"","aliyunEndPoint":"","aliyunPrefix":"","qcloudBucketName":"","qcloudDomain":"","qcloudPrefix":"","qcloudSecretId":"","qcloudSecretKey":"","qiniuAccessKey":"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ","qiniuBucketName":"ios-app","qiniuDomain":"http://7xlij2.com1.z0.glb.clouddn.com","qiniuPrefix":"upload","qiniuSecretKey":"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV","type":1}', N'0', N'云存储配置信息')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_config] OFF
GO

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE [dbo].[sys_log]
GO
CREATE TABLE [dbo].[sys_log] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[username] varchar(50) NULL ,
[operation] varchar(50) NULL ,
[method] varchar(200) NULL ,
[params] varchar(5000) NULL ,
[time] bigint NOT NULL ,
[ip] varchar(64) NULL ,
[create_date] datetime NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_log]', RESEED, 3)
GO

-- ----------------------------
-- Records of sys_log
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_log] ON
GO
INSERT INTO [dbo].[sys_log] ([id], [username], [operation], [method], [params], [time], [ip], [create_date]) VALUES (N'1', N'admin', N'修改菜单', N'io.renren.modules.sys.controller.SysMenuController.update()', N'[{"menuId":66,"parentId":1,"name":"车辆状态查询","url":"generator/tcarcar_status","type":1,"icon":"config","orderNum":6}]', N'4', N'0:0:0:0:0:0:0:1', N'2021-12-21 10:09:55.347')
GO
GO
INSERT INTO [dbo].[sys_log] ([id], [username], [operation], [method], [params], [time], [ip], [create_date]) VALUES (N'2', N'admin', N'修改菜单', N'io.renren.modules.sys.controller.SysMenuController.update()', N'[{"menuId":66,"parentId":1,"name":"车辆状态查询","url":"generator/tcarstatus","type":1,"icon":"config","orderNum":6}]', N'3', N'0:0:0:0:0:0:0:1', N'2021-12-21 10:16:25.247')
GO
GO
INSERT INTO [dbo].[sys_log] ([id], [username], [operation], [method], [params], [time], [ip], [create_date]) VALUES (N'3', N'admin', N'保存菜单', N'io.renren.modules.sys.controller.SysMenuController.save()', N'[{"menuId":67,"parentId":66,"name":"查看","perms":"generator:tcarrun:list,generator:tcarcar:list","type":2,"orderNum":6}]', N'4', N'0:0:0:0:0:0:0:1', N'2021-12-21 10:21:22.090')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_log] OFF
GO

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE [dbo].[sys_menu]
GO
CREATE TABLE [dbo].[sys_menu] (
[menu_id] bigint NOT NULL IDENTITY(1,1) ,
[parent_id] bigint NULL ,
[name] varchar(50) NULL ,
[url] varchar(200) NULL ,
[perms] varchar(500) NULL ,
[type] int NULL ,
[icon] varchar(50) NULL ,
[order_num] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_menu]', RESEED, 67)
GO

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_menu] ON
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'1', N'0', N'系统管理', null, null, N'0', N'system', N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'2', N'1', N'管理员列表', N'sys/user', null, N'1', N'admin', N'1')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'3', N'1', N'角色管理', N'sys/role', null, N'1', N'role', N'2')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'4', N'1', N'菜单管理', N'sys/menu', null, N'1', N'menu', N'3')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'5', N'1', N'SQL监控', N'http://localhost:8083/renren-fast/druid/index.html', null, N'1', N'sql', N'4')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'6', N'1', N'定时任务', N'job/schedule', null, N'1', N'job', N'5')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'7', N'6', N'查看', null, N'sys:schedule:list,sys:schedule:info', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'8', N'6', N'新增', null, N'sys:schedule:save', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'9', N'6', N'修改', null, N'sys:schedule:update', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'10', N'6', N'删除', null, N'sys:schedule:delete', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'11', N'6', N'暂停', null, N'sys:schedule:pause', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'12', N'6', N'恢复', null, N'sys:schedule:resume', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'13', N'6', N'立即执行', null, N'sys:schedule:run', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'14', N'6', N'日志列表', null, N'sys:schedule:log', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'15', N'2', N'查看', null, N'sys:user:list,sys:user:info', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'16', N'2', N'新增', null, N'sys:user:save,sys:role:select', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'17', N'2', N'修改', null, N'sys:user:update,sys:role:select', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'18', N'2', N'删除', null, N'sys:user:delete', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'19', N'3', N'查看', null, N'sys:role:list,sys:role:info', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'20', N'3', N'新增', null, N'sys:role:save,sys:menu:list', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'21', N'3', N'修改', null, N'sys:role:update,sys:menu:list', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'22', N'3', N'删除', null, N'sys:role:delete', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'23', N'4', N'查看', null, N'sys:menu:list,sys:menu:info', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'24', N'4', N'新增', null, N'sys:menu:save,sys:menu:select', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'25', N'4', N'修改', null, N'sys:menu:update,sys:menu:select', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'26', N'4', N'删除', null, N'sys:menu:delete', N'2', null, N'0')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'27', N'1', N'参数管理', N'sys/config', N'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', N'1', N'config', N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'29', N'1', N'系统日志', N'sys/log', N'sys:log:list', N'1', N'log', N'7')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'30', N'1', N'文件上传', N'oss/oss', N'sys:oss:all', N'1', N'oss', N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'31', N'1', N'车辆档案', N'generator/tcarcar', null, N'1', N'config', N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'32', N'31', N'查看', null, N'generator:tcarcar:list,generator:tcarcar:info', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'33', N'31', N'新增', null, N'generator:tcarcar:save', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'34', N'31', N'修改', null, N'generator:tcarcar:update', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'35', N'31', N'删除', null, N'generator:tcarcar:delete', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'36', N'1', N'车辆司机关联表', N'generator/tcarcardriver', null, N'1', N'config', N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'37', N'36', N'查看', null, N'generator:tcarcardriver:list,generator:tcarcardriver:info', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'38', N'36', N'新增', null, N'generator:tcarcardriver:save', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'39', N'36', N'修改', null, N'generator:tcarcardriver:update', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'40', N'36', N'删除', null, N'generator:tcarcardriver:delete', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'41', N'1', N'司机表', N'generator/tcardriver', null, N'1', N'config', N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'42', N'41', N'查看', null, N'generator:tcardriver:list,generator:tcardriver:info', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'43', N'41', N'新增', null, N'generator:tcardriver:save', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'44', N'41', N'修改', null, N'generator:tcardriver:update', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'45', N'41', N'删除', null, N'generator:tcardriver:delete', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'46', N'1', N'年检记录', N'generator/tcarinspection', null, N'1', N'config', N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'47', N'46', N'查看', null, N'generator:tcarinspection:list,generator:tcarinspection:info', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'48', N'46', N'新增', null, N'generator:tcarinspection:save', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'49', N'46', N'修改', null, N'generator:tcarinspection:update', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'50', N'46', N'删除', null, N'generator:tcarinspection:delete', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'51', N'1', N'保险记录', N'generator/tcarinsurance', null, N'1', N'config', N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'52', N'51', N'查看', null, N'generator:tcarinsurance:list,generator:tcarinsurance:info', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'53', N'51', N'新增', null, N'generator:tcarinsurance:save', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'54', N'51', N'修改', null, N'generator:tcarinsurance:update', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'55', N'51', N'删除', null, N'generator:tcarinsurance:delete', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'56', N'1', N'派车档案', N'generator/tcarrun', null, N'1', N'config', N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'57', N'56', N'查看', null, N'generator:tcarrun:list,generator:tcarrun:info', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'58', N'56', N'新增', null, N'generator:tcarrun:save', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'59', N'56', N'修改', null, N'generator:tcarrun:update', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'60', N'56', N'删除', null, N'generator:tcarrun:delete', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'61', N'1', N'${comments}', N'generator/user', null, N'1', N'config', N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'62', N'61', N'查看', null, N'generator:user:list,generator:user:info', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'63', N'61', N'新增', null, N'generator:user:save', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'64', N'61', N'修改', null, N'generator:user:update', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'65', N'61', N'删除', null, N'generator:user:delete', N'2', null, N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'66', N'1', N'车辆状态查询', N'generator/tcarstatus', null, N'1', N'config', N'6')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [parent_id], [name], [url], [perms], [type], [icon], [order_num]) VALUES (N'67', N'66', N'查看', null, N'generator:tcarrun:list,generator:tcarcar:list', N'2', null, N'6')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_menu] OFF
GO

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE [dbo].[sys_oss]
GO
CREATE TABLE [dbo].[sys_oss] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[url] varchar(200) NULL ,
[create_date] datetime NULL 
)


GO

-- ----------------------------
-- Records of sys_oss
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_oss] ON
GO
SET IDENTITY_INSERT [dbo].[sys_oss] OFF
GO

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE [dbo].[sys_role]
GO
CREATE TABLE [dbo].[sys_role] (
[role_id] bigint NOT NULL IDENTITY(1,1) ,
[role_name] varchar(100) NULL ,
[remark] varchar(100) NULL ,
[create_user_id] bigint NULL ,
[create_time] datetime NULL 
)


GO

-- ----------------------------
-- Records of sys_role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_role] ON
GO
SET IDENTITY_INSERT [dbo].[sys_role] OFF
GO

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE [dbo].[sys_role_menu]
GO
CREATE TABLE [dbo].[sys_role_menu] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[role_id] bigint NULL ,
[menu_id] bigint NULL 
)


GO

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_role_menu] ON
GO
SET IDENTITY_INSERT [dbo].[sys_role_menu] OFF
GO

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE [dbo].[sys_user]
GO
CREATE TABLE [dbo].[sys_user] (
[user_id] bigint NOT NULL IDENTITY(1,1) ,
[username] varchar(50) NOT NULL ,
[password] varchar(100) NULL ,
[salt] varchar(20) NULL ,
[email] varchar(100) NULL ,
[mobile] varchar(100) NULL ,
[status] tinyint NULL ,
[create_user_id] bigint NULL ,
[create_time] datetime NULL 
)


GO

-- ----------------------------
-- Records of sys_user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_user] ON
GO
INSERT INTO [dbo].[sys_user] ([user_id], [username], [password], [salt], [email], [mobile], [status], [create_user_id], [create_time]) VALUES (N'1', N'admin', N'9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', N'YzcmCZNvbXocrsz9dm8e', N'root@renren.io', N'13612345678', N'1', N'1', N'2016-11-11 11:11:11.000')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_user] OFF
GO

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE [dbo].[sys_user_role]
GO
CREATE TABLE [dbo].[sys_user_role] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[user_id] bigint NULL ,
[role_id] bigint NULL 
)


GO

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_user_role] ON
GO
SET IDENTITY_INSERT [dbo].[sys_user_role] OFF
GO

-- ----------------------------
-- Table structure for sys_user_token
-- ----------------------------
DROP TABLE [dbo].[sys_user_token]
GO
CREATE TABLE [dbo].[sys_user_token] (
[user_id] bigint NOT NULL ,
[token] varchar(100) NOT NULL ,
[expire_time] datetime NULL ,
[update_time] datetime NULL 
)


GO

-- ----------------------------
-- Records of sys_user_token
-- ----------------------------
INSERT INTO [dbo].[sys_user_token] ([user_id], [token], [expire_time], [update_time]) VALUES (N'1', N'3b99cf7aa465f897723ccb7eb54b604c', N'2022-01-18 05:07:50.100', N'2022-01-17 17:07:50.100')
GO
GO

-- ----------------------------
-- Table structure for t_car_car
-- ----------------------------
DROP TABLE [dbo].[t_car_car]
GO
CREATE TABLE [dbo].[t_car_car] (
[number] nvarchar(50) NULL ,
[brand] nvarchar(50) NULL ,
[model] nvarchar(50) NULL ,
[type] int NULL ,
[color] nvarchar(20) NULL ,
[load] int NULL ,
[seating] int NULL ,
[fuelconsumption] decimal(15,2) NULL ,
[initmileage] decimal(15,2) NULL ,
[servicemileage] decimal(15,2) NULL ,
[servicecycle] nvarchar(20) NULL ,
[enginenumber] nvarchar(50) NULL ,
[framenumber] nvarchar(50) NULL ,
[vendor] nvarchar(50) NULL ,
[buyprice] decimal(15,2) NULL ,
[buydate] datetime NULL ,
[company] nvarchar(50) NULL ,
[deptid] int NULL ,
[deptid_name] nvarchar(50) NULL ,
[usecompany] nvarchar(50) NULL ,
[usedept] int NULL ,
[status] int NULL ,
[remark] nvarchar(100) NULL ,
[isstop] int NULL ,
[id] bigint NOT NULL IDENTITY(1,1) 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_car_car]', RESEED, 17)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车辆档案'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车辆档案'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'number')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车牌'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'number'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车牌'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'number'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'brand')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车辆品牌'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'brand'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车辆品牌'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'brand'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'model')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'model'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'model'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车辆类型
   1小轿车
   2大客车'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车辆类型
   1小轿车
   2大客车'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'color')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车辆颜色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'color'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车辆颜色'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'color'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'load')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'载重(吨)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'load'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'载重(吨)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'load'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'seating')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'载客人数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'seating'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'载客人数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'seating'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'fuelconsumption')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'油耗(L/百公里)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'fuelconsumption'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'油耗(L/百公里)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'fuelconsumption'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'initmileage')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'初始里程(公里)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'initmileage'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'初始里程(公里)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'initmileage'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'servicemileage')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'保养里程(公里)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'servicemileage'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'保养里程(公里)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'servicemileage'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'servicecycle')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'保养周期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'servicecycle'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'保养周期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'servicecycle'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'enginenumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'发动机号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'enginenumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'发动机号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'enginenumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'framenumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车架号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'framenumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车架号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'framenumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'vendor')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'供应商'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'vendor'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'供应商'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'vendor'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'buyprice')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'购入价格(元)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'buyprice'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'购入价格(元)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'buyprice'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'buydate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'购置时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'buydate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'购置时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'buydate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'company')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'注册单位'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'company'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'注册单位'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'company'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'deptid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'所属部门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'deptid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'所属部门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'deptid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'deptid_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'deptid_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'deptid_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'usecompany')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'使用单位'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'usecompany'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'使用单位'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'usecompany'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'usedept')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'使用部门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'usedept'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'使用部门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'usedept'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'当前状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'当前状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_car', 
'COLUMN', N'isstop')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否停用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'isstop'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否停用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_car'
, @level2type = 'COLUMN', @level2name = N'isstop'
GO

-- ----------------------------
-- Records of t_car_car
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_car_car] ON
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'桂A8888', N'宝马', N'a', N'1', N'黑色', N'6', N'6', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位1', null, N'', N'使用单位1', null, N'1', N'gafafafwa', N'0', N'1')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'桂B8888', N'奔驰', N'a', N'1', N'黑色', N'6', N'6', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位2', null, N'', N'使用单位1', null, N'1', N'gafafafwa', N'0', N'2')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'桂C8888', N'宇通', N'a', N'2', N'黑色', N'6', N'40', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位3', null, N'', N'使用单位2', null, N'1', N'gafafafwa', N'0', N'3')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'桂D8888', N'中通', N'a', N'2', N'黑色', N'6', N'40', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位1', null, N'', N'使用单位2', null, N'1', N'gafafafwa', N'0', N'4')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'桂E8888', N'金龙', N'a', N'2', N'黑色', N'6', N'40', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位2', null, N'', N'使用单位1', null, N'1', N'gafafafwa', N'0', N'5')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'粤A8888', N'宇通', N'a', N'2', N'黑色', N'6', N'40', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位3', null, N'', N'使用单位1', null, N'1', N'gafafafwa', N'0', N'6')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'粤B8888', N'金龙', N'a', N'2', N'黑色', N'6', N'40', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位1', null, N'', N'使用单位2', null, N'1', N'gafafafwa', N'0', N'7')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'粤C8888', N'中通', N'a', N'2', N'黑色', N'6', N'40', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位2', null, N'', N'使用单位2', null, N'1', N'gafafafwa', N'0', N'8')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'粤D8888', N'中通', N'a', N'2', N'黑色', N'6', N'40', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位3', null, N'', N'使用单位1', null, N'1', N'gafafafwa', N'0', N'9')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'粤E8888', N'宝马', N'a', N'1', N'黑色', N'6', N'6', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位1', null, N'', N'使用单位1', null, N'1', N'gafafafwa', N'0', N'11')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'京A8888', N'宝马', N'a', N'1', N'黑色', N'6', N'6', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位1', null, N'', N'使用单位1', null, N'1', N'gafafafwa', N'0', N'12')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'京B8888', N'宝马', N'a', N'1', N'黑色', N'6', N'6', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位1', null, N'', N'使用单位1', null, N'1', N'gafafafwa', N'0', N'13')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'京C8888', N'宝马', N'a', N'1', N'黑色', N'6', N'6', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位1', null, N'', N'使用单位1', null, N'1', N'gafafafwa', N'0', N'14')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'京D8888', N'宝马', N'a', N'1', N'黑色', N'6', N'6', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位1', null, N'', N'使用单位1', null, N'1', N'gafafafwa', N'0', N'15')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'京E8888', N'宝马', N'a', N'1', N'黑色', N'6', N'6', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位1', null, N'', N'使用单位1', null, N'1', N'gafafafwa', N'0', N'16')
GO
GO
INSERT INTO [dbo].[t_car_car] ([number], [brand], [model], [type], [color], [load], [seating], [fuelconsumption], [initmileage], [servicemileage], [servicecycle], [enginenumber], [framenumber], [vendor], [buyprice], [buydate], [company], [deptid], [deptid_name], [usecompany], [usedept], [status], [remark], [isstop], [id]) VALUES (N'京08888', N'宝马', N'a', N'1', N'黑色', N'6', N'6', N'100.00', N'100.00', N'100.00', N'100', N'grdg11', N'fesf10', N'fsefse', N'600.00', N'2021-12-14 00:00:00.000', N'单位1', null, N'', N'使用单位1', null, N'1', N'gafafafwa', N'0', N'17')
GO
GO
SET IDENTITY_INSERT [dbo].[t_car_car] OFF
GO

-- ----------------------------
-- Table structure for t_car_cardriver
-- ----------------------------
DROP TABLE [dbo].[t_car_cardriver]
GO
CREATE TABLE [dbo].[t_car_cardriver] (
[driverid] bigint NULL ,
[carid] bigint NULL ,
[id] bigint NOT NULL IDENTITY(1,1) 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_car_cardriver]', RESEED, 18)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_cardriver', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车辆司机关联表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_cardriver'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车辆司机关联表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_cardriver'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_cardriver', 
'COLUMN', N'driverid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'司机ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_cardriver'
, @level2type = 'COLUMN', @level2name = N'driverid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'司机ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_cardriver'
, @level2type = 'COLUMN', @level2name = N'driverid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_cardriver', 
'COLUMN', N'carid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车辆ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_cardriver'
, @level2type = 'COLUMN', @level2name = N'carid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车辆ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_cardriver'
, @level2type = 'COLUMN', @level2name = N'carid'
GO

-- ----------------------------
-- Records of t_car_cardriver
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_car_cardriver] ON
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'1', N'1', N'3')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'2', N'2', N'4')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'7', N'17', N'5')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'5', N'15', N'6')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'6', N'16', N'7')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'7', N'7', N'8')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'17', N'8', N'9')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'9', N'9', N'10')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'10', N'10', N'11')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'11', N'11', N'12')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'12', N'12', N'13')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'13', N'13', N'14')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'14', N'14', N'15')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'15', N'15', N'16')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'8', N'17', N'17')
GO
GO
INSERT INTO [dbo].[t_car_cardriver] ([driverid], [carid], [id]) VALUES (N'4', N'4', N'18')
GO
GO
SET IDENTITY_INSERT [dbo].[t_car_cardriver] OFF
GO

-- ----------------------------
-- Table structure for t_car_driver
-- ----------------------------
DROP TABLE [dbo].[t_car_driver]
GO
CREATE TABLE [dbo].[t_car_driver] (
[id] bigint NOT NULL ,
[name] nvarchar(50) NULL ,
[sex] int NULL ,
[tel] varchar(50) NULL ,
[type] nvarchar(100) NULL ,
[remark] nvarchar(500) NULL 
)


GO

-- ----------------------------
-- Records of t_car_driver
-- ----------------------------
INSERT INTO [dbo].[t_car_driver] ([id], [name], [sex], [tel], [type], [remark]) VALUES (N'1', N'dwad', N'2', N'13465789411', N'tawtaw', N'fafaw')
GO
GO
INSERT INTO [dbo].[t_car_driver] ([id], [name], [sex], [tel], [type], [remark]) VALUES (N'2', N'老吴', N'2', N'13446947168', N'小轿车', N'gawgwa')
GO
GO
INSERT INTO [dbo].[t_car_driver] ([id], [name], [sex], [tel], [type], [remark]) VALUES (N'3', N'fgawf', N'2', N'746767', N'hrdh', N'rdgrdg')
GO
GO
INSERT INTO [dbo].[t_car_driver] ([id], [name], [sex], [tel], [type], [remark]) VALUES (N'4', N'kjwadj', N'2', N'124564641', N'dawdaw', N'1')
GO
GO
INSERT INTO [dbo].[t_car_driver] ([id], [name], [sex], [tel], [type], [remark]) VALUES (N'5', N'fgawf', N'2', N'746767', N'hrdh', N'rdgrdg')
GO
GO
INSERT INTO [dbo].[t_car_driver] ([id], [name], [sex], [tel], [type], [remark]) VALUES (N'6', N'fgawf', N'2', N'746767', N'hrdh', N'rdgrdg')
GO
GO
INSERT INTO [dbo].[t_car_driver] ([id], [name], [sex], [tel], [type], [remark]) VALUES (N'8', N'kjwadj', N'2', N'124564641', N'dawdaw', N'1')
GO
GO
INSERT INTO [dbo].[t_car_driver] ([id], [name], [sex], [tel], [type], [remark]) VALUES (N'16', N'老吴', N'2', N'13446947168', N'小轿车', N'gawgwa')
GO
GO

-- ----------------------------
-- Table structure for t_car_inspection
-- ----------------------------
DROP TABLE [dbo].[t_car_inspection]
GO
CREATE TABLE [dbo].[t_car_inspection] (
[carid] bigint NULL ,
[number] nvarchar(50) NULL ,
[njdate] datetime NULL ,
[njcost] decimal(15,2) NULL ,
[adminoffice] nvarchar(50) NULL ,
[expiredate] datetime NULL ,
[remark] nvarchar(100) NULL ,
[transactor] nvarchar(50) NULL ,
[id] bigint NOT NULL IDENTITY(1,1) ,
[carnum] nvarchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_car_inspection]', RESEED, 13)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_inspection', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'年检记录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'年检记录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_inspection', 
'COLUMN', N'carid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车辆ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'carid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车辆ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'carid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_inspection', 
'COLUMN', N'number')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'年检号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'number'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'年检号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'number'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_inspection', 
'COLUMN', N'njdate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'年检日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'njdate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'年检日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'njdate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_inspection', 
'COLUMN', N'njcost')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'年检费用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'njcost'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'年检费用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'njcost'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_inspection', 
'COLUMN', N'adminoffice')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车管所'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'adminoffice'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车管所'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'adminoffice'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_inspection', 
'COLUMN', N'expiredate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'到期日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'expiredate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'到期日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'expiredate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_inspection', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_inspection', 
'COLUMN', N'transactor')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'经手人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'transactor'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'经手人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_inspection'
, @level2type = 'COLUMN', @level2name = N'transactor'
GO

-- ----------------------------
-- Records of t_car_inspection
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_car_inspection] ON
GO
INSERT INTO [dbo].[t_car_inspection] ([carid], [number], [njdate], [njcost], [adminoffice], [expiredate], [remark], [transactor], [id], [carnum]) VALUES (N'1', N'20210506', N'2021-05-06 00:00:00.000', N'3600.00', N'朝阳车管所', N'2022-05-06 00:00:00.000', N'fwafawtgaw', N'口蹄疫', N'1', N'桂A8888')
GO
GO
INSERT INTO [dbo].[t_car_inspection] ([carid], [number], [njdate], [njcost], [adminoffice], [expiredate], [remark], [transactor], [id], [carnum]) VALUES (N'3', N'202006024668', N'2020-06-02 00:00:00.000', N'4000.00', N'朝阳车管所', N'2021-06-02 00:00:00.000', N'dwajdawo', N'yesopkt', N'2', null)
GO
GO
INSERT INTO [dbo].[t_car_inspection] ([carid], [number], [njdate], [njcost], [adminoffice], [expiredate], [remark], [transactor], [id], [carnum]) VALUES (null, N'2045675', N'2022-06-02 00:00:00.000', N'467857.00', N'tfhfth', N'2023-06-02 00:00:00.000', N'hfthft', N'hfthtf', N'3', N'hrdhrd')
GO
GO
INSERT INTO [dbo].[t_car_inspection] ([carid], [number], [njdate], [njcost], [adminoffice], [expiredate], [remark], [transactor], [id], [carnum]) VALUES (N'1', N'7868767', N'2021-12-14 00:00:00.000', N'4658.00', N'fafaw', N'2022-03-14 00:00:00.000', N'tryrtu', N'fawfawy', N'12', N'dafwa')
GO
GO
INSERT INTO [dbo].[t_car_inspection] ([carid], [number], [njdate], [njcost], [adminoffice], [expiredate], [remark], [transactor], [id], [carnum]) VALUES (N'17', N'2022010446484', N'2022-01-04 00:00:00.000', N'456456.00', N'新阳车管所', N'2022-02-04 00:00:00.000', N'dawdfaw', N'gfesfes', N'13', N'fesf')
GO
GO
SET IDENTITY_INSERT [dbo].[t_car_inspection] OFF
GO

-- ----------------------------
-- Table structure for t_car_Insurance
-- ----------------------------
DROP TABLE [dbo].[t_car_Insurance]
GO
CREATE TABLE [dbo].[t_car_Insurance] (
[carid] bigint NULL ,
[number] nvarchar(50) NULL ,
[bxdate] datetime NULL ,
[bxtype] int NULL ,
[cost] decimal(15,2) NULL ,
[amount] decimal(15,2) NULL ,
[company] nvarchar(50) NULL ,
[transactor] nvarchar(50) NULL ,
[expiredate] datetime NULL ,
[remark] nvarchar(50) NULL ,
[usecompany] nvarchar(50) NULL ,
[carmodel] nvarchar(50) NULL ,
[id] bigint NOT NULL IDENTITY(1,1) ,
[carnum] nvarchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_car_Insurance]', RESEED, 8)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_Insurance', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'保险记录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'保险记录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_Insurance', 
'COLUMN', N'carid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车辆ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'carid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车辆ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'carid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_Insurance', 
'COLUMN', N'number')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'保单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'number'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'保单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'number'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_Insurance', 
'COLUMN', N'bxdate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'保险时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'bxdate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'保险时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'bxdate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_Insurance', 
'COLUMN', N'bxtype')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'保险种类
   1交强险
   2第三者责任险'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'bxtype'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'保险种类
   1交强险
   2第三者责任险'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'bxtype'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_Insurance', 
'COLUMN', N'cost')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'保险费用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'cost'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'保险费用'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'cost'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_Insurance', 
'COLUMN', N'amount')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'保险金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'amount'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'保险金额'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'amount'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_Insurance', 
'COLUMN', N'company')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'保险公司'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'company'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'保险公司'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'company'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_Insurance', 
'COLUMN', N'transactor')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'经手人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'transactor'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'经手人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'transactor'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_Insurance', 
'COLUMN', N'expiredate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'到期时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'expiredate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'到期时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'expiredate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_Insurance', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_Insurance', 
'COLUMN', N'usecompany')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'使用单位'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'usecompany'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'使用单位'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'usecompany'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_Insurance', 
'COLUMN', N'carmodel')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'carmodel'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_Insurance'
, @level2type = 'COLUMN', @level2name = N'carmodel'
GO

-- ----------------------------
-- Records of t_car_Insurance
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_car_Insurance] ON
GO
INSERT INTO [dbo].[t_car_Insurance] ([carid], [number], [bxdate], [bxtype], [cost], [amount], [company], [transactor], [expiredate], [remark], [usecompany], [carmodel], [id], [carnum]) VALUES (N'1', N'20204676786787', N'2021-05-06 00:00:00.000', N'2', N'5600.00', N'200000.00', N'中国平安', N'杜瓦罐', N'2022-05-06 00:00:00.000', N'gwafawwa', N'车队', N'小轿车', N'1', N'1')
GO
GO
INSERT INTO [dbo].[t_car_Insurance] ([carid], [number], [bxdate], [bxtype], [cost], [amount], [company], [transactor], [expiredate], [remark], [usecompany], [carmodel], [id], [carnum]) VALUES (N'3', N'20200602469760', N'2020-06-02 00:00:00.000', N'1', N'6000.00', N'300000.00', N'中国平安', N'fawf', N'2021-06-02 00:00:00.000', N'drjdry', N'dawd', N'hg', N'3', null)
GO
GO
INSERT INTO [dbo].[t_car_Insurance] ([carid], [number], [bxdate], [bxtype], [cost], [amount], [company], [transactor], [expiredate], [remark], [usecompany], [carmodel], [id], [carnum]) VALUES (null, N'20200820', N'2020-08-19 00:00:00.000', N'1', N'600.00', N'600.00', N'平安人寿', N'管理员', N'2021-12-19 00:00:00.000', N'dwad', N'fgwa', N'a', N'4', N'桂A8888')
GO
GO
INSERT INTO [dbo].[t_car_Insurance] ([carid], [number], [bxdate], [bxtype], [cost], [amount], [company], [transactor], [expiredate], [remark], [usecompany], [carmodel], [id], [carnum]) VALUES (null, N'2021050346578', N'2021-05-02 00:00:00.000', N'1', N'46778.00', N'45678.00', N'中国人寿', N'seyhrsdghdr', N'2022-05-02 00:00:00.000', N'fgwagtahd', N'aywat', N'a', N'5', N'桂A8888')
GO
GO
INSERT INTO [dbo].[t_car_Insurance] ([carid], [number], [bxdate], [bxtype], [cost], [amount], [company], [transactor], [expiredate], [remark], [usecompany], [carmodel], [id], [carnum]) VALUES (null, N'2021050376767', N'2021-12-14 00:00:00.000', N'1', N'767867.00', N'87687.00', N'平安人寿', N'gesgse', N'2022-12-14 00:00:00.000', N'gsegseg', N'fvafa', N'a', N'6', N'桂A8888')
GO
GO
INSERT INTO [dbo].[t_car_Insurance] ([carid], [number], [bxdate], [bxtype], [cost], [amount], [company], [transactor], [expiredate], [remark], [usecompany], [carmodel], [id], [carnum]) VALUES (N'1', N'4346887', N'2021-12-14 00:00:00.000', N'1', N'4554.00', N'6456.00', N'平安人寿', N'gsgrsdg', N'2022-03-14 00:00:00.000', N'drgdr', N'gdrhdrh', N'hdth', N'7', N'fafaw')
GO
GO
INSERT INTO [dbo].[t_car_Insurance] ([carid], [number], [bxdate], [bxtype], [cost], [amount], [company], [transactor], [expiredate], [remark], [usecompany], [carmodel], [id], [carnum]) VALUES (N'17', N'20220104235669', N'2022-01-04 00:00:00.000', N'2', N'54345.00', N'45347.00', N'中国人寿', N'lhl', N'2022-02-04 00:00:00.000', N'grsdgrd', N'使用单位3', N'a', N'8', N'jtrjh')
GO
GO
SET IDENTITY_INSERT [dbo].[t_car_Insurance] OFF
GO

-- ----------------------------
-- Table structure for t_car_run
-- ----------------------------
DROP TABLE [dbo].[t_car_run]
GO
CREATE TABLE [dbo].[t_car_run] (
[carid] bigint NULL ,
[userid] bigint NULL ,
[username] nvarchar(20) NULL ,
[number] nvarchar(50) NULL ,
[begintime] datetime NULL ,
[planreturntime] datetime NULL ,
[endtime] datetime NULL ,
[deptid] int NULL ,
[deptname] nvarchar(50) NULL ,
[party] nvarchar(100) NULL ,
[driver] nvarchar(50) NULL ,
[drivertel] nvarchar(50) NULL ,
[beginplace] nvarchar(50) NULL ,
[endplace] nvarchar(50) NULL ,
[reason] nvarchar(100) NULL ,
[beginnumber] decimal(15,2) NULL ,
[endnumber] decimal(15,2) NULL ,
[mileage] decimal(15,2) NULL ,
[remark] nvarchar(100) NULL ,
[type] int NULL ,
[status] int NULL ,
[if] bigint NOT NULL IDENTITY(1,1) 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_car_run]', RESEED, 13)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'出车记录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'出车记录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'carid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'carid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'carid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'userid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用车人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'userid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用车人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'userid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'username')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'username'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'姓名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'username'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'number')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'申请单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'number'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'申请单号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'number'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'begintime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'begintime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'开始时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'begintime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'planreturntime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'预计回车时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'planreturntime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'预计回车时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'planreturntime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'endtime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'结束时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'endtime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'结束时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'endtime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'deptid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用车人单位'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'deptid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用车人单位'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'deptid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'deptname')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'deptname'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'deptname'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'party')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'随行人员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'party'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'随行人员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'party'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'driver')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'司机'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'driver'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'司机'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'driver'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'drivertel')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'司机电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'drivertel'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'司机电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'drivertel'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'beginplace')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'起始地'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'beginplace'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'起始地'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'beginplace'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'endplace')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'目的地'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'endplace'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'目的地'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'endplace'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'reason')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用车事由'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'reason'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用车事由'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'reason'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'beginnumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'开始里程'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'beginnumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'开始里程'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'beginnumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'endnumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'结束里程'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'endnumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'结束里程'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'endnumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'mileage')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'行驶里程'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'mileage'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'行驶里程'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'mileage'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'remark'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'类型(1、普通类型2、借出类型)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'类型(1、普通类型2、借出类型)'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N't_car_run', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N't_car_run'
, @level2type = 'COLUMN', @level2name = N'status'
GO

-- ----------------------------
-- Records of t_car_run
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_car_run] ON
GO
INSERT INTO [dbo].[t_car_run] ([carid], [userid], [username], [number], [begintime], [planreturntime], [endtime], [deptid], [deptname], [party], [driver], [drivertel], [beginplace], [endplace], [reason], [beginnumber], [endnumber], [mileage], [remark], [type], [status], [if]) VALUES (N'1', N'1', N'', N'2021120265484', N'2021-12-02 00:00:00.000', null, N'2021-12-17 00:00:00.000', N'2', N'', N'', N'老吴', N'13446947168', N'南宁', N'北京', N'fawf', N'1000.00', N'2000.00', N'3000.00', N'gsegse', null, N'1', N'1')
GO
GO
INSERT INTO [dbo].[t_car_run] ([carid], [userid], [username], [number], [begintime], [planreturntime], [endtime], [deptid], [deptname], [party], [driver], [drivertel], [beginplace], [endplace], [reason], [beginnumber], [endnumber], [mileage], [remark], [type], [status], [if]) VALUES (N'2', N'1', N'', N'2021121557678', N'2021-12-15 00:00:00.000', null, N'2021-12-20 00:00:00.000', N'2', N'', N'', N'dwad', N'13465789451', N'南宁', N'武汉', N'gdrgdr', N'100.00', N'100.00', N'100.00', N'ygjjdr', null, N'1', N'3')
GO
GO
INSERT INTO [dbo].[t_car_run] ([carid], [userid], [username], [number], [begintime], [planreturntime], [endtime], [deptid], [deptname], [party], [driver], [drivertel], [beginplace], [endplace], [reason], [beginnumber], [endnumber], [mileage], [remark], [type], [status], [if]) VALUES (N'3', N'3', N'', N'20211212679796', N'2021-12-08 00:00:00.000', null, N'2021-12-12 00:00:00.000', N'1', N'', N'', N'老吴', N'1346597861', N'南宁', N'广州', N'gdrgs', N'100.00', N'100.00', N'100.00', N'sgrsgr', null, N'1', N'4')
GO
GO
INSERT INTO [dbo].[t_car_run] ([carid], [userid], [username], [number], [begintime], [planreturntime], [endtime], [deptid], [deptname], [party], [driver], [drivertel], [beginplace], [endplace], [reason], [beginnumber], [endnumber], [mileage], [remark], [type], [status], [if]) VALUES (N'4', N'4', N'', N'20211213797854', N'2021-11-11 00:00:00.000', null, N'2021-12-13 00:00:00.000', N'1', N'', N'', N'fgawf', N'1367985697', N'南宁', N'深圳', N'ggrdg', N'100.00', N'100.00', N'100.00', N'htdhs', null, N'1', N'5')
GO
GO
INSERT INTO [dbo].[t_car_run] ([carid], [userid], [username], [number], [begintime], [planreturntime], [endtime], [deptid], [deptname], [party], [driver], [drivertel], [beginplace], [endplace], [reason], [beginnumber], [endnumber], [mileage], [remark], [type], [status], [if]) VALUES (N'5', N'1', N'', N'2021120265484', N'2021-02-02 00:00:00.000', null, N'2021-02-17 00:00:00.000', N'2', N'', N'', N'老吴', N'13446947168', N'南宁', N'北京', N'fawf', N'1000.00', N'2000.00', N'3000.00', N'gsegse', null, N'1', N'6')
GO
GO
INSERT INTO [dbo].[t_car_run] ([carid], [userid], [username], [number], [begintime], [planreturntime], [endtime], [deptid], [deptname], [party], [driver], [drivertel], [beginplace], [endplace], [reason], [beginnumber], [endnumber], [mileage], [remark], [type], [status], [if]) VALUES (N'6', N'1', N'', N'2021121557678', N'2021-02-15 00:00:00.000', null, N'2021-02-20 00:00:00.000', N'2', N'', N'', N'dwad', N'13465789451', N'南宁', N'武汉', N'gdrgdr', N'100.00', N'100.00', N'100.00', N'ygjjdr', null, N'1', N'7')
GO
GO
INSERT INTO [dbo].[t_car_run] ([carid], [userid], [username], [number], [begintime], [planreturntime], [endtime], [deptid], [deptname], [party], [driver], [drivertel], [beginplace], [endplace], [reason], [beginnumber], [endnumber], [mileage], [remark], [type], [status], [if]) VALUES (N'7', N'1', N'', N'20211212679796', N'2021-02-08 00:00:00.000', null, N'2021-02-12 00:00:00.000', N'1', N'', N'', N'老吴', N'1346597861', N'南宁', N'广州', N'gdrgs', N'100.00', N'100.00', N'100.00', N'sgrsgr', null, N'1', N'8')
GO
GO
INSERT INTO [dbo].[t_car_run] ([carid], [userid], [username], [number], [begintime], [planreturntime], [endtime], [deptid], [deptname], [party], [driver], [drivertel], [beginplace], [endplace], [reason], [beginnumber], [endnumber], [mileage], [remark], [type], [status], [if]) VALUES (N'8', N'1', N'', N'20211213797854', N'2021-01-11 00:00:00.000', null, N'2021-02-13 00:00:00.000', N'1', N'', N'', N'fgawf', N'1367985697', N'南宁', N'深圳', N'ggrdg', N'100.00', N'100.00', N'100.00', N'htdhs', null, N'1', N'9')
GO
GO
INSERT INTO [dbo].[t_car_run] ([carid], [userid], [username], [number], [begintime], [planreturntime], [endtime], [deptid], [deptname], [party], [driver], [drivertel], [beginplace], [endplace], [reason], [beginnumber], [endnumber], [mileage], [remark], [type], [status], [if]) VALUES (N'5', N'1', N'', N'2021120265484', N'2021-03-02 00:00:00.000', null, N'2021-03-17 00:00:00.000', N'2', N'', N'', N'老吴', N'13446947168', N'南宁', N'北京', N'fawf', N'1000.00', N'2000.00', N'3000.00', N'gsegse', null, N'1', N'10')
GO
GO
INSERT INTO [dbo].[t_car_run] ([carid], [userid], [username], [number], [begintime], [planreturntime], [endtime], [deptid], [deptname], [party], [driver], [drivertel], [beginplace], [endplace], [reason], [beginnumber], [endnumber], [mileage], [remark], [type], [status], [if]) VALUES (N'6', N'1', N'', N'2021121557678', N'2021-03-15 00:00:00.000', null, N'2021-03-20 00:00:00.000', N'2', N'', N'', N'dwad', N'13465789451', N'南宁', N'武汉', N'gdrgdr', N'100.00', N'100.00', N'100.00', N'ygjjdr', null, N'1', N'11')
GO
GO
INSERT INTO [dbo].[t_car_run] ([carid], [userid], [username], [number], [begintime], [planreturntime], [endtime], [deptid], [deptname], [party], [driver], [drivertel], [beginplace], [endplace], [reason], [beginnumber], [endnumber], [mileage], [remark], [type], [status], [if]) VALUES (N'7', N'1', N'', N'20211212679796', N'2021-03-08 00:00:00.000', null, N'2021-03-12 00:00:00.000', N'1', N'', N'', N'老吴', N'1346597861', N'南宁', N'广州', N'gdrgs', N'100.00', N'100.00', N'100.00', N'sgrsgr', null, N'1', N'12')
GO
GO
INSERT INTO [dbo].[t_car_run] ([carid], [userid], [username], [number], [begintime], [planreturntime], [endtime], [deptid], [deptname], [party], [driver], [drivertel], [beginplace], [endplace], [reason], [beginnumber], [endnumber], [mileage], [remark], [type], [status], [if]) VALUES (N'8', N'1', N'', N'20211213797854', N'2021-03-11 00:00:00.000', null, N'2021-03-13 00:00:00.000', N'1', N'', N'', N'fgawf', N'1367985697', N'南宁', N'深圳', N'ggrdg', N'100.00', N'100.00', N'100.00', N'htdhs', null, N'1', N'13')
GO
GO
SET IDENTITY_INSERT [dbo].[t_car_run] OFF
GO

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE [dbo].[tb_user]
GO
CREATE TABLE [dbo].[tb_user] (
[user_id] bigint NOT NULL IDENTITY(1,1) ,
[username] varchar(50) NOT NULL ,
[mobile] varchar(20) NOT NULL ,
[password] varchar(64) NULL ,
[create_time] datetime NULL 
)


GO

-- ----------------------------
-- Records of tb_user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tb_user] ON
GO
INSERT INTO [dbo].[tb_user] ([user_id], [username], [mobile], [password], [create_time]) VALUES (N'1', N'mark', N'13612345678', N'8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', N'2017-03-23 22:37:41.000')
GO
GO
SET IDENTITY_INSERT [dbo].[tb_user] OFF
GO

-- ----------------------------
-- Indexes structure for table QRTZ_CALENDARS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_CALENDARS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_CALENDARS] ADD PRIMARY KEY ([SCHED_NAME], [CALENDAR_NAME])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_CRON_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_CRON_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_CRON_TRIGGERS] ADD PRIMARY KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_FIRED_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_FIRED_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_FIRED_TRIGGERS] ADD PRIMARY KEY ([SCHED_NAME], [ENTRY_ID])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_JOB_DETAILS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_JOB_DETAILS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_JOB_DETAILS] ADD PRIMARY KEY ([SCHED_NAME], [JOB_NAME], [JOB_GROUP])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_LOCKS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_LOCKS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_LOCKS] ADD PRIMARY KEY ([SCHED_NAME], [LOCK_NAME])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_PAUSED_TRIGGER_GRPS] ADD PRIMARY KEY ([SCHED_NAME], [TRIGGER_GROUP])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_SCHEDULER_STATE
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_SCHEDULER_STATE
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SCHEDULER_STATE] ADD PRIMARY KEY ([SCHED_NAME], [INSTANCE_NAME])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_SIMPLE_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS] ADD PRIMARY KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_SIMPROP_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS] ADD PRIMARY KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_TRIGGERS] ADD PRIMARY KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
GO

-- ----------------------------
-- Indexes structure for table schedule_job
-- ----------------------------
CREATE INDEX [job_id] ON [dbo].[schedule_job]
([job_id] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table schedule_job
-- ----------------------------
ALTER TABLE [dbo].[schedule_job] ADD PRIMARY KEY ([job_id])
GO

-- ----------------------------
-- Indexes structure for table schedule_job_log
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table schedule_job_log
-- ----------------------------
ALTER TABLE [dbo].[schedule_job_log] ADD PRIMARY KEY ([log_id])
GO

-- ----------------------------
-- Indexes structure for table sys_captcha
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_captcha
-- ----------------------------
ALTER TABLE [dbo].[sys_captcha] ADD PRIMARY KEY ([uuid])
GO

-- ----------------------------
-- Indexes structure for table sys_config
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE [dbo].[sys_config] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table sys_config
-- ----------------------------
ALTER TABLE [dbo].[sys_config] ADD UNIQUE ([param_key] ASC)
GO

-- ----------------------------
-- Indexes structure for table sys_log
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_log
-- ----------------------------
ALTER TABLE [dbo].[sys_log] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_menu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_menu] ADD PRIMARY KEY ([menu_id])
GO

-- ----------------------------
-- Indexes structure for table sys_oss
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_oss
-- ----------------------------
ALTER TABLE [dbo].[sys_oss] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE [dbo].[sys_role] ADD PRIMARY KEY ([role_id])
GO

-- ----------------------------
-- Indexes structure for table sys_role_menu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_role_menu] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_user
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD PRIMARY KEY ([user_id])
GO

-- ----------------------------
-- Uniques structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD UNIQUE ([username] ASC)
GO

-- ----------------------------
-- Indexes structure for table sys_user_role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE [dbo].[sys_user_role] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table sys_user_token
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_user_token
-- ----------------------------
ALTER TABLE [dbo].[sys_user_token] ADD PRIMARY KEY ([user_id])
GO

-- ----------------------------
-- Uniques structure for table sys_user_token
-- ----------------------------
ALTER TABLE [dbo].[sys_user_token] ADD UNIQUE ([token] ASC)
GO

-- ----------------------------
-- Indexes structure for table t_car_car
-- ----------------------------
CREATE UNIQUE INDEX [IX_t_car_car] ON [dbo].[t_car_car]
([number] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Primary Key structure for table t_car_car
-- ----------------------------
ALTER TABLE [dbo].[t_car_car] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_car_cardriver
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_car_cardriver
-- ----------------------------
ALTER TABLE [dbo].[t_car_cardriver] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_car_driver
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_car_driver
-- ----------------------------
ALTER TABLE [dbo].[t_car_driver] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_car_inspection
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_car_inspection
-- ----------------------------
ALTER TABLE [dbo].[t_car_inspection] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_car_Insurance
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_car_Insurance
-- ----------------------------
ALTER TABLE [dbo].[t_car_Insurance] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table t_car_run
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_car_run
-- ----------------------------
ALTER TABLE [dbo].[t_car_run] ADD PRIMARY KEY ([if])
GO

-- ----------------------------
-- Indexes structure for table tb_user
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_user
-- ----------------------------
ALTER TABLE [dbo].[tb_user] ADD PRIMARY KEY ([user_id])
GO

-- ----------------------------
-- Uniques structure for table tb_user
-- ----------------------------
ALTER TABLE [dbo].[tb_user] ADD UNIQUE ([username] ASC)
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[QRTZ_CRON_TRIGGERS]
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_CRON_TRIGGERS] ADD FOREIGN KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[QRTZ_SIMPLE_TRIGGERS]
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS] ADD FOREIGN KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[QRTZ_SIMPROP_TRIGGERS]
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS] ADD FOREIGN KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[QRTZ_TRIGGERS]
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_TRIGGERS] ADD FOREIGN KEY ([SCHED_NAME], [JOB_NAME], [JOB_GROUP]) REFERENCES [dbo].[QRTZ_JOB_DETAILS] ([SCHED_NAME], [JOB_NAME], [JOB_GROUP]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
