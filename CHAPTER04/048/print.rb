# オブジェクトを表示する

print "This is print.\n"    # >> This is print.
puts "This is puts."        # >> This is puts.
print 1,"str",/regexp/,"\n" # >> 1str(?-mix:regexp)
puts 1,"str",/regexp/       # >> 1
                            # >> str
                            # >> (?-mix:regexp)
puts                        # >>
puts [1,2],3                # >> 1
                            # >> 2
                            # >> 3
$stdout.puts "by IO#puts"   # >> by IO#puts  （$stdoutを明示）
"by display\n".display      # >> by display  （displayで表示）
