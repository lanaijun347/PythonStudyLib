
    ����ID��000f

    ģ�⣺Э��ģ��-->000f

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~781

��������:

  $~  REQ000:701 02 10 01 00 00 00 00 00       $~  ANS000:781 02 10 01 00 00 00 00 00

��������:

  $!  REQ000:701 02 3E 80 00 00 00 00 00       $!  ANS000:781 02 3E 80 00 00 00 00 00

�˳�����:



;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:701 03 19 02 09 00 00 00 00       $#  ANS000:781 03 19 02 09 00 00 00 00

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/0e000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:701 04 14 FF FF FF 00 00 00       $$  ANS000:781 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:701 03 22 F1 87 00 00 00 00       $%  ANS000:781 03 22 F1 87 00 00 00 00
  $%  REQ001:701 03 22 F1 8A 00 00 00 00       $%  ANS001:781 03 22 F1 8A 00 00 00 00
  $%  REQ002:701 03 22 F1 97 00 00 00 00       $%  ANS002:781 03 22 F1 97 00 00 00 00
  $%  REQ003:701 03 22 F1 93 00 00 00 00       $%  ANS003:781 03 22 F1 93 00 00 00 00
  $%  REQ004:701 03 22 F1 95 00 00 00 00       $%  ANS004:781 03 22 F1 95 00 00 00 00
  $%  REQ005:701 03 22 F1 8C 00 00 00 00       $%  ANS005:781 03 22 F1 8C 00 00 00 00
  $%  REQ006:701 03 22 F1 90 00 00 00 00       $%  ANS006:781 03 22 F1 90 00 00 00 00
  $%  REQ007:701 03 22 F1 80 00 00 00 00       $%  ANS007:781 03 22 F1 80 00 00 00 00
  $%  REQ008:701 03 22 F0 10 00 00 00 00       $%  ANS008:781 03 22 F0 10 00 00 00 00
  $%  REQ009:701 03 22 16 00 00 00 00 00       $%  ANS009:781 03 22 16 00 00 00 00 00
  $%  REQ010:701 03 22 F1 89 00 00 00 00       $%  ANS010:781 03 22 F1 89 00 00 00 00

  $%  000:�����:                                              $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  001:ϵͳ��Ӧ��ʶ���:                                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:ϵͳ����:                                            $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:ϵͳ��Ӧ��Ӳ���汾��:                                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:ϵͳ��Ӧ������汾��:                                $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:ECU���к�:                                           $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  006:���ܺ�(VIN):                                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ϵͳ��Ӧ��ECU Bootloader(�������س���)�汾��:        $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:�������ñ���:                                        $%    $%  ANS008.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  009:��������ƥ��״̬:                                    $%    $%  ANS009.BYTE004  $%  if(x1==1) y=@014e; else if(x1==2) y=@014f; else y=@0003;
  $%  010:OEM����汾��:                                       $%    $%  ANS010.BYTE004  $%  0 ASCII

;******************************************************************************************************************************************************

��������: 

  $  REQ000:701 03 22 16 03 00 00 00 00       $  ANS000:781 03 22 16 03 00 00 00 00
  $  REQ001:701 03 22 16 04 00 00 00 00       $  ANS001:781 03 22 16 04 00 00 00 00
  $  REQ002:701 03 22 CF 00 00 00 00 00       $  ANS002:781 03 22 CF 00 00 00 00 00
  $  REQ003:701 03 22 07 12 00 00 00 00       $  ANS003:781 03 22 07 12 00 00 00 00
  $  REQ004:701 03 22 46 10 00 00 00 00       $  ANS004:781 03 22 46 10 00 00 00 00
  $  REQ005:701 03 22 46 11 00 00 00 00       $  ANS005:781 03 22 46 11 00 00 00 00

  $  000.��ǰ��̥ѹ������ID              $    $       $    $  ANS000.BYTE004  $  y = SPRINTF([%02X%02X%02X%02X], x1,x2,x3,x4);
  $  001.��ǰ��̥ѹ������ID              $    $       $    $  ANS000.BYTE008  $  y = SPRINTF([%02X%02X%02X%02X], x1,x2,x3,x4);
  $  002.�Һ���̥ѹ������ID              $    $       $    $  ANS000.BYTE012  $  y = SPRINTF([%02X%02X%02X%02X], x1,x2,x3,x4);
  $  003.�����̥ѹ������ID              $    $       $    $  ANS000.BYTE016  $  y = SPRINTF([%02X%02X%02X%02X], x1,x2,x3,x4);
  $  004.Կ������                        $    $       $    $  ANS001.BYTE004  $  y = SPRINTF([%d], x1);
  $  005.��ѹ                            $    $       $    $  ANS002.BYTE004  $  y = SPRINTF([%x.%x], x1,x2);
  $  006.���һ�α����ͽ���Դ            $    $       $    $  ANS003.BYTE004  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  007.������2�α����ͽ���Դ           $    $       $    $  ANS003.BYTE005  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  008.������3�α����ͽ���Դ           $    $       $    $  ANS003.BYTE006  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  009.������4�α����ͽ���Դ           $    $       $    $  ANS003.BYTE007  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  010.������5�α����ͽ���Դ           $    $       $    $  ANS003.BYTE008  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  011.������6�α����ͽ���Դ           $    $       $    $  ANS003.BYTE009  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  012.������7�α����ͽ���Դ           $    $       $    $  ANS003.BYTE010  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  013.������8�α����ͽ���Դ           $    $       $    $  ANS003.BYTE011  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  014.������9�α����ͽ���Դ           $    $       $    $  ANS003.BYTE012  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  015.������10�α����ͽ���Դ          $    $       $    $  ANS003.BYTE013  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  016.������11�α����ͽ���Դ          $    $       $    $  ANS003.BYTE014  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  017.������12�α����ͽ���Դ          $    $       $    $  ANS003.BYTE015  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  018.������13�α����ͽ���Դ          $    $       $    $  ANS003.BYTE016  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  019.������14�α����ͽ���Դ          $    $       $    $  ANS003.BYTE017  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  020.������15�α����ͽ���Դ          $    $       $    $  ANS003.BYTE018  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  021.������16�α����ͽ���Դ          $    $       $    $  ANS003.BYTE019  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  022.������17�α����ͽ���Դ          $    $       $    $  ANS003.BYTE020  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  023.������18�α����ͽ���Դ          $    $       $    $  ANS003.BYTE021  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  024.������19�α����ͽ���Դ          $    $       $    $  ANS003.BYTE022  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  025.������20�α����ͽ���Դ          $    $       $    $  ANS003.BYTE023  $  if(x1==0) y=@00ee;else if(x1==1) y=@00ef;else if(x1==2) y=@00f0;else if(x1==3) y=@00f1;else if(x1==4) y=@00f2;else if(x1==5) y=@00f3;else if(x1==6) y=@00f4;else if(x1==7) y=@00f5;else if(x1==8) y=@00f6;else if(x1==9) y=@00f7;else if(x1==10) y=@00f8;else if(x1==11) y=@00f9;else if(x1==12) y=@00fa;else if(x1==13) y=@00fb;else if(x1==14) y=@00fc;else if(x1==15) y=@00fd;else if(x1==16) y=@00fe;else if(x1==17) y=@00ff;else if(x1==18) y=@0100;else if(x1==19) y=@0101;else if(x1==20) y=@0102;else if(x1==21) y=@0103;else if(x1==22) y=@0104;else if(x1==23) y=@0105;else if(x1==24) y=@0106;else if(x1==25) y=@0107;else if(x1==26) y=@0108;else if(x1==27) y=@0109;else if(x1==28) y=@010a;else if(x1==29) y=@010b;else if(x1==30) y=@010c;else y=@0003;
  $  026.����ƿ���                      $    $       $    $  ANS004.BYTE004  $  if(((x1>>6)&1)) y=@00e1;else y=@002b;
  $  027.Զ��ƿ���                      $    $       $    $  ANS004.BYTE004  $  if(((x1>>4)&1)) y=@00e1;else y=@002b;
  $  028.�����ƿ���                      $    $       $    $  ANS004.BYTE004  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  029.�Զ��ƿ���                      $    $       $    $  ANS004.BYTE004  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  030.����ƿ���                      $    $       $    $  ANS004.BYTE004  $  if(((x1>>1)&1)) y=@00e1;else y=@002b;
  $  031.λ�õƿ���                      $    $       $    $  ANS004.BYTE004  $  if(((x1>>0)&1)) y=@00e1;else y=@002b;
  $  032.ɲ������                        $    $       $    $  ANS004.BYTE005  $  if(((x1>>6)&1)) y=@00e1;else y=@002b;
  $  033.Σ�ձ����ƿ���                  $    $       $    $  ANS004.BYTE005  $  if(((x1>>5)&1)) y=@00e1;else y=@002b;
  $  034.��ת�򿪿���                    $    $       $    $  ANS004.BYTE005  $  if(((x1>>4)&1)) y=@00e1;else y=@002b;
  $  035.��ת��ƿ���                    $    $       $    $  ANS004.BYTE005  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  036.�Զ���������ȵ���              $    $       $    $  ANS004.BYTE005  $  switxh(x1&0x07) 0x00: y=@00e8; 0x01: y=@00e9; 0x02: y=@00ea; 0x03: y=@00eb; 0x04: y=@00ec; 0x05: y=@00ed; 0x06: y=@0003; 0x07: y=@0003;
  $  037.����ι�λ�ź�                  $    $       $    $  ANS004.BYTE006  $  if(((x1>>7)&1)) y=@00e1;else y=@002b;
  $  038.ǰ��ι�λ�ź�                  $    $       $    $  ANS004.BYTE006  $  if(((x1>>6)&1)) y=@00e1;else y=@002b;
  $  039.��ϴ�ӿ���                      $    $       $    $  ANS004.BYTE006  $  if(((x1>>5)&1)) y=@00e1;else y=@002b;
  $  040.����ο���                      $    $       $    $  ANS004.BYTE006  $  if(((x1>>4)&1)) y=@00e1;else y=@002b;
  $  041.ǰϴ�ӿ���                      $    $       $    $  ANS004.BYTE006  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  042.ǰ����Զ�����                  $    $       $    $  ANS004.BYTE006  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  043.ǰ��θ��ٿ���                  $    $       $    $  ANS004.BYTE006  $  if(((x1>>1)&1)) y=@00e1;else y=@002b;
  $  044.ǰ��ε��ٿ���                  $    $       $    $  ANS004.BYTE006  $  if(((x1>>0)&1)) y=@00e1;else y=@002b;
  $  045.Ѳ������                        $    $       $    $  ANS004.BYTE007  $  switxh((x1>>4)&0x07) 0x00: y=@00e2; 0x01: y=@00e3; 0x02: y=@00e4; 0x03: y=@00e5; 0x04: y=@00e6; 0x05: y=@00e7; 0x06: y=@0003; 0x07: y=@0003;
  $  046.���Ϳڸ�״̬����                $    $       $    $  ANS004.BYTE007  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  047.���ڸ�״̬����                $    $       $    $  ANS004.BYTE007  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  048.ǰ�ո�״̬����                  $    $       $    $  ANS005.BYTE004  $  if(((x1>>4)&1)) y=@00e1;else y=@002b;
  $  049.�Һ���״̬����                  $    $       $    $  ANS005.BYTE004  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  050.�����״̬����                  $    $       $    $  ANS005.BYTE004  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  051.��ǰ��״̬����                  $    $       $    $  ANS005.BYTE004  $  if(((x1>>1)&1)) y=@00e1;else y=@002b;
  $  052.��ǰ��״̬����                  $    $       $    $  ANS005.BYTE004  $  if(((x1>>0)&1)) y=@00e1;else y=@002b;
  $  053.�Һ��ͯ������                  $    $       $    $  ANS005.BYTE005  $  if(((x1>>6)&1)) y=@00e1;else y=@002b;
  $  054.����ͯ������                  $    $       $    $  ANS005.BYTE005  $  if(((x1>>5)&1)) y=@00e1;else y=@002b;
  $  055.�пؽ��������                  $    $       $    $  ANS005.BYTE005  $  if(((x1>>4)&1)) y=@00e1;else y=@002b;
  $  056.��������������                  $    $       $    $  ANS005.BYTE005  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  057.ǰ�ո��ڲ���������              $    $       $    $  ANS005.BYTE005  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  058.������������                    $    $       $    $  ANS005.BYTE005  $  if(((x1>>1)&1)) y=@00e1;else y=@002b;
  $  059.���Ž�������                  $    $       $    $  ANS005.BYTE005  $  if(((x1>>0)&1)) y=@00e1;else y=@002b;
  $  060.���������⿪��                  $    $       $    $  ANS005.BYTE006  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  061.KL15_2_�̵���������IGN2��       $    $       $    $  ANS005.BYTE006  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  062.KL15_1_�̵���������IGN1��       $    $       $    $  ANS005.BYTE006  $  if(((x1>>1)&1)) y=@00e1;else y=@002b;
  $  063.�ҽ���ƹ���                    $    $       $    $  ANS005.BYTE007  $  if(((x1>>7)&1)) y=@00e1;else y=@002b;
  $  064.�����ƹ���                    $    $       $    $  ANS005.BYTE007  $  if(((x1>>6)&1)) y=@00e1;else y=@002b;
  $  065.���ҹ̶�ת��ƹ���              $    $       $    $  ANS005.BYTE007  $  if(((x1>>5)&1)) y=@00e1;else y=@002b;
  $  066.���һת��ƹ���              $    $       $    $  ANS005.BYTE007  $  if(((x1>>4)&1)) y=@00e1;else y=@002b;
  $  067.����̶�ת��ƹ���              $    $       $    $  ANS005.BYTE007  $  if(((x1>>3)&1)) y=@00e1;else y=@002b;
  $  068.����ת��ƹ���              $    $       $    $  ANS005.BYTE007  $  if(((x1>>2)&1)) y=@00e1;else y=@002b;
  $  069.ǰ��ת��ƹ���                  $    $       $    $  ANS005.BYTE007  $  if(((x1>>1)&1)) y=@00e1;else y=@002b;
  $  070.ǰ��ת��ƹ���                  $    $       $    $  ANS005.BYTE007  $  if(((x1>>0)&1)) y=@00e1;else y=@002b;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:701 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
