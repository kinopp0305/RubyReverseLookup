# 文字列から時刻・日付に変換する
require 'date'
require 'time'
s = "1993/2/24 10:30"

o1 = Time.parse s            # => 1993-02-24 10:30:00 +0900
o2 = Date.parse(s).to_s      # => "1993-02-24"
o3 = DateTime.parse(s).to_s  # => "1993-02-24T10:30:00+00:00"
puts(o1, o2, o3)

t1 = Time.parse "Mon, 28 Jan 2008 01:23:31 +0900"        # => 2008-01-28 01:23:31 +0900
t2 = Time.parse "Mon, 28 Jan 2008 01:23:31 -00"          # => 2008-01-28 01:23:31 UTC
t3 = Time.parse "Sun, 27 Jan 2008 17:41:20 GMT"          # => 2008-01-28 02:41:20 +0900
t4 = Time.parse "Tuesday, July 6th, 2007, 18:35:20 GMT"  # => 2007-07-07 03:35:20 +0900
t5 = Time.parse "Tuesday, July 6th, 2007, 18:35:20 UTC"  # => 2007-07-06 18:35:20 UTC
t6 = Time.parse "07-01-07 09:16:24+09"                   # => 2007-01-07 09:16:24 +0900
t7 = Time.parse "Mon Dec 25 00 06:53:24 UTC"             # => 2000-12-25 06:53:24 UTC
t8 = Time.parse "2008-01-24T23:55:42Z"                   # => 2008-01-24 23:55:42 UTC
puts(t1, t2, t3, t4, t5, t6, t7, t8)

k1 = Time.rfc2822 "Mon, 28 Jan 2008 01:23:31 +0900"  # => 2008-01-28 01:23:31 +0900
k2 = Time.xmlschema "2008-01-24T23:55:42Z"           # => 2008-01-24 23:55:42 UTC
tms = "Sun, 27 Jan 2008 17:41:20 GMT"
k3 = Time.httpdate tms                               # => 2008-01-28 02:41:20 +0900
puts(k1, k2, k3)

Time.xmlschema tms rescue $!
g1 = Time.xmlschema tms rescue Time.parse tms  # => 2008-01-28 02:41:20 +0900
puts(g1)
g2 = Time.parse "2008-13-14" rescue $! # => #<ArgumentError: argument out of range>
puts(g2)