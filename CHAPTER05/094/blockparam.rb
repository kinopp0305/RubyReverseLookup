str = "<A3>"
str.gsub!(/([A-Z])(\d+)/) {|s|
  [ s, $& ]  # => ["A3", "A3"]
  "#$1-#$2"
}
str          # => "<A-3>"