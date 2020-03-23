#!/bin/bash
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
[ -z $(grep "CONFIG_KERNEL_BUILD_USER=" .config) ] &&
    echo 'CONFIG_KERNEL_BUILD_USER="Bin"' >>.config ||
    sed -i 's@\(CONFIG_KERNEL_BUILD_USER=\).*@\1$"Bin"@' .config
#移除不用软件包    
#rm -rf package/lean/luci-app-dockerman
#添加额外软件包
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
#git clone https://github.com/KFERMercer/luci-app-dockerman.git package/luci-app-dockerman
svn co https://github.com/Lienol/openwrt-package/trunk/package/brook package/brook
svn co https://github.com/Lienol/openwrt-package/trunk/package/chinadns-ng package/chinadns-ng
svn co https://github.com/Lienol/openwrt-package/trunk/package/tcping package/tcping
svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-passwall package/luci-app-dockerman
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/bin20088/luci-theme-argon-mc.git package/luci-theme-argon-mc
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/aboutboy/luci-theme-butongwifi.git package/luci-theme-butongwifi
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
git clone https://github.com/tzxiaozhen88/luci-app-koolproxyR.git package/luci-app-koolproxyR
git clone https://github.com/bin20088/luci-app-koolddns.git package/luci-app-koolddns
#添加神秘代码
svn co https://github.com/bin20088/lede/trunk/files
./scripts/feeds update -a
./scripts/feeds install -a
