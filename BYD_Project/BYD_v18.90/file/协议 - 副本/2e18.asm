
    ����ID��2e18

    ģ�⣺Э��ģ��-->2e18

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~75C

��������:

  $~  REQ000:754 02 10 01 00 00 00 00 00       $~  ANS000:75C 02 10 01 00 00 00 00 00

��������:

  $!  REQ000:754 02 3E 80 00 00 00 00 00       $!  ANS000:75C 02 3E 80 00 00 00 00 00

�˳�����:



;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:754 03 19 02 09 00 00 00 00       $#  ANS000:75C 03 19 02 09 00 00 00 00

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/6e000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:754 04 14 FF FF FF 00 00 00       $$  ANS000:75C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:754 03 22 F1 93 00 00 00 00       $%  ANS000:75C 03 22 F1 93 00 00 00 00
  $%  REQ001:754 03 22 F1 94 00 00 00 00       $%  ANS001:75C 03 22 F1 94 00 00 00 00
  $%  REQ002:754 03 22 F1 95 00 00 00 00       $%  ANS002:75C 03 22 F1 95 00 00 00 00

  $%  000:Ӳ���汾:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:Ӳ������:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:�������:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:�����汾:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:��������:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:�޸Ĵ���:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

��������: 

  $  REQ000:754 03 22 00 04 00 00 00 00       $  ANS000:75C 03 22 00 04 00 00 00 00
  $  REQ001:754 03 22 00 05 00 00 00 00       $  ANS001:75C 03 22 00 05 00 00 00 00
  $  REQ002:754 03 22 00 06 00 00 00 00       $  ANS002:75C 03 22 00 06 00 00 00 00
  $  REQ003:754 03 22 00 07 00 00 00 00       $  ANS003:75C 03 22 00 07 00 00 00 00

  $  000.��ǰ��ID                       $    $          $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4);
  $  001.��ǰ���ź�״̬                 $    $          $    $  ANS000.BYTE008  $  switxh(x1)0x00: y=@0078;0x01: y=@015c;0xFF: y=@0200;default: y=@0001;
  $  002.��ǰ��©��״̬                 $    $          $    $  ANS000.BYTE009  $  switxh(x1&0x03)0x00: y=@0078;0x01: y=@01fe;0x02: y=@01ff;default: y=@0001;
  $  003.��ǰ��ѹ��״̬                 $    $          $    $  ANS000.BYTE009  $  switxh(x1&0x0C)0x00: y=@0078;0x04: y=@01fc;0x08: y=@01fd;default: y=@0001;
  $  004.��ǰ���¶�״̬(Ԥ��)           $    $          $    $  ANS000.BYTE009  $  switxh(x1&0x30)0x00: y=@0078;0x10: y=@031b;0x20: y=@031c;0x30: y=@00f0;default: y=@0001;
  $  005.��ǰ�ֵ�ص�ѹ״̬(Ԥ��)       $    $          $    $  ANS000.BYTE009  $  if(x1&0xC0) y=@031a;else y=@0078;
  $  006.��ǰ��ѹ��ֵ                   $    $  kPa     $    $  ANS000.BYTE010  $  y=(x2*256+x1);
  $  007.��ǰ���¶�ֵ(Ԥ��)             $    $  ��      $    $  ANS000.BYTE012  $  y=(x2*256+x1);
  $  008.��ǰ���¶�ֵ(Ԥ��)             $    $  V       $    $  ANS000.BYTE014  $  y=x1;
  $  009.��ǰ��ID                       $    $          $    $  ANS001.BYTE004  $  HEX(x1,x2,x3,x4);
  $  010.��ǰ���ź�״̬                 $    $          $    $  ANS001.BYTE008  $  switxh(x1)0x00: y=@0078;0x01: y=@015c;0xFF: y=@0200;default: y=@0001;
  $  011.��ǰ��©��״̬                 $    $          $    $  ANS001.BYTE009  $  switxh(x1&0x03)0x00: y=@0078;0x01: y=@01fe;0x02: y=@01ff;default: y=@0001;
  $  012.��ǰ��ѹ��״̬                 $    $          $    $  ANS001.BYTE009  $  switxh(x1&0x0C)0x00: y=@0078;0x04: y=@01fc;0x08: y=@01fd;default: y=@0001;
  $  013.��ǰ���¶�״̬(Ԥ��)           $    $          $    $  ANS001.BYTE009  $  switxh(x1&0x30)0x00: y=@0078;0x10: y=@031b;0x20: y=@031c;0x30: y=@00f0;default: y=@0001;
  $  014.��ǰ�ֵ�ص�ѹ״̬(Ԥ��)       $    $          $    $  ANS001.BYTE009  $  if(x1&0xC0) y=@031a;else y=@0078;
  $  015.��ǰ��ѹ��ֵ                   $    $  kPa     $    $  ANS001.BYTE010  $  y=(x2*256+x1);
  $  016.��ǰ���¶�ֵ(Ԥ��)             $    $  ��      $    $  ANS001.BYTE012  $  y=(x2*256+x1);
  $  017.��ǰ���¶�ֵ(Ԥ��)             $    $  V       $    $  ANS001.BYTE014  $  y=x1;
  $  018.�����ID                       $    $          $    $  ANS002.BYTE004  $  HEX(x1,x2,x3,x4);
  $  019.������ź�״̬                 $    $          $    $  ANS002.BYTE008  $  switxh(x1)0x00: y=@0078;0x01: y=@015c;0xFF: y=@0200;default: y=@0001;
  $  020.�����©��״̬                 $    $          $    $  ANS002.BYTE009  $  switxh(x1&0x03)0x00: y=@0078;0x01: y=@01fe;0x02: y=@01ff;default: y=@0001;
  $  021.�����ѹ��״̬                 $    $          $    $  ANS002.BYTE009  $  switxh(x1&0x0C)0x00: y=@0078;0x04: y=@01fc;0x08: y=@01fd;default: y=@0001;
  $  022.������¶�״̬(Ԥ��)           $    $          $    $  ANS002.BYTE009  $  switxh(x1&0x30)0x00: y=@0078;0x10: y=@031b;0x20: y=@031c;0x30: y=@00f0;default: y=@0001;
  $  023.����ֵ�ص�ѹ״̬(Ԥ��)       $    $          $    $  ANS002.BYTE009  $  if(x1&0xC0) y=@031a;else y=@0078;
  $  024.�����ѹ��ֵ                   $    $  kPa     $    $  ANS002.BYTE010  $  y=(x2*256+x1);
  $  025.������¶�ֵ(Ԥ��)             $    $  ��      $    $  ANS002.BYTE012  $  y=(x2*256+x1);
  $  026.������¶�ֵ(Ԥ��)             $    $  V       $    $  ANS002.BYTE014  $  y=x1;
  $  027.�Һ���ID                       $    $          $    $  ANS003.BYTE004  $  HEX(x1,x2,x3,x4);
  $  028.�Һ����ź�״̬                 $    $          $    $  ANS003.BYTE008  $  switxh(x1)0x00: y=@0078;0x01: y=@015c;0xFF: y=@0200;default: y=@0001;
  $  029.�Һ���©��״̬                 $    $          $    $  ANS003.BYTE009  $  switxh(x1&0x03)0x00: y=@0078;0x01: y=@01fe;0x02: y=@01ff;default: y=@0001;
  $  030.�Һ���ѹ��״̬                 $    $          $    $  ANS003.BYTE009  $  switxh(x1&0x0C)0x00: y=@0078;0x04: y=@01fc;0x08: y=@01fd;default: y=@0001;
  $  031.�Һ����¶�״̬(Ԥ��)           $    $          $    $  ANS003.BYTE009  $  switxh(x1&0x30)0x00: y=@0078;0x10: y=@031b;0x20: y=@031c;0x30: y=@00f0;default: y=@0001;
  $  032.�Һ��ֵ�ص�ѹ״̬(Ԥ��)       $    $          $    $  ANS003.BYTE009  $  if(x1&0xC0) y=@031a;else y=@0078;
  $  033.�Һ���ѹ��ֵ                   $    $  kPa     $    $  ANS003.BYTE010  $  y=(x2*256+x1);
  $  034.�Һ����¶�ֵ(Ԥ��)             $    $  ��      $    $  ANS003.BYTE012  $  y=(x2*256+x1);
  $  035.�Һ����¶�ֵ(Ԥ��)             $    $  V       $    $  ANS003.BYTE014  $  y=x1;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:754 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
