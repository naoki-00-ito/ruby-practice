# -*- coding: utf-8 -*-
# 新しいハッシュを作る
friends = {
  :shin => "Sjin Kuboki",
  :shinichirou => "Shinicirou ooba",
  :shingo => "Shingo Katori",
}

# ハッシュに要素を追加する
friends[:shinsaku] = "Shinsaku Takasugi"

# ハッシュの要素を検索する（見つかるはず）
puts friends.include?(:shinsaku)
puts friends[:shinsaku]

# 追加した要素を削除する
friends.delete(:shinsaku)

# ハッシュの要素を検索する（見つからないはず）
if friends.include?(:shinsaku) then
  puts friends(:shinsaku)
else
  puts "見つかりません"
end
