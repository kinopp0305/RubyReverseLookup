open("sample.txt", "r") do |f|
  line = f.gets          # => "abc\n"
  puts(line)
end
