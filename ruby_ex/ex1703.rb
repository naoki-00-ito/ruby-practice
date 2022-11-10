# -*- coding: utf-8 -*-

# sample.txt を読み込みモードでオープンする
file = open("sample.txt", "r:utf-8")

# ファイルの行を1行ずつ取り出して、lineに読み込む
file.each{|line|
  # lineを表示する
  print line
}

# ファイルを閉じる
file.close