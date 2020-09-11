# Font-Installer-Ruby

[日本語](./README-ja.md)|[English](./README.md)
---|---

**The English version is [here](./README.md).**

Font InstallerのRuby版です。

## 実行方法
管理者権限で実行してください。

sudoなどでもいいです。

### Windows
```cmd
ruby install.rb [フォント名]
```

### 他のOS
```sh
ruby ./install.rb [フォント名]
```

## 依存関係

### ソフトウェアなど
```
Ruby
```

[Rubyのホームページはこちら](https://www.ruby-lang.org/)

### Rubyライブラリ
()内はgemのパッケージ名です。

こちらは[depends.rb](./depends.rb)で解消できます。
```
FileUtils(fileutils)
Rubyzip(rubyzip)
OpenUri(rubysl-open-uri)
```
