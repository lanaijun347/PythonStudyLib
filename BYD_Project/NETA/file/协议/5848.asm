
    ����ID��5848

    ģ�⣺Э��ģ��-->5848

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~732

��������:

  $~  REQ000:722 02 10 03 FF FF FF FF FF       $~  ANS000:732 02 10 03 FF FF FF FF FF
  $~  REQ001:722 02 27 03 FF FF FF FF FF       $~  ANS001:732 02 27 03 FF FF FF FF FF
  $~  REQ002:722 04 27 04 1E B0 FF FF FF       $~  ANS002:732 04 27 04 1E B0 FF FF FF

��������:

  $!  REQ000:722 02 3E 00 FF FF FF FF FF       $!  ANS000:732 02 3E 00 FF FF FF FF FF

�˳�����:

  $@  REQ000:722 02 10 01 FF FF FF FF FF       $@  ANS000:732 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:722 03 19 02 09 FF FF FF FF       $#  ANS000:732 03 19 02 09 FF FF FF FF

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/84000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:722 04 14 FF FF FF FF FF FF       $$  ANS000:732 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:722 03 22 F1 90 FF FF FF FF       $%  ANS000:732 03 22 F1 90 FF FF FF FF
  $%  REQ001:722 03 22 F1 87 FF FF FF FF       $%  ANS001:732 03 22 F1 87 FF FF FF FF
  $%  REQ002:722 03 22 F1 86 FF FF FF FF       $%  ANS002:732 03 22 F1 86 FF FF FF FF
  $%  REQ003:722 03 22 F1 A2 FF FF FF FF       $%  ANS003:732 03 22 F1 A2 FF FF FF FF
  $%  REQ004:722 03 22 F1 8A FF FF FF FF       $%  ANS004:732 03 22 F1 8A FF FF FF FF
  $%  REQ005:722 03 22 F1 8B FF FF FF FF       $%  ANS005:732 03 22 F1 8B FF FF FF FF
  $%  REQ006:722 03 22 F1 9D FF FF FF FF       $%  ANS006:732 03 22 F1 9D FF FF FF FF
  $%  REQ007:722 03 22 F1 8C FF FF FF FF       $%  ANS007:732 03 22 F1 8C FF FF FF FF
  $%  REQ008:722 03 22 F1 91 FF FF FF FF       $%  ANS008:732 03 22 F1 91 FF FF FF FF
  $%  REQ009:722 03 22 F1 88 FF FF FF FF       $%  ANS009:732 03 22 F1 88 FF FF FF FF
  $%  REQ010:722 03 22 F1 99 FF FF FF FF       $%  ANS010:732 03 22 F1 99 FF FF FF FF
  $%  REQ011:722 03 22 F1 98 FF FF FF FF       $%  ANS011:732 03 22 F1 98 FF FF FF FF
  $%  REQ012:722 03 22 F1 B0 FF FF FF FF       $%  ANS012:732 03 22 F1 B0 FF FF FF FF
  $%  REQ013:722 03 22 F1 80 FF FF FF FF       $%  ANS013:732 03 22 F1 80 FF FF FF FF
  $%  REQ014:722 03 22 F1 BF FF FF FF FF       $%  ANS014:732 03 22 F1 BF FF FF FF FF
  $%  REQ015:722 03 22 F1 C0 FF FF FF FF       $%  ANS015:732 03 22 F1 C0 FF FF FF FF

  $%  000:����VIN:                           $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:�����㲿����:                      $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  002:��ǰ�������ģʽ:                  $%    $%  ANS002.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  003:ECU�궨�����:                     $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:ϵͳ��Ӧ�̴���:                    $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  005:ECU��������:                       $%    $%  ANS005.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  006:ECUװ������:                       $%    $%  ANS006.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  007:���������к�:                      $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  008:Ӳ���汾��:                        $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  009:����汾�ţ����������汾��:        $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  010:ˢ������:                          $%    $%  ANS010.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  011:ά�޵���������豸���к�:        $%    $%  ANS011.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  012:����汾�ţ��̶��汾��:            $%    $%  ANS012.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  013:Bootloader����汾��:              $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  014:Ӳ���汾�ţ��̶��汾��:            $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  015:����ܳɰ汾:                      $%    $%  ANS015.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

��������: 

  $  REQ000:722 03 22 01 12 FF FF FF FF       $  ANS000:732 03 22 01 12 FF FF FF FF
  $  REQ001:722 03 22 E1 01 FF FF FF FF       $  ANS001:732 03 22 E1 01 FF FF FF FF
  $  REQ002:722 03 22 01 0C FF FF FF FF       $  ANS002:732 03 22 01 0C FF FF FF FF
  $  REQ003:722 03 22 D0 01 FF FF FF FF       $  ANS003:732 03 22 D0 01 FF FF FF FF
  $  REQ004:722 03 22 01 0B FF FF FF FF       $  ANS004:732 03 22 01 0B FF FF FF FF
  $  REQ005:722 03 22 20 01 FF FF FF FF       $  ANS005:732 03 22 20 01 FF FF FF FF
  $  REQ006:722 03 22 20 02 FF FF FF FF       $  ANS006:732 03 22 20 02 FF FF FF FF
  $  REQ007:722 03 22 20 03 FF FF FF FF       $  ANS007:732 03 22 20 03 FF FF FF FF
  $  REQ008:722 03 22 20 04 FF FF FF FF       $  ANS008:732 03 22 20 04 FF FF FF FF
  $  REQ009:722 03 22 20 05 FF FF FF FF       $  ANS009:732 03 22 20 05 FF FF FF FF
  $  REQ010:722 03 22 20 06 FF FF FF FF       $  ANS010:732 03 22 20 06 FF FF FF FF
  $  REQ011:722 03 22 20 07 FF FF FF FF       $  ANS011:732 03 22 20 07 FF FF FF FF
  $  REQ012:722 03 22 20 0B FF FF FF FF       $  ANS012:732 03 22 20 0B FF FF FF FF
  $  REQ013:722 03 22 20 0C FF FF FF FF       $  ANS013:732 03 22 20 0C FF FF FF FF
  $  REQ014:722 03 22 20 0F FF FF FF FF       $  ANS014:732 03 22 20 0F FF FF FF FF
  $  REQ015:722 03 22 20 10 FF FF FF FF       $  ANS015:732 03 22 20 10 FF FF FF FF
  $  REQ016:722 03 22 20 12 FF FF FF FF       $  ANS016:732 03 22 20 12 FF FF FF FF
  $  REQ017:722 03 22 20 13 FF FF FF FF       $  ANS017:732 03 22 20 13 FF FF FF FF
  $  REQ018:722 03 22 20 08 FF FF FF FF       $  ANS018:732 03 22 20 08 FF FF FF FF

  $  000.�����ѹ                              $    $  V          $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.�������                              $    $  km         $    $  ANS001.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  002.��ȴҺ�¶�                            $    $  ���϶�     $    $  ANS002.BYTE004  $  y=x-40;
  $  003.Global KL.50 status                   $    $             $    $  ANS003.BYTE004  $  switxh(x&0x80) 0x80:y=1;default: y=0;
  $  004.����������״̬                        $    $             $    $  ANS003.BYTE004  $  switxh(x&0x40) 0x40:y=1;default: y=0;
  $  005.Global KL.15 status                   $    $             $    $  ANS003.BYTE004  $  switxh(x&0x20) 0x20:y=1;default: y=0;
  $  006.Global KL.R status                    $    $             $    $  ANS003.BYTE004  $  switxh(x&0x10) 0x10:y=1;default: y=0;
  $  007.System KL.50 status                   $    $             $    $  ANS003.BYTE004  $  switxh(x&0x08) 0x08:y=1;default: y=0;
  $  008.System engine run active status       $    $             $    $  ANS003.BYTE004  $  switxh(x&0x04) 0x04:y=1;default: y=0;
  $  009.System KL.15 status                   $    $             $    $  ANS003.BYTE004  $  switxh(x&0x02) 0x02:y=1;default: y=0;
  $  010.System KL.R status                    $    $             $    $  ANS003.BYTE004  $  switxh(x&0x01) 0x01:y=1;default: y=0;
  $  011.������                                $    $  year       $    $  ANS004.BYTE004  $  y=x+2000;
  $  012.����                                  $    $             $    $  ANS004.BYTE005  $  switxh(x) 0x01:y=January;0x02:y=February;0x03:y=March;0x04:y=April;0x05:y=May;0x06:y=June;0x07:y=July;0x08:y=August;0x09:y=September;0x0A:y=October;0x0B:y=November;0x0C:y=December;default: y=Unknown;
  $  013.����                                  $    $  d          $    $  ANS004.BYTE006  $  y=x;
  $  014.Сʱ                                  $    $  h          $    $  ANS004.BYTE007  $  y=x;
  $  015.����                                  $    $  min        $    $  ANS004.BYTE008  $  y=x;
  $  016.��                                    $    $  s          $    $  ANS004.BYTE009  $  y=x;
  $  017.Motor����ģʽ                         $    $             $    $  ANS005.BYTE004  $  y=x;
  $  018.Plunger����ģʽ                       $    $             $    $  ANS006.BYTE004  $  y=x;
  $  019.Ŀ�����ģʽ                          $    $             $    $  ANS007.BYTE004  $  y=x;
  $  020.������λѧϰ״̬                      $    $             $    $  ANS008.BYTE004  $  y=x;
  $  021.ϵͳ״̬                              $    $             $    $  ANS009.BYTE004  $  y=x;
  $  022.normal����ģʽ                        $    $             $    $  ANS010.BYTE004  $  y=x;
  $  023.���ʵ��Q�����                       $    $  A          $    $  ANS011.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/64;
  $  024.�ƶ�̤��λ�ƴ�����A·λ��             $    $  mm         $    $  ANS012.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/128;
  $  025.�ƶ�̤��λ�ƴ�����B·λ��             $    $  mm         $    $  ANS013.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/128;
  $  026.ʵ��ģ�鹩���ѹ                      $    $  V          $    $  ANS014.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/256;
  $  027.�����׶�                              $    $             $    $  ANS015.BYTE004  $  y=x;
  $  028.�¶ȶ�ȡ                              $    $  ���϶�     $    $  ANS016.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/64;
  $  029.EOL���ϱ�־                           $    $             $    $  ANS017.BYTE004  $  switxh(x&0x01) 0x01:y=@0065;default: y=@0066;
  $  030.ʵ�ʳ����г�                          $    $  mm         $    $  ANS018.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/512;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:722 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
