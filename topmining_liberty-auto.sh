#!/bin/bash
#↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓请根据自身情况修改以下参数↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

#运行次脚本前需为所有服务器手动安装sshpass软件包!
#Ubuntu执行此命令：sudo apt-get install sshpass
#CentOS执行此命令：sudo yum install -y epel-release && sudo yum install -y sshpass

#-----------------------------------------------------
#服务器IP地址
ip_array=("192.168.1.101" "192.168.1.103" "192.168.1.105" "192.168.1.106")

#服务器SSH远程端口
port_array=("22" "22" "22" "22")

#服务器登录用户名
user_array=("root" "root" "root" "root")

#服务器登录用户密码
password_array=("123456" "123456" "123456" "123456")
#-----------------------------------------------------
#-----------------------------------------------------
#liberty挖矿节点收益钱包地址
wallet_array=("56nqxxxxeLant6Y4f6JEA4wD" "5ATBBC3j3eKRXqDPxxxxnVTWjjpiRXTT3MYmE3h" "5ATBBC3j3eKRXqDPxxxxnVTWjjpiRXTT3MYmE3h" "5ATBBC3j3eKRXqDPxxxxnVTWjjpiRXTT3MYmE3h")

#liberty挖矿节点用于挖矿的CPU核心数
cpus_array=("1" "2" "4" "8")
#-----------------------------------------------------
#↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑请根据自身情况修改以上参数↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

#远程部署脚本命令
script_path="https://gitee.com/topmininglabs/liberty/raw/main/topmining_liberty-onlymining-auto.sh.x"
script_name="topmining_liberty-onlymining-auto.sh.x"
remote_cmd="wget $script_path && chmod +x ./$script_name && ./$script_name"  

#一键自动部署liberty节点脚本
cat << EOF
-----------------------------------------------------
    _____           __  __ _       _        ____
   |_   _|__  _ __ |  \/  (_)_ __ (_)_ __  / ___|
     | |/ _ \| '_ \| |\/| | | '_ \| | '_ \| |  _
     | | (_) | |_) | |  | | | | | | | | | | |_| |
     |_|\___/| .__/|_|  |_|_|_| |_|_|_| |_|\____|
             |_|
  --------------------------------------------------  
           此脚本为TogMininG社区成员编写
          联系方式:https://topmining.io/
  --------------------------------------------------  
EOF
        echo "-----------------------------------------------------"
        echo "此脚本为一键自动部署liberty节点脚本! "
        sleep 2

for ((i=0;i<${#ip_array[*]};i++)) 
do  
    echo "-----------------------------------------------------"
    echo "正在为IP地址为 ${ip_array[i]} 的服务器自动部署liberty节点！"
    sshpass -p ${password_array[i]} ssh -o StrictHostKeyChecking=no -t -p ${port_array[i]} ${user_array[i]}@${ip_array[i]} "$remote_cmd ${wallet_array[i]} ${cpus_array[i]} /dev/null | tee topmining_liberty_auto_${ip_array[i]}.log"
    echo "已成功为IP地址为 ${ip_array[i]} 的服务器自动部署liberty节点！"
done
