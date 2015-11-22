# 積集合を得る。
[1,1,2,3,4] & [1,5]      # => [1]
# 和集合を得る。
[1,1,2,3,4] | [1,5]      # => [1, 2, 3, 4, 5]
# 差集合を得る。
[1,1,2,3,4] - [1,5]      # => [2, 3, 4]
# 差集合の場合、自分自身のみに含まれる重複要素は取り除かれない。
[1,1,2,3,4] - [2,5]      # => [1, 1, 3, 4]
# 相手に含まれる重複要素は取り除かれる。
[1,1,2,3,4] - [1,1,1,5]  # => [2, 3, 4]
