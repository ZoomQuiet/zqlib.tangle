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
#!/usr/bin/python 
# -*- coding: utf-8 -*-
import sys
import urllib
import re

def getSequenceDiagram( text, outputFile, style = 'default' ):
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


if __name__ == "__main__":
    if 4 != len(sys.argv):
        print """ %s usage::
$ getSequenceDiagram.py DiagremStyle DiagramName 定义文件.txt
                        |              +-- 用于生成图片,最好E文
                        +-- default
                        +-- earth
                        +-- modern-blue
                        +-- mscgen
                        +-- omegapple
                        +-- qsd
                        +-- rose
                        +-- roundgreen
                        \-- napkin 
        """ % VERSION
    else:
        style = sys.argv[1] #"napkin"
        sqdname = sys.argv[2]
        sqdefin = sys.argv[3]
        pngFile = "%s_wsd-%s.png"%(sqdname,style)
        text = open(sqdefin).read()
        getSequenceDiagram( text, pngFile, style ) 

