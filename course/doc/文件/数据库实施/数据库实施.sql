/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3307
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3307
 Source Schema         : student_course

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 22/01/2021 13:28:27
*/


CREATE DATABASE student_course;

USE student_course;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `course_id` int(11) NULL DEFAULT NULL,
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_character` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `credit` double NULL DEFAULT NULL,
  `course_introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `course_index`(`course_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '项目管理', '专业核心课', 2, '学习项目整个过程所涉及的项目论证与评估、范围/进度/质量/风险与冲突管理及项目的首尾评价等相关内容。');
INSERT INTO `course` VALUES (2, '互动系统设计', '专业方向课', 3, '以代码艺术创作工具的学习为载体，将视觉形式、动画、交互、软件与硬件等相关知识关联在一起。');
INSERT INTO `course` VALUES (3, '虚拟现实互动', '专业选修课', 3, '通过介绍虚拟现实人机硬件设备、基于图像构建虚拟场景方法等逐步掌握VR和AR技术的相关专业理论知识，熟悉三维建模和VR引擎的使用。');
INSERT INTO `course` VALUES (4, '品牌设计及运营', '专业选修课', 2, '了解企业如何利用品牌并学习如何发挥品牌扩张功能以及促进品牌资产有形化。');
INSERT INTO `course` VALUES (5, '民间美术鉴赏', '专业选修课', 2, '了解我国有关民间艺术品（画、工艺品等）并系统地学习赏析的能力。');
INSERT INTO `course` VALUES (6, '数据可视化', '专业选修课', 3, '学习如何将数据转化成为交互的图形等，增进对数据相关解释分析等的能力。');

-- ----------------------------
-- Table structure for course_teacher
-- ----------------------------
DROP TABLE IF EXISTS `course_teacher`;
CREATE TABLE `course_teacher`  (
  `course_teacher_id` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tecaher_id` int(11) NULL DEFAULT NULL,
  `teacher_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `credit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_total_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_start` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_student_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `follow` int(1) UNSIGNED ZEROFILL NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_teacher
-- ----------------------------
INSERT INTO `course_teacher` VALUES (210417, 1, '项目管理', 1, '吴雪', '2', '2', '1—18', '周一 1-2节', '60-100', 1);
INSERT INTO `course_teacher` VALUES (210418, 1, '项目管理', 1, '吴雪', '2', '2', '1—18', '周一 8-9节', '60-100', 0);
INSERT INTO `course_teacher` VALUES (210419, 2, '互动系统设计', 2, '安东', '3', '4', '1—18', '周二 8-11节', '30-50', 1);
INSERT INTO `course_teacher` VALUES (210420, 2, '互动系统设计', 2, '安东', '3', '4', '1—18', '周一 12-15节', '30-50', 0);
INSERT INTO `course_teacher` VALUES (210421, 2, '互动系统设计', 3, '林海宇', '3', '3', '1—18', '周二 3-5节', '30-50', 1);
INSERT INTO `course_teacher` VALUES (210422, 2, '互动系统设计', 3, '林海宇', '3', '3', '1—18', '周二 8-10节', '30-50', 0);
INSERT INTO `course_teacher` VALUES (210423, 3, '虚拟现实互动', 4, '张骞', '3', '4', '1—18', '周三 2-5节', '30-50', 0);
INSERT INTO `course_teacher` VALUES (210424, 3, '虚拟现实互动', 5, '李鹏飞', '3', '4', '1—18', '周三 2-5节', '30-50', 0);
INSERT INTO `course_teacher` VALUES (210425, 3, '虚拟现实互动', 6, '邢永康', '3', '4', '1—18', '周三 12-15节', '30-50', 0);
INSERT INTO `course_teacher` VALUES (210426, 3, '虚拟现实互动', 6, '邢永康', '3', '4', '1—18', '周四 2-5节', '30-50', 0);
INSERT INTO `course_teacher` VALUES (210427, 4, '品牌设计及运营', 7, '吴思', '2', '4', '10—18', '周二1-2节周三12-13节', '60-100', 0);
INSERT INTO `course_teacher` VALUES (210428, 4, '品牌设计及运营', 7, '吴思', '2', '4', '1—9', '周一12-13节周二12-13节', '60-100', 1);
INSERT INTO `course_teacher` VALUES (210429, 5, '民间美术鉴赏', 8, '方茜茜', '2', '4', '1—9', '周三12-13节周四12-13节', '60-100', 1);
INSERT INTO `course_teacher` VALUES (210430, 5, '民间美术鉴赏', 8, '方茜茜', '2', '4', '10—18', '周四12-13节周五4-5节', '60-100', 0);
INSERT INTO `course_teacher` VALUES (210431, 6, '数据可视化', 9, '夏玲', '3', '3', '1—18', '周二 12-14节', '30-50', 0);
INSERT INTO `course_teacher` VALUES (210432, 6, '数据可视化', 9, '夏玲', '3', '3', '1—18', '周二 8-10节', '30-50', 0);
INSERT INTO `course_teacher` VALUES (210433, 6, '数据可视化', 9, '夏玲', '3', '3', '1—18', '周四 3-5节', '30-50', 0);
INSERT INTO `course_teacher` VALUES (210434, 6, '数据可视化', 10, '张婷婷', '3', '3', '1—18', '周二 3-5节', '30-50', 0);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `student_id` int(11) NULL DEFAULT NULL,
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (183014137, '本特利', '18级数字媒体技术一班');
INSERT INTO `student` VALUES (183014123, '吴磊', '18级数字媒体技术一班');
INSERT INTO `student` VALUES (183014130, '倪妮', '18级数字媒体技术一班');
INSERT INTO `student` VALUES (183014131, '郑秀晶', '18级数字媒体技术一班');
INSERT INTO `student` VALUES (183014132, '王霏霏', '18级数字媒体技术一班');
INSERT INTO `student` VALUES (183014133, '孟佳', '18级数字媒体技术一班');
INSERT INTO `student` VALUES (183014135, '朴建厚', '18级数字媒体技术一班');
INSERT INTO `student` VALUES (183014136, '朴娜恩', '18级数字媒体技术一班');
INSERT INTO `student` VALUES (183014125, '张子枫', '18级数字媒体技术一班');
INSERT INTO `student` VALUES (183014126, '刘宪华', '18级数字媒体技术一班');

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course`  (
  `student_id` int(11) NULL DEFAULT NULL,
  `course_teacher_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES (183014137, 210417);
INSERT INTO `student_course` VALUES (183014137, 210418);
INSERT INTO `student_course` VALUES (183014137, 210419);
INSERT INTO `student_course` VALUES (183014137, 210420);
INSERT INTO `student_course` VALUES (183014137, 210421);
INSERT INTO `student_course` VALUES (183014137, 210422);
INSERT INTO `student_course` VALUES (183014137, 210423);
INSERT INTO `student_course` VALUES (183014137, 210424);
INSERT INTO `student_course` VALUES (183014137, 210425);
INSERT INTO `student_course` VALUES (183014137, 210426);
INSERT INTO `student_course` VALUES (183014137, 210427);
INSERT INTO `student_course` VALUES (183014137, 210428);
INSERT INTO `student_course` VALUES (183014137, 210429);
INSERT INTO `student_course` VALUES (183014137, 210430);
INSERT INTO `student_course` VALUES (183014137, 210431);
INSERT INTO `student_course` VALUES (183014137, 210432);
INSERT INTO `student_course` VALUES (183014137, 210433);
INSERT INTO `student_course` VALUES (183014123, 210434);
INSERT INTO `student_course` VALUES (183014123, 210417);
INSERT INTO `student_course` VALUES (183014123, 210418);
INSERT INTO `student_course` VALUES (183014123, 210419);
INSERT INTO `student_course` VALUES (183014123, 210420);
INSERT INTO `student_course` VALUES (183014123, 210421);
INSERT INTO `student_course` VALUES (183014123, 210422);
INSERT INTO `student_course` VALUES (183014123, 210423);
INSERT INTO `student_course` VALUES (183014123, 210424);
INSERT INTO `student_course` VALUES (183014123, 210425);
INSERT INTO `student_course` VALUES (183014123, 210426);
INSERT INTO `student_course` VALUES (183014123, 210427);
INSERT INTO `student_course` VALUES (183014123, 210428);
INSERT INTO `student_course` VALUES (183014123, 210429);
INSERT INTO `student_course` VALUES (183014123, 210430);
INSERT INTO `student_course` VALUES (183014123, 210431);
INSERT INTO `student_course` VALUES (183014123, 210432);
INSERT INTO `student_course` VALUES (183014123, 210433);
INSERT INTO `student_course` VALUES (183014123, 210434);
INSERT INTO `student_course` VALUES (183014130, 210433);
INSERT INTO `student_course` VALUES (183014131, 210433);
INSERT INTO `student_course` VALUES (183014132, 210433);
INSERT INTO `student_course` VALUES (183014133, 210433);
INSERT INTO `student_course` VALUES (183014135, 210433);
INSERT INTO `student_course` VALUES (183014136, 210433);
INSERT INTO `student_course` VALUES (183014125, 210433);
INSERT INTO `student_course` VALUES (183014130, 210434);
INSERT INTO `student_course` VALUES (183014131, 210434);
INSERT INTO `student_course` VALUES (183014132, 210434);
INSERT INTO `student_course` VALUES (183014133, 210434);
INSERT INTO `student_course` VALUES (183014135, 210434);
INSERT INTO `student_course` VALUES (183014136, 210434);
INSERT INTO `student_course` VALUES (183014125, 210434);
INSERT INTO `student_course` VALUES (183014126, 210428);
INSERT INTO `student_course` VALUES (183014126, 210433);
INSERT INTO `student_course` VALUES (183014126, 210429);
INSERT INTO `student_course` VALUES (183014126, 210417);
INSERT INTO `student_course` VALUES (183014126, 210419);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `teacher_id` int(11) NULL DEFAULT NULL,
  `teacher_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '吴雪');
INSERT INTO `teacher` VALUES (2, '安东');
INSERT INTO `teacher` VALUES (3, '林海宇');
INSERT INTO `teacher` VALUES (4, '张骞');
INSERT INTO `teacher` VALUES (5, '李鹏飞');
INSERT INTO `teacher` VALUES (6, '邢永康');
INSERT INTO `teacher` VALUES (7, '吴思');
INSERT INTO `teacher` VALUES (8, '方茜茜');
INSERT INTO `teacher` VALUES (9, '夏玲');
INSERT INTO `teacher` VALUES (10, '张婷婷');

-- ----------------------------
-- View structure for course_teacher_all
-- ----------------------------
DROP VIEW IF EXISTS `course_teacher_all`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `course_teacher_all` AS select `course_teacher`.`course_teacher_id` AS `course_teacher_id`,`course_teacher`.`course_name` AS `course_name`,`course`.`course_character` AS `course_character`,`course`.`credit` AS `credit`,`course_teacher`.`course_total_time` AS `course_total_time`,`course_teacher`.`course_start` AS `course_start`,`course_teacher`.`course_time` AS `course_time`,`course_teacher`.`teacher_name` AS `teacher_name`,`course_teacher`.`course_student_num` AS `course_student_num`,`course_teacher`.`follow` AS `follow`,`course`.`course_id` AS `course_id` from (`course` join `course_teacher`) where (`course`.`course_id` = `course_teacher`.`course_id`) order by `course_teacher`.`course_teacher_id`;

SET FOREIGN_KEY_CHECKS = 1;
