这是几个小脚本，如果觉得有用的可以进行以下操作：
1.把WINDOWS_SHARE=/mnt/hgfs/MyshareDev/中的/mnt/hgfs/MyshareDev/改成自己的linux挂载的windows共享路径；
2.使用的时候如果要编译某个模块，如framework.jar，进行./selfqcom.sh F就可以，其它的都是对应模块的首字母缩写，systemui即./selfqcom.sh SU，完成后会自动拷贝到对应的WINDOWS_SHARE路径下；
3.现在只有5个选项，如果有需要可以自己加入elif 路径；