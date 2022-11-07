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

# StudentBookアプリケーションのインスタンスを作る
class StudentBook
  def initialize
    @students = {}
  end

  # ハッシュにStudentクラスのインスタンスを複数作成する
  def setUpStudents
    @students = {
      :shin => Student.new("Shin Kuboaki", 45),
      :shinichirou => Student.new("shinichirou Ooba", 35),
      :shingo => Student.new("Shingo Katori", 30),
    }
  end

  # すべてのインスタンスの名前と年齢を表示する
  # 処理を手続きにする
  def printStudents
    @students.each{|key, value|
      puts "#{key} #{value.to_s}"
    }
  end

  # StudentBookが保持しているデータをリストする
  def listAllStudents
    # Studentクラスのインスタンスの作成
    setUpStudents
    # Studentクラスのインスタンスの表示
    printStudents
  end
end

# Studentbookクラスのインスタンスを作成
student_book = StudentBook.new

# Studentクラスのインスタンスの表示
student_book.listAllStudents