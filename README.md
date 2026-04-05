# AHK-FOR-CAD

## 概要

AHK-FOR-CADは、AutoHotKeyを用いてCAD向けにキーマップを変更するソフトです。

## 特徴

* 誰でも使いやすいように簡単なキー変更のみとなっています。
* 右手をマウスに置いた状態でテンキーやEnterを押せるようにします。
* CAD非使用時にも指を動かす範囲が小さくなり便利です。

## Requirement

* AutoHotKey V2 以上

## 使用方法

面倒な設定を省きたい場合：AHK-FOR-CAD.exe を実行してください。AutoHotkey のインストールは不要です。

セキュリティ警告で exe が開けない場合：
[AutHotKey公式サイト](https://www.autohotkey.com/)から AutoHotkey V2 をインストールしてください。
その後、同梱の AHK-FOR-CAD.ahk をダブルクリックすれば動作します。
こちらの方法はソースコードが公開されているため、より安全です。

### キーマップ

#### Ctrl

| 変更前   | 変更後 |
| -------- | ------ |
| スペース | Ctrl   |

#### テンキー

| 変更前                              | 変更後 |
| ----------------------------------- | ------ |
| (右クリック or 無変換 or 変換)  + x | 1      |
| (右クリック or 無変換 or 変換)  + c | 2      |
| (右クリック or 無変換 or 変換)  + v | 3      |
| (右クリック or 無変換 or 変換)  + s | 4      |
| (右クリック or 無変換 or 変換)  + d | 5      |
| (右クリック or 無変換 or 変換)  + f | 6      |
| (右クリック or 無変換 or 変換)  + w | 7      |
| (右クリック or 無変換 or 変換)  + e | 8      |
| (右クリック or 無変換 or 変換)  + r | 9      |
| (右クリック or 無変換 or 変換)  + z | 0      |
| (右クリック or 無変換 or 変換)  + a | .      |
| (右クリック or 無変換 or 変換)  + q | ,      |

#### Enter

| 変更前                       | 変更後 |
| ---------------------------- | ------ |
| (無変換 or 右クリック) + TAB | Enter  |
| 変換                         | Enter  |

#### BS・Delete

| 変更前                                     | 変更後 |
| ------------------------------------------ | ------ |
| CapsLock                                   | BS     |
| (右クリック or 無変換 or 変換)  + CapsLock | Delete |

#### カーソルキー・HOME・END・APP

| 変更前                | 変更後 |
| --------------------- | ------ |
| (無変換 or 変換)  + i | Up     |
| (無変換 or 変換)  + k | Down   |
| (無変換 or 変換)  + j | Left   |
| (無変換 or 変換)  + l | Right  |
| (無変換 or 変換)  + m | Home   |
| (無変換 or 変換)  + , | App    |
| (無変換 or 変換)  + . | End    |

## ライセンス

### AHK-FOR-CAD (本プログラム)

本プログラムのスクリプト部分は、MITライセンスの下で公開されています。

* MIT ライセンス：<https://www.tldrlegal.com/license/mit-license>

### AutoHotkey

本プログラムの実行ファイル (.exe) には、AutoHotkey のランタイムが含まれています。
AutoHotkey は GNU General Public License (GPLv2) の下で提供されています。

* AutoHotkey 公式サイト: <https://www.autohotkey.com/>
* GPLv2 ライセンス全文: <https://www.gnu.org/licenses/old-licenses/gpl-2.0.html>

## 免責事項

本ソフトウェアの使用によって生じた損害等について、作者は一切の責任を負いません。各自の責任においてご使用ください。
