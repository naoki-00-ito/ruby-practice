# -*- coding: utf-8 -*-
require 'date'

# 表示したいデータを作成する(同じ蔵書は各配列の添字が同じ)
titles = [
  "タイトル1",
  "タイトル2",
]
authors = [
  "作者1",
  "作者2",
]
yomies = [
  "さくしゃいち",
  "さくしゃに",
]
publishers = [
  "出版A",
  "出版B",
]
pages = [
  100,
  200,
]
prices = [
  1000,
  2000,
]
purchase_prices = [
  1100,
  2100,
]
isbn_10s = [
  "1111111111",
  "2222222222",
]
isbn_13s = [
  "111-1111111111",
  "222-2222222222",
]
sizes =  [
  "21x",
  "22x",
]
publish_dates = [
  Date.new(2005,1,25),
  Date.new(2005,2,25),
]
purchase_dates = [
  Date.new(2008,1,25),
  Date.new(2009,2,25),
]

# 蔵書データを表示する
titles.size.times{|i|
  puts "-----------------"
  puts "書式名: " + titles[i]
  puts "著者名: " + authors[i]
  puts "よみがな: " + yomies[i]
  puts "出版社: " + publishers[i]
  puts "ページ数: " + pages[i].to_s + "ページ"
  puts "販売価格: " + prices[i].to_s + "円"
  puts "購入費用: " + purchase_prices[i].to_s + "円"
  puts "ISBN_10: " + isbn_10s[i]
  puts "ISBN_13: " + isbn_13s[i]
  puts "寸法: " + sizes[i]
  puts "購入日: " + publish_dates[i].to_s
  puts "発売日: " + purchase_dates[i].to_s
}