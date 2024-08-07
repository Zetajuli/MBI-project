*特洛姆索
@clmap
@dia
@if exp="f.sil==1"
@bg clfg="1" storage="tromso1"
墨缇斯的特洛姆索办事处接收到了一封来自玛格丽特邦联极地科考站的电报。[w]
自称艾瓦里基的研究员急切地想寻求你们的帮助。[w]
是什么让他如此惊慌？[w]
@selstart hidemes="1" hidesysbutton="1"
@locate y="200" x="425"
@selbutton target="*立刻出发" text="立刻出发"
@locate y="300" x="425"
@selbutton target="*谨慎考虑" text="谨慎考虑"
@selend
@else
@jump target="*冰湾出发后"
@endif
*立刻出发
@clsel
你警觉起来，注意到他字句中“星云”和“暴风雨”等词，这很可能与你们要调查的涨落能异常现象有关。[w]
时间不多了，你收拾好装备，带队向他给出的坐标前进。[w]
@hidemes
@bg clfg="1" storage="silco"
@waitclick
@eval exp="f.sil=2"
@map storage="delist.map"
*谨慎考虑
@clsel
艾瓦里基的发信地址并非科考站驻地，而是在冰湾的深处，贸然闯入很可能会引起郡厅长官的反感。[w]
你们决定按照原先计划，与科考站队员们一起行动。[w]
@hidemes
@bg clfg="1" storage="silco"
@waitclick
@eval exp="f.sil=2"
@map storage="delist.map"
*冰湾出发后
@eval exp="f.sill = intrandom(1, 5)"
@dia
@if exp="f.sill==1"
@jump target="*波里维卡水族馆"
@elsif exp="f.sill==2"
@jump target="*极光教堂"
@elsif exp="f.sill==3"
@jump target="*世界剧院"
@elsif exp="f.sill==4"
@jump target="*26号公交车站"
@end if
*波里维卡水族馆
@clsel
@bg storage="aquarium"
许多外来的游客在此处徜徉，波光在你的头顶闪耀。[w]
你的队员们纷纷表示自己隐约在水的深处看到了过去欢乐的记忆，但你却没有类似的反应，水中只有普通的北地动物在游弋。[w]
@map storage="delist.map"
*极光教堂
@clsel
@bg storage="light church"
在午夜的太阳照耀下，教堂的彩窗玻璃反射出迷人的光辉。[w]
你踏进这座三角形的巨型建筑，一位白色的修士为你盛了一碗从建筑中央涌出的泉水，希望为你进行祷告。[w]
@map storage="delist.map"
*世界剧院
@clsel
@bg storage="cafe"
由废弃艺术电影院改造而来，到这里喝咖啡的人们戴着精心挑选的时髦镜框眼镜。[w]
荧幕上放着老旧的独立电影，而舞台上偶尔会有一个拉着伤感的低音提琴的乐队成员。[w]
@map storage="delist.map"
*26号公交车站
@bg storage="bus station"
沿海的站台上清凉的风让你有些出神。[w]
占满整个公交站牌的路线图向你展示了交通系统在冰湾可触及的所有地方。[w]
@map storage="delist.map"
*芬玛尔达
@clmap
@if exp="f.fenma==1"
@bg clfg="1" storage="fenma"
@dia
@npc color="0xFFFFFF"  id="艾瓦里基"
终于有人愿意回应我的讯号了。[w]
白发的老人有些仓促地搓着手。[w]
@npc color="0xFFFFFF"  id="艾瓦里基"
我意外地读到了那些信息，异常的数据被他们用一个可笑的答案进行了解释。[w]
@npc color="0xFFFFFF"  id="艾瓦里基"
没人愿意再到这里来了，大家都知道，又一个四十一年，“暴风雨”就要靠近冰湾。可若果真如他们所说，祂这次又怎么会放过整个玛格丽特？[w]
@主角
他们都恐惧伊基尔斯的到来。[w]
老人惊讶地眨着眼睛。[w]
@npc color="0xFFFFFF"  id="艾瓦里基"
这在科考站是绝密的。[w]
@npc color="0xFFFFFF"  id="艾瓦里基"
大家都知道蔷薇星云附近的恒星数量总会在“暴风雨”后减少，可没人会把这些事与某种力量联系起来，这是对我们这些研究员的侮辱。[w]
@npc color="0xFFFFFF"  id="艾瓦里基"
但在灾难中的幸存者总会重复这个名字。他们最后都被迫凋亡。[w]
交流结束，艾瓦里基松了一口气。[w]
@npc color="0xFFFFFF"  id="艾瓦里基"
我已经把信息传递给了你们。接下来怎么做，就取决于你们了。[w]
@selstart hidemes="1" hidesysbutton="1"
@locate y="200" x="425"
@selbutton target="*与艾瓦里基一同前进" text="与艾瓦里基一同前进"
@locate y="300" x="425"
@selbutton target="*返回最近的科考站寻找救援" text="返回最近的科考站寻找救援"
@selend
*与艾瓦里基一同前进
@clsel
你深知这头旧兽的野心已经愈发强大，要消除它的影响，你们离不开一个熟知冰湾的向导。[w]
@map storage="delist.map"
*返回最近的科考站寻找救援
@clsel
艾瓦里基将仅剩的支援物资交给了你们。[w]
@npc color="0xFFFFFF"  id="艾瓦里基"
看来我还是来不及发现真相了。[w]
@npc color="0xFFFFFF"  id="艾瓦里基"
你们快离开吧，我会在这里见证“暴风雨”的降临。[w]
@eval exp="fenma=2"
@map storage="delist.map"
@if exp="f.fenma==2"
@bg clfg="1" storage="lighthouse"
木制的灯塔基座突兀地矗立在荒原上，它的上方闪耀着模糊的黑色光芒。[w]
艾瓦里基向你解释到，这是伊基尔斯侵蚀的痕迹。[w]
正是这些瞭望塔在过去的日夜中监控着星云的动向，准确地说，是祂的动向。[w]
祂追踪和捕食这些恒星，将它们的能量随机转置到与其相关的物质上，难承其重的塔顶因此湮灭。[w]
@map storage="delist.map"
@endif
*阿尔塔
@clmap
@bg storage="RNWS obnon"
@menu
@style align="center"
[font size=15]狭窄的水道从村中穿过，两边红白相间的建筑挨挤着排列。接近傍晚，天然气工厂燃起的熊熊大火让天空化为红光的舞池。[w]
@map storage="delist.map"
*雷纳弗
@clmap
@bg storage="RNWS obnon"
@menu
@style align="center"
[font size=15]与深邃的一场会晤。[w]
@map storage="delist.map"
