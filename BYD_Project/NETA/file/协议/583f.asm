
    ����ID��583f

    ģ�⣺Э��ģ��-->583f

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~7EA

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

  $*$*DTC/7b000000


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
  $%  REQ005:7E2 03 22 F1 A2 FF FF FF FF       $%  ANS005:7EA 03 22 F1 A2 FF FF FF FF
  $%  REQ006:7E2 03 22 F1 8A FF FF FF FF       $%  ANS006:7EA 03 22 F1 8A FF FF FF FF
  $%  REQ007:7E2 03 22 F1 8B FF FF FF FF       $%  ANS007:7EA 03 22 F1 8B FF FF FF FF
  $%  REQ008:7E2 03 22 F1 8C FF FF FF FF       $%  ANS008:7EA 03 22 F1 8C FF FF FF FF
  $%  REQ009:7E2 03 22 F1 90 FF FF FF FF       $%  ANS009:7EA 03 22 F1 90 FF FF FF FF
  $%  REQ010:7E2 03 22 F1 91 FF FF FF FF       $%  ANS010:7EA 03 22 F1 91 FF FF FF FF
  $%  REQ011:7E2 03 22 F1 98 FF FF FF FF       $%  ANS011:7EA 03 22 F1 98 FF FF FF FF
  $%  REQ012:7E2 03 22 F1 99 FF FF FF FF       $%  ANS012:7EA 03 22 F1 99 FF FF FF FF
  $%  REQ013:7E2 03 22 F1 BF FF FF FF FF       $%  ANS013:7EA 03 22 F1 BF FF FF FF FF
  $%  REQ014:7E2 03 22 F1 C0 FF FF FF FF       $%  ANS014:7EA 03 22 F1 C0 FF FF FF FF
  $%  REQ015:7E2 03 22 F1 7F FF FF FF FF       $%  ANS015:7EA 03 22 F1 7F FF FF FF FF

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
  $%  013:����������:                        $%    $%  ANS013.BYTE004  $%  y=x1*65536+x2*256+x3;
  $%  014:ECUװ������:                       $%    $%  ANS014.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  015:Ӳ���汾��:                        $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  016:����ܳɰ汾:                      $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  017:ת�ģʽ:                          $%    $%  ANS015.BYTE004  $%  switxh(x) 0x00:y=@0182;0x01:y=@0404;default: y=@0007;

;******************************************************************************************************************************************************

��������: 

  $  REQ000:7E2 03 22 01 01 FF FF FF FF       $  ANS000:7EA 03 22 01 01 FF FF FF FF
  $  REQ001:7E2 03 22 01 02 FF FF FF FF       $  ANS001:7EA 03 22 01 02 FF FF FF FF
  $  REQ002:7E2 03 22 01 03 FF FF FF FF       $  ANS002:7EA 03 22 01 03 FF FF FF FF
  $  REQ003:7E2 03 22 01 04 FF FF FF FF       $  ANS003:7EA 03 22 01 04 FF FF FF FF
  $  REQ004:7E2 03 22 01 05 FF FF FF FF       $  ANS004:7EA 03 22 01 05 FF FF FF FF
  $  REQ005:7E2 03 22 01 06 FF FF FF FF       $  ANS005:7EA 03 22 01 06 FF FF FF FF
  $  REQ006:7E2 03 22 01 07 FF FF FF FF       $  ANS006:7EA 03 22 01 07 FF FF FF FF
  $  REQ007:7E2 03 22 01 08 FF FF FF FF       $  ANS007:7EA 03 22 01 08 FF FF FF FF
  $  REQ008:7E2 03 22 01 09 FF FF FF FF       $  ANS008:7EA 03 22 01 09 FF FF FF FF
  $  REQ009:7E2 03 22 01 0A FF FF FF FF       $  ANS009:7EA 03 22 01 0A FF FF FF FF
  $  REQ010:7E2 03 22 01 0B FF FF FF FF       $  ANS010:7EA 03 22 01 0B FF FF FF FF
  $  REQ011:7E2 03 22 01 0C FF FF FF FF       $  ANS011:7EA 03 22 01 0C FF FF FF FF
  $  REQ012:7E2 03 22 01 0D FF FF FF FF       $  ANS012:7EA 03 22 01 0D FF FF FF FF
  $  REQ013:7E2 03 22 01 0E FF FF FF FF       $  ANS013:7EA 03 22 01 0E FF FF FF FF
  $  REQ014:7E2 03 22 01 0F FF FF FF FF       $  ANS014:7EA 03 22 01 0F FF FF FF FF
  $  REQ015:7E2 03 22 01 10 FF FF FF FF       $  ANS015:7EA 03 22 01 10 FF FF FF FF
  $  REQ016:7E2 03 22 01 11 FF FF FF FF       $  ANS016:7EA 03 22 01 11 FF FF FF FF
  $  REQ017:7E2 03 22 01 12 FF FF FF FF       $  ANS017:7EA 03 22 01 12 FF FF FF FF
  $  REQ018:7E2 03 22 01 13 FF FF FF FF       $  ANS018:7EA 03 22 01 13 FF FF FF FF
  $  REQ019:7E2 03 22 01 14 FF FF FF FF       $  ANS019:7EA 03 22 01 14 FF FF FF FF
  $  REQ020:7E2 03 22 01 15 FF FF FF FF       $  ANS020:7EA 03 22 01 15 FF FF FF FF
  $  REQ021:7E2 03 22 01 16 FF FF FF FF       $  ANS021:7EA 03 22 01 16 FF FF FF FF
  $  REQ022:7E2 03 22 01 17 FF FF FF FF       $  ANS022:7EA 03 22 01 17 FF FF FF FF
  $  REQ023:7E2 03 22 01 18 FF FF FF FF       $  ANS023:7EA 03 22 01 18 FF FF FF FF
  $  REQ024:7E2 03 22 01 19 FF FF FF FF       $  ANS024:7EA 03 22 01 19 FF FF FF FF
  $  REQ025:7E2 03 22 01 1A FF FF FF FF       $  ANS025:7EA 03 22 01 1A FF FF FF FF
  $  REQ026:7E2 03 22 01 1B FF FF FF FF       $  ANS026:7EA 03 22 01 1B FF FF FF FF
  $  REQ027:7E2 03 22 01 1C FF FF FF FF       $  ANS027:7EA 03 22 01 1C FF FF FF FF
  $  REQ028:7E2 03 22 01 1D FF FF FF FF       $  ANS028:7EA 03 22 01 1D FF FF FF FF
  $  REQ029:7E2 03 22 01 1F FF FF FF FF       $  ANS029:7EA 03 22 01 1F FF FF FF FF
  $  REQ030:7E2 03 22 01 20 FF FF FF FF       $  ANS030:7EA 03 22 01 20 FF FF FF FF

  $  000.Ť����������                                                             $    $  Nm       $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.05-1024;
  $  001.�ٶ���������                                                             $    $  rpm      $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.5-16000;
  $  002.���ģʽ����                                                             $    $           $    $  ANS002.BYTE004  $  switxh(x&0x07) 0x00:y=@0100;0x01:y=@0042;0x02:y=@0306;0x03:y=@0307;0x04:y=@0405;0x05:y=@0406;0x06:y=@0407;0x07:y=@0187;default: y=@0007;
  $  003.���ʹ���ź�                                                             $    $           $    $  ANS002.BYTE004  $  switxh(x&0x08) 0x00:y=@0123;default: y=@0122;
  $  004.�����µ�����״̬                                                         $    $           $    $  ANS002.BYTE004  $  switxh(x&0x10) 0x00:y=@0402;default: y=@0403;
  $  005.���µ�״̬                                                               $    $           $    $  ANS003.BYTE004  $  switxh(x&0x07) 0x00:y=INIT;0x01:y=LVPWRUP;0x02:y=HVPWRUP;0x03:y=DONE;0x04:y=TMOUT;0x05:y=PWRDWN;default: y=@0074;
  $  006.���µ糬ʱԭ��                                                           $    $           $    $  ANS003.BYTE004  $  switxh(x&0x38) 0x00:y=DONE;0x08:y=CLSMAINCNTCRT;0x10:y=DCDCPU;0x18:y=PU;0x20:y=WAITCURRDEC;0x28:y=OPENCNTCTR;0x30:y=WAITVOLTDEC;default: y=@0074;
  $  007.����ϵͳ���ϵȼ�                                                         $    $           $    $  ANS003.BYTE004  $  switxh(x&0xC0) 0x00:y=@0000;0x40:y=@0179;0x80:y=@0400;0xC0:y=@0401;default: y=@0007;
  $  008.��ѹ�µ�״̬                                                             $    $           $    $  ANS004.BYTE004  $  switxh(x&0x07) 0x00:y=NONE;0x01:y=WAITCURRENTDEC;0x02:y=DCDCPWRDWM;0x03:y=OPENMAINCNTCTR;0x04:y=WAITVOLTDEC;0x05:y=LOVOLTPWRDWN;0x06:y=AFTERUN;0x07:y=@0110;default: y=@0007;
  $  009.��ѹ�ϵ�״̬                                                             $    $           $    $  ANS004.BYTE004  $  switxh(x&0x38) 0x00:y=NONE;0x08:y=CLOSEMAINCNTRCTR;0x10:y=DCDCENABLE;0x18:y=MCUSTART;0x20:y=TIMEOUT;0x28:y=FINISHED;default: y=@0074;
  $  010.VCU��·�����źŹ��ϵȼ�                                                  $    $           $    $  ANS004.BYTE004  $  switxh(x&0xC0) 0x00:y=@0000;0x40:y=@0233;0x80:y=@0233;2y=@0234;default: y=;
  $  011.VCU���Ʒŵ��·                                                          $    $           $    $  ANS005.BYTE004  $  switxh(x&0x03) 0x00:y=@0075;0x01:y=@0175;default: y=@0074;
  $  012.��ѹ������·�����ź�״̬                                                 $    $           $    $  ANS005.BYTE004  $  switxh(x&0x04) 0x00:y=@0075;default: y=@0175;
  $  013.����·��ѹ�����ź�״̬                                                   $    $           $    $  ANS005.BYTE004  $  switxh(x&0x08) 0x00:y=@0075;default: y=@0175;
  $  014.DCDCʹ���ź�                                                             $    $           $    $  ANS005.BYTE004  $  switxh(x&0x10) 0x00:y=@0010;default: y=@0048;
  $  015.��ѹ����ʵʱ����                                                         $    $  W        $    $  ANS006.BYTE004  $  y=x1*256+x2;
  $  016.DCDC��������                                                             $    $  KW       $    $  ANS007.BYTE004  $  y=x*0.01;
  $  017.DCDC�����ѹֵָ��                                                       $    $  V        $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.05;
  $  018.��ǰ������ش����                                                     $    $           $    $  ANS009.BYTE004  $  y=x;
  $  019.VCU����ָ��_PCU                                                          $    $           $    $  ANS010.BYTE004  $  switxh(x&0x03) 0x00:y=@0431;0x01:y=@0432;0x02:y=@0433;default: y=@0074;
  $  020.ǣ��ģʽ����                                                             $    $           $    $  ANS010.BYTE004  $  switxh(x&0x04) 0x00:y=@0221;default: y=@0430;
  $  021.ǣ��ģʽ����ʧ��ԭ��                                                     $    $           $    $  ANS010.BYTE004  $  switxh(x&0x38) 0x00:y=@0221;0x08:y=@0411;0x10:y=@0317;0x18:y=@0412;0x20:y=@0413;default: y=@0074;
  $  022.����VIN��δ¼��                                                          $    $           $    $  ANS011.BYTE004  $  switxh(x&0x01) 0x00:y=@0429;default: y=@0171;
  $  023.VIN��¼�벻����                                                          $    $           $    $  ANS011.BYTE004  $  switxh(x&0x02) 0x00:y=@0174;default: y=@0173;
  $  024.�˶�׼������ָʾ��                                                       $    $           $    $  ANS011.BYTE004  $  switxh(x&0x04) 0x00:y=@0100;default: y=@0326;
  $  025.��ѹ׼������                                                             $    $           $    $  ANS011.BYTE004  $  switxh(x&0x08) 0x00:y=@0427;default: y=@0428;
  $  026.��绽���ź�(BMS HardWire)                                               $    $           $    $  ANS011.BYTE004  $  switxh(x&0x10) 0x00:y=@0330;default: y=@0426;
  $  027.Ѳ��Ŀ�공��                                                             $    $  km/h     $    $  ANS012.BYTE004  $  y=x;
  $  028.�յ�������ֵ                                                           $    $  KW       $    $  ANS013.BYTE004  $  y=x*0.5;
  $  029.�յ�������ֵ��Ч��                                                     $    $           $    $  ANS014.BYTE004  $  switxh(x&0x01) 0x00:y=@0007;default: y=@0268;
  $  030.�յ���������״̬��ԭ��                                                 $    $           $    $  ANS014.BYTE004  $  switxh(x&0x0E) 0x00:y=@0408;0x02:y=@0192;0x04:y=@0014;0x0C:y=@0156;default: y=@0007;
  $  031.����Ѳ��״̬                                                             $    $           $    $  ANS014.BYTE004  $  switxh(x&0xF0) 0x00:y=@0100;0x10:y=@0192;0x20:y=@0014;0x30:y=@0156;default: y=@0007;
  $  032.PTCˮ�ù���״̬����                                                      $    $  %        $    $  ANS015.BYTE004  $  y=x;
  $  033.��ȴ���ȹ��Ϸ���                                                         $    $           $    $  ANS016.BYTE004  $  switxh(x&0x03) 0x00:y=@0000;0x01:y=@0425;default: y=-;
  $  034.PTCˮ�ù��Ϸ���                                                          $    $           $    $  ANS016.BYTE004  $  switxh(x&0x0C) 0x00:y=@0000;0x04:y=@0425;default: y=-;
  $  035.��ȴ���ȸߵ͵�״̬                                                       $    $           $    $  ANS016.BYTE004  $  switxh(x&0x30) 0x00:y=@0010;0x10:y=@0422;0x20:y=@0423;default: y=-;
  $  036.��ʻģʽ��ʾ                                                             $    $           $    $  ANS016.BYTE004  $  switxh(x&0xC0) 0x00:y=@0010;0x40:y=ECO;0x80:y=@0424;default: y=-;
  $  037.��λ��ʾ                                                                 $    $           $    $  ANS017.BYTE004  $  switxh(x&0x0F) 0x05:y=@0420;0x06:y=@0421;0x08:y=S;0x0A:y=P;0x0B:y=D;0x0C:y=N;0x0D:y=@0059;0x0E:y=P;0x0F:y=@0007;default: y=@0007;
  $  038.ϵͳ�����ƣ���ɫ�����ʣ�                                                 $    $           $    $  ANS017.BYTE004  $  switxh(x&0x10) 0x00:y=@0100;default: y=@0415;
  $  039.�������յȼ�ǿ�ȷ���                                                     $    $           $    $  ANS017.BYTE004  $  switxh(x&0x60) 0x00:y=@0417;0x20:y=@0418;0x40:y=@0419;default: y=@0074;
  $  040.PN��λ����                                                               $    $           $    $  ANS017.BYTE004  $  switxh(x&0x80) 0x00:y=@0000;default: y=@0163;
  $  041.Ҫ��PEPS�Ͽ�StartRelay                                                   $    $           $    $  ANS017.BYTE005  $  switxh(x&0x01) 0x00:y=@0200;default: y=@0161;
  $  042.ģ�⣨����emulated��������״̬������start�����߼���                      $    $           $    $  ANS017.BYTE005  $  switxh(x&0x02) 0x00:y=@0416;default: y=@0039;
  $  043.�����ͱ�����                                                             $    $           $    $  ANS017.BYTE005  $  switxh(x&0x04) 0x00:y=@0100;default: y=@0415;
  $  044.12V���س�ŵ���ϵ�                                                    $    $           $    $  ANS017.BYTE005  $  switxh(x&0x08) 0x00:y=@0100;default: y=@0415;
  $  045.ϵͳ���ϵ�                                                               $    $           $    $  ANS017.BYTE005  $  switxh(x&0x10) 0x00:y=@0100;default: y=@0415;
  $  046.VCU��PEPS��ķ�����֤�����                                              $    $           $    $  ANS017.BYTE005  $  switxh(x&0x60) 0x00:y=@0414;0x20:y=@0153;0x40:y=@0025;default: y=@0059;
  $  047.��ʻԱ��Խģʽ                                                           $    $           $    $  ANS017.BYTE005  $  switxh(x&0x80) 0x00:y=@0278;default: y=@0151;
  $  048.�������                                                                 $    $  km       $    $  ANS018.BYTE004  $  y=x1*256+x2;
  $  049.С��ص�ѹ                                                               $    $  V        $    $  ANS019.BYTE004  $  y=x*0.1;
  $  050.����>3Km/h,�ٹ���ĵ���;����<3Km/h,���,Kwh;                             $    $  Kwh      $    $  ANS020.BYTE004  $  y=x*0.1;
  $  051.����̤���г�ֵ,����Ҫ��                                                  $    $  %        $    $  ANS021.BYTE004  $  y=x;
  $  052.��ʻԱ������Ť��                                                       $    $  Nm       $    $  ANS022.BYTE004  $  y=(x1*256+x2)*0.05-1024;
  $  053.��ǰ�����������������������Ť��                                       $    $  Nm       $    $  ANS023.BYTE004  $  y=(x1*256+x2)*0.05-1024;
  $  054.��ǰ��������������ķ���Ť��                                           $    $  Nm       $    $  ANS024.BYTE004  $  y=(x1*256+x2)*0.05-1024;
  $  055.brake���ɻ���Ť�أ��ֶˣ����򣩣���Ҫ��ȥcoastdown��ִ��Ť��           $    $  Nm       $    $  ANS025.BYTE004  $  y=x1*256+x2;
  $  056.VCUĿ������Ť�أ��ֶˣ�����Coastdown&Brake��                             $    $  Nm       $    $  ANS026.BYTE004  $  y=x1*256+x2;
  $  057.coastdownʵ�ʻ���Ť�أ��ֶˣ����򣩣����㴦��brake������Ȼ����Ť��       $    $  Nm       $    $  ANS027.BYTE004  $  y=x1*256+x2;
  $  058.brakeʵ�ʻ���Ť�أ��ֶˣ����򣩣�������coastdownŤ��                     $    $  Nm       $    $  ANS028.BYTE004  $  y=x1*256+x2;
  $  059.�����                                                                   $    $  km       $    $  ANS029.BYTE004  $  y=x*6553.6+(x2*256+x3)*0.1;
  $  060.�ƶ��ź�                                                                 $    $           $    $  ANS030.BYTE004  $  y=x&0x03;
  $  061.����(Longitudinal)��ʻ��Ӧģʽ���Զ�/�ֶ�                                $    $           $    $  ANS030.BYTE004  $  y=x&0x04;
  $  062.VCU response status for APA during APA working                           $    $           $    $  ANS030.BYTE004  $  y=x&0x38;
  $  063.VCUϵͳ״̬�������С�Ready��ADASӦ��ʼ���CAN���ĺ������ѹ��            $    $           $    $  ANS030.BYTE004  $  y=x&0x40;
  $  064.VCU��ACC����׼��������������ӦACCŤ������                                $    $           $    $  ANS030.BYTE004  $  y=x&0x80;
  $  065.VCU����VCU fail��ԭ��                                                    $    $           $    $  ANS030.BYTE005  $  y=x&0x07;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:7E2 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
