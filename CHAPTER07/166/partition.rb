# 1��5�ζ����ȴ������̤˵��롣
(1..5).select{|n| n%2 == 0 }     # => [2, 4]
(1..5).reject{|n| n%2 == 0 }     # => [1, 3, 5]
# Ʊ���˵���ˤϡ�partition�ץ᥽�åɤ�Ȥ���
(1..5).partition{|n| n%2 == 0 }  # => [[2, 4], [1, 3, 5]]
# Ruby 1.8.7�ʹߤǤϤ��Τ褦�ˤ�񤱤롣
(1..5).partition(&:even?)        # => [[2, 4], [1, 3, 5]]