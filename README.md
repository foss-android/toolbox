**主要功能**：

1. **JSON工具**：格式化、压缩、生成实体类、JSON和XML互转等。
2. **格式转换**：支持HTML、CSS、JS等代码的格式化、压缩，HTML和Markdown、正则表达式工具等。
3. **加解密工具**：MD5、AES、Base64等加密解密，密码、UUID、条形码生成。
4. **文本处理**：字数统计、简繁转换、拼音转换、Unix时间戳转换等。
5. **网络工具**：IP地址查询、WebSocket测试、浏览器信息获取等。
6. **站长辅助**：Gzip压缩检测、死链检测、Whois查询、Meta标签优化。
7. **计算工具**：多种单位换算、科学计算器。
……
工具箱简单易用，功能齐全，支持多端使用。

### :point_right: 抱抱脸空间一键[复制链接](https://huggingface.co/spaces/ittools/online/tree/main?duplicate=true)

### :point_right: Docker run一键安装命令
```bash
docker run -d --restart always --name toolbox -p 8080:8080 ghcr.io/foss-android/toolbox:latest
```
### :point_right: Docker `tar` 离线包下载安装过程

首先，访问以下GitHub下载离线的`.tar` 包：
https://github.com/foss-android/docker2tar/releases/tag/toolbox

然后，在 **CMD** 或 **PowerShell** 中，执行以下命令来加载 `.tar` 包并运行容器：
```bash
docker load -i path_to_downloaded/toolbox.tar
docker run -d --restart always --name toolsbox -p 8080:8080 toolbox:latest
```
> 将 `path_to_downloaded` 替换为下载的 `toolbox.tar` 文件的实际路径。

最后，在浏览器中访问 `http://localhost:8080` 即可使用 `toolbox`。
