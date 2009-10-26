091025 ZoomQuiet 快速在 Ubuntu 9.04 中整理 091017 哲思自由软件峰会珠海现场问卷数据

志愿者整理好的每行一个问卷的文本:
    091017-zeuux-summit-questionnaire.txt

有效问卷数目::
cat 091017-zeuux-summit-questionnaire.txt | wc -l
195

问题2统计::
cat 091017-zeuux-summit-questionnaire.txt | cut -d, -f2 | sort | uniq -c
      2 
      1 *
    168 男
     24 女
    图表生成::python chart-questionnaire.py \
    [3,24,168] [\'空\',\'女\',\'男\'] "哲 思峰会问卷2:性别" ask2-sex.png /usr/share/fonts/VeraSansYuanTi/VeraSansYuanTiMono-Regular.ttf
['空','女','男']
try to chart as Pie for 哲思峰会问卷2:性别 
Mnnnn export all that report!!!!
>>>usedTime::0.09s<<<

问题5统计::
cat 091017-zeuux-summit-questionnaire.txt | cut -d, -f5 | sort | uniq -c
      4 
      7 5
     79 a
      1 a-3
     57 b
     28 c
      9 d
      6 e
      2 E
      1 SZLUG
      1 金山软件
    图表生成::python chart-questionnaire.py \
[80,64,28,9,8] [\'学生\',\'1-2年\',\'3-5年\',\'6-7年\',\'7年以上\'] "哲思峰会问卷5:年限" ask5-years.png 


问题6统计::
cat 091017-zeuux-summit-questionnaire.txt | cut -d, -f6 | sort | uniq -c
      2 
     37 a
    126 b
     30 c
    图表生成::python chart-questionnaire.py \
[27,126,30] [\'不了解\',\'已有了解\',\'比较熟悉\'] "哲思峰会问卷6:自由软件" ask6-fs.png 
    
问题7统计::
cat 091017-zeuux-summit-questionnaire.txt | cut -d, -f7 | sort | uniq -c
      3 
    107 a
      1 a2c
      1 abc写文章推广
     74 b
      7 c
      2 d
    图表生成::python chart-questionnaire.py \
[109,76,9] [\'启蒙\',\'发展中\',\'广泛应用\'] "哲思峰会问卷7:中国自由软件" ask7-cnfs.png 

问题10统计::
 cat 091017-zeuux-summit-questionnaire.txt | cut -d, -f10 | sort | uniq -c
     11 
      2 
      7 a
     94 a
      1 a&2&3&4&5
JenogSeonphil
田源源1 a
      4 b
     48 b
      1 b4
      1 bc
      1 b d
      3 c
      3 c-4
      1 cd
      1 d"
     13 d
戴秋生1 d
      1 选择多样化
    图表生成::python chart-questionnaire.py \
[102,56,7,15] [\'不了解\',\'已有了解\',\'已订阅列表\',\'已注册社区\'] "哲思峰会问卷10:对哲思" ask10-cnfs.png 

