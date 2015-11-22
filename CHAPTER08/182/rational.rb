# rational�饤�֥���Rational���Ȥ߹��ޤ�Ƥ���Τ��ɤ߹���
# Ruby 1.9�Ǥ��Ȥ߹��ߤˤʤä�
require 'rational'
r1 = Rational(3,4)   # => (3/4)
# ����������ʬ����롣
r2 = Rational(4,24)  # => (1/6)
r2.to_s              # => "1/6"
# ʬ�Ҥ�ʬ������롣
[r2.numerator, r2.denominator]  # => [1, 6]
# ��§�黻���߾衢��;��
r1 + r2       # => (11/12)
r1 - r2       # => (7/12)
r1 * r2       # => (1/8)
r1 / r2       # => (9/2)
r1.quo r2     # => (9/2)
r1 ** r2      # => 0.953184292996937
r1 % r2       # => (1/12)
r1.divmod r2  # => [4, (1/12)]
# ��ư����������0.1��2�ʿ����ȳ��ڤ줺�˸�����ޤि�ᡢ����Ū���������Ϥ�������������ԥ塼���Ǥ��������ʤ��ʤäƤ��ޤ���
6*0.1/0.1==6  # => false
# ͭ������Ȥ����Ȥǡ�����ԥ塼���Ǥ��������ʤ롣
6*Rational(1,10)/Rational(1,10) == 6  # => true
# �����������Ǿ����ܿ�����롣�����ϤҤȤĤ������ʤ���ξ��ɬ�פʾ��ϡ�Integer#gcdlcm�פ�Ȥä��ۤ���®����
[12.gcd(16), 12.lcm(16)]  # => [4, 48]
12.gcdlcm(16)             # => [4, 48]