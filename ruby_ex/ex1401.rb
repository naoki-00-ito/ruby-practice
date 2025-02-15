# -*- coding: utf-8 -*-
require 'date'

class BookInfo
  # BookInfoクラスのインスタンスを初期化する
  def initialize(title, author, page, publish_date)
    @title = title
    @author = author
    @page = page
    @publish_date = publish_date
  end

  # 最初に検討する属性に対するアクセサを提供する
  attr_accessor :title, :author, :page, :publish_date

  # BookInfoインスタンスの文字列表現を返す
  def to_s
    "#{@title}, #{@author}, #{@page}, #{@publish_date}"
  end

  # 蔵書データを書式を付けて出力する操作を追加する
  # 項目の区切り文字を引数に指定することができる
  # 引数を省略した場合は改行を区切り文字にする
  def toFormattedString(sep = "\n")
    "書籍名: #{@title}#{sep}著者名: #{@author}#{sep}ページ数:#{@page}ページ#{sep}発刊日: #{@publish_date}#{sep}"
  end
end

# BookInfoManagerクラスを定義する
class BookInfoManager
  def initialize
    @book_infos = {}
  end

  # 蔵書データをセットアップする
  def setUp
    # 複数冊の蔵書データをセットアップする
    @book_infos["Yamada2005"] = BookInfo.new(
      "実践アジャイル ソフトウェア開発法とプロジェクト管理",
      "山田　正樹",
      248,
      Date.new(2005,1,25)
    )
    
    @book_infos["Ooba2006"] = BookInfo.new(
      "入門LEGO",
      "大庭　慎一郎",
      164,
      Date.new(2006,12,23)
    )
  end

  # 蔵書データを登録する
  def addBookInfo
    # 蔵書データ1件分のインスタンスを作成する
    book_info = BookInfo.new("", "", 0, Date.new)
    # 登録するデータを項目ごとに入力する
    print "\n"
    print "キー: "
    key = gets.chomp
    print "書籍名: "
    book_info.title = gets.chomp
    print "著書名: "
    book_info.author = gets.chomp
    print "ページ数: "
    book_info.page = gets.chomp.to_i
    print "発刊年: "
    year = gets.chomp.to_i
    print "発刊月: "
    month = gets.chomp.to_i
    print "発刊日: "
    day = gets.chomp.to_i
    book_info.publish_date = Date.new(year, month, day)

    # 作成した蔵書データの1件分をハッシュに登録する
    @book_infos[key] = book_info
  end

  # 蔵書を検索する
  def searchBookInfo
    print "検索する文字列を入力してください: "
    input = gets.chomp
    flag = 0
    hit = 0

    @book_infos.each {|key, info|
      
      # 各項目に入力された文字列が含まれるか確認
      # 含まれる場合はhitを加算
      if info.title.include?(input) then
        flag += 1
      end

      if info.author.include?(input) then
        flag += 1
      end

      if info.page.to_s.include?(input) then
        flag += 1
      end

      if info.publish_date.to_s.include?(input) then
        flag += 1
      end

      # 入力された文字列が含まれるか判定
      if flag != 0
        puts "\n----------------------"
        print info.toFormattedString
        puts "\n----------------------"
        # 検索ヒットの件数を加算
        hit += 1
      end

      # flag をリセット
      flag = 0

    }

    if hit == 0
      print "入力した文字列が含まれる蔵書はありませんでした"
    else
      print "計:#{hit}件の蔵書が見つかりました"
    end
  end

  # 蔵書のデータ一覧を表示する
  def listAllBookInfos
    puts "\n----------------------"
    @book_infos.each {|key, info|
      print info.toFormattedString
      puts "\n----------------------"
    }
  end

  # 処理の選択と選択後の処理を繰り返す
  def run
    while true
      # 機能選択画面を表示する
      print "
      1. 蔵書データの登録
      2. 蔵書データの表示
      3. 蔵書データの検索
      9. 終了
      番号を選んでください(1,2,3,9):"

      # 文字の入力を待つ
      num = gets.chomp
      case 
      when '1' == num
        # 蔵書データの登録
        addBookInfo

      when '2' == num
        # 蔵書データの表示
        listAllBookInfos

      when '3' == num
        # 蔵書データの検索
        searchBookInfo
        
      when '9' == num
        # アプリケーションの終了
        break;

      else
        # 処理待ち画面に戻る
      end
    end
  end

end



# アプリケーションのインスタンスを作成する
book_info_manager = BookInfoManager.new

# BookInfoManagerの蔵書データをセットアップする
book_info_manager.setUp

# BookInfoManagerの処理の選択と選択後の処理を繰り返す
book_info_manager.run