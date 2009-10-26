#!/usr/bin/python
# -*- coding: utf-8 -*-
"""base ChartDirector for Python - Professional Python Chart and Graph Library
http://www.advsofteng.com/cdpython.html
    快速转换数据为简单图表
"""
import os,sys,time
from ChartDirector.pychartdir  import *
VERSION = "chart-questionnaire.py v9.10.26@Zoom.Quiet"
defaultfont="/usr/share/fonts/VeraSansYuanTi/VeraSansYuanTiMono-Regular.ttf"


def  imgChartPie(vardata,varlabel,pictitle,picfile,fontpath):
    # The data for the pie chart
    data = vardata
    # The labels for the pie chart
    labels = varlabel
  
    # Create a PieChart object of size 450 x 240 pixels
    c = PieChart(500, 250)
    # Set the center of the pie at (150, 100) and the radius to 80 pixels
    c.setPieSize(250, 100, 80)
    # add a legend box where the top left corner is at (330, 40)
    #c.addLegend(330, 40, 1, fontpath, 10)
    #c.setLabelStyle(fontpath, 9)
    # Use the side label layout method
    c.setLabelLayout(SideLayout)
    # Set the label box background color the same as the sector color, with glass effect,
    # and with 5 pixels rounded corners
    t = c.setLabelStyle(fontpath, 9)
    t.setBackground(SameAsMainColor, Transparent, glassEffect())
    t.setRoundedCorners(5)
    # Set the border color of the sector the same color as the fill color. Set the line
    # color of the join line to black (0x0)
    c.setLineColor(SameAsMainColor, 0x000000)

    #c.addTitle2(Bottom, pictitle, fontpath)
    c.addTitle(pictitle, fontpath,15)
    #"/usr/share/fonts/VeraSansYuanTi/VeraSansYuanTiMono-Regular.ttf"
    # Draw the pie in 3D
    c.set3D()
    c.setLabelFormat("{label}={value}\n({percent}%)")
    c.setStartAngle(135)
    c.setData(data, labels)
    #c.setExplode(0)
    c.setLabelLayout(SideLayout)
    # output the chart
    c.makeChart(picfile)

if __name__ == '__main__':      # this way the module can be
    if 5 != len(sys.argv):
        print """ %s usage::
$ python chart-questionnaire.py [1,2] [\'A\',\'B\'] 标题 图片名.png
        """ % VERSION
    else:
        vardata = eval(sys.argv[1])
        print sys.argv[2]
        varlabel = eval(sys.argv[2])
        pictitle = sys.argv[3] 
        picfile = sys.argv[4] 
        fontpath = defaultfont #sys.argv[5] 
        begin = time.time()
        print "try to chart as Pie for %s "%pictitle
        imgChartPie(vardata,varlabel,pictitle,picfile,fontpath)
        end = time.time()
        print "Mnnnn export all that report!!!!"
        print ">>>usedTime::%.2fs<<<"%(end - begin)

