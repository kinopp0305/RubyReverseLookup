# 現在時刻・日付を求める
require 'date'

out1 = Time.local 1993, 2, 24                             # => 1993-02-24 00:00:00 +0900
puts(out1)

out2 = Time.local 1993, 2, 24, 12, 34, 56                 # => 1993-02-24 12:34:56 +0900
puts(out2)

out3 = Time.gm 1993, 2, 24, 12, 34, 56                    # => 1993-02-24 12:34:56 UTC
puts(out3)

out4 = Date.new(1993, 2, 24).to_s                         # => "1993-02-24"
puts(out4)

out5 = DateTime.new(1993, 2, 24, 12, 34, 56, "JST").to_s  # => "1993-02-24T12:34:56+09:00"
puts(out5)