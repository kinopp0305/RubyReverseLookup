# 時刻・日付を加減算する
t = Time.local 1993,2,24,12,33,0          # => 1993-02-24 12:33:00 +0900
puts(t)

out1 = [t.yday, t.zone, t.wday]           # => [55, "JST", 3]
print(out1, "\n")

require 'date'
d = DateTime.new 1993,2,24,12,33,0,"JST"
puts(d)

out2 = [d.yday, d.zone, d.wday]           # => [55, "+09:00", 3]
print(out2, "\n")