# cgdrep

[![CircleCI](https://circleci.com/gh/cogenda/cgdrep/tree/master.svg?style=svg)](https://circleci.com/gh/cogenda/cgdrep/tree/master)


This project contains the LaTeX templates that we use to write technical
reports at Cogenda Pte Ltd.
It contains the following LaTeX classes and the corresponding LyX layouts:

  - English manual `cgdmanen` ;
  - English report `cgdrepen` ;
  - English article `cgdarten` ;
  - Chinese report `cgdrepcn` ;
  - Chinese article `cgdartcn` .

## Install

The templates depend on recent versions of several LaTeX macro packages,
so a recent LaTeX distribution is required. TexLive2015 is known to work.

To install, run the script `./install.sh`. It relies on `kpsewhich` to
locate LaTeX. If a `.lyx/` directory is found in
the user's home directory, it also installs the LyX layout files.

The install script also attempts to locate the fonts used in the templates.
If the are not already installed on the computer, it will try downloading
the font files.


## Documentation

A manual is available in Chinese (`CGD-QP-1401/`),
which we use in the company for training.
Some example documents (in both English and Chinese)
are available in the `examples/` directory.

Lyx users can use `File` ▷ `New from Template` in the menu to create
new document from the `report_en.lyx` tempalte, and continues writing
from there.

# 说明

本项目包含珂晶达电子有限公司内部技术报告采用的LaTeX模板，以及对应的LyX样式。
这包括：

  - 英文手册模板 `cgdmanen` ；
  - 英文报告模板 `cgdrepen` ；
  - 英文短文模板 `cgdarten` ；
  - 中文报告模板 `cgdrepcn` ；
  - 中文短文模板 `cgdartcn` 。

## 安装

本套模板用到了一系列较新的宏包。因此，需要安装较新版本的LaTeX发行包才能使用
本套模板。经测试，TexLive2015可以满足要求。

安装时，运行`./install.sh`脚本。该脚本依赖`kpsewhich`定位LaTeX安装路径。
如果用户home目录下，包含`.lyx/`目录，脚本也会安装LyX样式文件。

安装脚本也会在系统中寻找模板用到的字体。如果某些字体没有安装，脚本会试图
下载字体文件并安装。

## 文档

中文版说明书在`CGD-QP-1401/`目录下。
另有一些中、英文样例文档，存放在`examples/`目录下。

Lyx用户可以使用 `File` ▷ `New from Template` 菜单命令，从`report_cn.lyx`模板
新建一个文档，并在此基础上撰写报告。

