/*
SQLyog Ultimate v10.00 Beta1
MySQL - 8.0.28 : Database - mymovies
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mymovies` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mymovies`;

/*Table structure for table `collect` */

DROP TABLE IF EXISTS `collect`;

CREATE TABLE `collect` (
  `uid` int NOT NULL,
  `mid` int NOT NULL,
  PRIMARY KEY (`uid`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `collect` */

insert  into `collect`(`uid`,`mid`) values (2,2),(2,3);

/*Table structure for table `movies` */

DROP TABLE IF EXISTS `movies`;

CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `actor` varchar(150) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `length` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;

/*Data for the table `movies` */

insert  into `movies`(`id`,`name`,`director`,`actor`,`year`,`country`,`language`,`length`,`image`,`url`,`type`,`description`) values (1,'毕业第一年','陈金辉','李禹锋/蔡杰/杨育建/张海怡/陈省通',2023,'中国','HD国语','95','img/1.png','https://www.freeok.vip/vodplay/60897-1-1.html','喜剧','影片讲述的是在毕业的第一年里，毕业生总是充满彷徨和迷茫，主角陈博文一年换了5份工作，却还是没有找到自己的方向。直到一次偶然的机会，他遇到了大学同学老相，让他重新接触上了表演。因为角色的需要，他重新去寻找毕业后的同学，在他们的身上，他看到了不同的毕业第一年...'),(2,'摇滚校园','理查德·林克莱特','杰克·布莱克/亚当·帕斯考/卢卡斯·帕佩利亚斯/克里斯·斯塔克',2003,'美国','HD中字','109','img/2.png','https://www.freeok.vip/vodplay/60918-1-1.html','喜剧','杜威•费恩（Jack Black 杰克•布莱克 饰）是一名已过而立之年，却仍在为理想打拼的摇滚音乐人。他不屑于那种粗制滥造、充满向商业谄媚味道的虚伪乐曲，一心追逐真情实感的纯粹摇滚乐。为此，他和无数支乐队分道扬镳，至今事业无成，还面临被房东赶出去的窘境...'),(3,'宿醉3','托德·菲利普斯','布莱德利·库珀/扎克·加利费安纳基斯',2013,'美国','HD中字','97','img/3.png','https://www.freeok.vip/vodplay/22285-1-1.html#slide{1}','喜剧','艾伦的父亲死了，艾伦沉浸在悲痛之中无法自拔。他的三个好损友看到艾伦这样一天一天地消沉下去，总是觉得这样不好。所以，他们凑钱，想让艾伦去一个疗养院住一段时间，好换换心情。艾伦欣欣然地同意了。但是，在去疗养院的路上，出了大事。这四个好基友被一群黑帮袭击了，而且道格被绑架了...'),(4,'小时代2：青木时代','郭敬明','杨幂/柯震东/郭采洁/凤小岳/郭碧婷/谢依霖',2013,'中国','HD中字','107','img/4.png','https://www.freeok.vip/vodplay/32451-5-1.html','喜剧','如果说《小时代1》是可口美味甜点的话，那么《小时代2》便是烈酒，强烈刺激还有灼伤人的可能性，姐妹的反目、爱人的背离，许多人性的黑暗面都展现了出来，故事性与人物...'),(5,'寻梦环游记','李·昂克里奇/阿德里安·莫利纳','盖尔·加西亚·贝纳尔/阿方索·阿雷奥/本杰明·布拉特',2017,'美国','HD中字','105','img/5.png','https://www.iqiyi.com/v_19rr8cycvc.html','喜剧','热爱音乐的米格尔（安东尼·冈萨雷斯 配音）不幸地出生在一个视音乐为洪水猛兽的大家庭之中，一家人只盼着米格尔快快长大，好继承家里传承了数代的制鞋产业。一年一度的亡灵节即将来临，每逢这一天，去世的亲人们的魂魄便可凭借着摆在祭坛上的照片返回现世和生者团圆。在一场意外中，米格...'),(6,'死亡诗社','彼得·威尔','罗伯特·肖恩·莱纳德/罗宾·威廉姆斯/伊桑·霍克',1989,'美国','HD中字','129','img/6.png','https://www.freeok.vip/vodplay/10693-6-1.html','喜剧','威尔顿预备学院以其沉稳凝重的教学风格和较高的升学率闻名，作为其毕业班的学生，理想就是升入名校。新学期文学老师约翰·基汀（罗宾·威廉姆斯 饰）的到来如同一阵春风...'),(7,'全家变身大作战','约瑟夫·麦克金提·尼彻','詹妮弗·加纳/艾德·赫尔姆斯/艾玛·迈尔斯',2023,'美国','HD中字','106','img/7.png','https://www.freeok.vip/vod-play/61041-1-1.html','喜剧','杰丝和比尔·沃克尽最大努力让家庭成员保持联系，因为他们的孩子渐渐长大，越来越独立，彼此之间也越来越疏远。偶然遇到一个占星术占卜者之后，全家人在生命中最重要...'),(8,'龙马精神','杨子','成龙/刘浩存/郭麒麟/吴京/余皑磊/容祖儿',2023,'中国','HD国语','126','img/8.png','https://www.freeok.vip/vod-play/54043-5-1.html','喜剧','生活落魄的武行老罗（成龙 饰）有一匹爱马“赤兔”，他一直想把它培养成片场的动作明星，不料却深陷官司，只能求助多年未见的女儿小宝（刘浩存 饰）和她的律师男友乃华（郭麒麟 饰）。小宝一边帮老罗打官司，一边劝说他不要带着赤兔玩命做危险动作，老罗不顾女儿反对继续偷偷训练赤兔...'),(9,'30天','南大中','姜河那/郑素敏',2023,'韩国','HD中字','120','img/9.png','https://www.freeok.pro/vplay/61060-1-1.html','喜剧','讲述曾经是爱情片现在是惊悚片的婚姻生活结束前30天之际，因为意外事故突然间失去记忆的丈夫和妻子之间的浪漫爱情。'),(10,'速度与激情10','路易斯·莱特里尔','范·迪塞尔/米歇尔·罗德里格兹/杰森·莫玛/布丽·拉尔森',2023,'美国','HD中字','133','img/10.png','https://www.freeok.pro/vplay/53469-7-1.html','动作','在完成了无数任务，克服了各种不可能的困难之后，唐老大（范·迪塞尔 Vin Diesel 饰）和他的家族以智慧、勇气和速度过五关斩六将，打败了一路上的所有敌人。如今，他们面对的是一名危险至极的对手：这个从过往阴影中浮出水面的具有致命威胁的人物，誓要报偿血海深仇，决心破坏这个家...'),(11,'阿凡达：水之道','詹姆斯·卡梅隆','萨姆·沃辛顿/佐伊·索尔达娜/西格妮·韦弗/史蒂芬·朗',2022,'美国','HD中字','185','img/11.png','https://www.freeok.pro/vplay/14858-2-1.html','动作','《阿凡达2》的剧情承接自第一部的十余年后。曾经的地球残疾军人杰克·萨利，如今已经是潘多拉星球纳美族一方部族的族长，并且与爱妻娜塔莉共同育有一对可爱的儿女，日子过得平淡而充实。然而某天，有个部族的兄弟在海岸附近巡逻时遭到利器割喉身亡。通过现场勘查，以及作为前海军陆战...'),(12,'八角笼中','王宝强','王宝强/陈永胜/史彭元/王迅/张祎曈/胡浩帆/马虎/周德柏文',2023,'中国','HD国语','117','img/12.png','https://www.freeok.pro/vplay/55609-6-1.html','动作','电影讲述了向腾辉（王宝强 饰）倾注心血想把当地无人照料的孩子培养成才，这让生活本没有出路的孩子们看到了一丝通向未来的曙光。然而，随着往日的表演视频被爆出，这些“残忍、血腥”的画面刺激了不明真相的人们的神经。一夜之间，舆论开始发酵。向腾辉的生活、孩子们的前途都陷入到人...'),(13,'蜘蛛侠：平行宇宙','鲍勃·佩尔西凯蒂/彼得·拉姆齐/罗德尼·罗斯曼','沙梅克·摩尔/杰克·约翰逊/海莉·斯坦菲尔德/马赫沙拉·阿里',2018,'美国','HD中字','106','img/13.png','https://www.freeok.pro/vplay/17188-5-1.html','动作','正就读中学的少年迈尔斯（沙梅克·摩尔 Shameik Moore 配音）意外被一只遭受放射性污染的蜘蛛咬伤，随后身体发生奇特的变化。偶然机缘，他目睹了蜘蛛侠（克里斯·派恩 Chris Pine 配音）和犯罪头目金并（列维·施瑞博尔 Liev Schreiber 配音）的战斗。为了阻止金并利用时空对撞机扰乱宇...'),(14,'奇门遁甲2','项秋良/项河生','张晓晨/刘雅瑟/刘晓庆/蒋列',2023,'中国','HD国语','91','img/14.png','https://www.freeok.pro/vplay/52634-6-1.html','动作','这看似太平盛世的烟火人间，其实并非只有人类存在。一直以来，世间的小妖小仙都化作人形生活在我们身边，之中有与人为善者，自然也有作恶多端者，而维持这一切秩...'),(15,'釜山行','延尚昊','孔刘/郑有美/马东锡/金秀安/金义城',2016,'韩国','HD中字','117','img/15.png','https://www.freeok.pro/vplay/6857-6-1.html','动作','证券公司基金管理人石宇（孔侑饰）光鲜精干，却也是个重利轻义之徒。妻子为此与之决裂，女儿秀安（金秀安饰）则对如此自私的父亲越来越失望，决定前往釜山和母亲生活...'),(16,'圣斗士星矢真人版','托默克·巴金斯基','新田真剑佑/麦迪森·伊瑟曼/肖恩·宾/法米克·詹森/迭戈·蒂诺科',2023,'日本','HD中字','112','img/16.png','https://www.freeok.pro/vplay/53065-4-1.html','动作','一个自傲的街头孤儿Seiya（新田真剑佑 饰）无意中发现了自己隐藏的力量，并可能是唯一一个能够保护被神秘组织头目Guraad（法米克·詹森 饰）追杀的转世女神Sienna...'),(17,'冰之启示录','MaximilianElfeldt','汤姆·塞兹摩尔/TorreyRichardson/JakeHolley/XanderBailey',2020,'美国','HD中字','89','img/17.png','https://www.freeok.pro/vplay/12554-5-1.html','动作','已经处于病毒大流行期间，一个巨大的极地漩涡威胁着，几乎覆盖整个地球的冰层。当人们发现唯一能在寒冷中生存的地方，是赤道附近100英里的温带地区时，一个病毒学家，拥有这场流行病唯一的治愈方法，必须在24小时内到达安全地带，人类才有生存的希望...'),(18,'死侍','蒂姆·米勒','瑞安·雷诺兹/莫瑞娜·巴卡琳/艾德·斯克林',2016,'美国','4K中字','108','img/18.png','https://www.freeok.pro/vplay/6891-6-1.html','科幻','该片是《X战警》系列电影的外传。讲述了前任特种兵韦德·威尔逊得了不治之症，而自愿加入“X武器计划”获得了快速自愈能力。在饱受虐待折磨后他成功逃脱并对Ajax进行追杀...'),(19,'蝙蝠侠与罗宾','乔·舒马赫','阿诺·施瓦辛格/乔治·克鲁尼/克里斯·奥唐纳/乌玛·瑟曼',1997,'美国','HD中字','125','img/19.png','https://www.freeok.pro/vplay/10308-6-1.html','科幻','蝙蝠侠（乔治·克鲁尼 饰）和罗宾（克里斯·奥唐纳 饰）这次遇到有生以来最大的挑战：“急冻人”（阿诺·施瓦辛格 饰）！“急冻人”原是一个科学奇才，但一次意外却令他只能靠急救机器为生。更为糟糕的是，除非他将整个高谭市的温度保持在零度以下，否则他心爱的妻子将永远不能醒来。“急冻人”开始一...'),(20,'激战星河','克里斯·罗伯茨','小弗雷迪·普林兹/萨弗蓉·布罗斯/马修·里沃德/切基·卡尤',1999,'美国','HD中字','100','img/20.png','https://www.freeok.pro/vplay/58158-1-1.html','科幻','27世纪中叶，地球人与克尔瑞奇族爆发旷日持久的战争。小行星帕格萨斯某日遭到克尔瑞奇的奇袭，驻守官兵抵挡不住败下阵来，智能导航仪也被敌人夺走，这也意味着克尔瑞奇族将长驱直入，进攻地球。为了确保联邦舰队及时回防，杰弗瑞·吐温司令（戴维·沃纳 David Warner 饰）命令詹姆斯·盖斯特（Tchéky Karyo 饰）和达德·马修（马修·里沃德 Matthew Lillard 饰）、克里斯托弗·布雷尔（小弗雷迪·普林兹 Freddie Prinze Jr. 饰）驾驶的小型...'),(21,'新·奥特曼','樋口真嗣','斋藤工/长泽雅美/西岛秀俊/有冈大贵/早见明里/田中哲司',2022,'日本','HD中字','112','img/21.png','https://www.freeok.pro/vplay/13610-1-1.html','科幻','《新·奥特曼》是圆谷株式会社、东宝株式会社、Khara联合制作，东宝株式会社发行的电影。该片由庵野秀明制片、编剧，樋口真嗣担任总导演和特技导演，斋藤工、长泽雅...'),(22,'异形','雷德利·斯科特','西格妮·韦弗/哈利·戴恩·斯坦通/约翰·赫特',1979,'英国','HD中字','116','img/22.png','https://www.freeok.pro/vplay/10879-3-1.html','科幻','未来的世界，人类已能轻松穿梭于星际之间，在太空中展开商业活动。“诺史莫”是在太空活动的众多星际商业运输船之一。一次，它完成任务满载太空矿石返航地球时，突然收到了一组奇怪的信号，由于这可能是求救信号，飞船接到指令前往信号源地进行搜救。经过一段飞行后，飞船终于抵达信号源发...'),(23,'异星战场','安德鲁·斯坦顿','泰勒·克奇/琳恩·柯林斯/萨曼莎·莫顿/威廉·达福',2012,'美国','HD中字','132','img/23.png','https://www.freeok.pro/vplay/8381-2-1.html','科幻','曾荣获奥斯卡金像奖的著名导演安德鲁·斯坦顿带来全新力作《异星战场》，一部以神秘壮丽的火星为背景的史诗动作冒险巨制。影片根据埃德加·赖斯·巴勒斯于20世纪初创作的经典科幻小说《火星公主》改编，故事讲述美国内战时期，饱受创伤的前军官约翰·卡特（泰勒·克奇 饰）无意间穿越到了火星。由...'),(24,'撒玛利亚','朱利叶斯·艾弗里','西尔维斯特·史泰龙/娜塔莎·卡拉姆/马丁·斯塔尔/MoisesArias',2022,'美国','HD中字','102','img/24.png','https://www.freeok.pro/vplay/12565-2-1.html','科幻','西尔维斯特·史泰龙旗下制片公司巴尔博亚制片公司（Balboa Productions）将打造多部影片，其中史泰龙或将参演两部影片[撒玛利亚]（Samaritan，暂译）及[亨特]（Hunter，暂译）。[撒玛利亚]由布拉吉·F·舒特编剧，该片定义为黑暗且具有新鲜感的超级英雄题材影片，该片预计明年开拍。'),(25,'求职者','黃承宰','郑京虎/姜有锡',2020,'韩国','HD中字','83','img/25.png','https://www.freeok.pro/vplay/42555-1-1.html','科幻','《求职者》是一部科幻电影，讲述2220年未来的大韩民国，偶然相遇的真正的人类（郑京虎饰）和人工人（姜友锡饰）为了找工作而共同展开的人类探索的故事。'),(26,'筐出未来','黄伟明','祖晴/张琳/梁颖/邓玉婷/刘红韵/高全胜/赵娜',2022,'中国',NULL,'95','img/26.png','https://www.freeok.pro/vplay/176-8-1.html','动画','喜羊羊、灰太狼与一众小羊组成的守护者队进入篮球顶级赛事决赛，但却意外地败北，团队分崩离析。虽然各散东西，但对篮球的热爱和对冠军的渴望让大家再次组队，参加新一届大赛，然而这次的对手更强大，他们面临更大的挑战！'),(27,'全职高手之巅峰荣耀','史涓生/邓志巍','张杰/夏磊/刘思岑/郭浩然/边江',2019,'中国','HD国语','99','img/27.png','https://www.freeok.pro/vplay/4829-4-1.html','动画','电影《全职高手之巅峰荣耀》的剧情将以小说番外篇《巅峰荣耀》为基础进行改编。主要讲述叶秋从遇到并且爱上荣耀网游，立志进入电竞职业圈，克服重重困难，最终实现梦想，带领草根战队嘉世击败豪门战队皇风，走上荣耀巅峰的故事。'),(28,'中国惊奇先生','权迎升','内详',2023,'中国','HD国语','69','img/28.png','https://www.freeok.pro/vplay/61035-3-1.html','动画','《中国惊奇先生》讲述了“神鬼七杀令”当代传人王小二、新人警花李雪、狐妖族小狐狸组成的“驱魔铁三角”组合，为了伸张正义，维护人民群众的安全，侦破各种灵异案件的故事。《中国惊奇先生极道仙师》为本系列第一部网络大电影，故事讲述了王小二和李雪在探长浩林的邀请下，为了解决东都人民...'),(29,'你想活出怎样的人生','宫崎骏','山时聪真/菅田将晖/柴崎幸/爱缪/木村佳乃',2023,'日本','HD中字','119','img/29.png','https://www.freeok.pro/vplay/60671-1-1.html','动画','影片片名致敬了小说家吉野源三郎在1937年发表的同名著书，但电影故事完全由宫崎骏原创。讲述二战后丧母的少年牧真人与一只会说话的蓝鹭相遇，展开不可思议的冒险旅程。'),(30,'黑铁的鱼影','立川让','高山南/林原惠美/山崎和佳奈/小山力也',2023,'日本','HD中字','109','img/30.png','https://www.freeok.pro/vplay/54921-4-1.html','动画','故事发生在东京八丈岛近海，这里建成了一座连接了全球各地警方监控摄像的海洋设施“太平洋浮标”。在这座设施正式启动之前，为了与欧洲刑警组织管辖的范围联网，世界各国的IT工程师来到现场。而与此同时，一项应用了人脸识别系统的“新技术”的测试也在进行中...'),(31,'新神榜：杨戬','赵霁','王凯/李兰陵/季冠霖/李立宏/赵毅',2022,'中国','HD国语','127','img/31.png','https://www.freeok.pro/vplay/13954-9-1.html','动画','封神大战一千五百年后，天庭衰落，蒙冤落魄的杨戬以赏银捕手为业谋生。一日，杨戬接受了一位神秘访客的赏银去追捕一位少年，意外发现少年竟是自己的亲外甥沉香。沉香立...'),(32,'忍者神龟','凯文·门罗','未知',2007,'美国','HD中字','87','img/32.png','https://www.freeok.pro/vplay/9343-5-1.html','动画','在纽约市一条大街的地下管道里住着四只功夫高强的忍者神龟和他们的老师斯普林特——一只来自日本的超级大老鼠。神龟们各个骁勇善战，身怀绝技，为了维护正义，保卫城市...'),(33,'大鱼海棠','梁旋','季冠霖/苏尚卿/许魏洲/金士杰/杨婷',2016,'中国','HD国语','101','img/33.png','https://www.freeok.pro/vplay/14249-8-1.html','动画','所有活着的人类，都是海里一条巨大的鱼；出生的时候他们从海的此岸出发。他们的生命就像横越大海，有时相遇，有时分开……死的时候，他们便到了岸，各去各的世界。四十...'),(34,'邻里的人们','林镇秀','马东锡/金赛纶/李相烨/陈善圭/张光',2018,'韩国','HD国语','100','img/34.png','https://www.freeok.pro/vplay/5608-5-1.html','悬疑','基哲（马东石饰演）被调派到乡下高中担任体育老师并兼任训导主任，不过，基哲一到学校便立刻觉得事有蹊跷，不仅学校职员散发出一股诡谲的气氛，镇上居民也好像隐藏着什...'),(35,'花月杀手','马丁·斯科塞斯','莱昂纳多·迪卡普里奥/罗伯特·德尼罗/杰西·普莱蒙/莉莉·格莱斯顿',2023,'美国','HD中字','208','img/35.png','https://www.freeok.pro/vplay/59483-3-1.html','悬疑','影片改编自大卫·格兰所著畅销书《Killers of the Flower Moon：The Osage Murders and the Birth of the FBI》，聚焦1920年代的美国俄克拉何马州，“欧塞奇族印第安人谋杀案”（Osage Indian Mur ders）。当年欧塞奇族人因原居地发现油矿而获得持续巨额收入，有人为阻止上述安排而策划连...'),(36,'狄仁杰之借尸还魂','黄信纲','于波/胡雪儿',2022,'中国','HD国语','73','img/36.png','https://www.freeok.pro/vplay/11525-7-1.html','悬疑','《狄仁杰之借尸还魂》是一部由浙江蜗牛影视文化传媒有限公司、安徽星盛影途影视传媒有限公司、浙江卓秀影视有限公司、一川集团、杭州潞蔓文化传媒有限公司、长城影视股份有限公司、山西坦途影视文化传媒有限公司、深圳样样红传媒有限公司、象山天玺璧合影视文化有限公司等联合出品，浙江卓秀影视有限公司与浙江蜗牛影视有限公司的古装悬疑探案电影'),(37,'绝望海峡','威廉·考夫曼','克莱恩·克劳福德/马克斯·马蒂尼/保罗·瑞/加里凯恩斯',2023,'美国','HD中字','100','img/37.png','https://www.freeok.pro/vplay/56182-5-1.html','悬疑','一群匪徒在谋银行盗窃时出现出错后，一名绝望的罪犯、他失控的兄弟和他们的前海军陆战队成员必须逃离新奥尔良和追捕他们的坚定的FBI特工。'),(38,'拦截密码战','迈克尔·艾普特','多格雷·斯科特/凯特·温丝莱特/萨弗蓉·布罗斯/杰瑞米·诺森',NULL,NULL,NULL,'116','img/38.png','https://www.freeok.pro/vplay/58833-3-1.html','悬疑','故事发生在二战期间的英国。汤姆·杰里科是一名出色的密码破译专家，他在布兰彻利公园密码破译中心工作，帮助盟军破解代号为“谜”的密码。在这里，他与一位女雇员...'),(39,'老九门之青山海棠','王凯','董浩然/朱赞锦',2022,'中国','HD国语','74','img/39.png','https://www.freeok.pro/vplay/334-5-1.html','悬疑','老九门系列最强前传，讲述民国时期，身负国恨家仇的少年张启山初至长沙，与身怀绝技的少班主二月红初次相遇，二人携手惩奸除恶，直捣是非之地，经过密室决战，共同对抗盘踞长沙、无恶不作的军阀左谦之，揭开“怪物”真相，守护一方城土的故事...'),(40,'诱拐2003','井坂聪','藤木直人/仲间由纪惠/石桥凌/Izam/宇崎龙童',2003,'日本','HD中字','113','img/40.png','https://www.freeok.pro/vplay/60540-1-1.html','悬疑','广告公司的职员佐久间俊介（藤木直人 饰）虽然衣着光鲜、生活奢华，但在公司中却要承受来自严厉的老板葛城胜俊（石桥凌 饰）的无情苛责和巨大压力。某晚他在葛城的宅邸外徘徊，无意中看见一名年轻女孩（仲间由纪惠 饰）翻墙而出。从女孩口中得知，这是葛城的私生女树理，因无法忍受养...'),(41,'重现','Alejandro Montiel',NULL,NULL,NULL,NULL,'116','img/41.png','https://www.freeok.pro/vplay/11982-2-1.html','悬疑','搬到一个偏远的小镇多年后，前警察皮帕在家中发现一具尸体，也因此重返她以为已经远离的黑暗世界...');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `sex` varchar(2) DEFAULT '男',
  `pwd` varchar(20) DEFAULT NULL,
  `uid` varchar(20) DEFAULT NULL,
  `type` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`sex`,`pwd`,`uid`,`type`) values (1,'leite','女','123456','leiteorz',0),(2,'袁丹阳','女','123','ydy',0),(3,'周美彤','女','123','zmt',0),(4,'admin','男','123','admin',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
