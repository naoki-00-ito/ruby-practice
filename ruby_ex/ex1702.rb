# -*- coding: utf-8 -*-
# 行番号用の変数
line_no = 0

# sample.txt を読み込みモードでオープンする
file = open("sample.txt", "r:utf-8")

# ファイルの終わりまで、1行ずつlineに読み込む
while(line = file.gets)
  # 読み込んだ行を読み込んだ行数とともに表示する
  line_no += 1
  print("#{line_no}: #{line}")
end

# ファイルを閉じる
file.close