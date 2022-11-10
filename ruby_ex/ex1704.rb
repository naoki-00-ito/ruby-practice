# -*- coding: utf-8 -*-
# 配列にデータを作成
fruits = ["apple", "orange", "banana", "cherry", "fig"]

# sample4.txt を書き込みモードで新規に作成
file = File.open("sample4.txt", "w:utf-8")
fruits.each{|fruit|
  file.puts fruit
}

# ファイルを閉じる
file.close

# sample4.txt を読み込みモードでオープンする
file = File.open("sample4.txt", "r:utf-8")

# ファイルからデータをすべて読み込み、それを表示する
print file.read

# ファイルを閉じる
file.close