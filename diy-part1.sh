#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' feeds.conf.default
#sed -i '$a src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages' feeds.conf.default

rm -rf package/helloworld
git clone --depth=1 https://github.com/fw876/helloworld.git package/kleinersource/ssrplus

# helloword
git clone https://github.com/jerrykuku/lua-maxminddb.git package/kleinersource/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/kleinersource/luci-app-vssr

git clone https://github.com/sirpdboy/netspeedtest.git package/netspeedtest
git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic package/unblockneteasemusic

git clone https://github.com/jerrykuku/luci-app-argon-config package/argon-config
git clone https://github.com/ferboiar/luci-app-fileassistant package/fileassistant
#git clone https://github.com/thinktip/luci-theme-neobird package/neobird
#git clone https://github.com/YL2209/luci-theme-argon_armygreen package/argon_armygreen
