## Arch Linux Live ISO

iotang 很喜欢桌面环境！

牠不想每次装 Arch Linux 的时候都面对着一个黑乎乎的命令行，所以搞出了这个有图形界面的 Arch Linux 安装镜像。

并且牠写了个关于 Arch Linux 的安装的[一带一路教程](airootfs/etc/skel/wizard.txt)，有了这个的话安装 Arch Linux 的难度会降低一些。

### 一些改动

默认中文，时区上海。

`root` 账户密码 `root`；`live` 账户密码 `live`。

`pacman.conf` 里启动了 `multilib` 和 `archlinuxcn`。

`build.sh` 里把原来两个要从某个上不去的网站弄下来的 EFI 文件提前下载好，替换成从本地获取。

`packages.x86_64` 里默认搞了 KDE 桌面系统和一点基础软件，以及很多的驱动（显卡，有线网卡，无线网卡什么的）。

### 制造

你必须在 Arch Linux 下执行这个操作。

#### 依赖环境

```plain
$ sudo pacman -S archiso
```

#### 开始制造

必须进入 root 状态。

```plain
$ su
```

推荐先把这个目录另外复制一份。

```plain
# cp -r archliveiso archlive_tmp
# cd archlive_tmp
# ./build.sh -v
```

这可能需要很长时间。

然后在文件夹 `out` 里面可以看到一个镜像文件。

这个文件大小大概是 `1.6 GB`。

进入 Live CD 的时候，用 e 和 Tab 键进入内核参数编辑模式，加上一个 cow_spacesize=8G（或者一个很大的空间），否则你可能会在安装的时候遇上磁盘空间不足的错误。
