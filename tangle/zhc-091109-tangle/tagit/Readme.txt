Welcome to use tagit.

==Introduction==
"tagit" is a tool to manage your files in file system.
Generally, the file system has a tree-like structure. We use directories to divide our files into different classes. But the file has a lot of attribute. For instance, you have a directory named music, and you've download a music file named Yesterday.mp3. Then, which subdirectory should you put it? In "MP3", in "The beatles", in "1960s", or in "Rock"? For other kind of files, you would got the same problem.
"tagit" give out a solution. Like the "label" function in gmail, tagit allow you to give any regular file(directory is not supported yet) a "tag", and you can modify them in tag view.

==System Required==
"tagit" is developed for *nix system. The main part is a bash script, so bash is required.

==Install and Uninstall==
To install tagit, just decompress the tarball and run the install.sh script. If you use the default configuration(recommended), you should be root.

$tar xfz tagit_version.tar.gz
$cd tagit
$sudo ./install.sh

Then just follow the prompt.

To uninistall tagit, just type:
$sudo tagit -u

==Basic usage==
To add a tag to a file, type:

$tagit filename tagname

You can add a tag to more than one files in a command:

$tagit file1 file2 ... tagname
$tagit *.c c_code
$tagit *.mp3 *.wma *.ogg audio

To delete tags:

$tagit -d tagname1 tagname2 ...

To delete files from a tag:

$tagit -c tagname file1 file2 ...

To get help:

$tagit -h

==Modify the files that tagged==
When you tag a file named "filefoo" with tag "tagbar", "tagit" just made an hard link of "filefoo" under $TAG_PATH/tagbar. To modify it, just cd into the directory and do everything you want.

==Limited==
The files that can be tagged and the tag must in the same file system. If we use symbolic link, the path problem is very boring.

==Feedback==
If you had any problem or suggestion, mail to zhcfreesea@gmail.com
Thank you for using tagit, enjoy it ;-)
