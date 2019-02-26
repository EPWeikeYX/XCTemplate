 #!/bin/bash
#只需要在终端中输入 $ sh install.sh  即可安装完成
 
templatePath=~/Library/Developer/Xcode/Templates/
echo ${templatePath}

currentpath=$(pwd)

echo ${currentpath}

if [ ! -d templatePath ];
then
mkdir ${templatePath}
else
echo ${templatePath}"文件夹已经存在,跳过创建"
fi

epweikeTemplatePath=${templatePath}"epweike"

epweikeLibPath=${currentpath}"/epweike"

chmod -R 775 ${epweikeLibPath}

if [ ! -f epweikeTemplatePath ];then
	echo ${epweikeTemplatePath}"文件夹不存在，跳过删除"
else
	rm -f ${epweikeTemplatePath}
fi

cp -r ${epweikeLibPath} ${templatePath}

echo "安装完成请重启Xcode"


