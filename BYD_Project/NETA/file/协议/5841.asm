
    ����ID��5841

    ģ�⣺Э��ģ��-->5841

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~7D1

��������:

  $~  REQ000:7C1 02 10 03 FF FF FF FF FF       $~  ANS000:7D1 02 10 03 FF FF FF FF FF
  $~  REQ001:7C1 02 27 03 FF FF FF FF FF       $~  ANS001:7D1 02 27 03 FF FF FF FF FF
  $~  REQ002:7C1 04 27 04 1E B0 FF FF FF       $~  ANS002:7D1 04 27 04 1E B0 FF FF FF

��������:

  $!  REQ000:7C1 02 3E 00 FF FF FF FF FF       $!  ANS000:7D1 02 3E 00 FF FF FF FF FF

�˳�����:

  $@  REQ000:7C1 02 10 01 FF FF FF FF FF       $@  ANS000:7D1 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:7C1 03 19 02 09 FF FF FF FF       $#  ANS000:7D1 03 19 02 09 FF FF FF FF

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/7d000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:7C1 04 14 FF FF FF FF FF FF       $$  ANS000:7D1 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:7C1 03 22 F1 80 FF FF FF FF       $%  ANS000:7D1 03 22 F1 80 FF FF FF FF
  $%  REQ001:7C1 03 22 F1 86 FF FF FF FF       $%  ANS001:7D1 03 22 F1 86 FF FF FF FF
  $%  REQ002:7C1 03 22 F1 87 FF FF FF FF       $%  ANS002:7D1 03 22 F1 87 FF FF FF FF
  $%  REQ003:7C1 03 22 F1 88 FF FF FF FF       $%  ANS003:7D1 03 22 F1 88 FF FF FF FF
  $%  REQ004:7C1 03 22 F1 B0 FF FF FF FF       $%  ANS004:7D1 03 22 F1 B0 FF FF FF FF
  $%  REQ005:7C1 03 22 F1 A2 FF FF FF FF       $%  ANS005:7D1 03 22 F1 A2 FF FF FF FF
  $%  REQ006:7C1 03 22 F1 8A FF FF FF FF       $%  ANS006:7D1 03 22 F1 8A FF FF FF FF
  $%  REQ007:7C1 03 22 F1 8B FF FF FF FF       $%  ANS007:7D1 03 22 F1 8B FF FF FF FF
  $%  REQ008:7C1 03 22 F1 8C FF FF FF FF       $%  ANS008:7D1 03 22 F1 8C FF FF FF FF
  $%  REQ009:7C1 03 22 F1 90 FF FF FF FF       $%  ANS009:7D1 03 22 F1 90 FF FF FF FF
  $%  REQ010:7C1 03 22 F1 91 FF FF FF FF       $%  ANS010:7D1 03 22 F1 91 FF FF FF FF
  $%  REQ011:7C1 03 22 F1 98 FF FF FF FF       $%  ANS011:7D1 03 22 F1 98 FF FF FF FF
  $%  REQ012:7C1 03 22 F1 99 FF FF FF FF       $%  ANS012:7D1 03 22 F1 99 FF FF FF FF
  $%  REQ013:7C1 03 22 F1 9D FF FF FF FF       $%  ANS013:7D1 03 22 F1 9D FF FF FF FF
  $%  REQ014:7C1 03 22 F1 C0 FF FF FF FF       $%  ANS014:7D1 03 22 F1 C0 FF FF FF FF

  $%  000:����汾��:                        $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:��ǰ�������ģʽ:                  $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:�����㲿����:                      $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:Ӧ������汾��:                    $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:Ӧ������汾�ţ��̶��汾��:        $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ECU�궨�����:                     $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  006:ϵͳ��Ӧ�̴���:                    $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  007:ECU��������:                       $%    $%  ANS007.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  008:���������к�:                      $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  009:����VIN:                           $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  010:Ӳ���汾��:                        $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  011:����豸���к�:                    $%    $%  ANS011.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  012:ˢ������:                          $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  013:ECUװ������:                       $%    $%  ANS013.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  014:����ܳɰ汾:                      $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

��������: 

  $  REQ000:7C1 03 22 01 12 FF FF FF FF       $  ANS000:7D1 03 22 01 12 FF FF FF FF
  $  REQ001:7C1 03 22 02 00 FF FF FF FF       $  ANS001:7D1 03 22 02 00 FF FF FF FF
  $  REQ002:7C1 03 22 02 01 FF FF FF FF       $  ANS002:7D1 03 22 02 01 FF FF FF FF
  $  REQ003:7C1 03 22 02 02 FF FF FF FF       $  ANS003:7D1 03 22 02 02 FF FF FF FF
  $  REQ004:7C1 03 22 02 04 FF FF FF FF       $  ANS004:7D1 03 22 02 04 FF FF FF FF
  $  REQ005:7C1 03 22 02 20 FF FF FF FF       $  ANS005:7D1 03 22 02 20 FF FF FF FF
  $  REQ006:7C1 03 22 E1 01 FF FF FF FF       $  ANS006:7D1 03 22 E1 01 FF FF FF FF
  $  REQ007:7C1 03 22 B1 00 FF FF FF FF       $  ANS007:7D1 03 22 B1 00 FF FF FF FF
  $  REQ008:7C1 03 22 D0 01 FF FF FF FF       $  ANS008:7D1 03 22 D0 01 FF FF FF FF
  $  REQ009:7C1 03 22 F0 20 FF FF FF FF       $  ANS009:7D1 03 22 F0 20 FF FF FF FF
  $  REQ010:7C1 03 22 01 21 FF FF FF FF       $  ANS010:7D1 03 22 01 21 FF FF FF FF
  $  REQ011:7C1 03 22 01 23 FF FF FF FF       $  ANS011:7D1 03 22 01 23 FF FF FF FF
  $  REQ012:7C1 03 22 01 24 FF FF FF FF       $  ANS012:7D1 03 22 01 24 FF FF FF FF
  $  REQ013:7C1 03 22 01 27 FF FF FF FF       $  ANS013:7D1 03 22 01 27 FF FF FF FF
  $  REQ014:7C1 03 22 01 28 FF FF FF FF       $  ANS014:7D1 03 22 01 28 FF FF FF FF

  $  000.�����ѹ              $    $  V          $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.���㳵���ٶ�          $    $  km/h       $    $  ANS001.BYTE004  $  y=x;
  $  002.�����ٶ�              $    $  km/h       $    $  ANS002.BYTE004  $  y=x;
  $  003.SCC������������       $    $             $    $  ANS003.BYTE001  $  switxh(x&0x80) 0x80:y=1;default: y=0;
  $  004.SCC����������         $    $             $    $  ANS003.BYTE001  $  switxh(x&0x40) 0x40:y=1;default: y=0;
  $  005.SCC�������ƶ�         $    $             $    $  ANS003.BYTE001  $  switxh(x&0x20) 0x20:y=1;default: y=0;
  $  006.SCCϵͳ״̬           $    $             $    $  ANS004.BYTE004  $  switxh(x) 0x00:y=@0025;0x01:y=@0033;0x02:y=@0034;0x03:y=@0035;0x04:y=@0036;default: y=-;
  $  007.��������ٶ�          $    $  m/s        $    $  ANS005.BYTE004  $  y=x-170;
  $  008.��̱����            $    $  km         $    $  ANS006.BYTE004  $  y=x*65536+x2*256+x3;
  $  009.����                  $    $  km/h       $    $  ANS007.BYTE004  $  y=x;
  $  010.IG��                  $    $             $    $  ANS008.BYTE004  $  switxh(x&0x01) 0x01:y=01;default: y=00;
  $  011.ACC״̬               $    $             $    $  ANS008.BYTE004  $  switxh(x&0x02) 0x02:y=01;default: y=00;
  $  012.IG��                  $    $             $    $  ANS008.BYTE004  $  switxh(x&0x04) 0x04:y=01;default: y=00;
  $  013.ʱ��                  $    $             $    $  ANS009.BYTE004  $  y=SPRINTF([%02x%02x%02x:%02x%02x%02x],x1,x2,x3,x4,x5,x6);
  $  014.EOL����Ŀ�귶Χ       $    $  Cm         $    $  ANS010.BYTE004  $  y=x*2+100;
  $  015.�״ﰲװ�߶�          $    $  mm         $    $  ANS011.BYTE004  $  y=x;
  $  016.�豸����״̬          $    $             $    $  ANS012.BYTE004  $  switxh(x) 0x00:y=@0023;0x01:y=@0024;0x02:y=@0025;0x03:y=@0026;0x04:y=@0027;0x05:y=@0028;0x06:y=@0028;0x07:y=@0029;0x09:y=@0030;0x0a:y=@0031;0x0b:y=@0032;default: y=-;
  $  017.ˮƽ�Ƕ�ƫ��          $    $  degree     $    $  ANS013.BYTE004  $  y=x*0.1;
  $  018.��ֱ�Ƕ�ƫ��          $    $  degree     $    $  ANS014.BYTE004  $  y=x*0.1;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:7C1 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
