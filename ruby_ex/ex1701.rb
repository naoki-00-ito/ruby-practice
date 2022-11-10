# -*- coding: utf-8 -*-
# sample.txt を読み込みモードでオープンする
file = open("sample.txt", "r:utf-8")

# ファイルからデータをすべて読み込み、それを表示する
print file.read

# ファイルを閉じる
file.close