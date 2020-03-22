#!/bin/bash
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
# Add kernel build user
[ -z $(grep "CONFIG_KERNEL_BUILD_USER=" .config) ] &&
    echo 'CONFIG_KERNEL_BUILD_USER="Bin"' >>.config ||
    sed -i 's@\(CONFIG_KERNEL_BUILD_USER=\).*@\1$"Bin"@' .config
#移除不用软件包    
#rm -rf package/lean/luci-app-dockerman
#添加额外软件包
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
#git clone https://github.com/KFERMercer/luci-app-dockerman.git package/luci-app-dockerman
#添加神秘代码
svn co https://github.com/bin20088/lede/trunk/files
./scripts/feeds update -a
./scripts/feeds install -a
