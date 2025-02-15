# -*- coding: utf-8 -*-
require 'rubygems'  # RubyGemsでインストールしたときには記述
require 'dbi'       # DBIを使う

# dbhを作成し、データベース'fruits01.db'に接続する
dbh = DBI.connect('DBI:SQLite3:fruits01.db')

# テーブルからデータを読み込んで表示する
# select文の実行
sth = dbh.execute("select * from products")

# select文の実行結果を1件ずつrowに取り出し、繰り返し処理する
sth.each do |row|
  # rowは1件分のデータを保持しているので、
  # each_with_nameメソッドで値と項目名を取り出して表示する
  row.each_with_name do |val, name|
    puts "#{name}: #{val.to_s}"
  end
  puts "-------------"
end

# 実行結果を解放する
sth.finish

# データベースとの接続を終了する
dbh.disconnect