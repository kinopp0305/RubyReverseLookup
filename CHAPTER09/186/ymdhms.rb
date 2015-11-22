# 時刻・日付を加減算する
t = Time.now                   # => 2008-11-11 04:26:44 +0900
puts(t)
out1 = [ t.year, t.month, t.day ]     # => [2008, 11, 11]
out2 = [ t.hour, t.min, t.sec ]       # => [4, 26, 44]
print(out1, out2, "\n")

require 'date'
d = Date.today
puts(d)
out3 = [ d.year, d.month, d.day ]     # => [2008, 11, 11]
print(out3, "\n")

dt = DateTime.now
[ dt.year, dt.month, dt.day ]  # => [2008, 11, 11]
[ dt.hour, dt.min, dt.sec ]    # => [4, 26, 44]
