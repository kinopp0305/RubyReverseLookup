begin
  f = open("sample.txt", "r") # => #<File:sample.txt>
  line = f.gets                      # => "abc\n"
  puts(line)
ensure
  f.close
end
