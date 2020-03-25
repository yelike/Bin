# Actions-OpenWrt

注：本仓库纯属个人根据自己的设备配置使用，感谢P3TERX大佬的仓库代码.</br>
   直接FORK本仓库是不能自动编译并发布release的，请看下面使用方法。

## 使用方法

前面的自动编译以及个性化定制等修改，全部来源于P3TERX大佬的教程：https://p3terx.com/archives/build-openwrt-with-github-actions.html </br>
这里只说发布release的方法：</br>
 1、自动编译及自动发布你也可以使用本仓库模板，请点击上面的Use this template(使用此模板）来创建你自己的新仓库。</br>
 2、点击右上角你的头像-settings-Developer settings-Personal access tokens生成新的令牌，随便起名保存，同时复制令牌内容。</br>
 3、回到你刚健的新仓库，settings-Secrets-Add a new secret(添加新密匙），起名为RELEASES,把刚才复制的令牌内容粘贴进去保存。</br>
 4、定时编译的时间、触发自动编译的方法修改都在上面P3TERX大佬的教程里有说明。 </br>
 5、最关键一步，因为我在里面加入了开始编译和编译成功的微信消息提醒，所以除以上步骤外，还要把serverchan（微信推送）的令牌保存到secret里，</br>
    取名ServerChan.和前面第三步的添加密匙方法一致，否则差了这一步，刚开始编译就因为微信推送找不到令牌而宣告失败。</br>
    或者取消微信推送，注释掉yml文件中开始编译和编译结束的代码（共四行代码）即可。</br>
## Acknowledgments

- [Microsoft](https://www.microsoft.com)
- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub](https://github.com)
- [GitHub Actions](https://github.com/features/actions)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cisco](https://www.cisco.com/)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
