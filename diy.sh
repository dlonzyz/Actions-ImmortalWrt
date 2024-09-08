# 请在下方输入自定义命令(一般用来安装第三方插件)(可以留空)
# Please enter the custom command below (usually used to install third-party plugins) (can be left blank)
# git clone --depth=1 https://github.com/EOYOHOO/UA2F.git package/UA2F
# git clone --depth=1 https://github.com/EOYOHOO/rkp-ipid.git package/rkp-ipid
# git clone --depth=1 https://github.com/immortalwrt/homeproxy.git package/homeproxy
# git clone --depth=1 https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go
sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
