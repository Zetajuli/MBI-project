*stop start
@clmap
@dia
@history output="true"
@bg clfg="1" storage="RNWS inter"
欢迎回来，[emb exp=f.姓]。[w]
*stop on
您可以在此处进行存档、读取存档、回顾历程、查看档案，直到您觉得可以继续进行观测为止。[w]
@clfg layer="all"
@selstart hidemes="1" hidesysbutton="1"
@locate y="200" x="425"
@selbutton target="*休整完毕" text="休整完毕"
@locate y="300" x="425"
@selbutton target="*仍需回顾" text="仍需回顾"
@selend
*休整完毕
@clsel
@jump target="*today world" storage="explore.ks"
*仍需回顾
@clsel
@jump target="*stop on"
*个人状态
@clmap
@menu
@bg clfg="1" storage="RNWS pcs"
@style align="center"
[font color=00000000][font size=15]
[emb exp=f.str]          [emb exp=f.con]          [emb exp=f.dex]          [emb exp=f.app]          [emb exp=f.int]          [emb exp=f.pow][w]
@jump target="*today world" storage="explore.ks"
*世界状态
@clmap
@menu
@bg clfg="1" storage="RNWS wss"
@style align="center"
[font color=00000000][font size=18][emb exp=f.stb]                [emb exp=f.vrv][w]
@jump target="*today world" storage="explore.ks"