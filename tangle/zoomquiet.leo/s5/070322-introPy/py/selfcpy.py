#--GBK--
���� = "<h3>���� �ο��ֲ�(��ʡ����)</h3>"
���� +="""<style>table{width : ;}
    ul{margin:0px;padding:0px;}
    li{background-color :#eee;font-size:92%;list-style-position : inside ;list-style-type : decimal;}
    p{font-size:80%;color:#fff;background-color :#454;margin:4px 0px;}
    </style>"""
���� +="<table><tr>"
# ������Ϊ�㱨() �ĺ�ʽ���Զ��ռ�ģ����Ϣ����֯Ϊҳ���¼����
���� �㱨(����,ģ��):
    ���� = "<td valign=top width=250>"
    ���� += "<ul>%s ������:</ul><ul>"""%(����)
    �� = ����(ģ��)
    д ���ִ�(ģ��),"\t ���ò����Ѿ���¼!"
    ȡ ��Ŀ �� ��:
        ���� += "<li>%s"%(��Ŀ)
        ˵�� = "%s.%s.__˵��__"%(����,��Ŀ)
        ��:
            ���� += "<p>%s</p>"%(����(˵��))
        ʧ��:
            ����
    ���� += "</ul></td>"
    ���� ����

����+=�㱨("__�Ƚ�__ ", __�Ƚ�__)
����+=�㱨("\'�ִ�\'","�ִ�")
����+=�㱨("['����']", ['����'])
����+=�㱨("{'�ֵ�':'ֵ'}", {'�ֵ�':'ֵ'})
����+=�㱨("('Ԫ��')", ('Ԫ��'))
���� ϵͳ
����+=�㱨("ϵͳ", ϵͳ)
#д ����(����)
����+="</tr></table>"
��("cpy-selfintro.html", 'w').���(����)
д "\n������ʡ˵���㱨�ļ� `%s`��д�� %s �ֽ� \n\n" % ("cpy-selfintro.html",����(����))




#���� �쳣
#����+=��ʡ�㱨("�쳣", �쳣, 'exception')
#����+=�㱨('����', ��('������ʡ.py','r'), 'file')
#�ļ�.�ر�()
"""
�����ֵ� = []

�� ���� == '"__�Ƚ�__"':      
        �� = [ �� ȡ �� �� �� �� ��[-4:] != '�쳣' ] 

        #д ģ��.��Ŀ
        ��:
            #���� += "<p>%s</p>"%(����(˵��))
            ���� += "<p>%s</p>"%(��Ŀ.__˵��__)
        ʧ��:
            ����
"""

���� ����(ģ��):
    ��:���� �����ֵ�.����(����(ģ��))
    ʧ��:
        ȡ �ں� �� ģ��:
            ���� ����(�ں�)
        #����.����(����(ģ��))
        #����

#�����ֵ� = ����("��Ҳ��",�����ֵ�)
#д �����ֵ�
    

    