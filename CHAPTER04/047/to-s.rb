# オブジェクトの文字列表現について

Kernel.to_s  # => "Kernel"
p "The #{Kernel} module provides builtin functions."
# => "The Kernel module provides builtin functions." #{}は内部でto_sが呼ばれる
print Kernel
# >> Kernel printは内部でto_sが呼ばれる
