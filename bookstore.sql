

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bid` int(10) NOT NULL AUTO_INCREMENT,
  `bname` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `pirce` varchar(255) DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  `printer` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `store` int(10) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('10', '外科風雲', '正午陽光影業繼《瑯琊榜》《歡樂頌》後，又一熱播醫療職場勵志劇同名小說。直擊中國醫患矛盾的情感 極致力作，溫暖而明亮的職場勵志小說。老幹部靳東演繹的中國醫療精英。', '78', '朱朱', '浙江文藝出版社', '2017-05-01', '治愈', '16.jpg', '2');
INSERT INTO `book` VALUES ('11', '追風箏的人', '中文版，快樂大本營高圓圓感動推薦，奧巴馬送給女兒的新年禮物。為你，千千萬萬遍！', '17' , '[美]卡勒德·胡賽尼（Khaled Hosseini）', '上海人民出版社', '2006-05-01', '治愈', '12.jpg', '99');
INSERT INTO `book` VALUES ('12', '從你的全世界路過', '2015央視年度好書，近二十年華語小說銷量奇蹟，超40億閱讀，每個故事都在變成電影， 每一分鐘，都有人看見自己。張嘉佳獻給你的心動故事！', '19', '張嘉佳', '湖南文藝出版社', '2013-07-01', '治愈', '13. jpg', '99');
INSERT INTO `book` VALUES ('13', '解憂雜貨店', '《白夜行》後東野圭吾備受歡迎作品：不是推理小說，卻更扣人心弦', '27', '(日)東野圭吾' , '南海出版公司', '2014-05-01', '小說', '14.jpg', '99');
INSERT INTO `book` VALUES ('14', '小王子', '梅子涵主編，國際水準手繪插畫，獨一無二創意欄目：揭秘大師長成記和名著誕生記，分享同名影視動畫衍生劇作，打造有趣 有料、有顏有品的特色大師精選童話。', '11', '(法) 聖-埃克蘇佩里', '遼寧少年兒童出版社', '2017-04-01', '童話 ', '15.jpg', '98');
INSERT INTO `book` VALUES ('16', '陽明心學的力量', '陽明心學在中國的當代商業實踐,陽明教育研究院創始人白立新、奧康集團董事長王振滔、北京大學 社會科學部副主任文東茅教授等諸多企業家、教育家學習陽明心學、致良知的生動記錄', '35', '北京知行合一陽明教育研究院', '機械工業出版社 ', '2017-04-01', '管理學', '17.jpg', '33');
INSERT INTO `book` VALUES ('18', '絲綢之路：一部全新的世界史', '關心國家戰略，一帶一路必讀書', '92', '彼得.弗蘭科潘(Peter Frankopan )', '浙江大學出版社', '2016-08-17', '歷史', '18.jpg', '10');
INSERT INTO `book` VALUES ('19', '全球通史', '從史前史到21世紀', '87', '斯塔夫里阿諾斯', '北京大學出版社', '2006-10 -01', '歷史', '19.jpg', '50');
INSERT INTO `book` VALUES ('20', '史記', '(精裝全三冊)', '75', '司馬遷', '岳麓書社', '2011-07-01', '歷史', ' 20.jpg', '39');
INSERT INTO `book` VALUES ('21', '月亮與六便士', '(譯文經典.精）', '30', '毛姆', '上海譯文出版社', '2015-03-10' , '小說', '21.jpg', '5');
INSERT INTO `book` VALUES ('22', '蘇菲的世界', '熱賣榜前50', '23', '喬斯坦.賈德', '作家出版社', '2007-07-07 ', '小說', '22.jpg', '77');
INSERT INTO `book` VALUES ('23', '悲慘世界', '銷量遙遙領先', '67', '[法]維克多·雨果', '作家出版社', '2016-06-14 ', '小說', '23.jpg', '3');
INSERT INTO `book` VALUES ('24', '海底兩萬裡', '（中小學新課標必讀名著）', '32', '儒勒.凡爾納', '國際文化出版公司', '2017-01-17', '小說', '24.jpg', '99');
INSERT INTO `book` VALUES ('25', '鋼鐵是怎樣煉成的', '俄中直譯全譯本', '29', '奧斯特洛夫斯基', '西安交通大學出版社', '2016-11-11', '小說', '25.jpg', '79');
INSERT INTO `book` VALUES ('26', '百年孤獨', '加西亞馬奎斯代表作', '38', '加西亞·馬奎斯', '南海出版公司', '2011-06-27 ', '小說', '26.jpg', '68');
INSERT INTO `book` VALUES ('27', '了不起的蓋茨比', '【作家榜推薦】', '26', '菲茨傑拉德', '浙江文藝出版社', '2017-03 -15', '小說', '27.jpg', '44');
INSERT INTO `book` VALUES ('28', '三毛：撒哈拉的故事', '滿100減50', '17', '三毛', '北京十月文藝出版社', '2013-05- 15', '文學', '28.jpg', '99');
INSERT INTO `book` VALUES ('29', '魯迅全集', '（全20卷，紀念魯迅先生逝世80週年！）', '370', '魯迅', '北京日報出版社（原同心出版社 ）', '2014-10-15', '文學', '29.jpg', '99');
INSERT INTO `book` VALUES ('30', '斯坦福極簡經濟學', '（噹噹國獨家精裝升級版）', '37', '[美]泰勒', '湖南人民出版社', '2016 -08-01', '經濟', '30.jpg', '78');
INSERT INTO `book` VALUES ('31', '天才在左瘋子在右', '（完整版）', '28', '高銘', '北京聯合出版公司', '2016-01-20' , '心理', '31.jpg', '88');
INSERT INTO `book` VALUES ('32', '社會心理學', '（第11版）', '111', '（美） 戴維·邁爾斯', '人民郵電出版社', '2016 -01-14', '心理', '32.jpg', '48');
INSERT INTO `book` VALUES ('33', '與孤獨為友', '如何獲得內心世界的輕鬆和愉悅', '29', '和田秀樹', '北京聯合出版公司', '2017-04 -12', '心理學', '33.jpg', '49');
INSERT INTO `book` VALUES ('34', '攝影入門', '拍出美照超簡單', '38', '喬旭亮', '化學工業出版社', '2016-06-06', '藝術 ', '34.jpg', '99');
INSERT INTO `book` VALUES ('35', '藝術的療效', '治癒了趙薇的書！——趙薇在來往上推薦的治愈系圖書。', '116', '（英）德波頓' , '廣西美術出版社', '2014-07-12', '藝術', '35.jpg', '99');
INSERT INTO `book` VALUES ('36', '勝者思維', '危機領導策略，思維制勝之道，決策核心思考。', '35', '金一南', '北京聯合出版公司', '2017-05-10', '政治理論', '36.jpg', '99');
INSERT INTO `book` VALUES ('37', '學習關鍵字', '社科值得看的好書', '38', '人民日報海外版「學習小組」', '人民出版社', '2016 -11-21', '政治理論', '37.jpg', '99');
INSERT INTO `book` VALUES ('38', '必然', '尼古拉·尼葛洛龐帝互聯網啟蒙讀物《數位化生存》20週年再版', '50', '凱文·凱利', '電子 工業出版社', '2016-01-16', '社會科學', '38.jpg', '99');
INSERT INTO `book` VALUES ('39', '晚學盲言', '（全兩冊，第二版）', '87', '錢穆', '生活.讀書.新知三聯書店', '2014 -03-11', '社會科學', '39.jpg', '99');
INSERT INTO `book` VALUES ('40', '江村經濟', '銷售榜前茅', '29', '費孝通', '北京大學出版社', '2016-07-08', '社會 科學', '40.jpg', '99');
INSERT INTO `book` VALUES ('41', '精通Python網絡爬蟲', '資深專家，以實戰為導向，講透Python網絡爬蟲各項核心技術和主流框架，深度講解網絡爬蟲的抓取技術與反爬攻關技巧', '61', '韋瑋', '機械工業出版社', '2017-04-04', '計算機', '41.jpg', '58');
INSERT INTO `book` VALUES ('42', 'Android高級進階', '滿50減10', '84', '顧浩鑫', '電子工業出版社', '2016-09-18', ' 計算機', '42.jpg', '17');
INSERT INTO `book` VALUES ('43', 'Python大戰機器學習', '資料科學家的第一個小目標', '61', '華校專，王正林', '電子工業出版社', '2017 -02-16', '電腦', '43.jpg', '88');

-- ----------------------------
-- Table structure for book_order
-- ----------------------------
DROP TABLE IF EXISTS `book_order`;
CREATE TABLE `book_order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `oname` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_order
-- ----------------------------
INSERT INTO `book_order` VALUES ('3', '2023-05-27 22:43:37', 'L', '我家超市', '已發貨', '7');
INSERT INTO `book_order` VALUES ('4', '2023-06-02 14:45:09', 'L', '廣藥住宅區', '已簽收', '7');
INSERT INTO `book_order` VALUES ('5', '2023-06-02 14:57:25', 'L', '王子家', '未發貨', '7');
INSERT INTO `book_order` VALUES ('6', '2023-06-02 14:59:40', 'L', '家', '未發貨', '7');
INSERT INTO `book_order` VALUES ('8', '2023-06-02 15:06:35', 'L', '???', '未發貨', '7');
INSERT INTO `book_order` VALUES ('13', '2023-06-03 02:08:16', 'L', '我的家', '未發貨', '7');
INSERT INTO `book_order` VALUES ('14', '2023-06-03 02:18:02', 'L', '你家', '未發貨', '7');
INSERT INTO `book_order` VALUES ('15', '2023-06-05 14:30:41', 'L', 'WWWWW', '未發貨', '7');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '10', 'L', '2017-06-01 02:03', '不錯');
INSERT INTO `comment` VALUES ('2', '12', 'L', '2017-06-01 02:10', '一般');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `book_num` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('17', '3', '10', '1', '已評價');
INSERT INTO `order_detail` VALUES ('19', '3', '12', '2', '已評價');
INSERT INTO `order_detail` VALUES ('26', '5', '14', '9', '待評價');
INSERT INTO `order_detail` VALUES ('31', '8', '16', '2', '待評價');
INSERT INTO `order_detail` VALUES ('33', '4', '22', '1', '待評價');
INSERT INTO `order_detail` VALUES ('34', '6', '21', '1', '待評價');
INSERT INTO `order_detail` VALUES ('59', '13', '10', '2', '待評價');
INSERT INTO `order_detail` VALUES ('60', '14', '10', '1', '待評價');
INSERT INTO `order_detail` VALUES ('61', '15', '14', '1', '待評價');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', 'bb', '123', null, null, null, null);
INSERT INTO `user` VALUES ('7', 'L', '123', '男', '12345678900', '123@gmail.com', '我家');
INSERT INTO `user` VALUES ('8', '123', '213', '男', '321', '213', '3');
INSERT INTO `user` VALUES ('11', '', '', null, null, null, null);
INSERT INTO `user` VALUES ('12', '111', '222', null, null, null, null);
INSERT INTO `user` VALUES ('13', '333', '333', null, null, null, null);
INSERT INTO `user` VALUES ('14', '666', '666', null, null, null, null);
INSERT INTO `user` VALUES ('15', '777', '777', null, null, null, null);
