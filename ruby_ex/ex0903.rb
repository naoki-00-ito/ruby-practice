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

  # name属性のセッターメソッド
  def name=(value)
    @name = value
  end

  # age属性のセッターメソッド
  def age=(value)
    @age = value
  end

  # Studentクラスのインスタンスの文字列を返す
  def to_s
    "#@name, #@age"
  end
end

# Studentクラスのインスタンスを作成する
shin = Student.new('久保秋　真', 45)

# ゲッターを使ってインスタンスの名前と年齢を表示する
puts "指名:#{shin.name}、年齢:#{shin.age}歳"

# セッターを使ってインスタンスの名前と年齢を変更する
shin.name = 'Shngh, Tiger Jeet'
shin.age = 445

# ゲッターを使ってshinの名前と年齢を表示する
puts shin.name
puts shin.age

puts "指名:#{shin.name}、年齢:#{shin.age}歳"