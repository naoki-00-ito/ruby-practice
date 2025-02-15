# -*- coding: utf-8 -*-

# Studentクラスを作る
class Student 
  # Studentクラスのインスタンスを初期化する
  def initialize(name, age)
    @name = name
    @age = age
  end

  # name属性のゲッターメソッド
  def name
    @name
  end

  # age属性のゲッターメソッド
  def age
    @age
  end

  # Studentクラスのインスタンスの文字列を返す
  def to_s
    "#@name, #@age"
  end
end

# 新しいハッシュを作成し、Studentクラスのインスタンスを複数作成する
students = {
  :shin => Student.new("Shin Kuboaki", 45),
  :shinichirou => Student.new("shinichirou Ooba", 35),
  :shingo => Student.new("Shingo Katori", 30),
}

# すべてのインスタンスの名前と年齢を表示する
students.each{|key, value|
  puts "#{key} #{value.to_s}"
}