
    ����ID��3631

    ģ�⣺Э��ģ��-->3631

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~728

��������:

  $~  REQ000:720 02 10 01 00 00 00 00 00       $~  ANS000:728 02 10 01 00 00 00 00 00

��������:

  $!  REQ000:720 02 3E 80 00 00 00 00 00       $!  ANS000:728 02 3E 80 00 00 00 00 00

�˳�����:



;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:720 03 19 02 09 00 00 00 00       $#  ANS000:728 03 19 02 09 00 00 00 00

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/d5000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:720 04 14 FF FF FF 00 00 00       $$  ANS000:728 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:720 03 22 F1 94 00 00 00 00       $%  ANS000:728 03 22 F1 94 00 00 00 00
  $%  REQ001:720 03 22 F1 93 00 00 00 00       $%  ANS001:728 03 22 F1 93 00 00 00 00
  $%  REQ002:720 03 22 F1 95 00 00 00 00       $%  ANS002:728 03 22 F1 95 00 00 00 00

  $%  000:�������:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  001:Ӳ���汾:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  002:Ӳ������:        $%    $%  ANS001.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  003:�����汾:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:��������:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:�޸Ĵ���:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

��������: 

  $  REQ000:720 03 22 00 02 00 00 00 00       $  ANS000:728 03 22 00 02 00 00 00 00
  $  REQ001:720 03 22 00 0A 00 00 00 00       $  ANS001:728 03 22 00 0A 00 00 00 00
  $  REQ002:720 03 22 00 0D 00 00 00 00       $  ANS002:728 03 22 00 0D 00 00 00 00

  $  000.���к�                   $    $       $    $  ANS000.BYTE004  $  y=SPRINTF([%02X %02X %02X %02X %02X %02X],x1,x2,x3,x4,x5,x6);
  $  001.��ƥ��Կ����             $    $       $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@00a7;0x01: y=@00a8;0x02: y=@00a9;0x03: y=@00aa;0x04: y=@00ab;default: y=@0002;
  $  002.�ڲ�����״��             $    $       $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@00ae;0xFF: y=@00af;default: y=@0002;
  $  003.�������Ƿ�ʧȥͨ��       $    $       $    $  ANS002.BYTE005  $  switxh(x1)0x00: y=@0364;0xFF: y=@0365;default: y=@0002;
  $  004.�������ڲ�����״̬       $    $       $    $  ANS002.BYTE006  $  switxh(x1)0x00: y=@0364;0xFF: y=@0365;default: y=@0002;
  $  005.Կ��״̬                 $    $       $    $  ANS002.BYTE007  $  switxh(x1)0x02: y=@00b0;0x03: y=@00b1;0x04: y=@00b2;0x06: y=@00b3;default: y=@0002;
  $  006.Կ��ID                   $    $       $    $  ANS002.BYTE008  $  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $  007.Կ�����                 $    $       $    $  ANS002.BYTE012  $  HEX(x1);

;******************************************************************************************************************************************************

��������:

$^ 00.������ɫ���� 
$^TYPE0
$^BUTTON:��Ч 
$^REQ00:720 04 2E 20 05 00 00 00 00     $^

$^BUTTON:��ɽ�� 
$^REQ00:720 04 2E 20 05 01 00 00 00     $^

$^BUTTON:�մɰ� 
$^REQ00:720 04 2E 20 05 02 00 00 00     $^

$^BUTTON:�λ��� 
$^REQ00:720 04 2E 20 05 03 00 00 00     $^

$^BUTTON:������ 
$^REQ00:720 04 2E 20 05 04 00 00 00     $^

$^BUTTON:��˸�� 
$^REQ00:720 04 2E 20 05 05 00 00 00     $^

$^BUTTON:ħ���� 
$^REQ00:720 04 2E 20 05 06 00 00 00     $^

$^BUTTON:������ 
$^REQ00:720 04 2E 20 05 07 00 00 00     $^

$^BUTTON:ʱ�г� 
$^REQ00:720 04 2E 20 05 08 00 00 00     $^

$^BUTTON:������ 
$^REQ00:720 04 2E 20 05 09 00 00 00     $^

$^BUTTON:��ʯ�� 
$^REQ00:720 04 2E 20 05 0A 00 00 00     $^

$^BUTTON:���ƺ� 
$^REQ00:720 04 2E 20 05 0B 00 00 00     $^

$^BUTTON:�Ϻ����� 
$^REQ00:720 04 2E 20 05 0C 00 00 00     $^

$^BUTTON:������ 
$^REQ00:720 04 2E 20 05 0D 00 00 00     $^

$^BUTTON:��ɰ�� 
$^REQ00:720 04 2E 20 05 0E 00 00 00     $^

$^BUTTON:�ŵ��� 
$^REQ00:720 04 2E 20 05 0F 00 00 00     $^

$^BUTTON:����ʿ�� 
$^REQ00:720 04 2E 20 05 10 00 00 00     $^

$^BUTTON:��ӽ� 
$^REQ00:720 04 2E 20 05 11 00 00 00     $^

$^BUTTON:���Ľ� 
$^REQ00:720 04 2E 20 05 12 00 00 00     $^

$^BUTTON:�ɿ���/�ɿ����� 
$^REQ00:720 04 2E 20 05 13 00 00 00     $^

$^BUTTON:�ʼ��� 
$^REQ00:720 04 2E 20 05 14 00 00 00     $^

$^BUTTON:���� 
$^REQ00:720 04 2E 20 05 15 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.������������� 
$^TYPE0
$^BUTTON:��Ч 
$^REQ00:720 04 2E 20 06 00 00 00 00     $^

$^BUTTON:������ 
$^REQ00:720 04 2E 20 06 01 00 00 00     $^

$^BUTTON:������ 
$^REQ00:720 04 2E 20 06 02 00 00 00     $^

$^BUTTON:Ԥ�� 
$^REQ00:720 04 2E 20 06 03 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.������������ 
$^TYPE0
$^BUTTON:��Ч 
$^REQ00:720 04 2E 20 07 00 00 00 00     $^

$^BUTTON:������ 
$^REQ00:720 04 2E 20 07 01 00 00 00     $^

$^BUTTON:������ 
$^REQ00:720 04 2E 20 07 02 00 00 00     $^

$^BUTTON:Ԥ�� 
$^REQ00:720 04 2E 20 07 03 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.�촰���� 
$^TYPE0
$^BUTTON:��Ч 
$^REQ00:720 04 2E 20 08 00 00 00 00     $^

$^BUTTON:������ 
$^REQ00:720 04 2E 20 08 01 00 00 00     $^

$^BUTTON:������ 
$^REQ00:720 04 2E 20 08 02 00 00 00     $^

$^BUTTON:Ԥ�� 
$^REQ00:720 04 2E 20 08 03 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30֡:

  $FC REQ000:720 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
