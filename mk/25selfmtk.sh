#!/bin/sh

WINDOWS_SHARE=/mnt/hgfs/MyshareDev/
PRODUCT_NAME=OPPO89W_12093
RODUCT_LOG_PATH=out/target/product
PRODUCT_LOG_NAME=OPPO89W_12093_mm.log
PRODUCT_SYSTEM_APP=out/target/product/$PRODUCT_NAME/system/app
PRODUCT_SYSTEM_FRAMEWORK=out/target/product/$PRODUCT_NAME/system/framework
if [ $1 == "help" ]; then
	echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
	echo -e "******  You just input one argument to finish compile and copy! ******\n"
	echo -e "****** FOR example: if you need to get SystemUi.apk, please input -- ./self SU ***********\n"
	echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
fi

if [ $1 == "S" ]; then
	echo -e "\n******  Please Waiting an moment!!  *****\n"
    ./mk $PRODUCT_NAME mm frameworks/base/services/java/
    cat $PRODUCT_LOG_PATH/$PRODUCT_LOG_NAME
    cp -f $PRODUCT_SYSTEM_FRAMEWORK/services.jar WINDOWS_SHARE
echo -e "\n** You have copy service.jar to you sharing Windows File road ! **\n"

elif [ $1 == "F" ]; then
	echo -e "\n******  Please Waiting an moment!!  *****\n"
    ./mk $PRODUCT_NAME mm frameworks/base/
    cat $RODUCT_LOG_PATH/$PRODUCT_LOG_NAME
    cp -f $PRODUCT_SYSTEM_FRAMEWORK/framework.jar WINDOWS_SHARE
echo -e "\n** You have copy framework.jar to you sharing Windows File road ! **\n"

elif [ $1 == "FR" ]; then
	echo -e "\n******  Please Waiting an moment!!  *****\n"
    ./mk $PRODUCT_NAME mm frameworks/base/core/res_12037/
    cat $RODUCT_LOG_PATH/$PRODUCT_LOG_NAME
    cp -f $PRODUCT_SYSTEM_FRAMEWORK/framework-res.apk WINDOWS_SHARE
echo -e "\n** You have copy framework-res.apk to you sharing Windows File road ! **\n"

elif [ $1 == "AP" ]; then
	echo -e "\n******  Please Waiting an moment!!  *****\n"
    ./mk $PRODUCT_NAME mm frameworks/base/policy/
    cat $RODUCT_LOG_PATH/$PRODUCT_LOG_NAME
    cp -f $PRODUCT_SYSTEM_FRAMEWORK/android.policy.jar WINDOWS_SHARE
echo -e "\n** You have copy android.policy.jar to you sharing Windows File road ! **\n"

elif [ $1 == "SU" ]; then
	echo -e "\n******  Please Waiting an moment!!  *****\n"
    ./mk $PRODUCT_NAME mm frameworks/base/packages/SystemUI/
	cat $RODUCT_LOG_PATH/$PRODUCT_LOG_NAME
    cp -f $PRODUCT_SYSTEM_APP/SystemUI.apk WINDOWS_SHARE
echo -e "\n** You have copy SystemUI.apk to you sharing Windows File road ! **\n"

else 
	echo -e "  You can add more Files you like! \n"
fi

