# Font-Installer-Ruby

[日本語](./README-ja.md)|[English](./README.md)
---|---

**日本語版は[こちら](./README-ja.md)にあります**

The Ruby version of the Font Installer.

## How to run.
Run it with administrative privileges.

You can also use sudo.

### Windows.
```cmd
ruby install.rb [font name]
```

### Other OSes.
```sh
ruby ./install.rb [font name]
````

## Dependency.

### Software, etc.
```
Ruby
```

[Ruby's website is here](https://www.ruby-lang.org/)

### Ruby Library
() is the package name of the gem.

This can be resolved in [depends.rb](./depends.rb).
```
FileUtils(fileutils)
Rubyzip(rubyzip)
OpenUri(rubysl-open-uri)
```
