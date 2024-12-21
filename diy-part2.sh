#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/LEDE/OpenWrt/g' package/base-files/files/bin/config_generate
sed -i 's/LEDE/OpenWrt/g' package/base-files/files/etc/init.d/system
sed -i 's/LEDE/OpenWrt/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/LEDE/OpenWrt/g' package/base-files/luci2/bin/config_generate
sed -i 's/LEDE/iStoreOS/g' package/lean/default-settings/files/zzz-default-settings


echo '                                                        
   [0;1;34;94m▀[0m     [0;34m▄▄▄▄[0m    [0;34m▄[0m                          [0;1;30;90m▄▄▄▄[0m   [0;1;30;90m▄▄▄▄[0m 
 [0;34m▄▄▄[0m    [0;34m█▀[0m   [0;34m▀[0m [0;34m▄[0;37m▄█▄▄[0m   [0;37m▄▄▄[0m    [0;37m▄[0m [0;1;30;90m▄▄[0m   [0;1;30;90m▄▄▄[0m   [0;1;30;90m▄▀[0m  [0;1;30;90m▀[0;1;34;94m▄[0m [0;1;34;94m█▀[0m   [0;1;34;94m▀[0m
   [0;34m█[0m    [0;37m▀█▄▄▄[0m    [0;37m█[0m    [0;37m█▀[0m [0;1;30;90m▀█[0m   [0;1;30;90m█▀[0m  [0;1;30;90m▀[0m [0;1;30;90m█▀[0m  [0;1;34;94m█[0m  [0;1;34;94m█[0m    [0;1;34;94m█[0m [0;1;34;94m▀█▄▄▄[0m 
   [0;37m█[0m        [0;37m▀█[0m   [0;1;30;90m█[0m    [0;1;30;90m█[0m   [0;1;30;90m█[0m   [0;1;30;90m█[0m     [0;1;34;94m█▀▀▀▀[0m  [0;1;34;94m█[0m    [0;34m█[0m     [0;34m▀█[0m
 [0;37m▄▄█▄▄[0m  [0;1;30;90m▀▄▄▄█▀[0m   [0;1;30;90m▀▄▄[0m  [0;1;30;90m▀█[0;1;34;94m▄█▀[0m   [0;1;34;94m█[0m     [0;1;34;94m▀█▄▄[0;34m▀[0m   [0;34m█▄▄█[0m  [0;34m▀▄▄▄█▀[0m
                                                        
                                  Powered by OpenWRT    
 -------------------------------------------------------
 %D %V, %C
 -------------------------------------------------------' >  package/base-files/files/etc/banner
