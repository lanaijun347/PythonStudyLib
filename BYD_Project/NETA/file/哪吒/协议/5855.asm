
    ����ID��5855

    ģ�⣺Э��ģ��-->5855

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~717

��������:

  $~  REQ000:707 02 10 03 FF FF FF FF FF       $~  ANS000:717 02 10 03 FF FF FF FF FF
  $~  REQ001:707 02 27 03 FF FF FF FF FF       $~  ANS001:717 02 27 03 FF FF FF FF FF
  $~  REQ002:707 04 27 04 1E B0 FF FF FF       $~  ANS002:717 04 27 04 1E B0 FF FF FF

��������:

  $!  REQ000:707 02 3E 00 FF FF FF FF FF       $!  ANS000:717 02 3E 00 FF FF FF FF FF

�˳�����:

  $@  REQ000:707 02 10 01 FF FF FF FF FF       $@  ANS000:717 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:707 03 19 02 09 FF FF FF FF       $#  ANS000:717 03 19 02 09 FF FF FF FF

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/8f000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:707 04 14 FF FF FF FF FF FF       $$  ANS000:717 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:707 03 22 F1 80 FF FF FF FF       $%  ANS000:717 03 22 F1 80 FF FF FF FF
  $%  REQ001:707 03 22 F1 86 FF FF FF FF       $%  ANS001:717 03 22 F1 86 FF FF FF FF
  $%  REQ002:707 03 22 F1 87 FF FF FF FF       $%  ANS002:717 03 22 F1 87 FF FF FF FF
  $%  REQ003:707 03 22 F1 88 FF FF FF FF       $%  ANS003:717 03 22 F1 88 FF FF FF FF
  $%  REQ004:707 03 22 F1 B0 FF FF FF FF       $%  ANS004:717 03 22 F1 B0 FF FF FF FF
  $%  REQ005:707 03 22 F1 8A FF FF FF FF       $%  ANS005:717 03 22 F1 8A FF FF FF FF
  $%  REQ006:707 03 22 F1 8B FF FF FF FF       $%  ANS006:717 03 22 F1 8B FF FF FF FF
  $%  REQ007:707 03 22 F1 8C FF FF FF FF       $%  ANS007:717 03 22 F1 8C FF FF FF FF
  $%  REQ008:707 03 22 F1 90 FF FF FF FF       $%  ANS008:717 03 22 F1 90 FF FF FF FF
  $%  REQ009:707 03 22 F1 91 FF FF FF FF       $%  ANS009:717 03 22 F1 91 FF FF FF FF
  $%  REQ010:707 03 22 F1 BF FF FF FF FF       $%  ANS010:717 03 22 F1 BF FF FF FF FF
  $%  REQ011:707 03 22 F1 98 FF FF FF FF       $%  ANS011:717 03 22 F1 98 FF FF FF FF
  $%  REQ012:707 03 22 F1 99 FF FF FF FF       $%  ANS012:717 03 22 F1 99 FF FF FF FF
  $%  REQ013:707 03 22 F1 9D FF FF FF FF       $%  ANS013:717 03 22 F1 9D FF FF FF FF
  $%  REQ014:707 03 22 F2 00 FF FF FF FF       $%  ANS014:717 03 22 F2 00 FF FF FF FF
  $%  REQ015:707 03 22 F1 C0 FF FF FF FF       $%  ANS015:717 03 22 F1 C0 FF FF FF FF

  $%  000:Bootloader����汾��:              $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:��ǰ�������ģʽ:                  $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:�����㲿����:                      $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:Ӧ������汾��:                    $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:Ӧ������汾�ţ��̶��汾��:        $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ϵͳ��Ӧ�̴���:                    $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  006:ECU��������:                       $%    $%  ANS006.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  007:���������к�:                      $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  008:����VIN:                           $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:Ӳ���汾��:                        $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  010:Ӳ�����汾�ţ��̶��汾��:          $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  011:��������к�:                      $%    $%  ANS011.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  012:ˢ������:                          $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  013:ECUװ������:                       $%    $%  ANS013.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  014:�������:                          $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  015:����ܳɰ汾:                      $%    $%  ANS015.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

��������: 

  $  REQ000:707 03 22 E1 01 FF FF FF FF       $  ANS000:717 03 22 E1 01 FF FF FF FF
  $  REQ001:707 03 22 F0 20 FF FF FF FF       $  ANS001:717 03 22 F0 20 FF FF FF FF
  $  REQ002:707 03 22 B1 00 FF FF FF FF       $  ANS002:717 03 22 B1 00 FF FF FF FF
  $  REQ003:707 03 22 D0 01 FF FF FF FF       $  ANS003:717 03 22 D0 01 FF FF FF FF
  $  REQ004:707 03 22 08 02 FF FF FF FF       $  ANS004:717 03 22 08 02 FF FF FF FF
  $  REQ005:707 03 22 08 03 FF FF FF FF       $  ANS005:717 03 22 08 03 FF FF FF FF
  $  REQ006:707 03 22 08 04 FF FF FF FF       $  ANS006:717 03 22 08 04 FF FF FF FF
  $  REQ007:707 03 22 08 05 FF FF FF FF       $  ANS007:717 03 22 08 05 FF FF FF FF
  $  REQ008:707 03 22 08 06 FF FF FF FF       $  ANS008:717 03 22 08 06 FF FF FF FF
  $  REQ009:707 03 22 08 07 FF FF FF FF       $  ANS009:717 03 22 08 07 FF FF FF FF
  $  REQ010:707 03 22 08 08 FF FF FF FF       $  ANS010:717 03 22 08 08 FF FF FF FF
  $  REQ011:707 03 22 08 09 FF FF FF FF       $  ANS011:717 03 22 08 09 FF FF FF FF
  $  REQ012:707 03 22 08 0A FF FF FF FF       $  ANS012:717 03 22 08 0A FF FF FF FF
  $  REQ013:707 03 22 08 0B FF FF FF FF       $  ANS013:717 03 22 08 0B FF FF FF FF
  $  REQ014:707 03 22 08 0C FF FF FF FF       $  ANS014:717 03 22 08 0C FF FF FF FF
  $  REQ015:707 03 22 08 0D FF FF FF FF       $  ANS015:717 03 22 08 0D FF FF FF FF
  $  REQ016:707 03 22 08 0E FF FF FF FF       $  ANS016:717 03 22 08 0E FF FF FF FF
  $  REQ017:707 03 22 08 0F FF FF FF FF       $  ANS017:717 03 22 08 0F FF FF FF FF
  $  REQ018:707 03 22 08 10 FF FF FF FF       $  ANS018:717 03 22 08 10 FF FF FF FF
  $  REQ019:707 03 22 08 11 FF FF FF FF       $  ANS019:717 03 22 08 11 FF FF FF FF
  $  REQ020:707 03 22 08 12 FF FF FF FF       $  ANS020:717 03 22 08 12 FF FF FF FF
  $  REQ021:707 03 22 08 13 FF FF FF FF       $  ANS021:717 03 22 08 13 FF FF FF FF
  $  REQ022:707 03 22 08 14 FF FF FF FF       $  ANS022:717 03 22 08 14 FF FF FF FF
  $  REQ023:707 03 22 08 15 FF FF FF FF       $  ANS023:717 03 22 08 15 FF FF FF FF
  $  REQ024:707 03 22 08 16 FF FF FF FF       $  ANS024:717 03 22 08 16 FF FF FF FF
  $  REQ025:707 03 22 08 17 FF FF FF FF       $  ANS025:717 03 22 08 17 FF FF FF FF
  $  REQ026:707 03 22 08 18 FF FF FF FF       $  ANS026:717 03 22 08 18 FF FF FF FF
  $  REQ027:707 03 22 08 19 FF FF FF FF       $  ANS027:717 03 22 08 19 FF FF FF FF
  $  REQ028:707 03 22 08 20 FF FF FF FF       $  ANS028:717 03 22 08 20 FF FF FF FF
  $  REQ029:707 03 22 08 21 FF FF FF FF       $  ANS029:717 03 22 08 21 FF FF FF FF
  $  REQ030:707 03 22 08 22 FF FF FF FF       $  ANS030:717 03 22 08 22 FF FF FF FF
  $  REQ031:707 03 22 08 23 FF FF FF FF       $  ANS031:717 03 22 08 23 FF FF FF FF
  $  REQ032:707 03 22 08 24 FF FF FF FF       $  ANS032:717 03 22 08 24 FF FF FF FF
  $  REQ033:707 03 22 08 25 FF FF FF FF       $  ANS033:717 03 22 08 25 FF FF FF FF
  $  REQ034:707 03 22 08 26 FF FF FF FF       $  ANS034:717 03 22 08 26 FF FF FF FF
  $  REQ035:707 03 22 08 27 FF FF FF FF       $  ANS035:717 03 22 08 27 FF FF FF FF
  $  REQ036:707 03 22 08 28 FF FF FF FF       $  ANS036:717 03 22 08 28 FF FF FF FF
  $  REQ037:707 03 22 08 29 FF FF FF FF       $  ANS037:717 03 22 08 29 FF FF FF FF
  $  REQ038:707 03 22 08 2A FF FF FF FF       $  ANS038:717 03 22 08 2A FF FF FF FF
  $  REQ039:707 03 22 08 2B FF FF FF FF       $  ANS039:717 03 22 08 2B FF FF FF FF
  $  REQ040:707 03 22 08 2C FF FF FF FF       $  ANS040:717 03 22 08 2C FF FF FF FF
  $  REQ041:707 03 22 08 31 FF FF FF FF       $  ANS041:717 03 22 08 31 FF FF FF FF

  $  000.�ܼ����               $    $               $    $  ANS000.BYTE004  $  y=x*6553.6+x2*256+x3;
  $  001.����                   $    $               $    $  ANS001.BYTE004  $  y=SPRINTF([%02x%02x%s%02x%s%02x%s%02x%s%02x%s%02x%s],x1,x2,@0434,x3,@0435,x4,@0436,x5,@0437,x6,@0438,x7,@0439);
  $  002.����                   $    $  km/h         $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.03125;
  $  003.����״̬               $    $               $    $  ANS003.BYTE004  $  switxh(x) 0x01:y=IG OFF;0x02:y=ACC;0x04:y=IG ON;0x08:y=@0097;0x10:y=@0098;0x20:y=@0099;default: y=@0007;
  $  004.MCUʹ������            $    $               $    $  ANS004.BYTE004  $  switxh(x) 0x00:y=@0112;0x01:y=@0101;default: y=@0007;
  $  005.Ŀ�깤��ģʽ           $    $               $    $  ANS005.BYTE004  $  switxh(x) 0x00:y=@0113;0x01:y=@0042;0x02:y=@0114;0x03:y=@0115;0x04:y=Reverse drive mode;0x05:y=Speed mode;0x06:y=Zero torque mode;0x07:y=Discharge mode;default: y=@0007;
  $  006.Ŀ��ת������           $    $  Nm           $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.05-1024;
  $  007.Ŀ��ת������           $    $  r/min        $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.5-16000;
  $  008.��λ�ź�               $    $               $    $  ANS008.BYTE004  $  switxh(x&0x0f) 0x05:y=@0102;0x06:y=@0103;0x08:y=@0104;0x0a:y=Flash P;0x0b:y=@0105;0x0c:y=@0106;0x0d:y=@0107;0x0f:y=@0007;default: y=@0007;
  $  009.�����ŵ�״̬           $    $               $    $  ANS009.BYTE004  $  switxh(x) 0x00:y=@0108;0x01:y=@0109;0x02:y=@0110;0x03:y=@0111;default: y=@0007;
  $  010.����������             $    $               $    $  ANS010.BYTE004  $  switxh(x) 0x00:y=@0100;0x01:y=@0101;default: y=@0007;
  $  011.ʵ�ʹ���ģʽ           $    $               $    $  ANS011.BYTE004  $  switxh(x) 0x00:y=@0113;0x01:y=@0042;0x02:y=@0114;0x03:y=@0115;0x04:y=Reverse drive mode;0x05:y=Speed mode;0x06:y=Zero torque mode;0x07:y=Discharge mode;default: y=@0007;
  $  012.ʵ�ʷ���ת��           $    $  Nm           $    $  ANS012.BYTE004  $  y=(x1*256+x2)*0.05-1024;
  $  013.ʵ�ʷ���ת��           $    $  r/min        $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.5-16000;
  $  014.Id����ֵ               $    $  A            $    $  ANS014.BYTE004  $  y=x1*256+x2-1000;
  $  015.Idʵ��ֵ               $    $  A            $    $  ANS015.BYTE004  $  y=x1*256+x2-1000;
  $  016.Iq����ֵ               $    $  A            $    $  ANS016.BYTE004  $  y=x1*256+x2-1000;
  $  017.Iqʵ��ֵ               $    $  A            $    $  ANS017.BYTE004  $  y=x1*256+x2-1000;
  $  018.�����ʼƫ��λ��       $    $  degree       $    $  ANS018.BYTE004  $  y=(x1*256+x2)*0.1-360;
  $  019.���������Чֵ         $    $  A            $    $  ANS019.BYTE004  $  y=(x1*256+x2)*0.05-512;
  $  020.����������ת��       $    $  Nm           $    $  ANS020.BYTE004  $  y=(x1*256+x2)*0.05;
  $  021.ֱ��ĸ�ߵ�ѹ           $    $  V            $    $  ANS021.BYTE004  $  y=(x1*256+x2)*0.05;
  $  022.IGBT�¶�               $    $  degree C     $    $  ANS022.BYTE004  $  y=x-48;
  $  023.����¶�               $    $               $    $  ANS023.BYTE004  $  y=x-48;
  $  024.PWM�ز�Ƶ��            $    $  Hz           $    $  ANS024.BYTE004  $  y=x1*256+x2;
  $  025.Կ���ź�               $    $               $    $  ANS025.BYTE004  $  switxh(x) 0x00:y=OFF;0x01:y=KEY_ON;default: y=@0007;
  $  026.12���ص�ѹ           $    $  V            $    $  ANS026.BYTE004  $  y=x1*256+x2-12;
  $  027.����ת��ָ��           $    $  Nm           $    $  ANS027.BYTE004  $  y=x1*256+x2;
  $  028.����ת��               $    $  Nm           $    $  ANS028.BYTE004  $  y=x1*256+x2;
  $  029.ת��ָ��ת��ֵ         $    $               $    $  ANS029.BYTE004  $  y=x1*256+x2;
  $  030.ת���趨               $    $               $    $  ANS030.BYTE004  $  y=x1*256+x2;
  $  031.������˲�ֵ           $    $               $    $  ANS031.BYTE004  $  y=(x1*256+x2)*0.1;
  $  032.����Ƕ�               $    $               $    $  ANS032.BYTE004  $  y=x1*256+x2;
  $  033.�ڲ�����ģʽ           $    $               $    $  ANS033.BYTE004  $  y=x1*256+x2;
  $  034.Vd�趨ֵ               $    $               $    $  ANS034.BYTE004  $  y=x1*256+x2-32767;
  $  035.Vq�趨ֵ               $    $               $    $  ANS035.BYTE004  $  y=x1*256+x2-32767;
  $  036.Id�������ֵ           $    $  A            $    $  ANS036.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  037.Iq�������ֵ           $    $  A            $    $  ANS037.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  038.A�����ADֵ            $    $  A            $    $  ANS038.BYTE004  $  y=x1*256+x2;
  $  039.B�����ADֵ            $    $  A            $    $  ANS039.BYTE004  $  y=x1*256+x2;
  $  040.C�����ADֵ            $    $  A            $    $  ANS040.BYTE004  $  y=x1*256+x2;
  $  041.���µ�״̬             $    $               $    $  ANS041.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:707 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
