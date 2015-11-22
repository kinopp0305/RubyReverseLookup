# 時刻・日付をフォーマットする

###!/usr/local/bin/ruby -Ke
require 'date'

# 曜日の名称・午前午後を日本語にするメソッド
module JStrftime
  JAPANESE = {"Sunday"=>"日", "Monday"=>"月", "Tuesday"=>"火", "Wednesday"=>"水",
    "Thursday"=>"木", "Friday"=>"金", "Saturday"=>"土", "AM"=>"午前", "PM"=>"午後"}
  # 置換すべき英語名のどれかに一致する正規表現
  JAPANESE_RE = Regexp.union(*JAPANESE.keys)
  # 英語を日本語に置き換える
  def jstrftime(fmt)  strftime(fmt).gsub(JAPANESE_RE){ JAPANESE[$&] }  end
end
# Mix-inする
class Time; include JStrftime end
class Date; include JStrftime end

out1 = Time.now.jstrftime("%Y年%m月%d日 (%A曜日) %p%I時%M分") # => 2015年11月22日 (日曜日) 午後09時16分
puts(out1)

out2 = Date.today.jstrftime("%Y年%m月%d日 (%A曜日)")  # => 2015年11月22日 (日曜日)
puts(out2)