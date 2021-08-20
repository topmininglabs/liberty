## liberty测试网 docker一键部署脚本（Ubuntu&CentOS）
### ===本脚本仅限TopMininG社群用户使用===
#### ■ 一键脚本运行方法(整行复制粘贴执行)：
  
#### @国内用户：
##### ・Ubuntu：
##### ___`sudo apt update && sudo apt-get install wget curl`___
##### ・CentOS7：
##### ___`sudo yum update && sudo yum install wget curl`___
##### ・CentOS8：
##### ___`sudo yum update --nobest && sudo yum install wget curl`___
##### 
##### ___`wget https://gitee.com/topmininglabs/massa/raw/main/topmining_massa.sh.x && chmod +x ./topmining_massa.sh.x && sudo ./topmining_massa.sh.x`___
  
#### @海外用户：
##### ・Ubuntu：
##### ___`sudo apt update && sudo apt-get install wget curl`___
##### ・CentOS7：
##### ___`sudo yum update && sudo yum install wget curl`___
##### ・CentOS8：
##### ___`sudo yum update --nobest && sudo yum install wget curl`___
##### 
##### ___`wget https://github.com/topmininglabs/liberty/raw/main/topmining_liberty.sh.x && chmod +x ./topmining_liberty.sh.x && sudo ./topmining_liberty.sh.x`___
#####   

#### ■ 操作方法：
<img width="396" alt="スクリーンショット 2021-08-20 23 22 43" src="https://user-images.githubusercontent.com/86814869/130248006-42184a44-1a27-4d6f-b617-f46fb22cb119.png">


##### 1.输入选项1安装Docker
##### 2.输入选项2下载TopMininG专供liberty镜像
##### 3.输入选项3初始化liberty容器节点并同步区块数据
##### 3.1.按照提示输入数据保存目录
##### 3.2.按照提示新建或者导入钱包
###### （若新建钱包，请保管好钱包地址和私钥和助记词，新建完成后输入exit退出）
###### （若导入钱包，则需要确保三个相关文件都在同一个目录：Wallet_name / Wallet_name.address.txt / Wallet_name.keys)
##### 4 输入选项8按照提示操作进行节点挖矿程序启动
##### 4.1.按照提示确认或修改收益钱包地址
##### 4.2.按照提示确认或修改用于挖矿的CPU核心数
##### 4.3.挖矿程序运行正常后按Ctrl+C退出脚本
##### 5.根据需要可重新运行脚本进行日志查询（选项9）或查询钱包余额（选项7）
##### ___`sudo ./topmining_liberty.sh.x`___

#### ■ 注意事项
##### 1：此脚本仅支持Ubuntu系统和CentOS系统
##### 2：运行脚本安装Docker并下载TopMininG专供镜像进行节点部署（TopMininG专供镜像为官方编译的纯净打包版无任何修改可放心使用） 
##### 3：如因系统防火墙或云服务防火墙原因无法用次脚本下载安装Docker，请自行咨询服务商了解相应的Docker安装方法并手动安装Docker
##### 4：非TopMininG专供镜像部署的节点运行此脚本无效（TopMininG专供镜像为官方编译的纯净打包版无任何修改可放心使用） 
##### 5：Ubuntu系统需先执行sudo apt update 确保系统软件依赖包为最新
##### 6：Centos系统需先执行sudo yum update 确保系统软件依赖包为最新


#### ■ 常用链接：  



