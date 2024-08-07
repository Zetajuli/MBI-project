@bg storage="registering3"
@eval exp="f.姓='研习官'"
@locate y="280" x="710"
@history output="false"
@nowait
@edit name="f.姓" opacity="0" color="0xFFFFFF"
@locate y="482" x="555"
@button target="*输入完毕" normal="nextstep2"
@locate y="85" x="1120"
@button normal="exit5" jump="true" target="*title" storage="title.ks"
@endnowait
@history output="true"
@s
*输入完毕
@commit
@er
*start|EP01 大地之海
@history output="true"
@bg storage="black"
@dia
@oldmovieinit
@eval exp="f.bing=1"
……[w]
又是一个破碎的梦。[w]
你只记得醒来前是一场惊愕。[w]
你努力从失序的迷茫中锚定自己，找寻方向。[w]
浪潮汹涌，无处躲藏。[w]
你一度犹豫徘徊，你曾经茫然失措。[w]
可你不能视而不见。[w]
于是你伸手抓住悬崖的边缘。[w]
你决定再试一次——[w]
……[w]
@oldmovieuninit
@menu
@bg clfg="1" storage="ocean of earth"
@waitclick
@bg clfg="1" storage="SP time"
@style align="center"
755年1月4日  7：30[w]
@bgm storage="Ghost 2.wav" loop="1"
@bg storage="in the house"
@dia
红发的少女趴在床沿小憩，你抬起还有点僵硬的手臂拍了拍她的肩膀。[w]
@fg layer="1" pos="left" storage="Granata"
@格拉娜塔
您醒了，研习官！[w]
@fg layer="1" pos="left" storage="Granata2"
@格拉娜塔
很抱歉……我们没能想到事故如此突然。[w]
@fg layer="2" pos="right" storage="fuher"
@主角
这不怪你们。[w]
@主角
我睡过去多久了？[w]
@格拉娜塔
大约十小时。[w]
@格拉娜塔
直升机是在侯城郊外坠毁的，我们遭到了意外的袭击。为了隐藏踪迹，弥撒小队在将您转移到这个废弃猎屋后，就已经先行撤离前往滨港了。我负责留下来护送您。[w]
@主角
我们的标识码应该一直都储存在将军石，这次调查也已经向孤竹馆递交过申请，照理说，“远方花园”并没有攻击我们的理由。[w]
@格拉娜塔
那次申请并没有得到回应嘛。说到底，我们就是为了调查这几个月以来孤竹馆地区涨落能控制装置断线原因才来的。[w]
@主角
在进入孤竹馆上空时，我们似乎并没有受到阻碍。[w]
@格拉娜塔
是的，这意味着……“远方花园”防御系统并没有开启。袭击我们的另有其人。[w]
@主角
看来我们不能正大光明地从关口进去了啊。[w]
@主角
伊比里斯小队和弥撒小队情况怎么样？[w]
@格拉娜塔
这里的涨落能信号干扰很严重，我们无法联系上他们。[w]
@格拉娜塔
弥撒小队最后的一次讯息说，他们刚刚抵达滨港钢铁厂区。[w]
@主角
只能用跃迁装置了。希望我们没有落后太多。[w]
@主角
我们出发吧。[w]
@格拉娜塔
您的身体还需要时间恢复……[w]
@主角
没关系，你的急救手法很熟练，我的伤势已经不影响行动了。[w]
@主角
等回新都了，我一定会好好给自己放个假的。[w]
@格拉娜塔
那，请您做好准备。这个过程可能会带来晕眩等短暂症状。[w]
@主角
开始吧。[w]
@map storage="bingang.map"
*iron factory
@clmap
@bg clfg="1" storage="preparing house"
@dia
@if exp="f.bing==1"
@fg layer="2" pos="right" storage="fuher"
@主角
呼，安全到达。不过我们好像在……屋顶？格拉娜塔，下次可以调整一下精度吗？[w]
@fg layer="1" pos="left" storage="Granata"
@格拉娜塔
这次至少是在陆地上啦！我记得上一次Maszynowy前辈在用这个装置的时候，一不小心就传送到突袭地点旁边的湖里了。[w]
房子并不高，你从屋顶跳了下来，这里似乎是工人们的准备间。[w]
你和格拉娜塔混进人群，领了一顶头盔，穿好工作服后，踏入了厂区。[w]
@eval exp="f.bing=2"
@else
正在紧锣密鼓进行生产的钢铁厂区。[w]
@map storage="bingang.map"
@endif
*厂区
@clfg layer="all"
@bg clfg="1" storage="preparing house"
@bgm storage="Ghost 2.wav"
要去哪里调查？[w]
@selstart hidemes="1" hidesysbutton="1"
@locate y="190" x="425"
@selbutton target="*炼钢车间" text="前往炼钢车间"
@locate y="260" x="425"
@selbutton target="*职工食堂" text="职工食堂"
@locate y="330" x="425"
@selbutton target="*休息室" text="前往休息室"
@locate y="400" x="425"
@selbutton target="*厂区探索完毕" text="全部探索完毕"
@selend
;----------
*炼钢车间
@clsel
@bgm storage="Moonlight 2.wav" loop="1"
@bg clfg="1" storage="workshop"
明亮的橙红色在管道内流淌、飞溅。[w]
依靠涨落能驱动，铁矿石得以迅速升温成为铁水，进入车间进行精炼。[w]
依靠这项技术，孤竹馆钢铁联合体成为联邦最重要的重工业基地。[w]
曾在奥索达斯留学，主导了该技术研发改进的伊里家贝勒，伊里·卡卓，也因此在孤竹馆地区获得了民众和八王会议的支持，在三个月前被选举为哈拉总领。[w]
但与此同时，他刻意与联邦政府疏远，并谋求与奥索达斯的“地区性合作”。[w]
黛馆工作人员曾多次向研习所抱怨，孤竹馆已经很久没有对新都提交财政收入报告了。[w]
也正是三个月前，孤竹馆地区的涨落能控制装置从RNWS系统脱出，其边界的检测点均检测到了涨落能极端异常情况。[w]
在多轮未被回应的申请和等待后，参谋本部才决定派出外勤部强行介入调查。[w]
让你意外的是，这里异常地秩序井然，没有大量涨落能溢出造成的灾害，没有失去目标和规划，一切都在按部就班地进行。[w]
在巨大的噪声中，工人们沉默地操作着机械臂或其他设备，将滚烫的铁水罐运往下一个区域。[w]
@fg layer="1" pos="left" storage="Missa"
@弥撒
在看什么呢，研习官？[w]
@fg layer="2" pos="right" storage="fuher"
@主角
弥撒！在这里能遇见你可真幸运。[w]
@弥撒
我们还没有与伊比里斯小队取得联系，他们已经先行前往得利寺山城探路了。[w]
@主角
我正好在思考，如果要弄清这一系列事件的原因，我们有两条路可走。[w]
@主角
向三个月以来拒绝回应的雅絮领讨要说法，或是我们自己找到涨落能控制装置，把它给修好。[w]
@弥撒
但倘若装置是孤竹馆官方蓄意破坏的……[w]
@主角
让我们先试试查明故障原因吧。反正无论如何，我们总是得见桓予七和伊里卡卓一面的。[w]
@主角
既然这里的涨落能驱动依然正常，那么沿着它的调度方向，应该可以追踪到厂区的控制终端。[w]
@弥撒
看来你已经有思路了。我会继续留意这片区域的动向，有什么需要帮忙的就来找我！[w]
@jump target="*厂区"
;----------
*职工食堂
@clsel
@bgm storage="The Ruins of Athens.wav" loop="1"
@bg clfg="1" storage="dining room"
还没到午餐时间，淡黄色的长方形房间里，只有两个厨房工作人员在桌旁聊天。[w]
凑在桌边另一角的，还有弥撒小队的厄蒂普斯。[w]
@npc color="0xFFFFFF" id="采购大妈"
姑娘你不知道！俺们最近食物供应老难了！[w]
@fg layer="1" pos="center" storage="Od1"
@厄蒂普斯
我能理解！大妈你接着说！[w]
@npc color="0xFFFFFF" id="采购大妈"
就滨港周围内几个村的，不知道怎么传的，说伊里卡卓把陛下绑架了，又和奥索达斯串通，要当卖国贼，最近说什么都不卖咱东西了。[w]
@npc color="0xFFFFFF" id="采购大妈"
我寻思这哪能呢。这小伙子我以前见过的，他那会读书的时候在学校吃不饱饭，捡着我们快关门的时候来，我们也不忍心，就给他分一点剩饭。[w]
@npc color="0xFFFFFF" id="采购大妈"
人家现在发达了，还给咱们厂拨了不少款呢。我看就是那群老蒙咔吃眼见不得人家好，自己又没分着点东西，就来膈应咱们！[w]
@厄蒂普斯
太坏了，该打！[w]
@npc color="0xFFFFFF" id="厨师大叔"
要我说，还是以前的日子好。 [w]
@npc color="0xFFFFFF" id="厨师大叔"
陛下虽然没在主事，但八王会议也都按着路子走，我们也都安安分分地干活，这生活慢是慢了点，不至于天天有奥索达斯盯着吧？[w]
@npc color="0xFFFFFF" id="厨师大叔"
现在“远方花园”一关，什么皮儿片儿都来了，供暖也没了。上个月又裁了一批人，你让大伙咋整？[w]
@厄蒂普斯
咱们这个“远方花园”是什么时候关的呀？[w]
@npc color="0xFFFFFF" id="采购大妈"
就仨月前呗，说是什么电力分配调整，也不知道整哪儿去了。[w]
@npc color="0xFFFFFF" id="厨师大叔"
现在的小伙子，就是不顶楞，上台了这点事都办不好。[w]
@npc color="0xFFFFFF" id="厨师大叔"
我们那会儿，干活可麻溜了……[w]
……[w]
短时间内他们的对话应该是停不下来了。[w]
你向厄蒂普斯比了一个手势，示意她交流完了以后过来集合，便转身离开。[w]
@jump target="*厂区"
;----------
*休息室
@clsel
@bg clfg="1" storage="rest room"
@fg layer="2" pos="right" storage="fuher"
休息室里有几个工人在打牌。[w]
硬币和扑克牌下垫着几张报纸，是伊里卡卓几周前发表的声明。[w]
“八王会议决定本月内对各大厂区人员结构进行调整……”[w]
注意到你在看这张报纸，一个工人把刚拿起的瓷杯用力放回桌子上。[w]
@npc color="0xFFFFFF" id="工人A"
你也被“调整”了？想打牌的话，我们这儿满人了，你去别的地儿瞅瞅吧。[w]
@npc color="0xFFFFFF" id="工人B"
调整，调整个（）！大伙在这儿住这么久了，怎么可能说走就走？[w]
@npc color="0xFFFFFF" id="工人C"
他伊里卡卓白眼狼，也不记得自己是被谁选上去的了。[w]
@npc color="0xFFFFFF" id="工人D"
也不赖，反正他们搞内什么技术革新，用不上咱们这么多人了。[w]
@npc color="0xFFFFFF" id="工人D"
他们要真来赶人了，就收拾收拾回南山去住呗。[w]
一面盾在门口闪过。[w]
你顾不上听工人们聊天，连忙离开了休息室。[w]
@bg storage="out of rest room"
@主角
教父！[w]
@fg layer="1" pos="left" storage="Godfather1"
@教父
研习官，我刚刚从轧钢车间回来。[w]
@主角
有什么发现？[w]
@教父
他们在紧锣密鼓地生产非联邦军队用枪。这个样式，看着很像奥索达斯的。[w]
@主角
唉。我可没打算介入一场叛变。[w]
@教父
接下来有什么计划？[w]
@主角
我们先回准备间集合吧。[w]
@jump target="*厂区"
;----------
*厂区探索完毕
@clsel
@bg clfg="1" storage="preparing house"
你和格拉娜塔回到了准备间，弥撒小队的成员也相继抵达。[w]
简单地进行情报交换后，你开始快速思考。[w]
自第五届联邦皇帝桓予七与奥索达斯签下《布京条约》，两国的“合作时期”结束，孤竹馆地区已经很久没有受到外来入侵的威胁了。[w]
雅絮皇帝为自己的故乡带来的除了和平，还有防御兼供暖供能设施“远方花园”。[w]
庇护带来了稳步的工业化发展，但传统的哈拉制度又成为进一步流通的桎梏。[w]
在经历了涨落能工业的兴盛和急转直下后，更多民众希望的是摆脱现今情景中的各种束缚。[w]
而投机取巧的封建势力们当然也不会放弃复活的机会。[w]
于是，雅絮领的地区议会——八王会议选出了这样一位哈拉总领，伊里卡卓。他不仅关闭“远方花园”，裁撤工厂职工，还生产奥式武器，疏远联邦政府。[w]
似乎一切证据都指向一场叛乱。[w]
但现在下结论还有点太早了。[w]
@fg layer="2" pos="right" storage="fuher"
@主角
格拉娜塔，可以帮我调出厂区的涨落能分布图吗？我想看看哪里会是厂区终端的放置地点。[w]
@fg layer="1" pos="left" storage="Granata"
@格拉娜塔
没问题！我看看……[w]
@格拉娜塔
煤塔和炼铁车间的熵值都不高，而总控楼一楼的成品库管理室的熵值超出正常值了。[w]
@弥撒
把控制终端放在这种地方，确实方便及时对生产进行反馈调控。[w]
@主角
那我们出发吧。[w]
@clfg layer="all"
@bgm storage="Moonlight 2.wav" loop="1"
你们穿过砖墙和钢铁的骨架，向总控楼进发。[w]
打开有些冷清的大门，你们径直靠近成品库管理室。[w]
@bg clfg="1" storage="control building"
随着铁门吱呀一声开启，里面的人猛然回过头来。[w]
@npc color="0xFFFFFF" id="管理员"
嘛玩意？你们哪儿来的？[w]
@主角
我们想检查一下厂区的涨落能控制终端。[w]
管理员慵懒的脸上突然挂上了严肃。[w]
@npc color="0xFFFFFF" id="管理员"
谁让你们来的？[w]
@fg layer="2" pos="right" storage="fuher"
你向他出示了墨缇斯的相关证件，他盯着看了一眼，便不耐烦地撇开了。[w]
@npc color="0xFFFFFF" id="管理员"
什么乱七八糟的，新都人大老远来我们这嘎达看一个控制终端？[w]
@npc color="0xFFFFFF" id="管理员"
别瞎打听有的没的。再影响我工作，我可要叫警卫了！[w]
@主角
管理员同志……[w]
@主角
你很清楚这里在生产些什么，不是吗？[w]
@主角
陛下多年以来为孤竹馆奠定的和平，难道你们就愿意这样轻易放弃？[w]
@主角
伊里卡卓的计划，不应该拉整个孤竹馆来陪葬。[w]
你看到他脸上犹豫又无奈的神情。[w]
@npc color="0xFFFFFF" id="管理员"
唉，那我们又能咋地呢。[w]
@npc color="0xFFFFFF" id="管理员"
控制终端就在这儿。没了龙华宫的调控，又每天都在超负荷运转，也不知道能撑几天。[w]
@npc color="0xFFFFFF" id="管理员"
上头要我们抓紧生产，今年三月前必需全部准备完毕。[w]
@npc color="0xFFFFFF" id="管理员"
但这个数额，哪里可能做得完！[w]
@主角
你知道龙华宫的控制装置为什么断线吗？[w]
@npc color="0xFFFFFF" id="管理员"
不清楚。上头不让我们多问。[w]
@npc color="0xFFFFFF" id="管理员"
但有件事儿我一直想不明白，自从去年11月3日装置调控能力断崖式下降后，并没有完全消失，仍然在以极小的幅度进行断断续续的调幅，普通人根本没法注意到。[w]
@npc color="0xFFFFFF" id="管理员"
我就知道这么多了。[w]
你们转身离开了总控楼。[w]
@bg clfg="1" storage="preparing house"
@fg layer="1" pos="left" storage="Granata2"
@格拉娜塔
研习官，我们接下来怎么办？[w]
@fg layer="2" pos="right" storage="fuher"
@主角
我们已经基本掌握了滨港厂区的情况。[w]
@主角
现今的诸多疑点，我们都不得不在得利寺山城寻找答案。[w]
@主角
但要进龙华宫，我们还需要一位本地墨缇斯执行员的帮助。[w]
@主角
让我们先去一趟番直宿卫吧。[w]
@map storage="bingang.map"
*番直宿卫
@clmap
@if exp="f.bing==2"
@menu
@bg clfg="1" storage="SP time"
@style align="center"
755年1月4日  13：30[w]
@bg clfg="1" storage="bingang street"
@dia
墨缇斯研习所在孤竹馆地区并没有设立办事处，所有的相关事务均由在番直宿卫任职的本地执行员“砂粒”负责，但由于涨落能总控制装置的断联，你们已经许久没有进行联系了。[w]
作为雅絮领的军事科研部门，番直宿卫极其低调，你们在附近街道打听了许久，都没有发现它的大门。[w]
@npc color="0xFFFFFF" id="卖冰棍的大爷"
番直宿卫？不知道。[w]
@fg layer="2" pos="right" storage="fuher"
@主角
那您认识照片上的这个人吗？[w]
@npc color="0xFFFFFF" id="卖冰棍的大爷"
噢，你找塔尔玛？[w]
@npc color="0xFFFFFF" id="卖冰棍的大爷"
她在拐角那院子上班，每天都会路过我这儿。[w]
@npc color="0xFFFFFF" id="卖冰棍的大爷"
你要来根冰棍不？[w]
@bg clfg="1" storage="military region"
终于，你们在一个没有门牌的院子附近停下脚步。[w]
门口的拒马和岗哨告诉你，这里就是你的目的地。[w]
你来到值班室，向警务员说明了自己的来意。[w]
警务员有些迟疑，但还是拨了一串号码。[w]
@npc color="0xFFFFFF" id="警务员"
没人接。你们在这儿等着吧。[w]
@fg layer="1" pos="center" storage="sand"
@npc color="0xFFFFFF" id="？？"
刚吃完午饭。你们跟我来吧。[w]
言毕，棕发的女性穿过警卫室的走廊，向研究楼走去。[w]
@bg clfg="1" storage="military room"
@fg layer="1" pos="left" storage="sand"
@砂粒
随便坐吧，这里有点简陋，请不要介意。[w]
@fg layer="2" pos="right" storage="fuher"
@主角
好久不见了，砂粒，看起来你气色还不错。[w]
@砂粒
我？研习官，你就别调侃我了。[w]
@砂粒
我们直入主题吧。[w]
@砂粒
在断联后的每一天，我都在记录总控的状态，并试图向本部发送报告。[w]
@主角
滨港厂区的管理员说，总控还在进行间歇性的调控。[w]
@砂粒
是的……这让我不得不怀疑，陛下和总控被囚禁在一个屏蔽空间里了。[w]
@主角
囚禁……？[w]
@砂粒
这件事还没有向外界公布。[w]
@砂粒
去年的11月3日，也就是哈拉总领受封仪式当天，伊里家的亲兵袭击了龙华宫。[w]
@砂粒
其余七支哈拉的贝勒相互观望，就这么默许了事件的发生。[w]
@厄蒂普斯
袭击龙华宫，和在所有孤竹馆人面前把自己埋了有什么区别吗？[w]
@砂粒
索绰络颁阁下尽力封锁了消息，并阻止任何人再进入得利寺山城。[w]
@主角
有关这次袭击，你还知道些什么吗？[w]
@砂粒
伊里卡卓……我也不明白他这么做有什么意义。[w]
@砂粒
但那一天的确是很好的机会，如果换在平时，伊里家亲兵根本不可能进入得利寺山城。[w]
@砂粒
当时他是以“保护各支哈拉贝勒的参会安全”的名义，才让自己的队伍进入滨港的。[w]
@砂粒
事发后，钮祜禄家、那拉各部在八王会议中力挺伊里卡卓，摇摆不定的尚家、石家和阿姆鲁家都在明面上向伊里卡卓投了支持票。[w]
@砂粒
马家和索绰络家拒绝出席，伊里卡卓甚至没有受到道义上的谴责。[w]
@砂粒
但索绰络家亲兵的封锁让伊里卡卓在滨港的活动大大受限，其他几支哈拉也并不真正配合他的政策。[w]
@砂粒
我很担心进一步的冲突。[w]
@fg layer="2" pos="right" storage="Od1"
@厄蒂普斯
到现在起好像全是坏消息。[w]
@砂粒
也不全是吧，至少现在没什么人会打扰你们调查了。[w]
@砂粒
索绰络家的亲兵除外。[w]
@fg layer="2" pos="right" storage="fuher"
@主角
好吧。你能带我们进入山城，对吗？[w]
她推了推眼镜，苦笑了一下。[w]
@砂粒
就算索绰络颁阁下是番直宿卫的负责人，我们也没多少话语权。[w]
@砂粒
先试试吧。反正外勤部这么多人，也不是用来讲道理的。[w]
@eval exp="f.bing=3"
@map storage="bingang.map"
@else
@dia
@bg clfg="1" storage="military region"
更始联邦雅絮领的军事科研部门，负责对军事技巧和武器技术的研究，也兼有训练、指导军事长官的功能。大部分哈拉会将下辖亲兵长官送至番直宿卫进行培训后，才允许其参加实际作战。[w]
@map storage="bingang.map"
@endif
*得利寺山城
@clmap
@dia
@if exp="f.bing==3"
@bgm storage="The Ruins of Athens.wav" loop="1"
@bg clfg="1" storage="out of longhua"
滋滋——[w]
@fg layer="1" pos="left" storage="paradise lost1"
@失乐园
不行队长，还是联系不上！这里的信号干扰太强了。[w]
@fg layer="2" pos="right" storage="Apo1"
@伪经
时间不多了，我们得尽快转移。[w]
@fg layer="2" pos="right" storage="erobrer1"
@征服者
索绰络家亲兵也太难缠了！[w]
@失乐园
该说他们才是真正的训练有素吗，比外面那群吊儿郎当的皇家卫队好太多了。[w]
@fg layer="2" pos="right" storage="Apo1"
@伪经
随机混编的卫队，和抵抗奥索达斯的“固山军团”可没法比。[w]
@fg layer="1" pos="left" storage="erobrer1"
@征服者
都什么时候了，你们俩还有心情夸敌人！[w]
（爆炸声）[w]
@征服者
快走！[w]
@fg layer="2" pos="right" storage="paradise lost"
@失乐园
早知道就晚点再进来了！[w]
@征服者
有没有可能我们就是来探路的！[w]
@fg layer="1" pos="left" storage="Apo1"
@伪经
但和其他地区的联邦军队相比，他们使用的装备似乎更加老旧。[w]
@失乐园
天天把自己关在这个山头，不旧才奇怪了！[w]
@fg layer="2" pos="right" storage="erobrer1"
@征服者
总觉得除了近畿，其他地方也没先进到哪里去。[w]
@伪经
小心前面！我们被包围了！[w]
@menu
@bg clfg="1" storage="SP time"
@style align="center"
16：00  得利寺山城  石钟楼[w]
@bg clfg="1" storage="mountain entrance"
@dia
@fg layer="1" pos="center" storage="sand"
@砂粒
这里就是山城的入口了。[w]
砂粒向钟楼里喊了一声，一个守卫探出头来。[w]
@npc color="0xFFFFFF" id="皇家卫队看守"
哪儿来的回哪去，没见着告示吗？[w]
@npc color="0xFFFFFF" id="皇家卫队看守"
噢，塔尔玛大姐，你今天咋有心情来这？[w]
@砂粒
索绰络颁阁下让我给他送一批样本。[w]
@npc color="0xFFFFFF" id="皇家卫队看守"
唉，不是我不想放你进去，刚刚值班的那家伙睡觉，漏了几个人进去，被老爷子破口大骂了。[w]
@npc color="0xFFFFFF" id="皇家卫队看守"
大哥们现在还在里边抓人呢。[w]
@砂粒
抱歉，我们赶时间。[w]
@clfg layer="all"
砂粒挥了挥手，一束光芒穿过看守，他随即失去了意识。[w]
@fg layer="1" pos="left" storage="Od1"
@厄蒂普斯
这么好用的涨落术，能不能教教我？[w]
@fg layer="2" pos="right" storage="sand"
@砂粒
只能在有雪的地方用。[w]
@砂粒
我们进去吧。[w]
@clfg layer="all"
@fg layer="1" pos="left" storage="Missa"
@弥撒
那边好像打起来了……[w]
@fg layer="2" pos="right" storage="Granata2"
@格拉娜塔
是伊比里斯小队！[w]
@fg layer="1" pos="left" storage="paradise lost"
@失乐园
哇！你们好！[w]
@失乐园
研习官，Granata，弥撒小队，以及……[w]
@fg layer="2" pos="right" storage="sand"
@砂粒
执行员砂粒。小心后面。[w]
（爆炸声）[w]
@clfg layer="all"
@bgm storage="Moonlight 3.wav" loop="1"
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
塔尔玛大姐，我需要一个解释。[w]
@fg layer="1" pos="center" storage="sand"
@砂粒
我的同伴们不认识路。本来他们应该由我一并接待的。[w]
@砂粒
我们要去找索绰络颁阁下办点事情。[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
特殊时期，我们已经容不得半点闪失了。[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
诸位请回吧。[w]
@clfg layer="all"
气氛再度陷入僵持，教父已经握紧了手中的榴弹枪。[w]
@fg layer="1" pos="left" storage="fuher"
@主角
我们是来解决困扰了你们三个月的问题的。[w]
@fg layer="1" pos="right" storage="sand"
@砂粒
研习官……！[w]
@主角
还有时间，我们必需赶在伊里卡卓再次出手前解决问题。[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
我们凭什么相信，你不是伊里卡卓派来的探子？[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
多说无益，要想进去，就先跨过我吧！[w]
@砂粒
没办法，看来只能冲卡了。[w]
@clfg layer="all"
@fg layer="2" pos="right" storage="Missa"
@弥撒
我们来负责掩护，你们尽快转移前往龙华宫！[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
通知长老！士兵们，开火，别让他们溜了！[w]
@fg layer="1" pos="left" storage="godfather1"
教父展开涨落能护盾，将索绰络亲兵的第一轮炮击弹开。[w]
@fg layer="2" pos="right" storage="Od1"
火焰在厄蒂普斯的法杖中凝聚。[w]
一道帐幕在雪上燃烧，暂时阻隔了追击。[w]
趁着这个间隙，你们沿着一旁的道路，向龙华宫奔去。[w]
@eval exp="f.bing=4"
@map storage="bingang.map"
@else
@bg clfg="1" storage="out of longhua"
得利寺山城的岗哨，戒备森严的石钟楼。[w]
@map storage="bingang.map"
@endif
*龙华宫
@clmap
@dia
@bg clfg="1" storage="in longhua"
@if exp="f.bing==4"
@fg layer="1" pos="center" storage="ban"
@bgm storage="Ghost 2.wav" loop="1"
@npc color="0xFFFFFF" id="？？？？"
果然还是逃不掉啊。[w]
@npc color="0xFFFFFF" id="？？？？"
希望他们……能为这样的僵局带来转机。[w]
@npc color="0xFFFFFF" id="？？？？"
巡逻队收队。龙华宫卫队带他们来见我。[w]
@menu
@bg clfg="1" storage="SP time"
@style align="center"
16：30  得利寺山城  龙华宫[w]
@bg clfg="1" storage="mountain entrance"
@dia
行至中途，巡逻队突然停止了阻击，转而提出要“护送”你们前往龙华宫。[w]
@bg clfg="1" storage="out of longhua"
两个守卫似乎已经在青色的宫门前等待许久。[w]
@npc color="0xFFFFFF" id="龙华宫看守"
领头的，你，跟我来。[w]
@npc color="0xFFFFFF" id="龙华宫看守"
其他人在外面等着。[w]
@fg layer="1" pos="left" storage="Missa"
@弥撒
不行，我们得保证研习官的安全。[w]
@npc color="0xFFFFFF" id="龙华宫看守"
磨叽，最多再来一个人。[w]
@fg layer="2" pos="right" storage="godfather1"
@教父
我和研习官一起进去吧。[w]
教父放下了手中的攻击性武器，看守迟疑了一下，点了点头。[w]
@npc color="0xFFFFFF" id="龙华宫看守"
你俩进来吧。[w]
@bgm time="100" loop="1" storage="Karelia Suite 11.2.wav" overlap="100"
@bg clfg="1" storage="corridor"
你和教父跟随着看守的步伐，教父巨大的盔甲在幽暗的宫殿里闪着微光。[w]
你想起多年前的那场战争中，他正是以这样的姿态率军击败了温莎的装甲部队。[w]
在几乎全军覆没的情况下，他用所剩不多的涨落能为战士们抗下了一发“十字军”的炮击。[w]
反向的热量吞噬了温莎引以为豪的钢铁猛兽。[w]
这让你稍稍感到安心，即使你还看不见路的尽头，也早已望不到入口。[w]
@npc color="0xFFFFFF" id="龙华宫看守"
就在这里了，请进吧。[w]
你回过神来，眼前的隔间似乎原本并不存在。[w]
@教父
（看来是用涨落能做过障眼法。）[w]
@npc color="0xFFFFFF" id="？？？？"
欢迎两位，赶快进来吧。[w]
@bg clfg="1" storage="in longhua"
@fg layer="1" pos="left" storage="ban"
一个苍老而魁梧的男性端坐在陈设简单的明亮房间里，他用锐利如猛禽的目光凝视着你。[w]
@fg layer="2" pos="right" storage="fuher"
@主角
（萨满语）上百年的岁月没能让您向苦难屈服。[w]
老者稍稍愣了一下，随后微微一笑。[w]
@npc color="0xFFFFFF" id="？？？？"
没想到直到如今还有外人会这样一门语言。[w]
@索绰络颁
（萨满语）索绰络会让风雪低头，直到世界终结。[w]
@索绰络颁
墨缇斯的研习官，以及凯尔特的骑士，我想知道你们此行的目的。[w]
@主角
我们应该向雅絮领发送过很多次进入申请。[w]
@主角
孤竹馆的涨落能总控已经失联了三个月，涨落能紊乱情况已经非常严重了。[w]
@主角
我们进来时，“远方花园”也没有开启。[w]
@主角
索绰络颁阁下，希望您能详细说明一下情况。[w]
@主角
这样的话，我们还有可能修——[w]
@索绰络颁
这并不是技术层面的问题……[w]
@索绰络颁
塔尔玛应该已经告诉过你们，总控，或者说，印玺“敬天勤民”，和陛下一同被伊里卡卓封印起来了，我们只能暂时将她转移到龙华宫的密室里。[w]
@索绰络颁
那是一种自毁型的涨落能术式，如果从外部强行破除，陛下也将陷入危险。[w]
@主角
也就是说，只能让伊里卡卓主动关闭它吗……[w]
@主角
可以再给我们讲讲当时的情况吗？[w]
@主角
我依然无法理解，伊里卡卓为什么要冒着被全孤竹馆敌视的风险来袭击龙华宫。[w]
@主角
就算他夺取了总控，也没有它的操控权限，或是使用它的能力。[w]
@索绰络颁
也许他并不清楚这一点。[w]
@索绰络颁
几乎所有孤竹馆人都只了解印玺的象征意义。[w]
@索绰络颁
即使是在番直宿卫，印玺的使用方法都是严格保密的。[w]
@索绰络颁
相比之下，“衍庆”的力量在民众的心目中更为直观。[w]
@主角
那支箭矢？[w]
@索绰络颁
是的，它是当年固山军团抵抗奥索达斯时留下的。[w]
@索绰络颁
为了纪念这场战争，陛下为其赋能，并在每一年的胜利日上用其击穿一块奥索达斯的白麻花岗岩，以示孤竹馆团结抵抗外来侵略者的决心。[w]
@索绰络颁
十王亭受封典礼的尾声时，陛下已经回到龙华宫。[w]
@索绰络颁
伊里家的军队突然控制住了仍在笃政殿的雅絮领政要，并宣布由于陛下突发急病，八王会议需要临时休会，一切事务由哈拉总领成立的特别小组处理。[w]
@索绰络颁
伊里卡卓本人不见踪影，我赶回龙华宫时，陛下已然被封印。[w]
@索绰络颁
事后伊里卡卓又声称，放置在笃政殿的“衍庆”失窃，系龙华宫卫队中的奥索达斯残党所为，必需进行彻查整肃。[w]
@索绰络颁
我拒绝了伊里家检测专员的进入，但“衍庆”确实在典礼后便不见踪影。[w]
@索绰络颁
这让八王会议更加颜面大失，毕竟这是所有要员在场的情况下失窃的。
@主角
我记得……二十二年前，“衍庆”也出过事。[w]
@索绰络颁
是的。当时的伊里家贝勒伊里·方任写信回国，声称箭矢被萨满巫师中的奥索达斯残党附上了危险的涨落能标记。[w]
@索绰络颁
哈拉总领阿姆鲁·第服支持了他的说法，八王会议只好命番直宿卫将其进行了去能处理，让其本身变得极为脆弱。[w]
@主角
我想去十王亭看看，可以吗？[w]
@索绰络颁
笃政殿不仅是典礼的重要会场，更是雅絮领重要的行政办公地点。[w]
@索绰络颁
今年开年以来，为了避免直接冲突，伊里卡卓宣布雅絮领暂停日常运营，大部分行政事务实际上转移到了万仞宫。[w]
@索绰络颁
但笃政殿仍存有部分尚未公开的文件……[w]
@主角
伊里卡卓有意借此摧毁八王会议在民众心目中的地位。[w]
@主角
他很可能不只是想要“远方花园”的控制权。[w]
@主角
如果能更了解他的施政倾向，也许我们还有机会先行一步。[w]
@索绰络颁
……好吧。请随我来。[w]
@eval exp="f.bing=5"
@map storage="bingang.map"
@else
淹没在阴云中的龙华宫正殿。[w]
@map storage="bingang.map"
@endif
*十王亭
@clmap
@dia
@bg clfg="1" storage="corridor"
@if exp="f.bing==5"
@snowinit
@bgm storage="Moonlight 3.wav" loop="1"
你们离开房间，穿过廊柱，来到室外。[w]
风雪在肆意呼啸，你察觉到老者眼中一闪而过的惊讶。[w]
@fg layer="1" pos="left" storage="ban"
@索绰络颁
孤竹馆……已经很久没有这么冷了。[w]
@索绰络颁
诸位，我们到了。[w]
@bg clfg="1" storage="tenkingtem"
规整对称的建筑在你们面前铺开，它们被漫天大雪盖住了漆黑的外沿。[w]
笃政殿被十座方亭环抱，威严肃穆。一行人面色凝重。[w]
你向前踏出了一步。[w]
积压的大雪轰然塌下。[w]
@教父
小心！笃政殿的台阶上附着有法术结界，而且很新。[w]
@npc color="0xFFFFFF" id="？？？？"
抱歉，各位客人。但我不能让你们进去。[w]
@主角
声音是从雪中传来的……？[w]
纯白的粉末渐渐从地面上浮起，相互交构。[w]
一个巨大的造物出现在你们眼前。[w]
@fg layer="1" pos="left" storage="ban"
@索绰络颁
“雪玛虎”。伊里卡卓的小技俩。[w]
@索绰络颁
伊里卡卓，你就以这样的面目来待客，是否有伤孤竹馆的形象？[w]
@npc color="0xFFFFFF" id="雪玛虎？"
很遗憾，我原本是想和客人们好好谈谈的。[w]
@npc color="0xFFFFFF" id="雪玛虎？"
但前方可能有残党所设的埋伏，我不能让各位在这里被其所伤。[w]
@主角
看来想要进去，还是得先击倒它了。[w]
@snowuninit
@menu
@bg clfg="1" storage="SP time"
@style align="center"
17：00  得利寺山城  龙华宫[w]
@bg storage="out of longhua"
@dia
@bgm storage="Heroic.wav" loop="1"
@fg layer="1" pos="left" storage="Granata2"
@格拉娜塔
远处有其他队伍在靠近……[w]
@fg layer="2" pos="right" storage="paradise lost"
@失乐园
是伊里家的军队！[w]
@征服者
该死，是趁巡逻队把注意力放在我们身上的时候进来的吗。[w]
@clfg layer="all"
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
后面的跟上！伊里家的牛犊子想造反！[w]
@npc color="0xFFFFFF" id="索绰络家亲兵"
老大，他们会不会是来吸引注意力的？[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
无论如何，至少不能让他们再靠近龙华宫！[w]
@npc color="0xFFFFFF" id="伊里家亲兵长官"
为切实保障得利寺山城办公人员的生命安全，哈拉总领命我们来对各建筑进行勘察，请各位避让。[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
伊里家，别欺人太甚！[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
你们要是想到陛下那儿去捣乱，就先过我这关！[w]
@npc color="0xFFFFFF" id="索绰络亲兵B"
老大说的是！大家绝不能让伊里家的混蛋跨过去半步！[w]
（应和声）[w]
僵持，没有人愿意承担开第一枪的罪名。[w]
砰！[w]
宁静最终还是被打破。[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
哪个天杀的先开的枪！[w]
队长想阻止事态变得混乱，但枪声成了诱导愤怒爆炸的火药，两股原本对峙的卫队开始互相殴斗。[w]
@fg layer="2" pos="right" storage="paradise lost"
@失乐园
我们要上去帮忙吗？[w]
@fg layer="1" pos="left" storage="sand"
@砂粒
我们的立场暂时还不适合介入。[w]
@fg layer="2" pos="right" storage="erobrer1"
@征服者
真可惜，我们好像没得选了。[w]
@fg layer="1" pos="left" storage="Granata2"
@格拉娜塔
大家小心！混战的军队在向这边靠近！[w]
@menu
@bg clfg="1" storage="SP time"
@style align="center"
17：15  滨港市  十王亭[w]
@bg clfg="1" storage="tenkingtem"
@dia
@fg layer="1" pos="center" storage="godfather1"
@教父
……！[w]
教父走在了队伍的最前端，勉强顶住“雪玛虎”挥过来的拳头。[w]
“雪玛虎”突然停下攻击，教父也静止在了原地。[w]
索绰络颁拦住了你想上前的脚步。[w]
@fg layer="1" pos="center" storage="ban"
@索绰络颁
别去！他被伊里卡卓的造物冻结了。[w]
@索绰络颁
哈，小子，看来你还没忘记以前在番直宿卫里学的本事。[w]
@索绰络颁
那你也应该知道，光靠这个东西，你根本拦不住我。[w]
@npc color="0xFFFFFF" id="雪玛虎？"
这么多年过去了，我肯定也有所长进的。[w]
@clfg layer="all"
漫天大雪在庭院内堆积，你意识到事情对你们极其不利。[w]
没过脚踝的雪开始凝结，“雪玛虎”借着狂滥的风瞬间来到了你身边。[w]
你想大喊警告索绰络颁，但喉间的字句仿佛也随血液结成了坚冰。[w]
@npc color="0xFFFFFF" id="雪玛虎？"
（墨缇斯的研习官，我希望能与你有一次单独的会面。）[w]
@npc color="0xFFFFFF" id="雪玛虎？"
（如果你愿意，请在这之后单独留在十王亭中。）[w]
短暂的思索后，你无法确认这个邀请是否只是他的随性之语。[w]
@fg layer="1" pos="center" storage="ban"
索绰络颁发动涨落术，坚冰刺穿了白雪的阻挡，“雪玛虎”暂时落入了下风。[w]
是时候了。[w]
你将手没入白雪，启动了术式。[w]
刹那间，“雪玛虎”碎裂，与铺满地面的雪花融为一体。[w]
你转过身，向笃政殿的方向走去。[w]
残存的飞雪突然裹挟着一支箭矢向你袭来。[w]
@fg layer="1" pos="center" storage="godfather1"
教父及时赶到，展开涨落能护盾，拦下了这一击。[w]
反冲的能量将箭矢折断，它随即又被风雪掩埋消失。[w]
借此间隙，你们快速进入了笃政殿。[w]
@bgm storage="Ghost 2.wav" loop="1"
@bg clfg="1" storage="duzheng"
@fg layer="1" pos="left" storage="ban"
@索绰络颁
研习官，您能够使用“退火”……？[w]
@索绰络颁
很罕见的天赋。[w]
@fg layer="2" pos="right" storage="fuher"
@主角
也许这就是他们让我来外勤部的理由。[w]
@主角
让涨落能介质失效，有时候还是挺好用的。[w]
@fg layer="2" pos="right" storage="godfather1"
@教父
刚才的那支箭……[w]
@fg layer="1" pos="left" storage="ban"
@索绰络颁
嗯，是失踪的“衍庆”。[w]
@教父
伊里卡卓以这种方式让我们破坏它，有何用意呢……[w]
@fg layer="2" pos="right" storage="fuher"
@主角
看来只能进一步调查了。[w]
@索绰络颁
好了，让我们回归正题吧。[w]
@eval exp="f.bing=6"
@else
八支哈拉的组成并非一成不变，但十王亭却在此屹立了数百年的时光。[w]
@map storage="bingang.map"
@endif
*笃政殿
@bgm storage="Ghost 2.wav" loop="1"
@bg clfg="1" storage="duzheng"
@索绰络颁
你想找些什么？[w]
@clfg layer="all"
@selstart hidemes="1" hidesysbutton="1"
@locate y="190" x="425"
@selbutton target="*桌面的文件" text="查看桌面的文件"
@locate y="260" x="425"
@selbutton target="*办公桌抽屉" text="查看办公桌抽屉"
@locate y="330" x="425"
@selbutton target="*殿内" text="查看殿内装饰"
@locate y="400" x="425"
@selbutton target="*笃政殿探索完毕" text="全部探索完毕"
@selend
*桌面的文件
@clsel
你从文件夹中看到了一篇公函备案。[w]
“静塞都护府：”[w]
“再次声明，贵区所提方案，本区概不采纳。”[w]
“无论价码如何，雅絮领都不会支持都护参选联邦皇帝。”[w]
“若贵军强入相逼，本区唯有独立明志。”[w]
“辽东、松水、开元三道军司及雅絮领，754年12月20日”[w]
@fg layer="1" pos="left" storage="ban"
@索绰络颁
静塞都护一直希望入主新都，但碍于西线的防务事务，始终不能抽身。[w]
@索绰络颁
在此之前的几届哈拉总领都是都护的忠实盟友，但伊里卡卓上台后，便公开反对两区的联邦军队联合行动。[w]
@jump target="*笃政殿"
*办公桌抽屉
@clsel
抽屉里放着一本会议记录。[w]
“更始联邦雅絮领754年12月8日临时会议记录”[w]
@npc color="0xFFFFFF" id="农业部长"
受恶劣天气影响，今年的粮食产量严重不足，我们亟需恢复供暖设施。[w]
@npc color="0xFFFFFF" id="工业部长"
武器生产情况一切正常，芳香油、矿藏储备充足，但我们缺乏供能，在明年夏天到来前，生产线很可能逼迫停工。[w]
@npc color="0xFFFFFF" id="交通部长"
由于部分哈拉拒绝参与，我们的统一铁路运输计划仍然未能完全实施……[w]
@npc color="0xFFFFFF" id="哈拉总领"
我们会尽快和得利寺山城进行深入磋商，请各位放心。[w]
@npc color="0xFFFFFF" id="哈拉总领"
为了孤竹馆的振兴，我们必需扛住此刻的各方面压力，继续前行……[w]
@jump target="*笃政殿"
*殿内
@clsel
牌匾“泰交景运”和《七大赦》居于大殿的中上方。[w]
宝座身后是巨大的金漆云龙纹屏风。[w]
八角形的大殿穹顶被繁复的彩绘覆盖。[w]
环绕殿周的画像廊，现在空空如也。[w]
@fg layer="1" pos="left" storage="ban"
@索绰络颁
本来这些位置，是用来放置历届出身孤竹馆的联邦皇帝的画像、历届哈拉总领的画像的。[w]
@索绰络颁
伊里卡卓入驻笃政殿后，就将它们逐步撤除了。[w]
@jump target="*笃政殿"
*笃政殿探索完毕
@clsel
@fg layer="1" pos="left" storage="ban"
@索绰络颁
研习官，你接下来有什么打算？[w]
你向两人转述了伊里卡卓对你说的话。[w]
@fg layer="1" pos="left" storage="godfather1"
@教父
你打算赴约？太冒险了。[w]
@fg layer="2" pos="right" storage="fuher"
@主角
他特意阻拦我们来给我传信，说明他有用的上我的地方。[w]
@主角
所以至少目前，他就不会轻易对我造成威胁。[w]
@fg layer="1" pos="left" storage="ban"
@索绰络颁
本来不应该让你以身涉险，但既然你决意如此……[w]
索绰络颁取下手上的一枚戒指，递给你。[w]
@主角
这是……“敕正万邦”。[w]
@索绰络颁
上面的鸽血刚玉可以帮助你抵御伊里卡卓的精神侵蚀。[w]
@主角
感谢您的协助。[w]
@索绰络颁
那我们就先在十王亭外静候佳音了。[w]
@bgm storage="Moonlight 3.wav" loop="1"
@bg clfg="1" storage="tenkingtem"
你再次回到十王亭的空地上，仰头看向天空。[w]
@bg convert="1" clfg="1" storage="tenkingtem"
@npc color="0xFFFFFF" id="？？？？"
看来，你决定赴约了，墨缇斯的研习官。[w]
@snowinit
风雪大作。[w]
@snowuninit
@menu
@bg clfg="1" storage="SP time"
@style align="center"
17：30  得利寺山城  龙华宫[w]
@bg clfg="1" storage="out of longhua"
@dia
@bgm storage="Heroic.wav" loop="1"
@fg layer="1" pos="left" storage="Apo1"
@伪经
诸位，后撤！[w]
@fg layer="2" pos="right" storage="erobrer1"
@征服者
可恶，索绰络亲兵的防线怎么会被突破！他们不是这里最能打的吗？[w]
@fg layer="1" pos="left" storage="Missa"
@弥撒
诸位！虽然我们并不方便介入孤竹馆内部冲突，但如果不协助龙华宫卫队，本次任务的目标将很难达成。[w]
@fg layer="2" pos="right" storage="paradise lost"
@失乐园
我支持！到时候被审刑院追责的话就拿《外勤条例》来挡刀好了。[w]
@fg layer="1" pos="left" storage="Granata2"
@格拉娜塔
哪有那么简单！[w]
@伪经
啧，为什么卫队在……自相残杀？[w]
@fg layer="2" pos="right" storage="sand"
@砂粒
糟了，是精神控制法术！[w]
@格拉娜塔
伊里家的军队已经掌握这么危险的技能了吗……[w]
@砂粒
番直宿卫一直抵触让军人学习这种技艺。[w]
@砂粒
但孤竹馆在拥有强大的武力前，在早先蛮荒的时代，面对危险的自然，他们不得不选择尝试其他的方式。[w]
@砂粒
一些施术者尝试与涨落能共鸣，他们率先为自己的族人树立起了一道屏障。[w]
@伪经
萨满……我在西关时，曾经读过有关他们的文章。[w]
@砂粒
萨满们驱散了凶猛的恶兽，击退了觊觎的外敌。[w]
@砂粒
起初，孤竹馆以他们为荣，甚至这里的族群也被外人以“萨满”命名。[w]
@砂粒
但操控如此危险的涨落能让他们付出了悲惨的代价。[w]
@砂粒
他们的身体组织不可避免地发生了异变，相貌逐渐与人类趋远。[w]
@砂粒
在萨满的营房周围，黑色的烟气终年不散。他们的法杖令人胆寒，而他们自身也为寒冷所困。[w]
@砂粒
他们惧怕火焰，但又崇敬火焰，却无法造出真正燃烧之火。[w]
@砂粒
你们所见的那些黑色的火焰……是亡者的咆哮的灵魂。[w]
@砂粒
等到文明在孤竹馆逐渐生长，固山军团能够真正用凡人的力量保护自己，就再也没有人愿意将族群与萨满挂钩了。[w]
@砂粒
曾经盛行的萨满语与新都官话混合，演化成为孤竹方言，鲜少再有人会使用原始的萨满语。[w]
@砂粒
现在，对于大部分孤竹馆人来说，萨满只是历史中的一个未消散的污点。[w]
@fg layer="1" pos="left" storage="paradise lost"
@失乐园
但我们还是在这里看到了这种法术……[w]
@砂粒
的确，他们依然还存在于这个世间。[w]
@砂粒
陛下曾多次劝说八王会议废除训练这支队伍，这对于孩子们来说太过残忍。[w]
@砂粒
但保守的哈拉们不愿意放弃自身发家的力量，陛下只好容忍哈拉总领继续掌握它。[w]
@fg layer="1" pos="left" storage="Granata2"
@格拉娜塔
哈拉总领……糟了，要是伊里卡卓动用自己的权限……！[w]
@砂粒
没错，各位。我们必须在萨满方阵真正赶来之前，阻止态势进一步恶化。[w]
砂粒从背包中拿出一个装置。[w]
@fg layer="2" pos="right" storage="erobrer1"
@征服者
我以前没见过这种涨落能干扰器……[w]
@fg layer="1" pos="left" storage="Missa"
@弥撒
好老的款式！Viacheslav看到了可能都要唠叨说这一批产品怎么还没被淘汰。[w]
@fg layer="2" pos="right" storage="sand"
@砂粒
这里的条件不太适合制造新产品。[w]
@砂粒
但古老的邪恶就应该用老家伙来对付。[w]
@砂粒
请各位配合我，尽快找到那些萨满巫术的宿主，并将他们击倒！[w]
@fg layer="1" pos="left" storage="Granata"
@格拉娜塔
交给我们吧！[w]
@menu
@bg clfg="1" storage="SP time"
@style align="center"
733年12月25日  19：50 [w]
松江市  扶余区  法卢火车站[w]
@bg clfg="1" storage="falu"
@dia
@bgm time="100" loop="1" storage="Moonlight 1.wav" overlap="100"
@oldmovieinit
深冬已至，大地冻结。[w]
今夜无风，安静的雪沫在站台前沉睡。[w]
@fg layer="2" pos="center" storage="yili2"
少年攥紧皮革手套，抬起一只长靴向前迈去。[w]
@npc color="0xFFFFFF" id="？？？"
今晚来坐车的人可不多。[w]
@npc color="0xFFFFFF" id="少年"
……？！[w]
@npc color="0xFFFFFF" id="顽塔哈"
别紧张，我是这里的站长。[w]
@npc color="0xFFFFFF" id="顽塔哈"
夜晚时间太长，车站也太冷清。[w]
@npc color="0xFFFFFF" id="顽塔哈"
所以我习惯出来溜达溜达，看会儿积灰的站台，或者和乘客们唠唠嗑。[w]
@npc color="0xFFFFFF" id="少年"
……我赶时间。[w]
@npc color="0xFFFFFF" id="顽塔哈"
下趟火车半个小时后才来。[w]
@npc color="0xFFFFFF" id="顽塔哈"
来这儿坐火车的人，我觉得都在兜里揣了不少心事。[w]
站长停下脚步，在临近的长椅上顺势坐下。[w]
@npc color="0xFFFFFF" id="顽塔哈"
有没有兴趣和我聊聊？[w]
@npc color="0xFFFFFF" id="顽塔哈"
你为什么要坐上这趟列车，又打算……[w]
@npc color="0xFFFFFF" id="顽塔哈"
在离开终点站后，做些什么？[w]
少年将视线从地面的警戒线上移开，他盯着顽塔哈沉默了半晌。[w]
@npc color="0xFFFFFF" id="少年"
我……要去找一些真相。[w]
@npc color="0xFFFFFF" id="少年"
您也想阻止我，对吗？[w]
@npc color="0xFFFFFF" id="顽塔哈"
哈哈，小伙子，我忙不过来的。[w]
@npc color="0xFFFFFF" id="顽塔哈"
如果这里每一桩事情都需要我去阻止或者改变，那就没有那群人什么事了。[w]
@npc color="0xFFFFFF" id="顽塔哈"
你得清楚自己要面对的那群家伙是什么人。[w]
@npc color="0xFFFFFF" id="顽塔哈"
他们穿着深黑色的大衣，戴着盖过双目的大檐帽和厚重的手套。[w]
@npc color="0xFFFFFF" id="顽塔哈"
在这套伪装下，他们就是奥索达斯带刺的铁丝网。[w]
@npc color="0xFFFFFF" id="顽塔哈"
任何对威奇涅堡产生威胁的存在，都不会有机会越过他们。[w]
@npc color="0xFFFFFF" id="顽塔哈"
因此，作为一个高更人，我秉持着日渐消减的责任心，向每一位来到这个车站的旅客发出及时的提醒。[w]
@npc color="0xFFFFFF" id="顽塔哈"
假使他们坚持，那我也不会阻拦。[w]
@npc color="0xFFFFFF" id="顽塔哈"
毕竟他们买下了这张车票。[w]
@clfg layer="2"
站长望向月台。法卢火车站唯一的一条轨道。[w]
火车只会从孤竹馆的其他地方开来，然后从这里驶向同一个方向——[w]
奥索达斯。[w]
无论是前往最近的基里亚克港，还是要忍受数月的寒冷与黑暗，尝试靠近帝国的中心。[w]
都会被奥索达斯内务部在各个节点的哨卡严格地搜身和拷问。[w]
没有戈比的人会被驱赶，没有身份的人会被处死。[w]
@fg layer="2" pos="center" storage="yili2"
@npc color="0xFFFFFF" id="少年"
所以。所以我想知道，我的父亲是否也是因为这样的原因，在威奇涅堡，或者在奥索达斯的任何一个位置……[w]
@npc color="0xFFFFFF" id="少年"
悄无声息、没有理由地死去了。[w]
@npc color="0xFFFFFF" id="少年"
他那么热爱孤竹馆，那一队前往奥索达斯考察学习的人们，都那么热爱孤竹馆。[w]
@npc color="0xFFFFFF" id="少年"
他们一心想着去更加寒冷的异国，寻找为孤竹馆注入新鲜活力的方法。[w]
@npc color="0xFFFFFF" id="少年"
但是有人在乎吗？事情一发生，出于对奥索达斯的恐惧，人们对它闭口不谈，不敢想它发生的原因，继续过着他们麻木的生活。[w]
@npc color="0xFFFFFF" id="少年"
任何一个与此事有关的人，都拒绝告诉我他们的消息。[w]
@npc color="0xFFFFFF" id="少年"
也许我不应该谴责他们……毕竟光是在田间地头劳动，或是在工厂车间里工作，就已经耗尽了他们对“生活”的全部的想象。[w]
@npc color="0xFFFFFF" id="少年"
他们无暇考虑自己的未来，也不愿意在姑息之外做出更多行动。[w]
@npc color="0xFFFFFF" id="少年"
但这不行，奥索达斯依然紧盯着这片土地。[w]
@npc color="0xFFFFFF" id="少年"
所以我必须去。[w]
@npc color="0xFFFFFF" id="少年"
我要找到真相，然后去寻找一个突破口。[w]
站长将手心放在脸前哈了一口气。[w]
@npc color="0xFFFFFF" id="顽塔哈"
今晚可真冷啊。[w]
@npc color="0xFFFFFF" id="顽塔哈"
前任老站长准备卸任的那天晚上，也是这样。[w]
@npc color="0xFFFFFF" id="顽塔哈"
他告诉了我，这个火车站是怎么建成的。[w]
@npc color="0xFFFFFF" id="顽塔哈"
所有松江人打一出生就看见它在那里了，在这漫长的岁月里，它早已破败不堪。[w]
@npc color="0xFFFFFF" id="顽塔哈"
老站长说，这是数百年前奥索达斯人的得意手笔。[w]
@npc color="0xFFFFFF" id="顽塔哈"
奥索达斯的波戈亚夫林总督区宪兵队刚刚到来，就强迫居民们把满地的高粱铲平。[w]
@npc color="0xFFFFFF" id="顽塔哈"
他们要修一条铁路，从孤竹馆一直通向帝国的各个城市。[w]
@npc color="0xFFFFFF" id="顽塔哈"
他们把一座座长满老桦木的山头砍平，运走一箱又一箱黄金、煤炭、油页岩。[w]
@npc color="0xFFFFFF" id="顽塔哈"
这就是奥索达斯人的“合作”，这就是他们为我们带来的“发展”。[w]
@npc color="0xFFFFFF" id="顽塔哈"
陛下回乡以后，便下令禁止使用这条铁路。[w]
@npc color="0xFFFFFF" id="顽塔哈"
后来更始逐步缓和了同奥索达斯的关系，铁路才重新开放。[w]
@npc color="0xFFFFFF" id="顽塔哈"
鲜少有人再踏上这条路。[w]
@npc color="0xFFFFFF" id="顽塔哈"
只有那曾经或依然为奥索达斯卖命的奸贼，懒惰而疯狂的亡命之徒，举目无亲、谋求生计的异乡者。[w]
@npc color="0xFFFFFF" id="顽塔哈"
他们从未停止过尝试离开。他们都有同一个结局。[w]
@npc color="0xFFFFFF" id="顽塔哈"
但看来……这个车站终于再次迎来了不一样的客人。[w]
@npc color="0xFFFFFF" id="顽塔哈"
可是怀着不一样的志向，并不一定就能轻易地改变什么。[w]
@npc color="0xFFFFFF" id="顽塔哈"
海水会扑灭太阳，夜幕会吞噬烛火。[w]
@npc color="0xFFFFFF" id="顽塔哈"
即使越过重重的阻拦，穿过无尽的冰雪，逃离了死亡的威胁……[w]
@npc color="0xFFFFFF" id="顽塔哈"
你在那里或许也只能找到失望。[w]
@npc color="0xFFFFFF" id="少年"
无论如何，我会完成父亲未能实现的梦想。[w]
@npc color="0xFFFFFF" id="少年"
如果没有真相，那我会让孤竹馆有机会、有实力向奥索达斯要一个真相，也让它有一个更好的明天。[w]
轰鸣声响起，烟雾在清冷的灯光下消散，笨重的机械外壳在轨道上颤抖。[w]
少年提起行李，沉默地走入车厢。[w]
拥挤的铁盒子里，有病痛者的哀嚎，有疲劳者的叹息。[w]
少年闭口不言。火车轰鸣离开。[w]
@clfg layer="2"
@npc color="0xFFFFFF" id="顽塔哈"
方任，你的孩子在这方面，可太像你了。[w]
@npc color="0xFFFFFF" id="顽塔哈"
希望……希望我们都有一个更好的明天。[w]
@oldmovieuninit
@menu
@bg clfg="1" storage="SP time"
@bgm time="100" loop="1" storage="La cena.wav" overlap="100"
@style align="center"
755年1月4日 17：40[w]
@style align="center"
滨港市  十王亭  风雪幻景[w]
@bg convert="1" clfg="1" storage="tenkingtem"
@dia
@snowinit
你感到有些喘不过气。[w]
@fg opacity="85" layer="1" pos="left" storage="yili1"
@伊里卡卓
你看起来有些疲惫，还好吗？[w]
@伊里卡卓
没有机会让你好好休息一下，是我们待客不周了。[w]
@fg layer="2" pos="right" storage="fuher"
@主角
抵抗你在幻象中施加的侵蚀法术并不轻松。[w]
@主角
你只想让我看这些吗？[w]
@主角
让我单凭一段二十几年前的片段，就被你的宏伟目标打动？[w]
@伊里卡卓
那个年轻人，在十五年前的大火里就已经被烧成灰烬了。[w]
@主角
740年……科洛姆纳森林大火！[w]
@伊里卡卓
特维尔大公和他的谋臣们在宫殿里畅饮。[w]
@伊里卡卓
他们在欢庆自己的小团体依靠出卖异族的盟友，换取了在埃尔米塔什宫的信任。[w]
@伊里卡卓
后来，他们的笑声就在漫天的火焰中戛然而止了。[w]
@伊里卡卓
而我还站在这里，不是因为那种不顾一切地想要发现真相的冲动。[w]
@主角
真相本身的效力在它被获知的那一刻就消失了。[w]
@fg opacity="85" layer="1" pos="left" storage="yili2"
@伊里卡卓
我曾说，我会完成父亲未竟的梦想。[w]
@伊里卡卓
多么可笑！当我发现他早已在威奇涅堡被这群豺狼和白熊同化的时候，我深刻地感受到了命运的重量。[w]
@主角
但你似乎并没有真的放弃。[w]
@伊里卡卓
如果所有人都对风雪颔首，那么春天永远都不会到来。[w]
@伊里卡卓
命运的确沉重，但我选择将它挑在我的肩上。[w]
@伊里卡卓
我要让孤竹馆重新擦亮自己的眼睛，有机会真正寻找自己的未来。[w]
@fg opacity="85" layer="1" pos="left" storage="yili1"
@伊里卡卓
而你，墨缇斯的研习官，你也还在努力挑战自己的命运。[w]
有一瞬间，你似乎真的相信他看清了你。[w]
@伊里卡卓
但我不会说，我们因为同样怀有这种精神，就应当团结在一起。[w]
@主角
我觉得你应该去找盐月音谈生意。我只是个普通的战地指挥官。[w]
@伊里卡卓
我们需要你的知识和智慧，研习官。[w]
@伊里卡卓
在你考虑清楚之前，我不介意先让你完成自己的目标。[w]
@伊里卡卓
你会有机会见到陛下。[w]
@伊里卡卓
如果你下定决心，请带着“敬天勤民”来找我。[w]
@伊里卡卓
当然，我的军队已经抵达龙华宫，无论你同意或否，我都会将它带走。[w]
@伊里卡卓
但士兵们的死生掌握在你的手上。[w]
伊里卡卓的影像突然开始摇晃，他的表情闪过一丝容易被忽略掉的痛苦。[w]
@伊里卡卓
另外，我已经向全孤竹馆通告了偷窃并破坏“衍庆”的“真凶”。[w]
@伊里卡卓
你们已经失去了将士的信任。[w]
@clfg layer="1"
他的影像逐步开始崩解。[w]
你意识到似乎有什么在干扰这场谈话的进行。[w]
他的声音在空中慢慢飘散。[w]
@npc color="0xFFFFFF" id="模糊的声音"
@emb exp="f.姓"
……[w]
@npc color="0xFFFFFF" id="模糊的声音"
我会在……等你来……[w]
@snowuninit
@menu
@bg clfg="1" storage="SP time"
@style align="center"
18：00  龙华宫密室[w]
@bg clfg="1" storage="in longhua"
@dia
你并不确定伊里卡卓是否会留有一手，便要求索绰络颁尽快带你去见桓予七。[w]
你们穿过视觉干扰法阵，索绰络颁犹豫了一下，轻轻敲了敲门。[w]
@npc color="0xFFFFFF" id="？？？"
请进。[w]
@fg left="100" layer="1" top="10" storage="yaxu1" locate="1"
推开沉重的木门，你们真正见到了这位从前的联邦皇帝。[w]
她努力地在虚弱的脸庞上挤出一个微笑。[w]
@npc color="0xFFFFFF" id="桓予七"
颁，以及墨缇斯的两位，辛苦你们了。[w]
@索绰络颁
陛下，您的身体有无大碍？[w]
@npc color="0xFFFFFF" id="桓予七"
没事，只是躺的有些久了，突然醒来有点不适应。[w]
@fg layer="2" pos="right" storage="fuher"
@主角
请让我做一个基本的检查。[w]
@主角
嗯……他确实完全撤除了自己的涨落术。[w]
@fg left="100" layer="1" top="10" storage="yaxu2"
@npc color="0xFFFFFF" id="桓予七"
十初已经告诉我外面的情况了。[w]
@npc color="0xFFFFFF" id="桓予七"
伊里卡卓愿意解除封印，我猜，是不是想让你把“敬天勤民”交给他？[w]
@主角
的确如此。[w]
你向她转述了事件的经过。[w]
@主角
那么，您可以说说那天发生了什么吗？[w]
@npc color="0xFFFFFF" id="桓予七"
我拒绝了他的“提案”。[w]
@npc color="0xFFFFFF" id="桓予七"
伊里卡卓要求我同意对“远方花园”的大型改造计划，让其搭载更具破坏性的火力输出武器。[w]
@npc color="0xFFFFFF" id="桓予七"
无论他想用它来做什么，光是着手建造它，就会成为更始和奥索达斯之间冲突的导火索。[w]
@主角
于是他恼羞成怒了……？[w]
@npc color="0xFFFFFF" id="桓予七"
不，他本来就没想过我会同意计划。[w]
@npc color="0xFFFFFF" id="桓予七"
他试图从我手中夺取“远方花园”的控制权。[w]
@npc color="0xFFFFFF" id="桓予七"
也许他在奥索达斯学会了一些秘术，却没有完全掌握它……[w]
@npc color="0xFFFFFF" id="桓予七"
所以他只能用从印玺中调取的部分涨落能封印了我，再做打算。[w]
@主角
而他今日重提此事，意味着……[w]
@主角
有什么人告诉了他使用方法，或者他到了不得不放手一搏的时候了。[w]
@npc color="0xFFFFFF" id="桓予七"
所以，各位，将印玺交给伊里卡卓，其后果我们都无法承担。[w]
@npc color="0xFFFFFF" id="桓予七"
“远方花园”亟待启动，我们离不开印玺的调控；而伊里卡卓一旦开始用印玺进行武装，孤竹馆的和平难以为继。[w]
@主角
有关前一点，我们其实有一个合适的解决办法。[w]
@主角
不如说，我们就是为此而来的。[w]
@主角
在过去的两百年里，大规模涨落能发生装置的控制器其实已经迭代很多个版本了。[w]
@主角
但印玺和“远方花园”建设时代的各种机械型号适配的很好，所以一直没有更换的必要。[w]
@主角
然而这个控制器对使用者能力的要求太高，牵制了相应结构体系的更新速度。[w]
@主角
因此，墨缇斯工程部用联邦国会当年保存的数据，为孤竹馆量身定制了新的控制器。[w]
@主角
它拥有数个分端，需要多个使用者同时操作，而总端口只需提供适量的能量，即可启动。[w]
@主角
因为我们针对孤竹馆的防御体系和大型工业机械做了数据调整，所以即使更换控制器，也不需要进行大幅度调换。[w]
@主角
本部希望我们借此次机会回收这枚印玺。[w]
@索绰络颁
陛下，这可能会动摇民众对我们的信任……[w]
@主角
但现在它可能要落于伊里卡卓之手了。[w]
@npc color="0xFFFFFF" id="桓予七"
那么，墨缇斯的研习官，你有什么好主意？[w]
@主角
我会打开印玺的开发者模式，让伊里卡卓误以为自己已经成功获得了它的控制权。[w]
@主角
等到我成功脱身，就请您接入新的控制器，届时，印玺将失去所有实用意义。[w]
@主角
另外，索绰络颁阁下，我希望您能帮助我们……[w]
@menu
@bg clfg="1" storage="SP time"
@style align="center"
18：15  得利寺山城  龙华宫[w]
@bg clfg="1" storage="out of longhua"
@dia
@fg layer="1" pos="left" storage="Od1"
@厄蒂普斯
对方的士气高涨了好多！[w]
@fg layer="2" pos="right" storage="paradise lost1"
@失乐园
糟糕，不会那些老巫师已经到了吧。[w]
@fg layer="1" pos="left" storage="sand"
@砂粒
全体注意！保持阵型向后隐蔽，不要恋战！[w]
@clfg layer="all"
@bg grayscale="1" storage="out of longhua"
黑色的烟气。[w]
从地平线上开始生长，在灰白色的原野蔓延开来。[w]
空气变得浑浊而沉重，呼吸越来越急促。[w]
冰冷的铃铛声突兀地响起，随之而来的是密集的鼓声。[w]
天地似乎被倒转，而“乌云”正在飘向所有人。[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
停止攻击！[w]
@fg layer="1" pos="left" storage="saman1"
@fg layer="2" pos="right" storage="saman1"
@fg layer="3" pos="center" storage="saman2"
@npc color="0xFFFFFF" id="苏内库特"
……索绰络，很高兴你们能及时止损。[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
大萨满，你们的出行并未经过八王会议的同意！[w]
@npc color="0xFFFFFF" id="苏内库特"
我们追随哈拉总领。[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
现在，你们要是踏进这个宫门，就是在冒犯陛下，冒犯整个孤竹馆！[w]
@npc color="0xFFFFFF" id="苏内库特"
无妨。我们为孤竹馆的未来而来。[w]
@npc color="0xFFFFFF" id="苏内库特"
而各位应该清楚自己应该在什么位置。[w]
@npc color="0xFFFFFF" id="苏内库特"
现在，请让开吧。[w]
@clfg layer="all"
@fg layer="1" pos="left" storage="Granata2"
@格拉娜塔
就这么放他们进去吗，有些不甘心。[w]
@fg layer="2" pos="right" storage="sand"
@砂粒
能在见到萨满方阵以后活下来，就已经很了不起了，即使他们只派出了一位大萨满。[w]
方阵的领头人看向砂粒的方向，脸上闪过了一瞬的惊讶。[w]
@fg layer="1" pos="left" storage="saman2"
@npc color="0xFFFFFF" id="苏内库特"
阿姆鲁，你不该掺和这件事的。[w]
@砂粒
我帮助谁，不取决于关系的亲疏，更不取决于我家族的需要。[w]
@砂粒
当然，我知道我拦不住你们。[w]
@砂粒
但至少，我会试着拖延你们的脚步。[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
将士们，听令！[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
今天无论谁要闯进去，都是在挑战孤竹馆！[w]
@npc color="0xFFFFFF" id="索绰络家巡逻队长"
所有人和我一起死守防线！[w]
@fg layer="1" pos="left" storage="Missa"
@弥撒
拦不住了呀。[w]
@fg layer="2" pos="right" storage="Apo1"
@伪经
那我们也只好上了。[w]
@clfg layer="all"
黑色的火焰在雪白的田野上燃烧。[w]
龙华宫的卫队战士们仅仅是在接触的一瞬就失去了作战的能力，只能在雪中痛苦地翻滚。[w]
萨满方阵无声地向前移动，仿佛前方从未有过阻碍。[w]
@fg layer="1" pos="center" storage="sand"
@foginit
砂粒展开了自身的涨落能力场，飞舞的尘雾也仅仅只是延缓了方阵行进的速度。[w]
@fg layer="1" pos="left" storage="Granata2"
@格拉娜塔
不知道宫里面怎么样了……[w]
@fg layer="2" pos="right" storage="paradise lost"
@失乐园
放心好啦，研习官他们肯定能完成任务的。[w]
@fg layer="1" pos="left" storage="Od1"
@厄蒂普斯
可惜没法通知他们跑路啊。[w]
@fg layer="2" pos="right" storage="Apo1"
@伪经
注意躲避！[w]
@clfg layer="all"
（爆炸声）[w]
法术形成的炮弹向后方阵地袭来，溅起的积雪和飞沙在刹那间掩盖了众人的视线。[w]
格拉娜塔听到盾牌碰撞土地的声音。[w]
@foguninit
@fg layer="1" pos="left" storage="godfather1"
@教父
抱歉，我们来迟了。[w]
@fg layer="2" pos="right" storage="fuher"
@主角
（低声）大家不必担心，稍后教父会向大家解释我们的计划。[w]
@clfg layer="all"
@fg layer="1" pos="center" storage="fuher"
你绕过了白雪与鲜血交织的战场，径直向萨满方阵走去。苏内库特警惕地看着你。[w]
@主角
我带来了伊里卡卓想要的东西。[w]
@主角
我跟你们走。[w]
@fg layer="1" pos="center" storage="Granata2"
@格拉娜塔
研习官！[w]
@fg layer="1" pos="left" storage="saman2"
@npc color="0xFFFFFF" id="苏内库特"
如此，也好。[w]
@npc color="0xFFFFFF" id="苏内库特"
听令，收阵回城！[w]
@bg clfg="1" storage="out of longhua"
@fg layer="1" pos="center" storage="Missa"
@弥撒
所以……教父，来说说吧？[w]
@clfg layer="all"
阵地的边缘，夕阳的辉光流过灰暗的雪。[w]
一阵号角声响起，战场上所有的人抬起头。[w]
哨塔上，索绰络颁负手而立。[w]
@fg layer="1" pos="center" storage="ban"
@索绰络颁
诸位，历时三个月的乱局终于将要迎来终结了。[w]
@索绰络颁
伊里卡卓袭击山城，囚禁陛下，为恶一方，蓄谋已久。[w]
@索绰络颁
今日其肆意调动萨满方阵，进攻龙华宫，意图已经昭然若揭。[w]
@索绰络颁
将士们！我希望你们能记住！[w]
@索绰络颁
即使被迫与同胞刀剑相向，你们也并非只是在屠戮！[w]
@索绰络颁
如今的境况与数百年前相似。[w]
@索绰络颁
孤竹馆的安定，更始边陲的和平，如果无人为其付出心血，我们的祖辈在这片土地上辛勤的耕耘就将付诸东流。[w]
@索绰络颁
现在，我将召开战术分析会议，请所有团以上干部来龙华宫集合。[w]
@clfg layer="all"
@fg layer="1" pos="left" storage="Granata"
@格拉娜塔
砂粒前辈，你还好吗？[w]
格拉娜塔将手伸向废墟中的砂粒，过度使用法术让她有些面色苍白。[w]
@fg layer="2" pos="right" storage="sand"
@砂粒
谢谢……[w]
@fg layer="1" pos="left" storage="Missa"
@弥撒
结果还是走到了这一步啊。[w]
@砂粒
内部的冲突比外来的侵扰更让人心寒。[w]
@砂粒
但……既然你们还在坚持，我也绝对没有理由放弃。[w]
@砂粒
从教父的带回的情报来看，伊里卡卓对今天的事态应该早有预料。[w]
@砂粒
他很可能已经集结了多支哈拉的军队。[w]
@砂粒
诸位，接下来的行动，我们要面对更为复杂的作战环境，并受到大型军队作战的干扰。[w]
@砂粒
但为了尽快阻止伊里卡卓，我们现在就必须启程了。[w]
@oldmovieinit
@bg clfg="1" storage="kolomna"
火光。无处不在的火光。[w]
照亮整个夜空，湮灭所有生命。[w]
@npc color="0xFFFFFF" id="模糊的声音"
这就是你想要的吗？[w]
少年怔怔地看着眼前的景象。[w]
树林，喷泉，繁丽的雕塑，纯白的大理石，在焦土中呼号。[w]
@npc color="0xFFFFFF" id="模糊的声音"
不必自责。就算没有你，他们也会被闻风而来的内务部逮捕，然后死在伊万诺夫要塞里。[w]
@npc color="0xFFFFFF" id="少年"
我……这么做有什么意义？[w]
@npc color="0xFFFFFF" id="模糊的声音"
我们不能在过去找寻自己的意义。[w]
@npc color="0xFFFFFF" id="模糊的声音"
等你能够接受这一切之后，再回威奇涅堡找我吧。[w]
@npc color="0xFFFFFF" id="模糊的声音"
我会继续帮助你……找到你想要的答案。[w]
@oldmovieuninit
@bgm storage="Pathetique.wav" loop="1"
@bg clfg="1" storage="on the train"
通往松江的火车似乎已经开了一整夜。[w]
你的座位旁边便是萨满方阵，而伊里家的其他军队则和你们的车厢保持了一定的距离。[w]
尽管没有成型的镣铐，你还是明显感受到了周围这些浓郁黑烟的束缚。[w]
一路上，伊里家的武装都沉默无言。[w]
道旁的冷杉是你们行程中的护栏，山口的晚风夹杂着从空中落下的新雪。[w]
火车沿着山的痕迹行驶，渐渐地，广阔的平原展现在你的面前。这是进入松江地区的征兆。[w]
沼泽、湖泊和江面，现在被冰霜连结为了一体。[w]
深沉的夜空此刻被云雾遮盖。[w]
你摸了摸自己的口袋，那枚印玺安静地躺在其中。[w]
@bg clfg="1" storage="songjiang plain"
钢铁缓缓停下，你们从车站出来后，又在黑暗中走了一段时间。[w]
丛生的芦苇和黝黑的泥泞让你不得不时刻注意脚下。[w]
@fg layer="1" pos="center" storage="saman2"
@npc color="0xFFFFFF" id="苏内库特"
我们到了。[w]
你抬头向前看去，万仞宫的大门向你缓缓敞开。[w]
这座建在原野上的行宫从前是孤竹馆的将军们督战的基地，现在则成为了侵袭滨港的前哨。[w]
@bg clfg="1" storage="songjiang"
而你站在它的瞭望平台上，身旁是这一切阴谋的策划者。[w]
@fg layer="1" pos="left" storage="yili1"
@伊里卡卓
这里的景色，感觉如何？[w]
@fg layer="2" pos="right" storage="fuher"
@主角
我只能看到……被火把照亮的黑夜。[w]
@伊里卡卓
平日我没有事务要处理的时候，就喜欢在这片平台上看看远方。[w]
@伊里卡卓
我能看到辛勤的耕农，扬逸的炊烟，游荡的鸡犬。[w]
@伊里卡卓
这些都让我想起自己的童年。[w]
@伊里卡卓
那时候这里还很平静，父亲还没有出国，松江人都喜欢这位和蔼的望族。[w]
@伊里卡卓
但在和孩子们玩耍的时候，我能感受到他们看我不一样的目光——[w]
@伊里卡卓
他们自然地把我划分到了不同的等级中。[w]
@伊里卡卓
当我的父亲在奥索达斯杳无音讯一段时间后，其他哈拉争先恐后地开始瓜分在松江的权益。[w]
@伊里卡卓
我被从小生活的院子赶了出来，只能寄身校舍度过寒冬。[w]
@伊里卡卓
于是我开始思考，思考有什么办法能够改变这一切。[w]
@伊里卡卓
后来我明白了。[w]
@伊里卡卓
站在我这样的立场，是完全无法找到一个真正的解决方案的。[w]
@伊里卡卓
因为我们必须打破的，就是这个哈拉制度本身。[w]
@主角
你……想废除哈拉管理的体制？[w]
@伊里卡卓
我知道您会感到惊讶。即使是我也时常会犹豫。[w]
@伊里卡卓
奥索达斯的封建体制令其固步自封，如果没有把自己框在徒有的信仰中，他们也许可以走的更远。[w]
@伊里卡卓
而我们也一样。[w]
@伊里卡卓
我们相信八支哈拉的统治是遵循传统的做法，我们囿于自己设下的牢笼。[w]
@伊里卡卓
现在早已不是茹毛饮血、野处穴居的时代了，研习官。[w]
@伊里卡卓
拥有这样的涨落能工业基础，我们本可以向未来更进一步，实现孤竹馆真正的振兴。[w]
@主角
所以你才想利用“远方花园”，扫清自己的障碍……[w]
@伊里卡卓
我已坦诚相待。[w]
@伊里卡卓
研习官，你是否愿意加入这场盛大变革的序幕？[w]
（爆炸声）[w]
@伊里卡卓
看来你的朋友到场了。[w]
他顺势伸出手扼住你的喉咙，掌心的紫色火焰蓄势待发。[w]
烟雾散去，几位执行员从围栏上跳至平台。[w]
@fg layer="1" pos="left" storage="erobrer1"
@征服者
举起手来！立刻放弃抵抗！[w]
@伊里卡卓
唉，万仞宫的防御工作还是有待加强。[w]
@伊里卡卓
欢迎你们，墨缇斯，你们出场喜欢使用这句台词吗？[w]
@fg layer="2" pos="right" storage="paradise lost1"
@失乐园
少废话了，快把研习官给我交出来！[w]
@伊里卡卓
你的朋友们似乎来的不是时候，等下次有了合适的机会，我一定会好好招待他们的。[w]
你想出声阻止执行员们，但却张不开双唇。[w]
@伊里卡卓
研习官和我已经达成了一些共识，我们需要更安静的环境进一步讨论各项事宜。[w]
@伊里卡卓
因此——[w]
@clfg layer="all"
一阵黑色的烟雾席卷了平台。[w]
@fg layer="1" pos="left" storage="saman2"
@npc color="0xFFFFFF" id="苏内库特"
诸位，请回吧。[w]
@fg layer="2" pos="right" storage="sand"
@砂粒
可恶……就这么溜走了。[w]
@npc color="0xFFFFFF" id="苏内库特"
需要我提醒你吗，阿姆鲁·塔尔玛，你家族的人正在向这里赶来。[w]
@砂粒
我并不意外就是了。[w]
@npc color="0xFFFFFF" id="苏内库特"
看来你的确下定了决心。[w]
@npc color="0xFFFFFF" id="苏内库特"
那就让我再来领教一下你们的实力吧！[w]
@bg clfg="1" storage="songjiang plain"
@npc color="0xFFFFFF" id="索绰络亲兵长官"
长老，我们已经靠近万仞宫！[w]
@fg layer="1" pos="center" storage="ban"
@索绰络颁
希望墨缇斯的行动成功干扰了他们的视线。[w]
@索绰络颁
马诚和尚震阳准备好了吗？[w]
@npc color="0xFFFFFF" id="索绰络亲兵长官"
他们承诺尽快使用铁路转运军队了，不过还没能全部就位。[w]
@索绰络颁
现在得看石家军的动向了……[w]
@npc color="0xFFFFFF" id="索绰络亲兵长官"
我们也得做好尚军倒戈的准备。[w]
@npc color="0xFFFFFF" id="索绰络传令兵"
石家贝勒同意了我部的邀约，但还没有调动军队的迹象。[w]
@索绰络颁
石文礼这么明确地表达立场，多半有诈。[w]
@索绰络颁
只能走一步看一步了。[w]
@索绰络颁
传令，让全军关注宫内的进攻信号弹！[w]
@bg clfg="1" storage="in longhua"
你被伊里卡卓裹挟着来到万仞宫的隔间里。[w]
@fg layer="1" pos="center" storage="yili1"
@伊里卡卓
那么，是时候展现诚意了。[w]
你假装犹豫了半晌，然后将那枚玉石从口袋里掏出。[w]
平台上的厄蒂普斯应该接收到了你的信号，透过隔间的窗，白色的强光在天空中绽放。[w]
紧接着是交织的号角声、呐喊声和脚步声。[w]
@fg layer="1" pos="center" storage="yili2"
@伊里卡卓
容我失陪，今天来造访的客人有些多。[w]
你在他脸上第一次捕捉到了犹豫的神态，你的目的达到了。[w]
@clfg layer="all"
接下来，你要再次使用跃迁装置，回到你的战场——[w]
@bg storage="songjiang"
@fg layer="1" pos="left" storage="saman2"
@npc color="0xFFFFFF" id="苏内库特"
果然，你们的任务不过是拖延万仞宫的防务力量。[w]
@npc color="0xFFFFFF" id="苏内库特"
但伊里卡卓的计划又怎么可能会被你们轻易打乱？[w]
@fg layer="2" pos="right" storage="paradise lost"
@失乐园
指挥中枢如果遭到破坏，你们和盟友的联系会被重创吧。[w]
@npc color="0xFFFFFF" id="苏内库特"
呵，你们小瞧萨满了。[w]
@bg grayscale="1" storage="songjiang"
@npc color="0xFFFFFF" id="苏内库特"
（萨满语）[w]
@fg layer="2" pos="right" storage="sand"
@砂粒
——！[w]
@砂粒
全体注意，我们即将面对一个萨满方阵的围剿！[w]
@砂粒
保持阵型！[w]
@npc color="0xFFFFFF" id="苏内库特"
就先在这里埋葬你们吧。[w]
@bg clfg="1" storage="songjiang plain"
@npc color="0xFFFFFF" id="模糊的声音"
你太大意了。那些盟友终究不可靠。[w]
@fg layer="1" pos="center" storage="yili2"
@伊里卡卓
我没时间听你指导。[w]
@npc color="0xFFFFFF" id="模糊的声音"
唉，我只是不想看到你在这里自取灭亡。[w]
@伊里卡卓
尚震阳辜负了我的期待，石家还在摇摆。[w]
@伊里卡卓
但马、尚徒有数量，不堪一击。[w]
@伊里卡卓
现在的攻势符合我们的预期，对方战线拉得太长，他们的军队已经被我们突破，开始自乱阵脚。[w]
@伊里卡卓
需要真正警惕的，依然是索绰络亲兵们。[w]
@npc color="0xFFFFFF" id="模糊的声音"
那好，那好。想清楚自己该做什么。[w]
@伊里卡卓
阿尔哈图，萨满们都准备好了吗？[w]
@npc color="0xFFFFFF" id="阿尔哈图"
……随时待命。[w]
@伊里卡卓
现在，让他们重新学会敬畏吧。[w]
@clfg layer="all"
@npc color="0xFFFFFF" id="索绰络传令兵"
报告！发现五个萨满方阵！[w]
@fg layer="1" pos="center" storage="ban"
@索绰络颁
看来伊里卡卓不准备隐藏实力了。[w]
@npc color="0xFFFFFF" id="索绰络传令兵"
报！西北侧森林外缘发现一支部队！[w]
@索绰络颁
去探他们的令旗！[w]
一束紫黑色的火焰猛然袭向军帐。[w]
@npc color="0xFFFFFF" id="钮祜禄·穆罕"
收兵吧，索绰络·颁。[w]
同样苍老的声音从无形的燃烧中传出。[w]
@npc color="0xFFFFFF" id="钮祜禄·穆罕"
钮祜禄、那拉、阿姆鲁、石家四位贝勒一致同意总领的决定，决定派军赴松江缉拿扰乱孤竹馆秩序的危险分子。[w]
@npc color="0xFFFFFF" id="钮祜禄·穆罕"
联军将至，索绰络家想只身抗总领之命吗？[w]
@索绰络颁
休想！纵其他七支哈拉都要置孤竹馆于险境，我索绰络也决不让步！[w]
@npc color="0xFFFFFF" id="钮祜禄·穆罕"
冥顽不化。[w]
紫火落下，在枯草间炸开，被索绰络颁一脚踩灭。[w]
@索绰络颁
前线战况如何？[w]
@npc color="0xFFFFFF" id="索绰络亲兵长官"
萨满的攻势太强，我们只能勉强守住！[w]
@索绰络颁
不行，必须找机会突进！[w]
@npc color="0xFFFFFF" id="索绰络亲兵长官"
啧！有谁失手把枯草点燃了！[w]
@索绰络颁
让士兵们不要惊慌，火势不会蔓延得太……[w]
@索绰络颁
嗯……？
萨满们为火焰让开了一条道，不是出于战术，而是……惊慌。[w]
@索绰络颁
传令，让士兵把能烧的都点着，向萨满方阵投掷！[w]
@npc color="0xFFFFFF" id="索绰络亲兵长官"
可……遵命！[w]
黑色的烟雾陷入混乱，漆黑之火被赤红的焰气吞没。[w]
@fg layer="1" pos="left" storage="saman1"
@fg layer="2" pos="right" storage="saman1"
@fg layer="3" pos="center" storage="saman2"
@npc color="0xFFFFFF" id="阿尔哈图"
后撤！不要看那些火焰！[w]
但已经没有人再去听这位大萨满的话了，巫师们纷纷向真正的火焰膜拜臣服。[w]
@clfg layer="all"
@fg layer="1" pos="center" storage="ban"
@索绰络颁
我们先前竟然都没有发现如此明显的事情。[w]
@索绰络颁
那些虚妄的黑火，震慑了我们数百年。[w]
@索绰络颁
伊里卡卓惊讶的发现，自己的歼灭计划无法奏效了，萨满的攻势被迅速挫败。[w]
@fg layer="1" pos="center" storage="yili2"
@npc color="0xFFFFFF" id="模糊的声音"
调用“远方花园”吧。不必手下留情。[w]
@伊里卡卓
……好，事到如今。[w]
他尝试重复早已练习多次的术法，向其中注入自己的涨落能。[w]
印玺“启动”了，但没有地面武器回应他的命令。[w]
愕然，随即是质问。[w]
@bg clfg="1" grayscale="1" storage="songjiang"
@fg pos="left" layer="1" storage="saman2"
执行员们明显地察觉到了苏内库特的急切与愤怒。[w]
砂粒太了解萨满的作战方式了，苏内库特无法从平台的战斗中迅速抽身，只能与墨缇斯进行消耗战。[w]
下方的联军即将攻入万仞宫，呐喊声甚至盖过了兵刃交接的声音。[w]
@fg layer="2" pos="right" storage="sand"
@砂粒
不行——！[w]
@fg layer="1" pos="left" storage="Missa"
@弥撒
教父！去支援砂粒的屏障！[w]
@fg layer="1" pos="left" storage="paradise lost"
@失乐园
哇呃，苏内库特不会要放大招了吧……！[w]
@fg layer="2" pos="right" storage="sand"
@砂粒
他想让几名萨满引爆自身来让整个平台成为灰烬！[w]
@fg layer="1" pos="left" storage="erobrer1"
@征服者
不要命的家伙！[w]
@clfg layer="all"
凝聚，燃烧，黑色的生命即将释放罪恶的灵魂。[w]
然后，他们在刹那间冷却，成为余烬。[w]
@fg layer="1" pos="left" storage="Granata"
@格拉娜塔
研习官！[w]
@fg layer="2" pos="right" storage="fuher"
@主角
怎么样，我来的还算及时吧？[w]
@fg layer="1" pos="left" storage="Apo1"
@伪经
研习官，你终于回来了。[w]
@主角
可惜每次退火的时间间隔有点长啊，下次能不能让科研部试试改进一下？[w]
@clfg layer="all"
宫门倒塌，苏内库特看了你们一眼，没有再说话。[w]
方阵随着一团黑雾消失了。[w]
@fg layer="1" pos="left" storage="Missa"
@弥撒
看来他们得去支援下面的守军啦。[w]
@fg layer="2" pos="right" storage="fuher"
@主角
任务完成，我们立刻从这里撤退！[w]
@fg layer="1" pos="left" storage="yili2"
@伊里卡卓
别想就这么离开！[w]
你察觉到，萨满们没有真正远去，他们在集体释放精神控制法术。[w]
愤怒的军队彻底冲垮了万仞宫守军的防线，而萨满将他们诱导至此。[w]
他们不仅要铲除暴君，更要抓住你们这群破坏“衍庆”、鼓动内乱的“外来人”。[w]
@主角
跳！分散作战，尽快撤离，在原定计划地点会合！[w]
你们无法再顾虑更多了。[w]
你纵身一跃，从围栏上翻下，落入嘈杂混乱的人群中。[w]
@menu
@bg clfg="1" storage="SP time"
@style align="center"
6：00  松江市  91号军用仓库[w]
@bg clfg="1" storage="store house"
@dia
你向着先前约定的地点踉跄地跑去，所幸战局冗杂，否则你不可能轻易脱身。[w]
距离万仞宫并不远的废弃仓库，由于年老失修，结构损坏，它已经无法再囤积军粮。[w]
按照计划，你们可以在此处集合后，绕开战场中心，安全撤离。[w]
其他人也许在途中被人群阻滞了，你只好先倚靠着锈蚀的钢架稍作休息。[w]
脚步声，脚步声在空旷的仓库里回荡。[w]
有人在向你走来。[w]
@fg layer="1" pos="left" storage="yili1"
@伊里卡卓
看来我们之间还有一些误会，墨缇斯的研习官。[w]
退火还没准备好，你需要拖延时间。[w]
*拖延时间
@clsel
@clfg layer="all"
该说些什么？[w]
@selstart hidemes="1" hidesysbutton="1"
@locate y="210" x="425"
@selbutton target="*你能带来怎样的振兴" text="你能带来怎样的“振兴”？"
@locate y="280" x="425"
@selbutton target="*你不了解它的原理" text="你不了解它的原理。"
@locate y="350" x="425"
@selbutton target="*一切还来得及" text="一切还来得及。"
@selend
*你能带来怎样的振兴
@clsel
@fg layer="2" pos="right" storage="fuher"
@主角
当你扫清了哈拉制度的桎梏，又能为孤竹馆带来怎样的振兴？[w]
@主角
即使你真的实现了第一步，奥更之间的外交冲突也在所难免。[w]
@主角
为了避免自己的边界上出现如此有威胁性的武器，奥索达斯会想进一切办法除掉你。[w]
@主角
而其他更始加盟国也会恐惧你打破传统的平衡秩序，向它们发起挑战。[w]
@fg layer="1" pos="left" storage="yili1"
@伊里卡卓
我需要的不仅是“远方花园”——[w]
@伊里卡卓
要战胜这数百年的坚冰，我需要整个更始的力量。[w]
@主角
你也想入主新都。[w]
@伊里卡卓
这是我在联邦皇帝竞选中分量十足的筹码。[w]
@jump target="*拖延时间"
*你不了解它的原理
@clsel
@fg layer="2" pos="right" storage="fuher"
@主角
你的知识和技术，都来源于奥索达斯。[w]
@主角
但这里是更始。数百年的发展早已让两国的科技发展状况大相径庭。[w]
@fg layer="1" pos="left" storage="yili1"
@伊里卡卓
所以我需要你的协助，墨缇斯的研习官。[w]
@主角
我不可能永远留在这。我不属于你的事业。[w]
@主角
倘使我离开孤竹馆，番直宿卫又拒绝配合你的研究，“远方花园”就会成为与奥索达斯的高度同源的武器。[w]
@主角
当你在奥索达斯的“引领”抽身离开，你又该作何打算？[w]
@伊里卡卓
那我就只好永远将你留在此处了。[w]
@jump target="*拖延时间"
*一切还来得及
@clsel
@fg layer="2" pos="right" storage="fuher"
@主角
你仍然是哈拉总领，一切还来得及。[w]
@fg layer="1" pos="left" storage="yili2"
@伊里卡卓
来得及……？萨满已经被击退，各支哈拉作壁上观。[w]
@伊里卡卓
如果不依靠“远方花园”，我如何和整个哈拉制度对抗？[w]
@主角
当然是依靠把你选上来的千千万万的普通人。[w]
@主角
我不知道这三个月你身上发生了什么，但我希望你能真的走下去，和他们站在一起。[w]
@主角
而不是像你十五年前做的那样，让整个孤竹馆都被火焰吞噬。[w]
伊里卡卓有些发怔。[w]
@bg convert="1" storage="store house"
忽然间，他怒目向你，风雪在他手中凝集，“雪玛虎”扼住了你的咽喉，将你提起。[w]
@npc color="0xFFFFFF" id="伊里卡卓？"
@emb exp="f.姓"
，你并没有选择的余地。[w]
意识有些模糊。[w]
他已经听不进去你说的话了，拒绝配合的你即是他未来的威胁。[w]
*临场选择
@clfg layer="all"
@bg convert="1" clfg="1" storage="store house"
你该怎么办？作为一个战场指挥官，作为一个涨落能的研究者……[w]
@selstart hidemes="1" hidesysbutton="1"
@locate y="200" x="425"
@selbutton target="*强行启动退火" text="强行启动退火"
@locate y="300" x="425"
@selbutton target="*尝试接触印玺" text="尝试接触印玺"
@selend
*强行启动退火
@clsel
你伸出手触碰白雪，涨落能在疯狂躁动。[w]
不行，位置不对，但是你已无法抽身。[w]
再这样下去——[w]
@bg clfg="1" storage="black"
湮灭。[w]
等执行员们赶到现场时，仓库已经从地面上完全消失。[w]
长夜仍旧没有尽头。[w]
@bg storage="ein palast"
哎呀，好久不见.[w]
虽然你已经不记得我了，也没有太多时间在这里停留.[w]
不必担心，我们还有很多见面的机会.[w]
即使是最糟糕的情况，也不过是把你带回到这里，一切仍有转机.[w]
尽管如此，请及时记录你观测到的重要时刻，避免我们以这种方式见面.[w]
我相信你的判断.[w]
我相信…你能为我们都带来一个更好的结局.[w]
现在，请再试一次吧.[w]
@jump target="*临场选择"
*尝试接触印玺
@clsel
@bg convert="1" clfg="1" storage="store house"
退火还没有冷却完成，如果强行启动可能会让此处的时空坍缩。[w]
那么——[w]
你试着去感受伊里卡卓手中的印玺。[w]
使用它并不简单，但你只是要像伊里卡卓施术封印时做的那样，把它当作涨落能的转换器。[w]
你捕捉到了伊里卡卓先前注入的能量源。接下来就是引发它了。[w]
玉石的结构在颤动，涨落能辐射着向四周倾泻。[w]
伊里卡卓被突如其来的冲击击倒了，雪玛虎失去支持，随即塌陷。[w]
你喘了一口气。[w]
然后呢？你应该转身逃跑，还是继续和他消耗时间？[w]
门口有大量的脚步声。[w]
@索绰络颁
伊里卡卓，你已经被包围了！[w]
墨缇斯的其他人没有出现，这很明智，但你们无法在短时间内找到下一个集合点了。[w]
@npc color="0xFFFFFF" id="伊里卡卓？"
呵……[w]
你退到了墙角。[w]
你看到伊里卡卓背过去的手上，紫黑色的火焰在凝集。[w]
@主角
快后退！他想引爆整个仓库！[w]
来不及了——[w]
但这股火焰却在瞬间熄灭。[w]
有什么从远处的空中，以不合常理地速度射入了黑暗的空间。[w]
伊里卡卓跪坐下来，垂下头，没有再动。[w]
震撼之中，你终于看清，那是——一根长矛。[w]
准确无误地贯穿了伊里卡卓的心脏。[w]
所有人都静默无言。清晨的风在门前回荡，替你们讲完要说的话。[w]
@bg storage="wheat field"
@snowinit
一个人影从荒原上缓缓靠近。[w]
@npc color="0xFFFFFF" id="？？？"
国家安全行动处确认更始联邦辽东、松水、开元三道行军总管、孤竹馆现任哈拉总领伊里卡卓存在叛国行径，威胁联邦安全。[w]
@npc color="0xFFFFFF" id="？？？"
依照联邦政府颁布的特别行动令，行动小组于755年1月5日将其于现场处死。[w]
@npc color="0xFFFFFF" id="？？？"
6时30分，确认目标死亡。[w]
@npc color="0xFFFFFF" id="？？？"
诸位，请记住，新都时刻关注着孤竹馆的局势。[w]
@npc color="0xFFFFFF" id="？？？"
我先行告辞。[w]
身穿蓝色军装的特务撂下了这些话，便从雪原上消失，无人回应，无人挽留。[w]
那根长矛还留在远处，仿佛是黛馆为这片原野带来的示威。[w]
直到某一刻，久经沙场的老人沉重地发出了一声叹息。[w]
@fg layer="1" pos="left" storage="ban"
@索绰络颁
把他抬回得利寺山城，按哈拉总领的礼仪安葬吧。[w]
@bg storage="store house"
@fg layer="1" pos="left" storage="Granata2"
@格拉娜塔
研习官，你没事吧！[w]
@fg layer="2" pos="right" storage="fuher"
@主角
N.S.A.D.……我没想到会是这个结果。[w]
@fg layer="1" pos="left" storage="sand"
@砂粒
索绰络颁阁下随后会为我们回收印玺。[w]
@砂粒
现在，孤竹馆已经不需要它了。[w]
@clfg layer="all"
你有些遗憾地看了一眼伊里卡卓。他的周围突然出现了微弱的涨落能反应。[w]
@npc color="0xFFFFFF" id="模糊的声音"
这一次，就算是你赢了吧，[emb exp=f.姓]。[w]
@主角
你……[w]
@bg clfg="1" storage="wheat field"
沮丧、恐惧围绕着军队，他们全无胜利者的自豪。[w]
@fg layer="1" pos="center" storage="ban"
索绰络颁再次登上了万仞宫的平台。[w]
他俯视着自己训练出来的孤竹馆人，他们勇敢、坚强，面对风雪，他们从不低头。[w]
但他没有教过他们，如何去对待自己的家园，如何面对成为敌人的手足，如何看向未来和远方。[w]
也许伊里卡卓会告诉他们。但现在只能由他代为转达了。[w]
@索绰络颁
将士们……我们今天都见证了一场流血的冲突。[w]
@索绰络颁
伊里卡卓……他是一位优秀的领导人，他敢于探索，他的智慧本可以引领孤竹馆走的更远。[w]
@索绰络颁
可惜他丧失了孤竹馆人所拥有的美德，他试图让整个孤竹馆为他的野心陪葬。[w]
@索绰络颁
我无法为你们给出新都方面所为一个合适的评价。但它至少是一种警醒。[w]
@索绰络颁
墨缇斯，他们也来自新都。但在这场政变里，如果没有他们，我们无法救出陛下，也无法如此快地识破伊里卡卓的阴谋。[w]
@索绰络颁
我们不会再追究今日与我们作战的力量，无论如何，他们是我们的同胞。[w]
@索绰络颁
伊里家的士兵们，我希望你们也能理解这一点……[w]
@索绰络颁
然后，我们一起寻找一个新的未来。[w]
@clfg layer="all"
@fg layer="2" pos="right" storage="fuher"
@主角
砂粒，我有一个问题。[w]
@fg layer="1" pos="left" storage="sand"
@砂粒
你说。[w]
@主角
二十二年前的事情，你知道多少？[w]
@砂粒
我……不确定。[w]
@砂粒
因为阿姆鲁家和伊里家交好，我小时候常常在伊里方任的院子里生活。[w]
@砂粒
他和伊里卡卓一样，一直在寻找着改变孤竹馆的方法。[w]
@砂粒
当时的人们都觉得他简直就是疯了，居然质疑哈拉制度有问题。[w]
@砂粒
某一天，已经有些年迈的他激动地告诉我，他得到去奥索达斯考察的机会了。[w]
@砂粒
我也很高兴，也许换一个角度，就有机会找到新的思路了。[w]
@砂粒
他说一有新的发现和思考，就会寄信回国。[w]
@砂粒
他的确在奥索达斯发现了许多，新的技术，新的工艺，新的体制。[w]
@砂粒
但他也发现了这个国度的阴暗面。[w]
@砂粒
二十二年前的夏日，他用萨满语给我写了一封信。[w]
@砂粒
在字里行间，我看到了他的愤怒和犹豫，他想阻止一场阴谋。[w]
@砂粒
特维尔大公图谋发兵夺取威奇涅堡，本来这和伊里方任并无关系。[w]
@砂粒
但特维尔大公生性残暴，他的部下嗜好杀戮与血腥。[w]
@砂粒
他不忍自己生活了数年的地方，那些先进的科学和文明在战争中毁于一旦。[w]
@砂粒
于是他深入调查了这件事。[w]
@砂粒
他进一步发现，特维尔大公在孤竹馆也早已布下了间谍网，一旦他在威奇涅堡得势，孤竹馆地区将成为奥索达斯的下一个目标。[w]
@砂粒
他告诉我，萨满中已经有了叛徒，特维尔疯狂的部下想利用“衍庆”引发一场恐怖袭击。[w]
@砂粒
他嘱咐我一定要阻止这件事，而他也要尝试去在这股急流中，向危机四伏的险滩进发。[w]
@砂粒
我的确说服了父亲……但伊里方任最终没能回到孤竹馆。[w]
@主角
这和我听到的版本似乎不太一样……[w]
你向砂粒复述了伊里卡卓的话。[w]
@主角
为什么当时你们没有将这些告诉伊里卡卓？[w]
她悲伤又无奈地摇摇头。[w]
@砂粒
父亲以答应出手处理“衍庆”为条件，让我对此事永远缄默。[w]
@砂粒
他担心伊里卡卓知道真相后，向奥索达斯复仇，或是和伊里方任一样，一心只想着推翻八王会议，最终引来杀身之祸。[w]
@砂粒
当时伊里家已经失势，父亲认为，即使留在国内，伊里卡卓也可能成为各支哈拉争夺利益的工具，不如让他去奥索达斯，远离这些是非争斗。[w]
@砂粒
打听到他的学校后，父亲便匿名给他提供资金支持。[w]
@砂粒
我也多次尝试给他写信，但总是出不了孤竹馆便被官方以各种名义扣留。[w]
@砂粒
看来，他最终还是被威奇涅堡用心险恶的政客误导和利用了。[w]
@主角
似乎有什么可以通过涨落能介质远程地和他实现信息交流。[w]
@主角
那个声音我很熟悉。[w]
@主角
现在想来，那是我们新闻里的常客。[w]
@主角
世界控制公司的董事长，臭名昭著的——[w]
@主角
“羽音”。[w]
@snowuninit
@bg clfg="1" storage="in longhua"
@fg left="100" layer="1" top="10" storage="yaxu1" locate="1"
@npc color="0xFFFFFF" id="桓予七"
好久不见，墨缇斯的大忙人。[w]
@fg layer="2" pos="right" storage="yon"
@盐月音
看起来，我错过了不少精彩故事。[w]
@盐月音
你也憔悴了不少。[w]
@npc color="0xFFFFFF" id="桓予七"
这次为什么不亲自出马？[w]
@盐月音
我想看看，如果是[emb exp=f.姓]的话，会不会做得更好？[w]
@盐月音
毕竟，我们不只是一个“生物研习所”。[w]
@盐月音
从前我们所面对的挑战，在未来必定会重演。[w]
@盐月音
当时我没有选对……[w]
@盐月音
如果下一次，做出选择的是[emb exp=f.姓]，结局……也许会有所不同。[w]
@npc color="0xFFFFFF" id="桓予七"
你也想把重任丢给年轻人了？[w]
@盐月音
抱着一个沉重而未知的匣子，你会担惊受怕，会猜想它的丢失。[w]
@盐月音
或者在某一天里猝不及防地把你炸碎。[w]
@npc color="0xFFFFFF" id="桓予七"
一百多年前，你们把这些装置散发到所能及的每一处，替它们加上各式各样的名目。[w]
@npc color="0xFFFFFF" id="桓予七"
现在又为什么要把它们收回来？[w]
@npc color="0xFFFFFF" id="桓予七"
我可不记得墨缇斯还有废品回收这项业务。[w]
蓝发女子不知可否地笑了笑。[w]
@npc color="0xFFFFFF" id="桓予七"
啊，又是什么保密协议，你老是拿这一套搪塞我。[w]
@npc color="0xFFFFFF" id="桓予七"
你们马上就要回新都了吗？[w]
@盐月音
是的，我们还有下一项任务。[w]
@npc color="0xFFFFFF" id="桓予七"
一路顺风。[w]
@npc color="0xFFFFFF" id="桓予七"
“愿更始永远和平。”[w]
@盐月音
“愿更始永远和平。”……[w]
@bg clfg="1" storage="black"
@npc color="0xFFFFFF" id="轻浮的声音"
看来你又浪费了几年时间在没意义的发展目标上呢。[w]
@npc color="0xFFFFFF" id="模糊的声音"
这次的确是我的失策。[w]
@npc color="0xFFFFFF" id="模糊的声音"
如果没有更始的眼线搅局，我的计划会更顺利。[w]
@npc color="0xFFFFFF" id="模糊的声音"
事情又正好撞到了墨缇斯……[w]
@npc color="0xFFFFFF" id="冰冷的声音"
他们似乎没有以前那么果断了。[w]
@npc color="0xFFFFFF" id="轻浮的声音"
没关系哈哈哈哈！迟早有一天，他们会被我全部干掉！[w]
@npc color="0xFFFFFF" id="轻浮的声音"
我们来打个赌吧，羽音，看看谁能够先打到他们的老巢——[w]
@npc color="0xFFFFFF" id="模糊的声音"
没兴趣。[w]
@npc color="0xFFFFFF" id="冰冷的声音"
别着急，睚眦，回答我。[w]
@npc color="0xFFFFFF" id="冰冷的声音"
你在镰仓的任务完成的怎么样了？[w]
@bg clfg="1" storage="RNWS inter"
……接入成功。欢迎回来，[emb exp=f.姓]。[w]
为了防止您在跃迁和干涉后丧失有关操作本系统方法的记忆，接下来我将播放讲解录音。[w]
如您对此仍有印象，可以选择跳过。[w]
@clfg layer="all"
@selstart hidemes="1" hidesysbutton="1"
@locate y="200" x="425"
@selbutton target="*播放讲解录音" text="播放讲解录音"
@locate y="300" x="425"
@selbutton target="*跳过讲解" text="跳过讲解"
@selend
*播放讲解录音
@clsel
作为RNWS系统的子分支，干涉系统目前尚未开发成熟，仅向您和部分开发人员开放使用。[w]
本系统为您提供可视化的“探索视域”面板，您可以自由跃迁前往目前开放的地点进行观测。[w]
随着探索的进展，您将获得更多地点的观测许可。[w]
请您留意观测结果发生的“时间”，以便更好地理清各项事件间的逻辑关系，掌握主动权。[w]
目前世界稳定度为100，您的每次地点跃迁都会损耗1点世界稳定度。[w]
本系统会为您提供随机生成的力量、体质、敏捷、外貌、智力、意志等各项指标，使您在观测时能够以一个无关变量的形式存在。[w]
当遭遇事件时，系统会对您的某项指标进行检定，倘若您的指标高于计算结果，则可继续推进此事件。[w]
反之，此次跃迁会被判定为失败，您需要在下一次跃迁中再次进行检定。[w]
我们会时刻监控您的各项指标，倘使它们和世界稳定度有任意一项达到0，您的全局观测将被迫终止。[w]
每进行10次跃迁，系统会为您显示本轮观测的各项指标，并根据计算结果发放对应奖励。[w]
接下来，系统将随机生成您的各项指标，如果您对此不满意，可以选择重新生成。[w]
*生成指标
@eval exp="f.str = 5*intrandom(0, 7)+5*intrandom(0, 7)+4*intrandom(0, 7)+intrandom(0, 7)"
@eval exp="f.con = 5*intrandom(0, 7)+5*intrandom(0, 7)+4*intrandom(0, 7)+intrandom(0, 7)"
@eval exp="f.dex = 5*intrandom(0, 7)+5*intrandom(0, 7)+4*intrandom(0, 7)+intrandom(0, 7)"
@eval exp="f.app = 5*intrandom(0, 7)+5*intrandom(0, 7)+4*intrandom(0, 7)+intrandom(0, 7)"
@eval exp="f.pow =5*intrandom(0, 7)+5*intrandom(0, 7)+4*intrandom(0, 7)+intrandom(0, 7)"
@eval exp="f.int = 5*intrandom(0, 7)+5*intrandom(0, 7)+25+intrandom(0, 7)"
@eval exp="f.stb=100"
@eval exp="f.vrv=0"
您的力量为[emb exp=f.str]，体质为[emb exp=f.con]，敏捷为[emb exp=f.dex]，外貌为[emb exp=f.app]，智力为[emb exp=f.int]，意志为[emb exp=f.pow]。[w]
@clfg layer="all"
@selstart hidemes="1" hidesysbutton="1"
@locate y="200" x="425"
@selbutton target="*接受此结果" text="接受此结果"
@locate y="300" x="425"
@selbutton target="*不满意此结果" text="不满意此结果"
@selend
*跳过讲解
@clsel
@jump target="*生成指标"
*接受此结果
@clsel
观测即将开始，祝您一切顺利。[w]
@jump target="*开始观测"
*不满意此结果
@clsel
@jump target="*生成指标"
*开始观测
@eval exp="f.thread=2"
@eval exp="f.eb=1"
@eval exp="f.sil=1"
@eval exp="f.fenma=1"
@eval exp="f.NMmap=1"
@eval exp="f.DMmap=1"
@menu
@jump target="*today world" storage="explore.ks"
