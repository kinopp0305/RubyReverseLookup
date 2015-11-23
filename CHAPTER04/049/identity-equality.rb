# 同値だが同一ではない例
# 文字列は評価されるたびにオブジェクトが作られる
a = "str"
b = "str"
p a.object_id  # => 68591790
p b.object_id  # => 68591780
# aとb同値だが同一ではない例
p a == b       # => true
p a.equal? b   # => false

# 同一の例
a = "str"
# 同一のオブジェクト
b = a
p a.object_id  # => 68589770
p b.object_id  # => 68589770
# 同一ならば同値である
a == b       # => true
a.equal? b   # => true
# FixnumとSymbolは例外的に一意的なidが割り当てられるので同一
a = 7
b = 7
p a.object_id  # => 15
p b.object_id  # => 15
a == b       # => true
p a.equal? b   # => true
a = :symbol
b = :symbol
p a.object_id  # => 119528
p b.object_id  # => 119528
a == b       # => true
p a.equal? b   # => true
