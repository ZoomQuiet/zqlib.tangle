#!/usr/bin/env python
# -*- coding: utf-8 -*-
'''Changelog:
    110411 为 帝国最后的荣耀-大明1592·抗日援朝_天涯 创建!
'''
VERSION = "filter-tianya.py v11.04.11"
import sys,time

def cleanit(txt):
    txtmp = ""
    cleaned = ""
    markcancel = False
    for line in open(txt):
        if "作者：" in line and "　回复日期：" in line:
            if "马伯庸_汗青" not in line:
                markcancel = False
            else:
                markcancel = True
        if markcancel:
            print line[:-1]
        else:
            pass

if __name__ == "__main__":
    if 2 != len(sys.argv):
        print """ %s usage::
$ python filter-tianya.py path/2/那个.txt
        """ % VERSION
    else:
        begin = time.time()
        cntxt = sys.argv[1]
        cleanit(cntxt)
        end = time.time()
        print VERSION,' usedTime::', end - begin

