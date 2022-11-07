# -*- coding: utf-8 -*-
# 新しいハッシュを作る
friends = {
  :shin => "Sjin Kuboki",
  :shinichirou => "Shinicirou ooba",
  :shingo => "Shingo Katori",
}

# ハッシュの要素を1つずつ処理する
# 繰り返しの都度、キーと値をブロック内のローカル変数key, valueに渡す
friends.each {|key, value|
  # ローカル変数の値を表示する
  puts "#{key} #{value}"
}