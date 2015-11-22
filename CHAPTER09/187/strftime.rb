# 時刻・日付をフォーマットする

###!/usr/local/bin/ruby -Ke
t = Time.local 1993,2,24,18,33,55
puts(t)

out1 = t.strftime "%Y/%m/%d %H:%M:%S %Z"          # => "1993/02/24 18:33:55 JST"
puts(out1)

out2 = t.strftime "%y/%m/%d(%a) %p%I:%M"          # => "93/02/24(Wed) PM06:33"
puts(out2)

out3 = t.strftime "%A(%a)"                        # => "Wednesday(Wed)"
puts(out3)

out4 = t.strftime "日曜から数えて%w日目"              # => "日曜から数えて3日目"
puts(out4)

out5 = t.strftime "%B(%b)"                        # => "February(Feb)"
puts(out5)

out6 = t.strftime "今日は年始から%j日目、%U週目"       # => "今日は年始から055日目、08週目"
puts(out6)

out7 = t.strftime "%c"                            # => "Wed Feb 24 18:33:55 1993"
puts(out7)

out8 = t.strftime "現在時刻：%X"                    # => "現在時刻：18:33:55"
puts(out8)

out9 = t.strftime "今日の日付：%x"                   # => "今日の日付：02/24/93"
puts(out9)
