
    ����ID��583e

    ģ�⣺Э��ģ��-->583e

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~7B0

��������:

  $~  REQ000:7A0 02 10 03 FF FF FF FF FF       $~  ANS000:7B0 02 10 03 FF FF FF FF FF
  $~  REQ001:7A0 02 27 03 FF FF FF FF FF       $~  ANS001:7B0 02 27 03 FF FF FF FF FF
  $~  REQ002:7A0 04 27 04 1E B0 FF FF FF       $~  ANS002:7B0 04 27 04 1E B0 FF FF FF

��������:

  $!  REQ000:7A0 02 3E 00 FF FF FF FF FF       $!  ANS000:7B0 02 3E 00 FF FF FF FF FF

�˳�����:

  $@  REQ000:7A0 02 10 01 FF FF FF FF FF       $@  ANS000:7B0 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:7A0 03 19 02 09 FF FF FF FF       $#  ANS000:7B0 03 19 02 09 FF FF FF FF

		���ƹ�ʽ��
			y=(x1<<8)+x2;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#2$#��ʾ��š�

  ���:

  $*$*DTC/581c0000_2BYTE


;******************************************************************************************************************************************************

���������:

  $$  REQ000:7A0 04 14 FF FF FF FF FF FF       $$  ANS000:7B0 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

��������: 

  $)  00.���汾��Ϣ
  $  00.���汾��Ϣ
  $  REQ000:7A0 03 22 F1 86 FF FF FF FF       $  ANS000:7B0 03 22 F1 86 FF FF FF FF
  $  REQ001:7A0 03 22 F1 87 FF FF FF FF       $  ANS001:7B0 03 22 F1 87 FF FF FF FF
  $  REQ002:7A0 03 22 F1 88 FF FF FF FF       $  ANS002:7B0 03 22 F1 88 FF FF FF FF
  $  REQ003:7A0 03 22 F1 B0 FF FF FF FF       $  ANS003:7B0 03 22 F1 B0 FF FF FF FF
  $  REQ004:7A0 03 22 F1 8A FF FF FF FF       $  ANS004:7B0 03 22 F1 8A FF FF FF FF
  $  REQ005:7A0 03 22 F1 8B FF FF FF FF       $  ANS005:7B0 03 22 F1 8B FF FF FF FF
  $  REQ006:7A0 03 22 F1 8C FF FF FF FF       $  ANS006:7B0 03 22 F1 8C FF FF FF FF
  $  REQ007:7A0 03 22 F1 90 FF FF FF FF       $  ANS007:7B0 03 22 F1 90 FF FF FF FF
  $  REQ008:7A0 03 22 F1 91 FF FF FF FF       $  ANS008:7B0 03 22 F1 91 FF FF FF FF
  $  REQ009:7A0 03 22 F1 98 FF FF FF FF       $  ANS009:7B0 03 22 F1 98 FF FF FF FF
  $  REQ010:7A0 03 22 F1 9D FF FF FF FF       $  ANS010:7B0 03 22 F1 9D FF FF FF FF
  $  REQ011:7A0 03 22 F1 70 FF FF FF FF       $  ANS011:7B0 03 22 F1 70 FF FF FF FF
  $  REQ012:7A0 03 22 46 0A FF FF FF FF       $  ANS012:7B0 03 22 46 0A FF FF FF FF
  $  REQ013:7A0 03 22 46 0B FF FF FF FF       $  ANS013:7B0 03 22 46 0B FF FF FF FF
  $  REQ014:7A0 03 22 46 0C FF FF FF FF       $  ANS014:7B0 03 22 46 0C FF FF FF FF
  $  REQ015:7A0 03 22 46 0D FF FF FF FF       $  ANS015:7B0 03 22 46 0D FF FF FF FF
  $  REQ016:7A0 03 22 F1 BF FF FF FF FF       $  ANS016:7B0 03 22 F1 BF FF FF FF FF
  $  REQ017:7A0 03 22 F1 C0 FF FF FF FF       $  ANS017:7B0 03 22 F1 C0 FF FF FF FF

  $  000.��ǰ�������ģʽ                 $    $       $    $  ANS000.BYTE004  $  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $  001.�����㲿����                     $    $       $    $  ANS001.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $  002.Ӧ������汾��                   $    $       $    $  ANS002.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $  003.Ӧ������汾�ţ��̶��汾��       $    $       $    $  ANS003.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $  004.ϵͳ��Ӧ�̴���                   $    $       $    $  ANS004.BYTE004  $  y=ASCII(x1,x2,x3);
  $  005.ECU��������                      $    $       $    $  ANS005.BYTE004  $  y=HEX(x1,x2,x3,x4);
  $  006.���������к�                     $    $       $    $  ANS006.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $  007.����VIN                          $    $       $    $  ANS007.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $  008.Ӳ���汾��                       $    $       $    $  ANS008.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5);
  $  009.����豸���к�                   $    $       $    $  ANS009.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $  010.ECUװ������                      $    $       $    $  ANS010.BYTE004  $  y=HEX(x1,x2,x3,x4);
  $  011.����������                       $    $       $    $  ANS011.BYTE004  $  switxh(x) 0x00:y=@0253;0x01:y=@0254;default: y=@0007;
  $  012.�绰����                         $    $       $    $  ANS012.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  013.ICCID                            $    $       $    $  ANS013.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $  014.IMSI                             $    $       $    $  ANS014.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  015.IMEI                             $    $       $    $  ANS015.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  016.Ӳ���汾��                       $    $       $    $  ANS016.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5);
  $  017.����ܳɰ汾                     $    $       $    $  ANS017.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

  $)  01.����̬������
  $  01.����̬������
  $  REQ000:7A0 03 22 01 12 FF FF FF FF       $  ANS000:7B0 03 22 01 12 FF FF FF FF
  $  REQ001:7A0 03 22 F0 20 FF FF FF FF       $  ANS001:7B0 03 22 F0 20 FF FF FF FF
  $  REQ002:7A0 03 22 E1 01 FF FF FF FF       $  ANS002:7B0 03 22 E1 01 FF FF FF FF
  $  REQ003:7A0 03 22 B1 00 FF FF FF FF       $  ANS003:7B0 03 22 B1 00 FF FF FF FF
  $  REQ004:7A0 03 22 D0 01 FF FF FF FF       $  ANS004:7B0 03 22 D0 01 FF FF FF FF
  $  REQ005:7A0 03 22 90 04 FF FF FF FF       $  ANS005:7B0 03 22 90 04 FF FF FF FF
  $  REQ006:7A0 03 22 90 05 FF FF FF FF       $  ANS006:7B0 03 22 90 05 FF FF FF FF
  $  REQ007:7A0 03 22 90 06 FF FF FF FF       $  ANS007:7B0 03 22 90 06 FF FF FF FF
  $  REQ008:7A0 03 22 90 07 FF FF FF FF       $  ANS008:7B0 03 22 90 07 FF FF FF FF
  $  REQ009:7A0 03 22 90 09 FF FF FF FF       $  ANS009:7B0 03 22 90 09 FF FF FF FF
  $  REQ010:7A0 03 22 90 0C FF FF FF FF       $  ANS010:7B0 03 22 90 0C FF FF FF FF
  $  REQ011:7A0 03 22 90 0D FF FF FF FF       $  ANS011:7B0 03 22 90 0D FF FF FF FF
  $  REQ012:7A0 03 22 90 0E FF FF FF FF       $  ANS012:7B0 03 22 90 0E FF FF FF FF
  $  REQ013:7A0 03 22 90 0F FF FF FF FF       $  ANS013:7B0 03 22 90 0F FF FF FF FF
  $  REQ014:7A0 03 22 90 10 FF FF FF FF       $  ANS014:7B0 03 22 90 10 FF FF FF FF

  $  000.����ģʽ               $    $       $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.ʱ��                   $    $       $    $  ANS001.BYTE004  $  y=HEX(x1,x2,x3,x4,x5,x6,x7);
  $  002.���                   $    $       $    $  ANS002.BYTE004  $  y=x*65536+x2*256+x3;
  $  003.�ٶ�                   $    $       $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.01;
  $  004.���״̬,IG OFF        $    $       $    $  ANS004.BYTE004  $  switxh(x&0x01) 0x01:y=@0048;default: y=@0010;
  $  005.ACC״̬                $    $       $    $  ANS004.BYTE004  $  switxh(x&0x02) 0x02:y=@0048;default: y=@0010;
  $  006.IG ON                  $    $       $    $  ANS004.BYTE004  $  switxh(x&0x04) 0x04:y=@0048;default: y=@0010;
  $  007.����                   $    $       $    $  ANS004.BYTE004  $  switxh(x&0x08) 0x08:y=@0048;default: y=@0010;
  $  008.Զ��IG ON              $    $       $    $  ANS004.BYTE004  $  switxh(x&0x10) 0x10:y=@0048;default: y=@0010;
  $  009.Զ������               $    $       $    $  ANS004.BYTE004  $  switxh(x&0x20) 0x20:y=@0048;default: y=@0010;
  $  010.GPSģ��״̬            $    $       $    $  ANS005.BYTE004  $  switxh(x) 0x00:y=@0190;default: y=@0152;
  $  011.GPS��λ״̬            $    $       $    $  ANS006.BYTE004  $  switxh(x) 0x00:y=@0245;default: y=@0246;
  $  012.�洢��״̬             $    $       $    $  ANS007.BYTE004  $  switxh(x) 0x10:y=@0247;0x11:y=@0248;0x21:y=@0249;0x22:y=@0250;0x23:y=@0251;0xff:y=@0252;default: y=-;
  $  013.4G���߿���·״̬       $    $       $    $  ANS008.BYTE004  $  switxh(x) 0x01:y=@0241;0x02:y=@0242;0x03:y=@0190;default: y=-;
  $  014.ƽ̨����״̬           $    $       $    $  ANS009.BYTE004  $  switxh(x) 0x00:y=@0243;default: y=@0244;
  $  015.4G�����ź�ǿ��         $    $       $    $  ANS010.BYTE004  $  y=x;
  $  016.4G�����ź�ǿ��         $    $       $    $  ANS011.BYTE004  $  switxh(x) 0x00:y=@0235;0x02:y=@0236;0x03:y=@0237;default: y=-;
  $  017.4G�����ź�ǿ��         $    $       $    $  ANS012.BYTE004  $  switxh(x) 0x00:y=@0238;0x02:y=@0239;0x03:y=@0240;default: y=-;
  $  018.ESK                    $    $       $    $  ANS013.BYTE004  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  019.PKI֤������״̬        $    $       $    $  ANS014.BYTE004  $  switxh(x&0x01) 0x00:y=@0007;default: y=@0268;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:7A0 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
