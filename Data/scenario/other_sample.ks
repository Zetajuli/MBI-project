;------------------------------------------------------------
;预留菜单，主菜单上的“自定选单”会连接到这里
;你可以用这个格式制作自制选单（例如道具系统）
;使用养成面板的写法可以查看范例脚本other.ks
;------------------------------------------------------------
*start
@locksnapshot
@tempsave
;------------------------------------------------------------
*window
@history enabled="false"
@locklink
@rclick target="*返回" jump="true" storage="other.ks" enabled="true"
;------------------------------------------------------------
@image left="0" visible="true" layer="14" page="back" top="0" storage="total archive"
@disablesysbutton page="back"
@current layer="message4" page="back"
@layopt left="0" visible="true" layer="message4" page="back" top="0"
@er
@locate y="75" x="1100"
@button target="*返回" normal="exit3"
@locate y="260" x="80"
@button target="*pbdwelcome" normal="personnel department" storage="pbd.ks" 
@locate y="360" x="270"
@button target="*congresswelcome" normal="LRCM" storage="libr.ks" 
@locate y="260" x="530"
@button target="*gauginwel" normal="Gaugin" storage="gaugin_museum.ks" 
@trans time="0" method="crossfade"
@wt
@s
;------------------------------------------------------------
*返回
@jump target="*返回" storage="main_menu.ks"

