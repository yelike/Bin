# Actions-OpenWrt
注：本仓库纯属个人根据自己的设备配置使用，感谢P3TERX大佬的仓库代码

## Usage

如需使用本仓库模板发布release，请点击下面的Use this template(使用此模板）来创建你自己的新仓库，然后点击右上角你的头像-settings-Developer settings-Personal access tokens生成新的令牌，随便起名保存，同时复制令牌内容。回到你刚健的新仓库，settings-Secrets-Add a new secret(添加新密匙），起名为RELEASES,把刚才复制的令牌内容粘贴进去保存，即可等待定时编译发布。定时可自己调整（yml文件中，里面的时间为UTC时间，+8才是北京时间).如果要微信推送开始编译和编译成功的消息，请在前面说的secret里把serverchan的令牌保存为密匙，起名ServerChan即可。
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

## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE) © P3TERX
