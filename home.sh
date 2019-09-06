#!/bin/bash

process(){
	case $1 in
		1 )
		sh installDocker/installDocker.sh
		goon
			;;
		2 )
		echo "1231231231 "
		goon
			;;
		3 )
		echo "1231231231"
		goon
			;;
		4 )
		echo "1231231231"
		goon
			;;
		5 )
		echo "1231231231"
		goon
			;;


		11 )
		echo "666"
		goon
			;;

		666 )
		echo "666"
		goon
			;;


		0 )
			exit 0
			;;
		* )
			echo "无效输入"
			goon
			;;
	esac
}

welcom(){
	clear
	echo "----------------------------------------------"
	echo "  1. 安装docker                      "
	echo "  2. 开启docker remote               "
	echo "  3. 安装jenkins                     "
	echo "  4. 安装java （ver:oracle-java8)    "
	echo "  5. 安装nginx并拷贝配置模板，后续需要手工完善  "
	echo "  "
	echo "  11. 释放docker占用的磁盘空间"
	echo "  "
	echo "  666. 一键安装  "
	echo "  "
	echo "  0. 退出 " 
	echo "----------------------------------------------"
	echo "**   要同时装jenkins和docker的，先装jenkins    **"
	read -p "  请选择：  " choice
	process $choice
}

goon(){
	read -p "按任意键继续"
	welcom
}



welcom
