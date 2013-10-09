#!/bin/sh

WINDOWS_SHARE=/mnt/hgfs/MyshareDev/
PRODUCT_SYSTEM_FRAMEWORK=out/target/product/msm8960/system/framework
PRODUCT_SYSTEM_APP=out/target/product/msm8960/system/app
if [ $1 == "help" ]; then
	echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
	echo -e "******  You just input one argument to finish compile and copy! ******\n"
	echo -e "****** FOR example: if you need to get SystemUi.apk, please input -- ./self SU ***********\n"
	echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
fi

source ./setenv.sh

if [ $1 == "S" ]; then
	echo -e "\n******  Please Waiting an moment!!  *****\n"
    mmm frameworks/base/services/java
    cp -f $PRODUCT_SYSTEM_FRAMEWORK/services.jar $WINDOWS_SHARE
    cp -f $PRODUCT_SYSTEM_FRAMEWORK/services.odex $WINDOWS_SHARE
	echo -e "\n** You have copy service.jar to you sharing Windows File road ! **\n"

elif [ $1 == "F" ]; then
	echo -e "\n******  Please Waiting an moment!!  *****\n"
    mmm frameworks/base/
    cp -f $PRODUCT_SYSTEM_FRAMEWORK/framework.jar $WINDOWS_SHARE
    cp -f $PRODUCT_SYSTEM_FRAMEWORK/framework.odex $WINDOWS_SHARE
	echo -e "\n** You have copy framework.jar to you sharing Windows File road ! **\n"

elif [ $1 == "FR" ]; then
	echo -e "\n******  Please Waiting an moment!!  *****\n"
    mmm frameworks/base/core/
    cp -f $PRODUCT_SYSTEM_FRAMEWORK/framework-res.apk $WINDOWS_SHARE
    cp -f $PRODUCT_SYSTEM_FRAMEWORK/framework-res.odex $WINDOWS_SHARE
	echo -e "\n** You have copy framework-res.apk to you sharing Windows File road ! **\n"

elif [ $1 == "AP" ]; then
	echo -e "\n******  Please Waiting an moment!!  *****\n"
    mmm frameworks/base/policy/
    cp -f $PRODUCT_SYSTEM_FRAMEWORK/android.policy.jar $WINDOWS_SHARE
    cp -f $PRODUCT_SYSTEM_FRAMEWORK/android.policy.odex $WINDOWS_SHARE
	echo -e "\n** You have copy android.policy.jar to you sharing Windows File road ! **\n"

elif [ $1 == "SU" ]; then
	echo -e "\n******  Please Waiting an moment!!  *****\n"
    mmm frameworks/base/packages/SystemUI/
    cp -f $PRODUCT_SYSTEM_APP/SystemUI.apk $WINDOWS_SHARE
    cp -f $PRODUCT_SYSTEM_APP/SystemUI.odex $WINDOWS_SHARE
	echo -e "\n** You have copy SystemUI.apk to you sharing Windows File road ! **\n"

elif [ $1 == "NK" ]; then
    echo -e "\n******  Please Waiting an moment!!  *****\n"
    ./mk kernel_new
    ./mk bootimage_repack
    cp -f out/target/product/msm8960/boot.img $WINDOWS_SHARE
	echo -e "\n** You have copy Boot.img to you sharing Windows File road ! **\n"

else 
	echo -e "  You can add more Files you like! \n"
fi

