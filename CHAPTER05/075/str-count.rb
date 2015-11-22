# 「l」の出現数を数える。
"hello".count("l")            # => 2
# 対象文字は1〜3。
"12345".count("1-3")          # => 3
# 対象文字は1と4〜5。
"12345".count("14-5")         # => 3
# 対象文字は1〜4かつ4〜5、すなわち4のみ。
"12345".count("1-4", "4-5")   # => 1
