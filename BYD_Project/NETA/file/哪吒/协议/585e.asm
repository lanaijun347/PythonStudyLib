
    ����ID��585e

    ģ�⣺Э��ģ��-->585e

;******************************************************************************************************************************************************

    ͨѶ��: $~01$~09$~500k$~7EA

��������:

  $~  REQ000:7E2 02 10 03 FF FF FF FF FF       $~  ANS000:7EA 02 10 03 FF FF FF FF FF
  $~  REQ001:7E2 02 27 03 FF FF FF FF FF       $~  ANS001:7EA 02 27 03 FF FF FF FF FF
  $~  REQ002:7E2 04 27 04 1E B0 FF FF FF       $~  ANS002:7EA 04 27 04 1E B0 FF FF FF

��������:

  $!  REQ000:7E2 02 3E 00 FF FF FF FF FF       $!  ANS000:7EA 02 3E 00 FF FF FF FF FF

�˳�����:

  $@  REQ000:7E2 02 10 01 FF FF FF FF FF       $@  ANS000:7EA 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:7E2 03 19 02 09 FF FF FF FF       $#  ANS000:7EA 03 19 02 09 FF FF FF FF

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/98000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:7E2 04 14 FF FF FF FF FF FF       $$  ANS000:7EA 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:7E2 03 22 F1 80 FF FF FF FF       $%  ANS000:7EA 03 22 F1 80 FF FF FF FF
  $%  REQ001:7E2 03 22 F1 86 FF FF FF FF       $%  ANS001:7EA 03 22 F1 86 FF FF FF FF
  $%  REQ002:7E2 03 22 F1 87 FF FF FF FF       $%  ANS002:7EA 03 22 F1 87 FF FF FF FF
  $%  REQ003:7E2 03 22 F1 88 FF FF FF FF       $%  ANS003:7EA 03 22 F1 88 FF FF FF FF
  $%  REQ004:7E2 03 22 F1 B0 FF FF FF FF       $%  ANS004:7EA 03 22 F1 B0 FF FF FF FF
  $%  REQ005:7E2 03 22 F1 8A FF FF FF FF       $%  ANS005:7EA 03 22 F1 8A FF FF FF FF
  $%  REQ006:7E2 03 22 F1 8B FF FF FF FF       $%  ANS006:7EA 03 22 F1 8B FF FF FF FF
  $%  REQ007:7E2 03 22 F1 8C FF FF FF FF       $%  ANS007:7EA 03 22 F1 8C FF FF FF FF
  $%  REQ008:7E2 03 22 F1 90 FF FF FF FF       $%  ANS008:7EA 03 22 F1 90 FF FF FF FF
  $%  REQ009:7E2 03 22 F1 91 FF FF FF FF       $%  ANS009:7EA 03 22 F1 91 FF FF FF FF
  $%  REQ010:7E2 03 22 F1 98 FF FF FF FF       $%  ANS010:7EA 03 22 F1 98 FF FF FF FF
  $%  REQ011:7E2 03 22 F1 99 FF FF FF FF       $%  ANS011:7EA 03 22 F1 99 FF FF FF FF
  $%  REQ012:7E2 03 22 F1 9D FF FF FF FF       $%  ANS012:7EA 03 22 F1 9D FF FF FF FF
  $%  REQ013:7E2 03 22 F1 BF FF FF FF FF       $%  ANS013:7EA 03 22 F1 BF FF FF FF FF
  $%  REQ014:7E2 03 22 F1 C0 FF FF FF FF       $%  ANS014:7EA 03 22 F1 C0 FF FF FF FF
  $%  REQ015:7E2 03 22 F1 7F FF FF FF FF       $%  ANS015:7EA 03 22 F1 7F FF FF FF FF
  $%  REQ016:7E2 03 22 F1 D0 FF FF FF FF       $%  ANS016:7EA 03 22 F1 D0 FF FF FF FF
  $%  REQ017:7E2 03 22 F1 60 FF FF FF FF       $%  ANS017:7EA 03 22 F1 60 FF FF FF FF
  $%  REQ018:7E2 03 22 F1 7B FF FF FF FF       $%  ANS018:7EA 03 22 F1 7B FF FF FF FF

  $%  000:Bootloader����汾��:                  $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:��ǰ�������ģʽ:                      $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:�����㲿����:                          $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:Ӧ������汾�ţ����������汾��:        $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:Ӧ������汾�ţ��̶��汾��:            $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ϵͳ��Ӧ�̴���:                        $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  006:ECU��������:                           $%    $%  ANS006.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  007:���������к�:                          $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  008:����VIN:                               $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:Ӳ���汾��:                            $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  010:�����豸���к�:                        $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:ˢ������:                              $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  012:ECUװ������:                           $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  013:Ӳ���汾�ţ��̶��汾��:                $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  014:����ܳɰ汾:                          $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  015:ת�ģʽ:                              $%    $%  ANS015.BYTE004  $%  switxh(x) 0x00:y=@0190;0x01:y=@0191;default: y=@0007;
  $%  016:����ܳ������:                        $%    $%  ANS016.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  017:N95��о����:                           $%    $%  ANS017.BYTE004  $%  y=x;
  $%  018:չ��ģʽ:                              $%    $%  ANS018.BYTE004  $%  switxh(x&0x07) 0x01:y=@0182;0x02:y=@0183;default: y=-;

;******************************************************************************************************************************************************

��������: 

  $  REQ000:7E2 03 22 01 12 FF FF FF FF       $  ANS000:7EA 03 22 01 12 FF FF FF FF
  $  REQ001:7E2 03 22 E1 01 FF FF FF FF       $  ANS001:7EA 03 22 E1 01 FF FF FF FF
  $  REQ002:7E2 03 22 B1 00 FF FF FF FF       $  ANS002:7EA 03 22 B1 00 FF FF FF FF
  $  REQ003:7E2 03 22 D0 01 FF FF FF FF       $  ANS003:7EA 03 22 D0 01 FF FF FF FF
  $  REQ004:7E2 03 22 F0 20 FF FF FF FF       $  ANS004:7EA 03 22 F0 20 FF FF FF FF
  $  REQ005:7E2 03 22 F0 12 FF FF FF FF       $  ANS005:7EA 03 22 F0 12 FF FF FF FF
  $  REQ006:7E2 03 22 F0 13 FF FF FF FF       $  ANS006:7EA 03 22 F0 13 FF FF FF FF
  $  REQ007:7E2 03 22 F0 15 FF FF FF FF       $  ANS007:7EA 03 22 F0 15 FF FF FF FF
  $  REQ008:7E2 03 22 01 01 FF FF FF FF       $  ANS008:7EA 03 22 01 01 FF FF FF FF
  $  REQ009:7E2 03 22 01 02 FF FF FF FF       $  ANS009:7EA 03 22 01 02 FF FF FF FF
  $  REQ010:7E2 03 22 01 03 FF FF FF FF       $  ANS010:7EA 03 22 01 03 FF FF FF FF
  $  REQ011:7E2 03 22 01 04 FF FF FF FF       $  ANS011:7EA 03 22 01 04 FF FF FF FF
  $  REQ012:7E2 03 22 01 05 FF FF FF FF       $  ANS012:7EA 03 22 01 05 FF FF FF FF
  $  REQ013:7E2 03 22 01 06 FF FF FF FF       $  ANS013:7EA 03 22 01 06 FF FF FF FF
  $  REQ014:7E2 03 22 01 07 FF FF FF FF       $  ANS014:7EA 03 22 01 07 FF FF FF FF
  $  REQ015:7E2 03 22 01 08 FF FF FF FF       $  ANS015:7EA 03 22 01 08 FF FF FF FF
  $  REQ016:7E2 03 22 01 09 FF FF FF FF       $  ANS016:7EA 03 22 01 09 FF FF FF FF
  $  REQ017:7E2 03 22 01 0A FF FF FF FF       $  ANS017:7EA 03 22 01 0A FF FF FF FF
  $  REQ018:7E2 03 22 01 0C FF FF FF FF       $  ANS018:7EA 03 22 01 0C FF FF FF FF
  $  REQ019:7E2 03 22 01 0F FF FF FF FF       $  ANS019:7EA 03 22 01 0F FF FF FF FF
  $  REQ020:7E2 03 22 01 13 FF FF FF FF       $  ANS020:7EA 03 22 01 13 FF FF FF FF
  $  REQ021:7E2 03 22 01 14 FF FF FF FF       $  ANS021:7EA 03 22 01 14 FF FF FF FF
  $  REQ022:7E2 03 22 01 16 FF FF FF FF       $  ANS022:7EA 03 22 01 16 FF FF FF FF
  $  REQ023:7E2 03 22 01 17 FF FF FF FF       $  ANS023:7EA 03 22 01 17 FF FF FF FF
  $  REQ024:7E2 03 22 01 18 FF FF FF FF       $  ANS024:7EA 03 22 01 18 FF FF FF FF
  $  REQ025:7E2 03 22 01 19 FF FF FF FF       $  ANS025:7EA 03 22 01 19 FF FF FF FF
  $  REQ026:7E2 03 22 01 1A FF FF FF FF       $  ANS026:7EA 03 22 01 1A FF FF FF FF
  $  REQ027:7E2 03 22 01 1B FF FF FF FF       $  ANS027:7EA 03 22 01 1B FF FF FF FF
  $  REQ028:7E2 03 22 01 1C FF FF FF FF       $  ANS028:7EA 03 22 01 1C FF FF FF FF
  $  REQ029:7E2 03 22 01 1D FF FF FF FF       $  ANS029:7EA 03 22 01 1D FF FF FF FF
  $  REQ030:7E2 03 22 01 20 FF FF FF FF       $  ANS030:7EA 03 22 01 20 FF FF FF FF
  $  REQ031:7E2 03 22 01 22 FF FF FF FF       $  ANS031:7EA 03 22 01 22 FF FF FF FF

  $  000.���ص�ѹ                               $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.�����                                   $    $  km       $    $  ANS001.BYTE004  $  y=x*65536+x2*256+x3;
  $  002.����                                     $    $  km/h     $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.01;
  $  003.IG OFF                                   $    $  /        $    $  ANS003.BYTE004  $  switxh(x&0x01) 0x01:y=ON;default: y=OFF;
  $  004.ACC                                      $    $  /        $    $  ANS003.BYTE004  $  switxh(x&0x02) 0x02:y=ON;default: y=OFF;
  $  005.IG ON                                    $    $  /        $    $  ANS003.BYTE004  $  switxh(x&0x04) 0x04:y=ON;default: y=OFF;
  $  006.����                                     $    $  /        $    $  ANS003.BYTE004  $  switxh(x&0x08) 0x08:y=ON;default: y=OFF;
  $  007.Զ��IG ON                                $    $  /        $    $  ANS003.BYTE004  $  switxh(x&0x10) 0x10:y=ON;default: y=OFF;
  $  008.Զ������                                 $    $  /        $    $  ANS003.BYTE004  $  switxh(x&0x20) 0x20:y=ON;default: y=OFF;
  $  009.��                                       $    $  y        $    $  ANS004.BYTE004  $  y=x1*256+x2;
  $  010.��                                       $    $  m        $    $  ANS004.BYTE006  $  y=x;
  $  011.��                                       $    $  d        $    $  ANS004.BYTE007  $  y=x;
  $  012.ʱ                                       $    $  h        $    $  ANS004.BYTE008  $  y=x;
  $  013.��                                       $    $  min      $    $  ANS004.BYTE009  $  y=x;
  $  014.��                                       $    $  s        $    $  ANS004.BYTE010  $  y=x;
  $  015.��������ܵ�ѹ                           $    $  V        $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.05;
  $  016.������ص�ǰ����                         $    $  A        $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  017.���SOC                                  $    $  %        $    $  ANS007.BYTE004  $  y=x;
  $  018.Ť����������                             $    $  Nm       $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.05-300;
  $  019.�ٶ���������                             $    $  rpm      $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.5-12000;
  $  020.���ģʽ����                             $    $           $    $  ANS010.BYTE004  $  switxh(x) 0x00:y=@0100;0x01:y=@0042;0x02:y=@0184;0x03:y=@0185;0x0a:y=@0186;0x0b:y=@0187;0x1a:y=@0188;0x12:y=@0189;default: y=@0007;
  $  021.���ʹ���ź�                             $    $           $    $  ANS010.BYTE004  $  switxh(x&0x40) 0x40:y=@0101;default: y=@0112;
  $  022.�����µ�����״̬                         $    $           $    $  ANS010.BYTE004  $  switxh(x&0x80) 0x80:y=@0180;default: y=@0181;
  $  023.���µ糬ʱԭ��                           $    $           $    $  ANS011.BYTE004  $  switxh(x&0x0f) 0x00:y=@0110;0x01:y=@0178;0x02:y=DCDCPU;0x03:y=PU;0x04:y=WAITCURRDEC;0x05:y=OPENCNTCTR;0x06:y=WAITVOLTDEC ;0x07:y=NONE;default: y=@0007;
  $  024.����ϵͳ���ϵȼ�                         $    $           $    $  ANS011.BYTE004  $  switxh(x&0xf0) 0x00:y=@0000;0x10:y=@0179;0x20:y=Failure Limit;0x30:y=Failure Stop;default: y=@0007;
  $  025.��ѹ�µ�״̬                             $    $           $    $  ANS012.BYTE004  $  switxh(x&0x0f) 0x00:y=@0110;0x01:y=WAITCURRENTDEC;0x02:y=DCDCPWRDWN;0x03:y=OPENMAINCNTCTR;0x04:y=WAITVOLTDEC;0x05:y=LOWVOLTPWRDWN;0x06:y=FINISHED;default: y=@0007;
  $  026.��ѹ�ϵ�״̬                             $    $           $    $  ANS012.BYTE004  $  switxh(x&0xf0) 0x00:y=@0110;0x10:y=CLOSEMAINCNTRCTR;0x20:y=DCDCENABLE;0x30:y=TMSTART;0x40:y=TIMEOUT;0x50:y=FINISHED;0x60:y=Reserved1 ;0x70:y=Reserved2;default: y=@0007;
  $  027.VCU���Ʒŵ��·                          $    $           $    $  ANS013.BYTE004  $  switxh(x&0x03) 0x00:y=@0075;0x01:y=@0177;0x02:y=@0175;default: y=@0007;
  $  028.��ѹ������·�����ź�״̬                 $    $           $    $  ANS013.BYTE004  $  switxh(x&0x04) 0x04:y=@0175;default: y=@0176;
  $  029.����·��ѹ�����ź�״̬                   $    $           $    $  ANS013.BYTE004  $  switxh(x&0x08) 0x08:y=@0175;default: y=@0176;
  $  030.DCDCʹ���ź�                             $    $           $    $  ANS013.BYTE004  $  switxh(x&0x10) 0x10:y=@0101;default: y=@0130;
  $  031.��ѹ����ʵʱ����                         $    $  W        $    $  ANS014.BYTE004  $  y=x1*256+x2;
  $  032.DCDC��������                             $    $  KW       $    $  ANS015.BYTE004  $  y=x*0.01;
  $  033.DCDC�����ѹֵָ��                       $    $  V        $    $  ANS016.BYTE004  $  y=(x1*256+x2)*0.05;
  $  034.��ǰ������ش����                     $    $           $    $  ANS017.BYTE004  $  y=x1*256+x2;
  $  035.����VIN��δ¼��                          $    $           $    $  ANS018.BYTE004  $  switxh(x&0x01) 0x01:y=@0171;default: y=@0172;
  $  036.VIN��¼�벻����                          $    $           $    $  ANS018.BYTE004  $  switxh(x&0x02) 0x02:y=@0173;default: y=@0174;
  $  037.�˶�׼������ָʾ��                       $    $           $    $  ANS018.BYTE004  $  switxh(x&0x04) 0x04:y=@0159;default: y=@0160;
  $  038.��ѹ׼������                             $    $           $    $  ANS018.BYTE004  $  switxh(x&0x08) 0x08:y=@0116;default: y=@0117;
  $  039.��绽���ź�                             $    $           $    $  ANS018.BYTE004  $  switxh(x&0x10) 0x10:y=@0164;default: y=@0165;
  $  040.�յ���������ԭ��                         $    $           $    $  ANS019.BYTE004  $  switxh(x&0x07) 0x00:y=@0074;0x01:y=@0166;0x02:y=@0167;0x03:y=@0168;0x04:y=@0169;0x05:y=@0170;default: y=@0007;
  $  041.��ȴ���ȹ��Ϸ���                         $    $           $    $  ANS019.BYTE004  $  switxh(x&0x08) 0x08:y=@0163;default: y=@0000;
  $  042.��ȴ���ȸߵ͵�״̬                       $    $           $    $  ANS019.BYTE004  $  switxh(x&0xf0) 0x00:y=@0010;0x10:y=@0011;0x20:y=@0012;0x30:y=@0074;default: y=@0007;
  $  043.��λ��ʾ                                 $    $           $    $  ANS020.BYTE004  $  switxh(x&0x0f) 0x05:y=@0102;0x06:y=@0103;0x08:y=@0104;0x0b:y=@0105;0x0c:y=@0106;0x0d:y=@0107;0x0f:y=@0007;default: y=@0007;
  $  044.�޹���ָʾ��                             $    $           $    $  ANS020.BYTE004  $  switxh(x&0x10) 0x10:y=@0159;default: y=@0160;
  $  045.PN��λ����                               $    $           $    $  ANS020.BYTE004  $  switxh(x&0x80) 0x80:y=@0015;default: y=@0000;
  $  046.Ҫ��PEPS�Ͽ�StartRelay                   $    $           $    $  ANS020.BYTE005  $  switxh(x&0x01) 0x01:y=@0161;default: y=@0162;
  $  047.ģ�ⷢ����״̬                           $    $           $    $  ANS020.BYTE005  $  switxh(x&0x02) 0x02:y=@0157;default: y=@0158;
  $  048.�����ͱ�����                             $    $           $    $  ANS020.BYTE005  $  switxh(x&0x04) 0x04:y=@0159;default: y=@0160;
  $  049.12V���س�ŵ���ϵ�                    $    $           $    $  ANS020.BYTE005  $  switxh(x&0x08) 0x08:y=@0159;default: y=@0160;
  $  050.ϵͳ���ϵ�                               $    $           $    $  ANS020.BYTE005  $  switxh(x&0x10) 0x10:y=@0159;default: y=@0160;
  $  051.VCU��PEPS��ķ�����֤���                $    $           $    $  ANS020.BYTE005  $  switxh(x&0x60) 0x00:y=Default;0x20:y=@0153;0x40:y=@0111;0x60:y=@0074;default: y=@0007;
  $  052.�������                                 $    $  km       $    $  ANS021.BYTE004  $  y=(x1*256+x2)*0.1;
  $  053.����̤�忪��                             $    $  %        $    $  ANS022.BYTE004  $  y=(x1*256+x2)*0.392;
  $  054.VCU����Ť��                              $    $  Nm       $    $  ANS023.BYTE004  $  y=(x1*256+x2)*0.05-300;
  $  055.��ǰ�����������������������Ť��       $    $  Nm       $    $  ANS024.BYTE004  $  y=(x1*256+x2)*0.05;
  $  056.��ǰ��������������ķ���Ť��           $    $  Nm       $    $  ANS025.BYTE004  $  y=(x1*256+x2)*0.025-300;
  $  057.ɲ�����ɻ���Ť��                       $    $  Nm       $    $  ANS026.BYTE004  $  y=x1*256+x2-16000;
  $  058.VCUĿ������Ť��                          $    $  Nm       $    $  ANS027.BYTE004  $  y=x1*256+x2-16000;
  $  059.����ʵ�ʻ���Ť��                         $    $  Nm       $    $  ANS028.BYTE004  $  y=x1*256+x2-16000;
  $  060.ɲ��ʵ�ʻ���Ť��                         $    $  Nm       $    $  ANS029.BYTE004  $  y=x1*256+x2-16000;
  $  061.�ƶ��ź�                                 $    $           $    $  ANS030.BYTE004  $  switxh(x) 0x00:y=@0154;0x01:y=@0155;0x02:y=@0074;0x03:y=@0156;default: y=@0007;
  $  062.���ѹ��ֵ                               $    $  Kpa      $    $  ANS031.BYTE004  $  y=x1*256+x2;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:7E2 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
