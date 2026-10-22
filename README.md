# 取件码助手 (PickupCode) — v4.6.3 反编译修改版

> 本仓库是 [O-kai/Xiaomi-HyperOs-pickup-code-grabber](https://github.com/O-kai/Xiaomi-HyperOs-pickup-code-grabber) 的一个**反编译修改版本**，基于其 v4.6.3 发布包（包名 `io.github.okaidev.pickupcode`）。

## 重要说明

- 本仓库包含的是 **apktool 反编译得到的 smali 源码**，并非上游项目的原始 Java/Kotlin/Gradle 工程源码。
- 如果你想要**可正常编译、可向上游贡献的原始源码**，请直接前往上游仓库：
  https://github.com/O-kai/Xiaomi-HyperOs-pickup-code-grabber
- 本仓库的价值在于：保存 v4.6.3 这一较完善版本的反编译基线，便于在此基础继续做 smali 级修改、重新打包。

## 许可证

基于上游项目，遵循 **MIT 许可证**（见 [LICENSE](LICENSE)）。版权归 O-kai 及贡献者所有；本修改版在原 MIT 协议下发布，保留原始版权声明与许可声明。

## 目录结构

```
.
├── AndroidManifest.xml                 # 反编译出的清单
├── apktool.yml                        # apktool 工程配置（含 versionCode / versionName）
├── smali/                             # 反编译后的 Dalvik 字节码（主要修改对象）
├── res/                               # 资源
├── assets/                            # 资产
├── original/                          # apktool 保留的原始文件（重建时参考）
├── unknown/                           # apktool 无法归类的小众文件
├── release/
│   └── pickupcode-v4.6.3-signed.apk   # 可直接安装的签名成品
├── LICENSE
└── README.md
```

## 重新打包（如需基于本源码改完再构建）

需要本机具备：JDK 17、Android SDK build-tools（含 zipalign / apksigner）、apktool。

```bash
# 1. 反编译得到的树直接用 apktool 重建
apktool b . -o unsigned.apk
# 2. 对齐
zipalign -p 4 unsigned.apk aligned.apk
# 3. 用你自己的 keystore 签名（原签名密钥不在此仓库，请勿提交密钥）
apksigner sign --ks your.keystore --ks-key-alias your_alias aligned.apk
```

> ⚠️ 签名密钥（*.jks / *.keystore）**绝对不要**提交到本仓库或任何公开位置。`.gitignore` 已默认排除。

## 安装

直接下载 [release/pickupcode-v4.6.3-signed.apk](release/pickupcode-v4.6.3-signed.apk) 安装即可（需允许未知来源）。

## 免责声明

本仓库为个人修改 / 归档用途。功能与上游可能不同，使用风险自负。
