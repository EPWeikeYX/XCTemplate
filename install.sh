 #!/bin/bash
#只需要在终端中输入 $ sh install.sh  即可安装完成
 
install(){

templatePath=~/Library/Developer/Xcode/Templates/

if [ ! -d templatePath ];
then
mkdir templatePath
else
echo "文件夹已经存在"
fi

epweikeTemplatePath=${templatePath}"epweike"



if [ ! -f epweikeTemplatePath ];then
echo "文件不存在"
else
rm -f epweikeTemplatePath
fi

cp ./epweike templatePath


}