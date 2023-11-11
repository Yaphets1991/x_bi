# 数据库初始化

-- 创建库
create database if not exists my_db;

-- 切换库
use my_db;

DROP TABLE IF EXISTS `chart`;
CREATE TABLE `chart`  (
                          `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
                          `goal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '分析目标',
                          `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图表名称',
                          `chartData` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '图表数据',
                          `charType` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图表类型',
                          `genChart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '生成的图表数据',
                          `genResult` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '生成的分析结论',
                          `userId` bigint NULL DEFAULT NULL COMMENT '创建的用户id',
                          `status` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'wait' COMMENT '状态(wait,running,succeed,failed)',
                          `execMessage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '执行信息',
                          `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                          `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                          `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1722590017615618050 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '图表信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chart
-- ----------------------------
INSERT INTO `chart` VALUES (1722528185597112322, '分析网站的用户增长情况', '11.9数据图', '日期,用户,用户数\n1号,aa,100\n2号,bb,200\n3号,cc,300\n4号,dd,500\n5号,ee,10\n6号,ff,800\n7号,gg,50\n8号,hh,500\n9号,ii,600\n10号,jj,1000\n', '折线图', '{\n  \"xAxis\": {\n    \"type\": \"category\",\n    \"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\", \"8号\", \"9号\", \"10号\"]\n  },\n  \"yAxis\": {\n    \"type\": \"value\"\n  },\n  \"series\": [{\n    \"data\": [100, 200, 300, 500, 10, 800, 50, 500, 600, 1000],\n    \"type\": \"line\"\n  }]\n}', '根据原始数据绘制的折线图显示了网站用户增长情况，从1号到10号的增长趋势可见。用户数量在1号到4号逐渐增加，5号骤降，6号达到最高峰，7号再次骤降，8号到10号继续增长。通过观察折线图，可以得出以下结论：\n1. 网站的用户增长不是持续稳定的，可能受到特定因素（如节假日、推广活动等）的影响。\n2. 用户增长在5号和7号出现了明显的下降，可能是由于一些异常情况（如网站故障、推广渠道的变化等）导致的。\n3. 用户增长在6号达到峰值，可能是某项特殊活动或者新功能上线引起的用户兴趣。\n\n通过进一步分析这些异常情况的原因以及峰值出现的背后原因，可以为网站的用户增长提供指导和优化策略。', 1, 'succeed', NULL, '2023-11-09 08:14:57', '2023-11-10 18:57:57', 0);
INSERT INTO `chart` VALUES (1722532522389987330, '分析网站的用户增长情况', '11.9用户数据分析图', '日期,用户数\n1号,100\n2号,200\n3号,300\n4号,500\n5号,10\n6号,800\n7号,50\n8号,500\n9号,600\n10号,1000\n', '折线图', '{\n  \"title\": {\n    \"text\": \"用户增长情况\",\n    \"subtext\": \"每天新增用户数\"\n  },\n  \"xAxis\": {\n    \"type\": \"category\",\n    \"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\", \"8号\", \"9号\", \"10号\"]\n  },\n  \"yAxis\": {\n    \"type\": \"value\"\n  },\n  \"series\": [{\n    \"name\": \"用户数\",\n    \"type\": \"line\",\n    \"data\": [100, 200, 300, 500, 10, 800, 50, 500, 600, 1000]\n  }]\n}', '从原始数据中可见，用户增长曲线并不平稳，有些天数增加的用户数量很高，而有些天数则相对较低。用户增长的高峰期出现在4号和10号，分别达到了500和1000，而5号和7号则是增长的低谷，仅新增了10和50个用户。整体而言，用户数量呈上升趋势，且在第4天和第10天出现了较大的增长。\n\n通过对用户增长情况的分析，我们可以了解到网站的用户活跃度和用户增长的趋势，从而有针对性地进行用户运营和业务发展。', 1, 'succeed', NULL, '2023-11-09 08:32:11', '2023-11-10 18:57:58', 0);
INSERT INTO `chart` VALUES (1722534058134396929, '分析网站的用户增长情况', '用户数据分析图', '日期,用户数\n1号,100\n2号,200\n3号,300\n4号,500\n5号,10\n6号,800\n7号,50\n8号,500\n9号,600\n10号,1000\n', '折线图', '{\n\"xAxis\": {\n\"type\": \"category\",\n\"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\", \"8号\", \"9号\", \"10号\"]\n},\n\"yAxis\": {\n\"type\": \"value\"\n},\n\"series\": [{\n\"data\": [100, 200, 300, 500, 10, 800, 50, 500, 600, 1000],\n\"type\": \"line\"\n}]\n}', '根据以上数据，可以看出网站用户增长情况呈现出较为不稳定的趋势。特别是在5号和7号，用户数量出现了明显的下降，这可能是由于某种临时原因所导致，例如网站故障或者广告推广推出问题。在6号和10号，用户数量有明显的增长，这可能是由于某种优惠活动或者促销活动的成功。因此，可以考虑在用户数量下降的时候进行问题排查和修复，而在用户增长的时候加大相应的营销力度，以提高网站的用户增长和用户满意度。', 1, 'succeed', NULL, '2023-11-09 08:38:17', '2023-11-10 18:57:58', 0);
INSERT INTO `chart` VALUES (1722587356220678145, '分析网站用户的增长情况', '1号', '日期,用户数\n1号,100\n2号,200\n3号,300\n4号,500\n5号,10\n6号,800\n7号,50\n8号,500\n9号,600\n10号,1000\n', '堆叠图', '{\n\"xAxis\": {\n\"type\": \"category\",\n\"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\", \"8号\", \"9号\", \"10号\"]\n},\n\"yAxis\": {\n\"type\": \"value\"\n},\n\"series\": [{\n\"name\": \"用户增长\",\n\"type\": \"bar\",\n\"data\": [100, 200, 300, 500, 10, 800, 50, 500, 600, 1000]\n}]\n}', '根据以上数据，可以绘制出用户增长的堆叠图。图表显示了从1号到10号期间的用户数量变化情况。可以明显看出，在这期间，用户数量呈增长趋势，尤其在4号和6号发生了较大幅度的用户增长。而在5号和7号用户数量相对较少。\n\n需要进一步分析这些突发变化的原因，以确定用户增长的驱动因素，并相应调整运营策略。同时，对于用户数量下降的日期，也需要进行调查分析，了解是否存在特殊情况或者数据录入错误。这样能够更好地把握用户增长的趋势，优化网站的运营。', 1, 'succeed', NULL, '2023-11-09 12:10:04', '2023-11-10 18:57:59', 0);
INSERT INTO `chart` VALUES (1722590017615618049, '分析网站用户的增长情况', '111数据图', '日期,用户数\n1号,100\n2号,200\n3号,300\n4号,500\n5号,10\n6号,800\n7号,50\n8号,500\n9号,600\n10号,1000\n', '柱状图', '{\n\"xAxis\": {\n\"type\": \"category\",\n\"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\", \"8号\", \"9号\", \"10号\"]\n},\n\"yAxis\": {\n\"type\": \"value\"\n},\n\"series\": [{\n\"data\": [100, 200, 300, 500, 10, 800, 50, 500, 600, 1000],\n\"type\": \"bar\"\n}]\n}', '根据以上数据，可以看出网站用户的增长情况。用户数量在1号、2号、3号和6号达到相对较高的峰值，而在5号和7号用户数量明显下降。这些数据可能反映了一些特定的活动或者推广措施在某些日期上的影响。需要进一步的分析和调研，以确定这些峰值和下降的原因，并根据分析结果制定相应的运营策略，以提高用户增长和用户留存率。', 1, 'succeed', NULL, '2023-11-09 12:20:39', '2023-11-10 18:58:00', 0);
INSERT INTO `chart` VALUES (1722946664649297921, '分析网站用户的增长情况', '异步1图', '日期,用户数\n1号,100\n2号,200\n3号,300\n4号,500\n5号,10\n6号,800\n7号,50\n8号,500\n9号,600\n10号,1000\n', '折线图', '{\n\"xAxis\": {\n\"type\": \"category\",\n\"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\", \"8号\", \"9号\", \"10号\"]\n},\n\"yAxis\": {\n\"type\": \"value\"\n},\n\"series\": [{\n\"data\": [100, 200, 300, 500, 10, 800, 50, 500, 600, 1000],\n\"type\": \"line\"\n}]\n}', '根据以上数据，可以看出网站用户在1号至3号逐渐增长，4号至6号用户数量迅速增加，然后在7号迅速下降，并在8号至10号保持相对稳定。可能存在以下情况：\n1. 4号至6号期间可能进行了某种促销活动或推广，吸引了大量用户的访问。\n2. 5号的用户数量异常低，可能是由于数据录入错误或者网站故障导致的数据丢失。\n综上所述，针对网站用户增长情况可以采取以下措施：\n1. 分析4号至6号期间促销活动的效果，以确定是否有必要继续进行类似的活动。\n2. 备份网站数据，确保数据的完整性和准确性，以避免出现数据丢失的情况。\n3. 进一步研究和分析5号的异常情况，找出导致异常的原因，并采取相应的纠正措施，以保证数据的可靠性。', 1, 'succeed', NULL, '2023-11-10 19:57:49', '2023-11-10 19:59:50', 0);
INSERT INTO `chart` VALUES (1722953966030692354, '分析网站的用户增长情况', '2号', '日期,用户数\n1号,100\n2号,200\n3号,300\n4号,500\n5号,10\n6号,800\n7号,50\n8号,500\n9号,600\n10号,1000\n', '饼图', '{\n\"tooltip\": {\n\"trigger\": \"item\",\n\"formatter\": \"{a} <br/>{b}: {c} ({d}%)\"\n},\n\"legend\": {\n\"orient\": \"vertical\",\n\"x\": \"left\",\n\"data\": [\"1号\", \"2号\", \"3号\", \"4号\", \"5号\", \"6号\", \"7号\", \"8号\", \"9号\", \"10号\"]\n},\n\"series\": [\n{\n\"name\": \"用户增长\",\n\"type\": \"pie\",\n\"radius\": [\"50%\", \"70%\"],\n\"avoidLabelOverlap\": false,\n\"label\": {\n\"show\": false,\n\"position\": \"center\"\n},\n\"emphasis\": {\n\"label\": {\n\"show\": true,\n\"fontSize\": \"30\",\n\"fontWeight\": \"bold\"\n}\n},\n\"labelLine\": {\n\"show\": false\n},\n\"data\": [\n{\"value\": 100, \"name\": \"1号\"},\n{\"value\": 200, \"name\": \"2号\"},\n{\"value\": 300, \"name\": \"3号\"},\n{\"value\": 500, \"name\": \"4号\"},\n{\"value\": 10, \"name\": \"5号\"},\n{\"value\": 800, \"name\": \"6号\"},\n{\"value\": 50, \"name\": \"7号\"},\n{\"value\": 500, \"name\": \"8号\"},\n{\"value\": 600, \"name\": \"9号\"},\n{\"value\": 1000, \"name\": \"10号\"}\n]\n}\n]\n}', '根据以上数据，生成饼图可以清晰地展示每天的用户增长情况。可以看到，10号的用户数最多，占据了整个用户增长的40%。6号和9号增长也较为显著，分别占据了15%和10%。而5号和7号的用户增长非常少，分别只有1%和0.5%。其他日期的用户增长相对较为平均。这些数据可以提供给网站运营团队，以便他们能够更好地了解用户增长情况，并采取相应的运营策略。', 1, 'succeed', NULL, '2023-11-10 20:26:50', '2023-11-10 20:27:27', 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
                         `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
                         `userAccount` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
                         `userPassword` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
                         `userName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
                         `userAvatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户头像',
                         `userRole` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '用户角色：user/admin/ban',
                         `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                         `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                         `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
                         PRIMARY KEY (`id`) USING BTREE,
                         INDEX `idx_userAccount`(`userAccount`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'b03d227f78c0c79334fca76e7b8eb46a', 'xiang', 'https://ts4.cn.mm.bing.net/th?id=ODLS.630ccce4-f7e5-4ff9-96a7-3168d9680493&w=32&h=32&qlt=90&pcl=fffffa&o=6&cb=1106&pid=1.2', 'admin', '2023-11-05 22:30:46', '2023-11-07 05:25:58', 0);

SET FOREIGN_KEY_CHECKS = 1;