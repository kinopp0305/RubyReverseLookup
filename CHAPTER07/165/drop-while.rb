[2, 1, 7, 3, 2].reject {|x| x < 6 }      # => [7]
[2, 1, 7, 3, 2].drop_while {|x| x < 6 }  # => [7, 3, 2]
[7, 3, 2].drop_while {|x| x < 6 }        # => [7, 3, 2]
