# 現在時刻・日付を求める
Time.now           # => 2008-11-11 04:22:40 +0900
# dateライブラリにDateとDateTimeが定義されているので読み込む
require 'date'
# 今日の日付を得る
d = Date.today     # => #<Date: 4909563/2,0,2299161>
puts(d)

out1 = d.to_s             # => "2008-11-11"
puts(out1)

dt = DateTime.now  # => #<DateTime: 23565900551138195737/9600000000000,3/8,2299161>
puts(dt)

dt.to_s            # => "2008-11-11T04:22:40+09:00"
puts(dt)