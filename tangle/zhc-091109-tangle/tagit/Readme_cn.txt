欢迎使用tagit!

==介绍==
"tagit"是一个文件管理工具。
通常，文件系统是树状结构的，我们用目录来对文件进行分类。但一个文件可能会有很多属性。例如，你有一个"音乐"目录，然后你下载了一首歌，Yesterday.mp3。那么应该把它放到哪个子目录下呢？"MP3"，"披头士"，"1960年代"，还是"摇滚"？对于其他类型的文件，你会遇到同样的问题。
"tagit"给出了一个解决方案。类似gmail中的label功能，tagit允许你为任意普通文件打上标签(目录文件现在还不支持)，然后你就可以在标签视图中来管理它们

==系统要求==
"tagit" 是为 *nix 系统开发的. 它的主要部分是一个bash脚本, 所以要求bash已经安装。

==安装和卸载==
安装tagit, 只需要解压tar包，然后运行install.sh脚本即可。如果你使用默认配置(推荐)，你将需要root权限。

$tar xfz tagit_version.tar.gz
$cd tagit
$sudo ./install.sh

然后按照提示做就行了。

卸载tagit，只用输入：
$sudo tagit -u

==基本使用==
为一个文件file增加一个tag:

$tagit filename tagname

你可以一次为多个文件增加同一个tag：

$tagit file1 file2 ... tagname
$tagit *.c c_code
$tagit *.mp3 *.wma *.ogg audio

删除tag：

$tagit -d tagname1 tagname2 ...

从一个tag中删除文件：

$tagit -c tagname file1 file2 ...

获取帮助：

$tagit -h

==操作打上tag的文件==
当你为文件filefoo标上tagbar的标签时，tagit仅仅是在$TAG_PATH/tagbar目录下做了filefoo的硬链接。要操作它，只需cd到相应目录下，然后就可以随意操作了。

==限制==
被标记文件和tag的存放目录必须在同一文件系统下。如果我们使用软链接，那么路径问题会非常讨厌。

==反馈==
如果你有任何问题或建议，请mail到 zhcfreesea@gmail.com
谢谢使用tagit，祝您使用愉快 ;-)
