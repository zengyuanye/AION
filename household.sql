/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : household

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-08-30 18:07:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imageUrl` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `who` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT '1',
  `class` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES ('1', 'views/assets/images/slides/img1.jpg', '3', '2016-08-29 17:45:43', '2016-08-29 17:45:48', '1', '2', '0');
INSERT INTO `carousel` VALUES ('2', 'views/assets/images/slides/img2.jpg', '2', '2016-08-29 17:46:21', '2016-08-29 17:46:24', '1', '2', '0');
INSERT INTO `carousel` VALUES ('3', 'views/assets/images/slides/img3.jpg', '6', '2016-08-29 17:46:33', '2016-08-29 17:46:36', '1', '2', '0');
INSERT INTO `carousel` VALUES ('4', 'views/assets/images/slides/img4.jpg', '4', '2016-08-30 10:46:57', '2016-08-30 10:47:00', '1', '2', '0');
INSERT INTO `carousel` VALUES ('5', 'views/assets/images/slides/img5.jpg', '5', '2016-08-30 10:47:15', '2016-08-30 10:47:18', '1', '2', '0');
INSERT INTO `carousel` VALUES ('6', 'views/assets/images/slides/img6.jpg', '1', '2016-08-30 10:47:31', '2016-08-30 10:47:34', '1', '2', '0');
INSERT INTO `carousel` VALUES ('7', 'views/assets/images/projectfile/img1.jpg', '10', '2016-08-30 14:58:00', '2016-08-30 14:58:02', '1', '1', '1');
INSERT INTO `carousel` VALUES ('8', 'views/assets/images/projectfile/img2.jpg', '1', '2016-08-30 15:21:23', '2016-08-30 15:21:26', '1', '1', '1');
INSERT INTO `carousel` VALUES ('9', 'views/assets/images/projectfile/img3.jpg', '2', '2016-08-30 15:22:38', '2016-08-30 15:22:58', '1', '1', '1');
INSERT INTO `carousel` VALUES ('10', 'views/assets/images/projectfile/img4.jpg', '11', '2016-08-30 15:22:41', '2016-08-30 15:23:01', '1', '1', '1');
INSERT INTO `carousel` VALUES ('11', 'views/assets/images/projectfile/img5.jpg', '4', '2016-08-30 15:22:45', '2016-08-30 15:23:05', '1', '1', '2');
INSERT INTO `carousel` VALUES ('12', 'views/assets/images/projectfile/img6.jpg', '5', '2016-08-30 15:22:47', '2016-08-30 15:23:08', '1', '1', '2');
INSERT INTO `carousel` VALUES ('13', 'views/assets/images/projectfile/img7.jpg', '7', '2016-08-30 15:22:50', '2016-08-30 15:23:10', '1', '1', '2');
INSERT INTO `carousel` VALUES ('14', 'views/assets/images/projectfile/img8.jpg', '6', '2016-08-30 15:22:53', '2016-08-30 15:23:12', '1', '1', '2');
INSERT INTO `carousel` VALUES ('15', 'views/assets/images/projectfile/img9.jpg', '19', '2016-08-30 15:22:55', '2016-08-30 15:23:14', '1', '1', '3');
INSERT INTO `carousel` VALUES ('16', 'views/assets/images/projectfile/img10.jpg', '9', '2016-08-30 15:28:31', '2016-08-30 15:28:39', '1', '1', '3');
INSERT INTO `carousel` VALUES ('17', 'views/assets/images/projectfile/img11.jpg', '0', '2016-08-30 15:28:34', '2016-08-30 15:28:42', '1', '1', '3');
INSERT INTO `carousel` VALUES ('18', 'views/assets/images/projectfile/img12.jpg', '12', '2016-08-30 15:28:37', '2016-08-30 15:28:46', '1', '1', '3');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `ContactId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ContactId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('2', 'Liud', 'sina.cnm@cin', '136545', '123123', '23', '2016-08-29 08:40:28', '2016-08-29 08:40:28');
INSERT INTO `contact` VALUES ('10', 'php工程师', '529793657@qq.com', '2147483647', '我就不告诉你', '在这里写下你的信息', '2016-08-29 09:05:35', '2016-08-29 09:05:35');
INSERT INTO `contact` VALUES ('11', '百酷漫', '529793657@qq.com', '2147483647', '开始萨克斯库', '在这里写下你的个人信息', '2016-08-29 09:18:35', '2016-08-29 09:18:35');
INSERT INTO `contact` VALUES ('12', '相泉', '529793657@qq.com', '2147483647', '2开始', '其二', '2016-08-30 02:19:34', '2016-08-30 02:19:34');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `newsId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(25) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `content` text,
  `creatTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `author` varchar(10) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `class` tinyint(3) DEFAULT NULL,
  `sort` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`newsId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'AION', '该作的主题为“战争”，故事围绕龙族、主神与龙族三者之间的矛盾冲突，展开了斗争[1]  。玩家可以选择天族或者魔族，而龙族就是怪物以及NPC。三者间存在互相竞争、对抗或合作的关系，玩家可以从中体验大规模的种族战', '千年之战[8] \r\n很久以前，伟大的亚特雷亚是一片乐园，巨大的永恒之塔永远发出富饶与祝福的光芒。而所有被造之物都信奉亚特雷亚。\r\n远古的亚特雷亚\r\n远古的亚特雷亚\r\n远古的亚特雷亚\r\n永恒之塔的创造物当中，最出众的就是龙族，它们不断的渴望获得更强大的能力，结果它们开始变成拥有强大力量的德拉坎，在克拉尔和莱卡恩臣服龙族之后，龙族背叛了永恒之塔，虽然信奉永恒之塔的人类拼命的抵抗龙族，但是以他们微弱的能力，丝毫不能抵挡龙族。\r\n永恒之塔派遣十二主神来到人间，十二主神布下结界保护永恒之塔，使人类变成守护者保护永恒之塔。但是消灭龙族始终不是容易的事。千年之间，与龙族的战争持续不断的发生。伊斯拉佩尔主神为了结束长久的战争提出与龙族缔结和平协议的建议，十二主神有的赞成有的反对，因而发生了激辩，但是当希埃尔主神赞成和平时，于是大家只好跟从。\r\n塔的守护者希埃尔主神与伊斯拉佩尔主神布下结界迎接龙族。和平的协议似乎进行的很顺利，但是悲剧却在一瞬之间爆发，有人说龙帝布里特拉突然倒下，也有人说是布里特拉先喷出火焰，但是并没有确切的答案，和平到此决裂，龙帝普雷奇温朝着塔喷出火焰，战斗即将展开。\r\n结界消失的永恒之塔被破坏以后，亚特雷亚也逐渐开始崩坏，希埃尔主神与伊斯拉佩尔主神自我牺牲后，终于重新展开结界，好不容易阻挡了亚特雷亚的崩坏，如果没有两位主神的牺牲，人类的历史很可能就在大崩坏的那一天结束，但是没有人知道，一分为二的亚特雷亚，却是另一个悲剧的开端。\r\n当极乐世界浮上天空\r\n自从永恒之塔被破坏之后，人们受到打击并开始觉得迷惘。于是依照五位主神的引导，开始建立新的根据地。在长久的努力之下，巨大的极乐世界终于展露出庄严地容貌。\r\n但是，和平只是暂时的。各地出现的裂缝，加深了人们莫名的不安，当因为好奇，进入裂缝的人越来越多时，极乐世界决定着手调查裂缝。极乐世界派遣调查团前往可能有去无回的时空裂缝，索性调查团回来之后带来了惊人的消息。那里有大崩坏时消失的古代城市遗迹，而且是充满奥德能量的神秘地方，人们将那已被遗忘，有着酷似龙族怪物的地方，称为深渊。\r\n主神下令全面探查深渊的内部，因此召集了暴风军团，以泰尔拉斯担任指挥。探查深渊的泰尔拉斯一行人发现巨大的裂缝之后，便进入其中。他们并不知道在那里潜藏了重重危机。\r\n令人惊讶的是，那里住着与人类类似却模样不同的人型生物。难道在大崩坏时还有一些人幸存吗，自称为魔族的他们是引起大崩坏的主谋，即吉凯尔主神和他的追随者。虽然泰尔拉斯以礼对待过去的主神，但是吉凯尔却羞辱了他，当吉凯尔的羞辱波及到极乐世界的主神时，泰尔拉斯与暴风军团舍弃性命，选择了名誉，最后便在莫尔海姆的寒地里结束了生命。\r\n当人们获知泰尔拉斯被魔族处死的时候，陷入了无法自我的愤怒与悲伤中，五位主神宣布，将为了大崩坏和泰尔拉斯的死向魔族兴师问罪获得了天族一致的回应，不久之后就在深渊，展开了第一次战役，就在这千年之间。\r\n为了荣誉的复仇\r\n\r\n大崩坏夺走了一切，但人们认为这一切的变化都是为了脱离大崩坏所做出的牺牲，因此我们都觉得很光荣。\r\n伟大的阿斯佩尔主神赐给我们魔族的名称，并建立了新的首都——伏魔殿，伏魔殿宣布，将延续亚特雷亚的传统。\r\n突然有一天，魔界到处都出现了裂缝。但是，直到他们出现以前，人们并不知道这个裂缝的意义。他们是拥有人们过去面貌的守护者。自称是天族的这些人的眼神，一开始就充满了仇恨。泰尔拉斯和他的部下，潜伏在莫尔海姆的各处进行杀戮。最后，吉凯尔主神下令捉拿他们，虽然吉凯尔主神以善意对待他们，但是泰尔拉斯却羞辱伏魔殿与魔族，最后，他必须为自己的无礼付出代价。泰尔拉斯被处死之后，莫尔海姆终于恢复了平静，但是伏魔殿却有新的行动蓄势待发\r\n不知何时会被攻击的不安，和对大崩坏主谋的愤怒逐渐扩大，阿斯佩尔主神宣布，将越过裂缝，征服天族。伏魔殿的精锐执政官组织了新的军队像深渊进军，寻找前往天界的路，并建立新的据点。虽然与龙族展开了永无止境的战斗，但是魔族的勇气与信念却更加坚定。\r\n战况瞬息万变，凯西内尔主神和他的守护者终于出现在深渊，凯西内尔有着压倒性的力量，历经数年建立的魔族据点全部被消灭，执政官军团也面临着全面瓦解的窘境。然而在最绝望的时候，高贵的鲁米埃尔主神以智慧的力量保护了我们。她部下结界，并击败天族守护者，将凯西内尔孤立起来。在魔族的吞噬之下，凯西内尔不得已只好忍辱撤退，荣耀终归鲁米埃尔主神的魔族，欢呼声响彻了整个深渊。\r\n在胜利的欢呼声中，人们开始领悟到一件事，现在只是天魔之间战争的开端而已。\r\n第十三位主神\r\n在游戏的传说预言书中，第十三位主神的出现意味着这个时代的结束和一个新时代的开端，剧情中是禁止谈论关于第十三主神的话，这是对现有主神的不敬，依照魔族主线任务，在一开始被认定有可能成为第十三位主神的是天族的黑利温，和魔族的主角（玩家扮演）。之后黑利温于那日萨斯被魔族主角击败\r\n世界观\r\n《永恒之塔》游戏中，简单说就是一个由“天族、魔族、龙族”三方势力所建立起的崭新的神话世界，在这个世界中，天族与魔族是相互对立的两个种族，而龙族则是与这两大种族对立的种族，因此当龙族来袭，也许天族与魔族又将合作对抗龙族。而这三个种族所活动的世界，称为亚特雷亚大陆。\r\n上方为魔族，下方为天族，连接天族与魔族的就是已经崩坏的永恒之塔，即深渊。[9] \r\n亚特雷亚是一个球体，分为两半，而天魔在两个半球的内部生活，中心连接两个半球的就是永恒之塔，而中间破碎的地方就是深渊，塔周围的光芒是结界，龙族在结界以外生活。', '2016-08-30 11:29:42', '2016-08-30 11:29:45', 'NC', null, 'views/assets/images/news/img2.jpg', '0', '1');
INSERT INTO `news` VALUES ('2', '从零开始的异世界生活', '在从便利商店回家的路上，突然被异世界召唤的少年菜月昴。在无法依靠任何东西东西的异世界，无力的少年手唯一的力量……那是“死去然后重新开始”的力量。为了守护最重要的人们，为了取回确实存在着又无可替代的时间，少年抗拒着绝望，勇敢地面对着残酷的命运', 'MF文库J的责任编辑·池本昌仁，经常跟KADOKAWA的制作人·田中翔讨论作品动画化的事情。\r\n田中曾经在洗澡的时候，用ipad将网络连载版的《从零开始的异世界生活》给全部看了一遍。\r\n动画版的决胜关键，池本认为是“帅气的台词”。\r\n在选择动画公司的问题上，田中凭借直觉选择了WHITE FOX。\r\n田中认为，如果不能制作2个季度，那么就没有意思了。因为只是1个季度的话，就跟寻常的轻改动画一样了。\r\n为了等待导演跟总作画导演的人选，田中光是选人就花费了一年的时间。[11-13] \r\n声优的选择\r\n为菜月昴配音的小林裕介能够演绎那种比较屌丝的感觉，在最初试镜的时候就得到了全场一致认同。\r\n配音艾米莉亚的高桥李依一开始则是凭借那种透明感征服了工作人员。\r\n为贝蒂配音的新井里美也基本上是全员赞同的，有种“萝莉大妈”的感觉。\r\n水濑祈跟村川梨衣的姐妹组同样让不少人吃惊，没想到两人能演绎出这样好的效果。[11-13] \r\n幕后小花絮\r\n动画从一开始难度就很高，WHITE FOX的制作人·吉川纲树在跟导演他们吃饭的时候，会听到“制作这部作品真的很累呢”的吐槽。\r\n小说原作者长月达平会过目全部的剧本，并且在声优录音的时候在现场观看，为作品的稳定性做保障。\r\n为了展现剧情，动画第一集删减了主题曲与片尾曲的时间，因此是1小时的特别篇。[11-13] ', '2016-08-30 11:44:00', '2016-08-30 11:44:03', '长月达平', null, 'views/assets/images/news/img3.jpg', '0', '2');
INSERT INTO `news` VALUES ('3', '上古卷轴5：天际', '游戏设定在《上古卷轴4：湮没》的200年之后。玩家将扮演着人身龙魂的英雄龙裔，踏上将邪恶巨龙奥杜因驱逐至时间尽头的征途。', '距今两百年前，在《上古卷轴4：湮没》的主线剧情后，被4代主角扶持的国王马丁失踪。\r\n不久后，马丁家族血脉断绝，统治整片Tamriel（塔玛瑞尔）大陆的帝国分裂，各省独立。\r\n高岩军阀提图斯迈德一世，重新统一了帝国。\r\n\r\n距今三十年前，Aldmeri Dominion与帝国展开了战争。Aldmeri Dominion是一个在南方由高等精灵组成的极端种族主义政权。这个政权的政府代表叫做Thalmor，Thalmor在5代里占有很大的剧情。\r\n帝国在与Thalmor（梭默）的战争中处于弱势。\r\n国王懦弱（Skyrim（天际）的诺德人普遍认为），帝国与Thalmor（梭默）签署了不平等的和平条约。不过就算在和平条约下，Thalmor（梭默）也一直在变相间接地削弱帝国的实力。\r\n和平条约的内容就是让帝国废除并禁止TALOS的信仰，TALOS的信徒则被视为异教徒而遭到Thalmor的迫害。DIVINE（圣神）TALOS也就是帝国的开国元勋Tiber Septim，他死后被人民神化为DIVINE，之后TALOS信仰几乎吞没了其他八位正牌DIVINE的信仰。Thalmor则重新扶植了原来八位DIVINE的信仰。\r\n因为TALOS，也就是Tiber Septim是诺德人，所以TALOS的信仰在诺德人的家乡Skyrim非常普及。很多诺德人开始对帝国不满，因为他们认为帝国对Thalmor的让步是懦弱的行为，而且TALOS信仰的废除无疑触及了他们的底线。Windhelm（风盔）领主的Ulfric Stormcloak（乌弗瑞克·风暴斗篷）就是一位典型的代表人物。\r\n距今不久，Ulfric Stormcloak（乌弗瑞克·风暴斗篷）打算推翻帝国对Skyrim（天际）的统治。\r\nUlfric使用战吼挑战并杀死了服从帝国的Skyrim至高国王（high king）。由于诺德人的习俗，Ulfric Stormcloak理论上应被拥立为Skyrim新的至高国王。\r\n\r\n当然诺德人的习俗并不代表帝国。于是利用诺德人对帝国的厌恶，Ulfric Stormcloak组织了Stormcloak帝国反抗军。Stormcloak占领了整个Skyrim的半个东侧，与西侧的帝国死忠派对持。Skyrim内战开始。\r\n有证据表明是Thalmor暗中利用并扶植了Ulfric Stormcloak，但作为一个纯正的诺德人，Ulfric显然不想做他所憎恨的Thalmor的傀儡，所以Ulfric拒绝与Thalmor联络。\r\n不过只要帝国与Stormcloak的战争一直持续，Thalmor就不会干涉Stormcloak，因为Thalmor的核心利益是削弱帝国，使其内耗。根据情况Thalmor还会继续在暗中支持Stormcloak。\r\nWhiterun的领主（5代主线任务里让主角去杀第一条龙的领主）由于地理位置（被夹在中间）而暂时保持中立。', '2016-08-30 11:45:27', '2016-08-30 11:45:30', 'Todd Howar', null, 'views/assets/images/news/img1.jpg', '0', '3');
INSERT INTO `news` VALUES ('4', 'AION', 'AION', 'AION', '2016-08-30 17:48:28', '2016-08-30 17:49:02', 'AION', null, 'views/assets/images/projectfile/img1.jpg', '1', '0');
INSERT INTO `news` VALUES ('5', 'AION', 'AION', 'AION', '2016-08-30 17:48:31', '2016-08-30 17:49:05', 'AION', null, 'views/assets/images/projectfile/img2.jpg', '1', '3');
INSERT INTO `news` VALUES ('6', 'AION', 'AION', 'AION', '2016-08-30 17:48:33', '2016-08-30 17:49:08', 'AION', null, 'views/assets/images/projectfile/img3.jpg', '2', '2');
INSERT INTO `news` VALUES ('7', 'AION', 'AION', 'AION', '2016-08-30 17:48:36', '2016-08-30 17:49:11', 'AION', null, 'views/assets/images/projectfile/img4.jpg', '3', '1');
INSERT INTO `news` VALUES ('8', 'AION', 'AION', 'AION', '2016-08-30 17:48:39', '2016-08-30 17:49:14', 'AION', null, 'views/assets/images/projectfile/img5.jpg', '2', '1');
INSERT INTO `news` VALUES ('9', 'AION', 'AION', 'AION', '2016-08-30 17:48:41', '2016-08-30 17:49:16', 'AION', null, 'views/assets/images/projectfile/img6.jpg', '1', '2');
INSERT INTO `news` VALUES ('10', 'AION', 'AION', 'AION', '2016-08-30 17:48:44', '2016-08-30 17:49:18', 'AION', null, 'views/assets/images/projectfile/img7.jpg', '1', '2');
INSERT INTO `news` VALUES ('11', 'AION', 'AION', 'AION', '2016-08-30 17:48:46', '2016-08-30 17:49:21', 'AION', null, 'views/assets/images/projectfile/img8.jpg', '2', '3');
INSERT INTO `news` VALUES ('12', 'AION', 'AION', 'AION', '2016-08-30 17:48:48', '2016-08-30 17:49:24', 'AION', null, 'views/assets/images/projectfile/img9.jpg', '3', '4');
INSERT INTO `news` VALUES ('13', 'AION', 'AION', 'AION', '2016-08-30 17:48:51', '2016-08-30 17:49:27', 'AION', null, 'views/assets/images/projectfile/img10.jpg', '2', '1');
INSERT INTO `news` VALUES ('14', 'AION', 'AION', 'AION', '2016-08-30 17:48:54', '2016-08-30 17:49:29', 'AION', null, 'views/assets/images/projectfile/img11.jpg', '3', '4');
INSERT INTO `news` VALUES ('15', 'AION', 'AION', 'AION', '2016-08-30 17:48:57', '2016-08-30 17:49:32', 'AION', null, 'views/assets/images/projectfile/img12.jpg', '3', '3');
INSERT INTO `news` VALUES ('16', 'AION', 'AION', 'AION', '2016-08-30 17:49:00', '2016-08-30 17:49:34', 'AION', null, 'views/assets/images/projectfile/img1.jpg', '1', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '23123', '2016-08-29 10:32:19', '2016-08-29 10:32:21');
