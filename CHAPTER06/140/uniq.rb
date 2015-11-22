# 重複した要素をひとつにまとめる。
[1,1,1,1].uniq      # => [1]
[1,1,2,2,3,4].uniq  # => [1, 2, 3, 4]
# 連続した重複でなくても、あらゆる重複要素をひとつにまとめる。
[1,2,1,2,3,4].uniq  # => [1, 2, 3, 4]
ary = [1,2,1,1]
# 破壊的バージョンは自分自身を書き換える。書き換えた場合はselfを返し、書き換えない（重複要素がない）場合はnilを返す。
ary.uniq!           # => [1, 2]
ary                 # => [1, 2]
ary.uniq!           # => nil
