
    ����ID��583c

    ģ�⣺Э��ģ��-->583c

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~756

��������:

  $~  REQ000:746 02 10 03 FF FF FF FF FF       $~  ANS000:756 02 10 03 FF FF FF FF FF
  $~  REQ001:746 02 27 03 FF FF FF FF FF       $~  ANS001:756 02 27 03 FF FF FF FF FF
  $~  REQ002:746 04 27 04 1E B0 FF FF FF       $~  ANS002:756 04 27 04 1E B0 FF FF FF

��������:

  $!  REQ000:746 02 3E 00 FF FF FF FF FF       $!  ANS000:756 02 3E 00 FF FF FF FF FF

�˳�����:

  $@  REQ000:746 02 10 01 FF FF FF FF FF       $@  ANS000:756 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:746 03 19 02 09 FF FF FF FF       $#  ANS000:756 03 19 02 09 FF FF FF FF

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/7a000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:746 04 14 FF FF FF FF FF FF       $$  ANS000:756 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:746 03 22 F1 87 FF FF FF FF       $%  ANS000:756 03 22 F1 87 FF FF FF FF
  $%  REQ001:746 03 22 F1 8A FF FF FF FF       $%  ANS001:756 03 22 F1 8A FF FF FF FF
  $%  REQ002:746 03 22 F1 8B FF FF FF FF       $%  ANS002:756 03 22 F1 8B FF FF FF FF
  $%  REQ003:746 03 22 F1 8C FF FF FF FF       $%  ANS003:756 03 22 F1 8C FF FF FF FF
  $%  REQ004:746 03 22 F1 90 FF FF FF FF       $%  ANS004:756 03 22 F1 90 FF FF FF FF
  $%  REQ005:746 03 22 F1 93 FF FF FF FF       $%  ANS005:756 03 22 F1 93 FF FF FF FF
  $%  REQ006:746 03 22 F1 95 FF FF FF FF       $%  ANS006:756 03 22 F1 95 FF FF FF FF
  $%  REQ007:746 03 22 F1 97 FF FF FF FF       $%  ANS007:756 03 22 F1 97 FF FF FF FF
  $%  REQ008:746 03 22 F1 9D FF FF FF FF       $%  ANS008:756 03 22 F1 9D FF FF FF FF

  $%  000:�����㲿����:                   $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:ϵͳ��Ӧ�̴���:                 $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  002:ECU��������:                    $%    $%  ANS002.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  003:���������к�:                   $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4);
  $%  004:����VIN:                        $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:Ӳ���汾:                       $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  006:����汾:                       $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  007:ϵͳ����:                       $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  008:�������һ��ABM��������:        $%    $%  ANS008.BYTE004  $%  y=HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

��������: 

  $  REQ000:746 03 22 02 00 FF FF FF FF       $  ANS000:756 03 22 02 00 FF FF FF FF

  $  000.Cout Option                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x01) 0x01:y=@0226;default: y=@0227;
  $  001.Cout Type                     $    $       $    $  ANS000.BYTE004  $  switxh(x&0x02) 0x02:y=PWM;default: y=@0232;
  $  002.SBSO Option                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x04) 0x04:y=@0226;default: y=@0227;
  $  003.WL Blink Type                 $    $       $    $  ANS000.BYTE004  $  switxh(x&0x08) 0x08:y=@0230;default: y=@0231;
  $  004.PADS Option                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x10) 0x10:y=@0226;default: y=@0227;
  $  005.PADS Type                     $    $       $    $  ANS000.BYTE004  $  switxh(x&0x20) 0x20:y=@0228;default: y=@0229;
  $  006.RDSAB Option                  $    $       $    $  ANS000.BYTE005  $  switxh(x&0x01) 0x01:y=@0226;default: y=@0227;
  $  007.RPSAB Option                  $    $       $    $  ANS000.BYTE005  $  switxh(x&0x02) 0x02:y=@0226;default: y=@0227;
  $  008.DAB Option                    $    $       $    $  ANS000.BYTE005  $  switxh(x&0x01) 0x01:y=@0226;default: y=@0227;
  $  009.PAB Option                    $    $       $    $  ANS000.BYTE005  $  switxh(x&0x02) 0x02:y=@0226;default: y=@0227;
  $  010.DBPT Option                   $    $       $    $  ANS000.BYTE005  $  switxh(x&0x04) 0x04:y=@0226;default: y=@0227;
  $  011.PBPT Option                   $    $       $    $  ANS000.BYTE005  $  switxh(x&0x08) 0x08:y=@0226;default: y=@0227;
  $  012.DSAB Option                   $    $       $    $  ANS000.BYTE005  $  switxh(x&0x10) 0x10:y=@0226;default: y=@0227;
  $  013.PSAB Option                   $    $       $    $  ANS000.BYTE005  $  switxh(x&0x20) 0x20:y=@0226;default: y=@0227;
  $  014.DCAB Option                   $    $       $    $  ANS000.BYTE005  $  switxh(x&0x40) 0x40:y=@0226;default: y=@0227;
  $  015.PCAB Option                   $    $       $    $  ANS000.BYTE005  $  switxh(x&0x80) 0x80:y=@0226;default: y=@0227;
  $  016.WL Option                     $    $       $    $  ANS000.BYTE005  $  switxh(x&0x01) 0x01:y=@0226;default: y=@0227;
  $  017.PADI Option                   $    $       $    $  ANS000.BYTE005  $  switxh(x&0x02) 0x02:y=@0226;default: y=@0227;
  $  018.WL Type                       $    $       $    $  ANS000.BYTE005  $  switxh(x&0x04) 0x04:y=LED;default: y=Lamp;
  $  019.PADI Type                     $    $       $    $  ANS000.BYTE005  $  switxh(x&0x08) 0x08:y=LED;default: y=Lamp;
  $  020.DSB Option                    $    $       $    $  ANS000.BYTE005  $  switxh(x&0x01) 0x01:y=@0226;default: y=@0227;
  $  021.PSB Option                    $    $       $    $  ANS000.BYTE005  $  switxh(x&0x02) 0x02:y=@0226;default: y=@0227;
  $  022.DSB Type                      $    $       $    $  ANS000.BYTE005  $  switxh(x&0x04) 0x04:y=@0226;default: y=@0227;
  $  023.PSB Type                      $    $       $    $  ANS000.BYTE005  $  switxh(x&0x08) 0x08:y=@0226;default: y=@0227;
  $  024.��ʻԱSIS                     $    $       $    $  ANS000.BYTE005  $  switxh(x&0x01) 0x01:y=@0226;default: y=@0227;
  $  025.�˿�SIS                       $    $       $    $  ANS000.BYTE005  $  switxh(x&0x02) 0x02:y=@0226;default: y=@0227;
  $  026.Driver Rear SIS Type          $    $       $    $  ANS000.BYTE005  $  switxh(x&0x04) 0x04:y=@0226;default: y=@0227;
  $  027.Passenger Rear SIS Type       $    $       $    $  ANS000.BYTE005  $  switxh(x&0x08) 0x08:y=@0226;default: y=@0227;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:746 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
