## liberty测试网 docker一键部署脚本（Ubuntu&CentOS）
### ===本脚本仅限TopMininG社群用户使用===
#### ■ 一键脚本运行方法(整行复制粘贴执行)：
  
#### @国内用户：
##### ・Ubuntu：
##### ___`sudo apt update && sudo apt-get install wget curl nano`___
##### ・CentOS7：
##### ___`sudo yum update && sudo yum install wget curl nano`___
##### ・CentOS8：
##### ___`sudo yum update --nobest && sudo yum install wget curl nano___
##### 
##### ■自动单节点一键部署-有钱包交互界面，可用于部署节点运行挖矿程序也可用于钱包交互（执行脚本后，需按照提示设置挖矿收益地址/挖矿CPU核数）
##### ___`wget https://gitee.com/topmininglabs/liberty/raw/main/topmining_liberty.sh.x && chmod +x ./topmining_liberty.sh.x && sudo ./topmining_liberty.sh.x `___

##### ■自动单节点一键部署-无钱包交互界面，仅用于部署节点运行挖矿程序（执行脚本后，需按照提示设置挖矿收益地址/挖矿CPU核数）
##### ___`wget https://gitee.com/topmininglabs/liberty/raw/main/topmining_liberty-onlymining.sh.x && chmod +x ./topmining_liberty-onlymining.sh.x  && sudo ./topmining_liberty-onlymining.sh.x`___

##### ■自动多节点一键部署（执行脚本前，需修改脚本内的服务器IP/用户名/密码/挖矿收益地址/挖矿CPU核数）（需要root用户）
##### ___`wget https://gitee.com/topmininglabs/liberty/raw/main/topmining_liberty-auto.sh && nano topmining_liberty-auto.sh`___
##### 修改好参数后保存脚本，./topmining_liberty-auto.sh执行


#### @海外用户：
##### ・Ubuntu：
##### ___`sudo apt update && sudo apt-get install wget curl nano`___
##### ・CentOS7：
##### ___`sudo yum update && sudo yum install wget curl nano`___
##### ・CentOS8：
##### ___`sudo yum update --nobest && sudo yum install wget curl nano`___
##### 
##### ■自动单节点一键部署-有钱包交互界面，可用于部署节点运行挖矿程序也可用于钱包交互（执行脚本后，需按照提示设置挖矿收益地址/挖矿CPU核数）
##### ___`wget https://github.com/topmininglabs/liberty/raw/main/topmining_liberty.sh.x && chmod +x ./topmining_liberty.sh.x && sudo ./topmining_liberty.sh.x`___

##### ■自动单节点一键部署-无钱包交互界面，仅用于部署节点运行挖矿程序（执行脚本后，需按照提示设置挖矿收益地址/挖矿CPU核数）
##### ___`wget https://github.com/topmininglabs/liberty/raw/main/topmining_liberty-onlymining.sh.x && chmod +x ./topmining_liberty-onlymining.sh.x  && sudo ./topmining_liberty-onlymining.sh.x`___

##### ■自动多节点一键部署（执行脚本前，需修改脚本内的服务器IP/用户名/密码/挖矿收益地址/挖矿CPU核数）（需要root用户）
##### ___`wget https://raw.githubusercontent.com/topmininglabs/liberty/main/topmining_liberty-auto.sh && nano topmining_liberty-auto.sh`___
##### 修改好参数后保存脚本，./topmining_liberty-auto.sh执行

#### ■ 操作方法：
<img width="395" alt="スクリーンショット 2021-08-21 1 36 43" src="https://user-images.githubusercontent.com/86814869/130265667-07bede48-9ed4-47a6-b9bb-06a657645d23.png">



##### 1.输入选项1安装Docker
##### 2.输入选项2下载TopMininG专供liberty镜像
##### 3.输入选项3初始化liberty容器节点并同步区块数据
##### 3.1.按照提示输入数据保存目录
##### 3.2.按照提示新建或者导入钱包
###### （若新建钱包，请保管好钱包地址和私钥和助记词，新建完成后输入exit退出）
###### （若导入钱包，则需要使用助记词)
##### 4.输入选项8按照提示操作进行节点挖矿程序启动
##### 4.1.按照提示确认或修改收益钱包地址
##### 4.2.按照提示确认或修改用于挖矿的CPU核心数
##### 5.输入选项9可进入挖矿节点交互界面
##### 5.1.交互操作输入help打印可执行命令，输入status可查询节点挖矿哈希值，输入mining_status可查询节点预测收益，输入exit或者按Ctrl+C退出脚本
##### 6.根据需要可重新运行脚本进行日志查询（选项10）或查询钱包余额（选项7）
##### ___`sudo ./topmining_liberty.sh.x`___
##### 7.在linux的Shell窗口直接执行top命令可查询挖矿程序所占用的CPU和内存使用情况
##### ___`top`___

#### ■ 注意事项
##### 1：此脚本仅支持Ubuntu系统和CentOS系统
##### 2：运行脚本安装Docker并下载TopMininG专供镜像进行节点部署（TopMininG专供镜像为官方编译的纯净打包版无任何修改可放心使用） 
##### 3：如因系统防火墙或云服务防火墙原因无法用次脚本下载安装Docker，请自行咨询服务商了解相应的Docker安装方法并手动安装Docker
##### 4：非TopMininG专供镜像部署的节点运行此脚本无效（TopMininG专供镜像为官方编译的纯净打包版无任何修改可放心使用） 
##### 5：Ubuntu系统需先执行sudo apt update 确保系统软件依赖包为最新
##### 6：Centos系统需先执行sudo yum update 确保系统软件依赖包为最新


#### ■ 常用链接：  
##### 1.官网：暂未公布细节
##### 2.区块浏览器：http://www.liberty-chain.com/
##### 3.官方水龙头：暂未公布细节
##### 4.官方Git教程：https://github.com/Liberty-Chain/LBTRelease
##### 5.官方文档：暂未公布细节
##### 6.路线图（Milestone）：暂未公布细节
##### 7.测试网奖励说明：暂未公布细节
##### 8.官方电报群：暂未公布细节
##### 9.官方Discord群：暂未公布细节
##### 10.第三方矿池：https://lhpool.com/
##### 11.资料汇总：https://shimo.im/docs/R8hwkVVJVJVdPXRQ/


