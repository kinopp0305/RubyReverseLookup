# -*- coding: utf-8 -*-
### -*- coding: shift_jis -*-
require 'kconv'
# Shift_JIS�̕�������t�@�C���ɏ������݁A���̃t�@�C���̎��ۂ̕����R�[�h��Ԃ��֐�
def write_test(mode)
  file = "output"
# �����񃊃e������Shift_JIS�B
  open(file, mode) {|f| f.puts "��{��ł���B" }
# ����File.read�ł̓G���R�[�f�B���O�ϊ�����Ȃ��B�t�@�C���̕����R�[�h�𐄑�����B
  Kconv.guess(File.read(file))
ensure
  File.unlink file
end

# ���P�[���G���R�[�f�B���O��default_external��EUC-JP�B
Encoding.default_external        # => #<Encoding:EUC-JP>
Encoding.find("locale")          # => #<Encoding:EUC-JP>
# �O���G���R�[�f�B���O���w�肵�Ȃ��ƁA�ϊ����ꂸ�ɏ������܂��B
write_test "w+"                  # => #<Encoding:Shift_JIS>
# �O���G���R�[�f�B���O�𖾎�����ƃG���R�[�f�B���O�ϊ������B
write_test "w+:Shift_JIS"        # => #<Encoding:Shift_JIS>
write_test "w+:UTF-8"            # => #<Encoding:UTF-8>
# �����G���R�[�f�B���O�͖��������B
write_test "w+:UTF-8:Shift_JIS"  # => #<Encoding:UTF-8>
write_test "w+:UTF-8:EUC-JP"     # => #<Encoding:UTF-8>

