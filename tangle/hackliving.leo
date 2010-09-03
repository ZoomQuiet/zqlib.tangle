<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet ekr_stylesheet?>
<leo_file>
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="zoomq.20091008173724.1"><vh>@chapters</vh></v>
<v t="zoomq.20100831135717.3642" a="E"><vh>WeKnow</vh>
<v t="zoomq.20100831135717.3643" a="E"><vh>可视化</vh>
<v t="zoomq.20100831135717.4174"><vh>webSequenceDiagram</vh>
<v t="zoomq.20100831135717.4171"><vh>@nosent getSequenceDiagram.py</vh>
<v t="zoomq.20100831135717.4172"><vh>declarations</vh></v>
<v t="zoomq.20100831135717.4173"><vh>getSequenceDiagram()</vh></v>
</v>
<v t="zoomq.20100831135717.4195"><vh>demo</vh>
<v t="zoomq.20100831135717.4178"><vh>@nosent demo0.txt</vh></v>
<v t="zoomq.20100831135717.4184"><vh>@nosent demo1-activate.txt</vh></v>
<v t="zoomq.20100831135717.4188"><vh>@nosent demo2-alt.txt</vh></v>
<v t="zoomq.20100831135717.4190"><vh>@nosent demo3-opt.txt</vh></v>
<v t="zoomq.20100831135717.4192"><vh>@nosent demo4-note.txt</vh></v>
<v t="zoomq.20100831135717.4194"><vh>@nosent demo5-participants.txt</vh></v>
<v t="zoomq.20100831135717.4197"><vh>@nosent demo6-grouping.txt</vh></v>
<v t="zoomq.20100831135717.4199"><vh>@nosent demo7-lifeline.txt</vh></v>
</v>
</v>
</v>
</v>
<v t="zoomq.20100412163057.2814" a="E"><vh>Misc任务</vh>
<v t="zoomq.20100412163057.2815" a="E"><vh>病毒样本对比</vh>
<v t="zoomq.20100902112115.7756"><vh>@nosent virusampls-ratio.py</vh>
<v t="zoomq.20100902112115.7757"><vh>declarations</vh></v>
<v t="zoomq.20100902112115.7758"><vh>processLogKV</vh></v>
<v t="zoomq.20100902112115.7759"><vh>processLogRX</vh></v>
<v t="zoomq.20100902112115.7760"><vh>ratioYQ</vh></v>
<v t="zoomq.20100902112115.7761"><vh>finalExport</vh></v>
</v>
</v>
<v t="zoomq.20100122092723.2783"><vh>GrasPic</vh>
<v t="zoomq.20100122092723.2784"><vh>ellytran.com</vh>
<v t="zoomq.20100122092723.2797"><vh>@shadow pic-ellytran.py</vh></v>
</v>
<v t="zoomq.20100827095209.8300"><vh>@file /home/zoomq/media/manga/manga.py</vh>
<v t="zoomq.20100827095209.8301"><vh>manga declarations</vh></v>
<v t="zoomq.20100827095209.8302"><vh>genUrlist</vh></v>
</v>
<v t="zoomq.20100827095209.8303"><vh>@file /home/zoomq/media/manga/manga-zipang12~1.sh</vh></v>
<v t="zoomq.20100827095209.8304"><vh>@file /home/zoomq/media/manga/wgetli.py</vh>
<v t="zoomq.20100827095209.8305"><vh>wgetli declarations</vh></v>
<v t="zoomq.20100827095209.8306"><vh>genUrlist</vh></v>
</v>
</v>
<v t="zoomq.20100827095209.8299" a="E"><vh>清除字幕字体聲明</vh>
<v t="zoomq.20100827095209.8310"><vh>@nosent clfontd4.py</vh>
<v t="zoomq.20100827095209.8311"><vh>declarations</vh></v>
<v t="zoomq.20100827095209.8312"><vh>cleaner()</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="zoomq.20091008173724.1"></t>
<t tx="zoomq.20100122092723.2783">@path /home/zoomq/media/manga</t>
<t tx="zoomq.20100122092723.2784">@path 2graspic/ellytran.com/wp-content/gallery
#/home/zoomq/9media/comics/2graspic/ellytran.com/wp-content/gallery</t>
<t tx="zoomq.20100412163057.2814"></t>
<t tx="zoomq.20100412163057.2815">@path /home/zoomq/ssp-zoom.quiet/virusampls-ratio
#/home/zoomq/Desktop/KiS/zoom.quiet/100412-virus-sample-selector
#/home/zoomq/vbox2win/0day/zoom.quiet/100412-virus-sample-selector
#/home/zoomq/data/0day-vbox/zoom.quiet/100412-virus-sample-selector
</t>
<t tx="zoomq.20100827095209.8299">@path /home/zoomq/_stuff/_mov
网络字幕，有的::
    
1
00:00:09,240 --&gt; 00:00:15,940
{\fn微软雅黑\fs12\fscx130\fscy130\3c&amp;HFF8000&amp;}本字幕仅出于业余兴趣而制，如有鄙陋，还望指正。{\r}
{\fn微软雅黑\fs12}{\r}

2
00:00:16,240 --&gt; 00:00:29,940
{\fn微软雅黑\fs15\3c&amp;HFF8000&amp;}感谢 COPSY心理学的支持
{\fntahoma\fs12\3c&amp;H1717FF&amp;}www.COPSY.org{\r}

不认识字体聲明，需要快速清除，
sed/awk 都不能直接识别出 {.+} 这种模式，特别是在 utf-8 环境中处理 gb2312 编码文本...

cat 06-Justice_Michael.Sandel-HARVARD.srt | cut --delimiter="}" -f2 | cut --delimiter="{" -f1 &gt; 06-Justice_Michael.Sandel-HARVARD.srt.srt
</t>
<t tx="zoomq.20100827095209.8300">@language python
@tabwidth -4
@others
if __name__ == "__main__":
    if 4 != len(sys.argv):
        print """ %s usage::
        $ python manga.py bookName(e.g zipang) bookID(e.g 002) maxPage(e.g 196) 
        """ % VERSION
    else:
        begin = time.time()
        urlmark = "http://251.99770.com:9977/ok-comic06/c/cyjd_771/%03d/%03d.jpg\n"
        bookName = sys.argv[1]
        bookId = sys.argv[2]
        maxPage = sys.argv[3]
        genUrlist(urlmark,bookName,bookId,maxPage)
        end = time.time()
        print 'usedTime::', end - begin

</t>
<t tx="zoomq.20100827095209.8301"># -*- coding: utf-8 -*-
# Name: manga.py
# Desc: gen. grasp comics pics url files
# Author: Zoom.Quiet
VERSION = "manga.py v0.8-070921"

import os,sys,time,datetime

</t>
<t tx="zoomq.20100827095209.8302">def genUrlist(urlmark,bookName,bookId,maxPage):
    expF = "manga-%s-%s.txt"%(bookName,bookId)
    urlist = ""
    for p in range(1,int(maxPage)):
        urlist += urlmark % (int(bookId),p)
        print urlmark % (int(bookId),p)
    open(expF,'w').write(urlist)

</t>
<t tx="zoomq.20100827095209.8303">@ignore
@language shell
#!/bin/sh

wget -nv -t 3 -P 012 -i manga-zipang-012.txt &amp;
wget -nv -t 3 -P 011 -i manga-zipang-011.txt &amp;
wget -nv -t 3 -P 010 -i manga-zipang-010.txt &amp;
wget -nv -t 3 -P 009 -i manga-zipang-009.txt &amp;
wget -nv -t 3 -P 008 -i manga-zipang-008.txt &amp;
wget -nv -t 3 -P 007 -i manga-zipang-007.txt &amp;
wget -nv -t 3 -P 006 -i manga-zipang-006.txt &amp;
wget -nv -t 3 -P 005 -i manga-zipang-005.txt &amp;
wget -nv -t 3 -P 004 -i manga-zipang-004.txt &amp;
wget -nv -t 3 -P 003 -i manga-zipang-003.txt &amp;
wget -nv -t 3 -P 002 -i manga-zipang-002.txt &amp;
wget -nv -t 3 -P 001 -i manga-zipang-001.txt &amp;

</t>
<t tx="zoomq.20100827095209.8304">@language python
@tabwidth -4
@others
if __name__ == "__main__":
    if 3 != len(sys.argv):
        print """ %s usage::
        $ python manga.py bookName(e.g zipang) maxPage(e.g 196) 
        """ % VERSION
    else:
        begin = time.time()
        urlmark = "http://tulaoya.cn/photo/x1/%03d.jpg\n"
        bookName = sys.argv[1]
        maxPage = sys.argv[2]
        genUrlist(urlmark,bookName,maxPage)
        end = time.time()
        print 'usedTime::', end - begin

</t>
<t tx="zoomq.20100827095209.8305"># -*- coding: utf-8 -*-
# Name: manga.py
# Desc: gen. grasp comics pics url files
# Author: Zoom.Quiet
VERSION = "wgetli.py v0.5-080409"

import os,sys,time,datetime

</t>
<t tx="zoomq.20100827095209.8306">def genUrlist(urlmark,bookName,maxPage):
    expF = "wgetli-%s-%s.txt"%(bookName,maxPage)
    urlist = ""
    for p in range(1,int(maxPage)):
        urlist += urlmark % p
        print urlmark % p
    open(expF,'w').write(urlist)

</t>
<t tx="zoomq.20100827095209.8310">@language python
@tabwidth -4
# -*- coding: utf-8 -*-
"""
Name    : clfontd4.py
Desc    : clean font define words in subtitle files
Author  : Zoom.Quiet
Usage   : 1: make srt file-&gt;utf8; 2: python cleaner.py path/2/***.str 
    we can get cleanning .srt
"""
VERSION = "clfontd4.py v10.8.27"
@others
if __name__ == "__main__":
    sys.exit(cleaner(sys.argv))
</t>
<t tx="zoomq.20100827095209.8311">import os,sys,re

</t>
<t tx="zoomq.20100827095209.8312">def cleaner(arg):
    if 2 != len(sys.argv):
        print """ %s usage::
        $ python cleaner.py path/2/***.str
        """ % VERSION
    else:
        exp = ""
        print arg[1]
        for l in open(arg[1]).readlines():
            #print "&gt;&gt;",l
            if "{" in l:
                exp += "%s\n"%l.split("}")[1].split("{")[0]
                #print exp
            else:
                exp += l
        open("%s"%arg[1],"w").write(exp)


</t>
<t tx="zoomq.20100831135717.3642">收集所有 WeKnow 相关的代码片段
</t>
<t tx="zoomq.20100831135717.3643">收集数据可视化支持工具</t>
<t tx="zoomq.20100831135717.4171">@language python
@tabwidth -4
#!/usr/bin/python 
# -*- coding: utf-8 -*-
'''base http://www.websequencediagrams.com/ gen SequenceDiagram
You can set wsd_style to any of these styles:
    * default
    * earth
    * modern-blue
    * mscgen
    * omegapple
    * qsd
    * rose
    * roundgreen
    * napkin 
'''
VERSION="getSequenceDiagram.py v10.8.31"
@others

if __name__ == "__main__":
    if 4 != len(sys.argv):
        print """ %s usage::
$ python getSequenceDiagram.py DiagremStyle DiagramName 定义文件.txt
        """ % VERSION
    else:
        style = sys.argv[1] #"napkin"
        sqdname = sys.argv[2]
        sqdefin = sys.argv[3]
        pngFile = "%s_wsd-%s.png"%(sqdname,style)
        text = open(sqdefin).read()
        getSequenceDiagram( text, pngFile, style ) 

</t>
<t tx="zoomq.20100831135717.4172">#!/usr/bin/python 
# -*- coding: utf-8 -*-
import sys
import urllib
import re

</t>
<t tx="zoomq.20100831135717.4173">def getSequenceDiagram( text, outputFile, style = 'default' ):
    request = {}
    request["message"] = text
    request["style"] = style

    url = urllib.urlencode(request)

    f = urllib.urlopen("http://www.websequencediagrams.com/", url)
    line = f.readline()
    f.close()

    expr = re.compile("(\?img=[a-zA-Z0-9]+)")
    m = expr.search(line)

    if m == None:
        print "Invalid response from server."
        return False

    urllib.urlretrieve("http://www.websequencediagrams.com/" + m.group(0),
            outputFile )
    return True

</t>
<t tx="zoomq.20100831135717.4174">@path webSequenceDiagram/


http://www.websequencediagrams.com/embedding.html</t>
<t tx="zoomq.20100831135717.4178">alice-&gt;bob: 认证 request
bob--&gt;alice: response
</t>
<t tx="zoomq.20100831135717.4184">A-&gt;B: text
activate B
B--&gt;A: json
deactivate B
</t>
<t tx="zoomq.20100831135717.4188">alt text1
    A-&gt;B: text
else text2
    A-&gt;B: text
end
</t>
<t tx="zoomq.20100831135717.4190">opt text
    A-&gt;B: text
end
</t>
<t tx="zoomq.20100831135717.4192">note over A,B: 是也乎
note left of A: 可能
note right of A
    多行
    文本
    multiline
    text
end note
</t>
<t tx="zoomq.20100831135717.4194">participant "客户端" as C
participant "服务端" as S
participant "可以很长名\n的后台服务" as L

C-&gt;S: Authentication Request
S-&gt;C: Authentication Response
S--&gt;L: Log transaction

</t>
<t tx="zoomq.20100831135717.4195">@path demo
</t>
<t tx="zoomq.20100831135717.4197">Alice-&gt;Bob: Authentication Request
alt successful case
    Bob-&gt;Alice: Authentication Accepted
else some kind of failure
    Bob-&gt;Alice: Authentication Failure
    opt
        loop 1000 times
            Alice-&gt;Bob: DNS Attack
        end
    end
else Another type of failure
    Bob-&gt;Alice: Please repeat
end

</t>
<t tx="zoomq.20100831135717.4199">User-&gt;A: DoWork
activate A
A-&gt;B: &lt;createRequest&gt;
activate B
B-&gt;C: DoWork
activate C
C--&gt;B: WorkDone
destroy C
B--&gt;A: RequestCreated
deactivate B
A-&gt;User: Done
</t>
<t tx="zoomq.20100902112115.7756">@language python
@tabwidth -4
#!/usr/bin/env python
# -*- coding: utf-8 -*-
VERSION="virusampls-ratio v10.4.12"

@others

if __name__ == '__main__':      # this way the module can be
    begin = time.time()
    usage = "usage: %prog [option0] arg0 [arg1]"
    parser = OptionParser(usage,version=VERSION)
    parser.add_option("-r","--ratio",dest="ratio",nargs=2,
                      type="string",metavar="*.dump some-hot-virus-list.txt",
                      help="YiQing comparison,uasge --lrx|lkv processed .dump file "
                        "e.g KV-RESULT.dump some-hot-virus-list.txt")
    parser.add_option("--lrx",dest="lrx",
                      type="string",
                      help="process RX checking log")
    parser.add_option("--lkv",dest="lkv",
                      type="string",
                      help="process KV checking log")
    parser.add_option("-e","--export",dest="export",nargs=2,
                      type="string",metavar="*.txt path/2/export ",
                      help="export total hotest virus list into dir             " 
                        "e.g -e virus-hotest-in-my-pc.tx tmp")
    (options, args) = parser.parse_args()
    if 1 == len(sys.argv):
        parser.print_help()
    if options.ratio :
        print "comparison checked list and YiQing list\n\n"
        ratioYQ(options.ratio)
    else:
        if options.lrx:
            print "\n\nreFormat RX checking list\n\n"
            processLogRX(options.lrx)
        if options.lkv:
            print "\n\nreFormat KV checking list\n\n"
            processLogKV(options.lkv)
        if options.export:
            print "\n\nexport total hotest virus list in to\n\n"
            finalExport(options.export)
    if (options.lrx and options.ratio) or (options.lkv and options.ratio):
        print "\n\nATTENTION!\n\t -r and --lrx|lkx can not usage in same time!\n\n"
        parser.error("incorrect number of arguments! \nATTENTION!\n"
            "\ne.g.\n \tpython %s -lrx something.txt "
            "\nor\n\tpython %s -r sonething.dump top500-from-RX.TXT"%(parser.get_prog_name()
                ,parser.get_prog_name())
                )
        parser.print_help()

</t>
<t tx="zoomq.20100902112115.7757">import os,sys,time,pickle,shutil
from optparse import OptionParser
from operator import itemgetter

</t>
<t tx="zoomq.20100902112115.7758">def processLogKV(fname):
    "简单处理KV查杀日志为list对象[计数,病毒名,隔离区目录]"
    print fname
    dumpf = "%s.dump"%fname
    dumpd = {}
    for line in open(fname).readlines():
        if " 中发现 " in line:
            tags = line.split()
            print tags[3],tags[1]
            viru = tags[3]
            path = tags[1]
            if viru in dumpd.keys():
                pass
            else:
                dumpd[viru]=[0,path]
    pickle.dump(dumpd, open(dumpf, 'wb'))
    print "\n\n%s\n\tdumped %d lines checked log as Python List obj."%(VERSION,len(dumpd.keys()))
</t>
<t tx="zoomq.20100902112115.7759">def processLogRX(fname):
    "简单处理RX查杀日志为list对象[计数,病毒名,隔离区目录]"
    print fname
    dumpf = "%s.dump"%fname
    dumpd = {}
    for line in open(fname).readlines():
        if "手动查杀" in line:
            tags = line.split(";")
            print tags[2][1:-1],tags[6][1:-1]
            viru = tags[2][1:-1]
            path = tags[6][1:-1]
            if viru in dumpd.keys():
                pass
            else:
                dumpd[viru]=[0,path]
    pickle.dump(dumpd, open(dumpf, 'wb'))
    print "\n\n%s\n\tdumped %d lines checked log as Python List obj."%(VERSION,len(dumpd.keys()))

</t>
<t tx="zoomq.20100902112115.7760">def ratioYQ(args):
    """将查杀日志和厂商疫情进行对比,按照排名积累分数,最终得到综合热度:
        前500排名的话,第一名为500分;
    MiscItems/2008-07-01 - Woodpecker Wiki for CPUG
http://wiki.woodpecker.org.cn/moin/MiscItems/2008-07-01
    Python中最快的字典排序方法 | Windstorm
http://www.kunli.info/2009/05/07/sorting-dictionaries-by-value-in-python/
    """
    dumpf = args[0]
    yqfile = args[1]
    tophotf = "%s-hot4-%s.txt"%(dumpf.split(".")[0],yqfile.split(".")[0])
    ratio = pickle.load(open(dumpf, 'rb'))
    flines = open(yqfile).readlines()
    for i in range(len(flines)):
        hvname = flines[i].upper().replace(".","").replace("/","")
        for v in ratio.keys():
            vname = v.upper().replace(".","").replace("/","")
            if vname in hvname:
                ratio[v][0]+=i
    unitRatioDictFile = "virusampls-ratio.dict.dump"
    try:
        unitRD = pickle.load(open(unitRatioDictFile, 'rb'))
    except:
        unitRD = {}
    td = sorted(ratio.iteritems(), key=itemgetter(1), reverse=True)     
    hotvli=""
    for t in td:
        if 0!=t[1][0]:
            print t
            hotvli +="%s\t\t%s\n"%(t[0],t[1][1])
            if t[0] in unitRD.keys():
                unitRD[t[0]][0] +=t[1][0]
            else:
                unitRD[t[0]] =[t[1][0],t[1][1]]

    open(tophotf,"w").write(hotvli)
    print "\n\n%s\n\tfound top %d hotest Virus base %s...\n\t\t export as:%s"%(VERSION
        ,len(hotvli)
        ,yqfile
        ,tophotf
        )
    pickle.dump(unitRD, open(unitRatioDictFile, 'wb'))
</t>
<t tx="zoomq.20100902112115.7761">def finalExport(args):
    "将最终交叉对比出来的列表输出到指定目录/文件,同时(尝试将隔离区文件也复制到指定目录)"
    expfn = "%s/%s"%(args[1],args[0])
    expdir = args[1]
    unitRatioDictFile = "virusampls-ratio.dict.dump"
    unitRD = pickle.load(open(unitRatioDictFile, 'rb'))
    td = sorted(unitRD.iteritems(), key=itemgetter(1), reverse=True)     
    hotvli=""
    for t in td:
        print t
        hotvli +="%s\t\t%s\n"%(t[0],t[1][1])
        #shutil.copy(t[1][1],expdir)
    open(expfn,"w").write(hotvli)
    print "\n\n%s\n\tfound top %d hotest Virus in my pc \n\t\t export list file::%s"%(VERSION
        ,len(td)
        ,expfn
        )


</t>
</tnodes>
</leo_file>
