
    ����ID��5862

    ģ�⣺Э��ģ��-->5862

;******************************************************************************************************************************************************

    ͨѶ��: $~01$~09$~500k$~717

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

  $#  REQ000:707 03 19 02 29 FF FF FF FF       $#  ANS000:717 03 19 02 29 FF FF FF FF

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/9c000000


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
  $%  REQ010:707 03 22 F1 98 FF FF FF FF       $%  ANS010:717 03 22 F1 98 FF FF FF FF
  $%  REQ011:707 03 22 F1 99 FF FF FF FF       $%  ANS011:717 03 22 F1 99 FF FF FF FF
  $%  REQ012:707 03 22 F1 BF FF FF FF FF       $%  ANS012:717 03 22 F1 BF FF FF FF FF
  $%  REQ013:707 03 22 F1 C0 FF FF FF FF       $%  ANS013:717 03 22 F1 C0 FF FF FF FF
  $%  REQ014:707 03 22 F1 9D FF FF FF FF       $%  ANS014:717 03 22 F1 9D FF FF FF FF
  $%  REQ015:707 03 22 F2 00 FF FF FF FF       $%  ANS015:717 03 22 F2 00 FF FF FF FF
  $%  REQ016:707 03 22 F1 D0 FF FF FF FF       $%  ANS016:717 03 22 F1 D0 FF FF FF FF

  $%  000:Bootloader����汾��:                    $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:��ǰ�������ģʽ:                        $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:�����㲿����:                            $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:Ӧ������汾�ţ����������汾��:          $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:Ӧ������汾�ţ��̶��汾��:              $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ϵͳ��Ӧ�̴���:                          $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  006:ECU��������:                             $%    $%  ANS006.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  007:���������к�:                            $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  008:����VIN:                                 $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:Ӳ���汾��:                              $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  010:TesterSerialNumberDataIdentifier:        $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:ˢ������:                                $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  012:Ӧ��Ӳ���汾�ţ��̶��汾��:              $%    $%  ANS012.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  013:����ܳɰ汾��:                          $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  014:ECUװ������:                             $%    $%  ANS014.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  015:�������:                                $%    $%  ANS015.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  016:�������ܳɺ�:                          $%    $%  ANS016.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);

;******************************************************************************************************************************************************

��������: 

  $  REQ000:707 03 22 08 01 FF FF FF FF       $  ANS000:717 03 22 08 01 FF FF FF FF
  $  REQ001:707 03 22 08 02 FF FF FF FF       $  ANS001:717 03 22 08 02 FF FF FF FF
  $  REQ002:707 03 22 08 03 FF FF FF FF       $  ANS002:717 03 22 08 03 FF FF FF FF
  $  REQ003:707 03 22 08 04 FF FF FF FF       $  ANS003:717 03 22 08 04 FF FF FF FF
  $  REQ004:707 03 22 08 05 FF FF FF FF       $  ANS004:717 03 22 08 05 FF FF FF FF
  $  REQ005:707 03 22 08 06 FF FF FF FF       $  ANS005:717 03 22 08 06 FF FF FF FF
  $  REQ006:707 03 22 08 07 FF FF FF FF       $  ANS006:717 03 22 08 07 FF FF FF FF
  $  REQ007:707 03 22 08 08 FF FF FF FF       $  ANS007:717 03 22 08 08 FF FF FF FF
  $  REQ008:707 03 22 08 09 FF FF FF FF       $  ANS008:717 03 22 08 09 FF FF FF FF
  $  REQ009:707 03 22 08 0A FF FF FF FF       $  ANS009:717 03 22 08 0A FF FF FF FF
  $  REQ010:707 03 22 08 0B FF FF FF FF       $  ANS010:717 03 22 08 0B FF FF FF FF
  $  REQ011:707 03 22 08 10 FF FF FF FF       $  ANS011:717 03 22 08 10 FF FF FF FF
  $  REQ012:707 03 22 08 11 FF FF FF FF       $  ANS012:717 03 22 08 11 FF FF FF FF
  $  REQ013:707 03 22 08 12 FF FF FF FF       $  ANS013:717 03 22 08 12 FF FF FF FF
  $  REQ014:707 03 22 08 16 FF FF FF FF       $  ANS014:717 03 22 08 16 FF FF FF FF
  $  REQ015:707 03 22 08 17 FF FF FF FF       $  ANS015:717 03 22 08 17 FF FF FF FF
  $  REQ016:707 03 22 08 19 FF FF FF FF       $  ANS016:717 03 22 08 19 FF FF FF FF
  $  REQ017:707 03 22 08 1D FF FF FF FF       $  ANS017:717 03 22 08 1D FF FF FF FF
  $  REQ018:707 03 22 08 2A FF FF FF FF       $  ANS018:717 03 22 08 2A FF FF FF FF
  $  REQ019:707 03 22 08 2B FF FF FF FF       $  ANS019:717 03 22 08 2B FF FF FF FF
  $  REQ020:707 03 22 08 2C FF FF FF FF       $  ANS020:717 03 22 08 2C FF FF FF FF
  $  REQ021:707 03 22 08 2D FF FF FF FF       $  ANS021:717 03 22 08 2D FF FF FF FF
  $  REQ022:707 03 22 08 2E FF FF FF FF       $  ANS022:717 03 22 08 2E FF FF FF FF

  $  000.MCUʹ������                                     $    $               $    $  ANS000.BYTE004  $  switxh(x) 0x00:y=@0112;0x01:y=@0101;default: y=@0007;
  $  001.Ŀ�깤��ģʽ                                    $    $               $    $  ANS001.BYTE004  $  switxh(x) 0x00:y=@0113;0x01:y=@0042;0x02:y=@0114;0x03:y=@0115;0x0a:y=@0204;0x0b:y=@0205;0x12:y=@0206;0x1a:y=@0207;default: y=@0007;
  $  002.Ŀ��ת������                                    $    $  Nm           $    $  ANS002.BYTE004  $  y=x1*256+x2-500;
  $  003.Ŀ��ת������                                    $    $  r/min        $    $  ANS003.BYTE004  $  y=x1*256+x2-12000;
  $  004.��λ�ź�                                        $    $               $    $  ANS004.BYTE004  $  switxh(x) 0x00:y=@0113;0x01:y=@0042;0x02:y=@0114;0x03:y=@0115;0x0a:y=@0204;0x0b:y=@0205;0x12:y=@0206;0x1a:y=@0207;default: y=@0007;
  $  005.�����ŵ�����                                    $    $               $    $  ANS005.BYTE004  $  switxh(x) 0x00:y=@0008;0x01:y=@0009;default: y=@0007;
  $  006.����������                                      $    $               $    $  ANS006.BYTE004  $  switxh(x) 0x00:y=@0100;0x01:y=@0101;default: y=@0007;
  $  007.ʵ�ʹ���ģʽ                                    $    $               $    $  ANS007.BYTE004  $  switxh(x) 0x00:y=@0113;0x01:y=@0042;0x02:y=@0114;0x03:y=@0115;0x0a:y=@0204;0x0b:y=@0205;0x12:y=@0206;0x1a:y=@0207;default: y=@0007;
  $  008.ʵ�ʷ���ת��                                    $    $  Nm           $    $  ANS008.BYTE004  $  y=x1*256+x2-500;
  $  009.ʵ�ʷ���ת��                                    $    $  r/min        $    $  ANS009.BYTE004  $  y=x1*256+x2-12000;
  $  010.�����ʼƫ��λ��                                $    $  degree       $    $  ANS010.BYTE004  $  y=(x1*256+x2)*0.1-360;
  $  011.���������Чֵ                                  $    $  A            $    $  ANS011.BYTE004  $  y=(x1*256+x2)*0.125-1000;
  $  012.����������ת��                                $    $  Nm           $    $  ANS012.BYTE004  $  y=x1*256+x2-500;
  $  013.ֱ��ĸ�ߵ�ѹ                                    $    $  V            $    $  ANS013.BYTE004  $  y=x1*256+x2-500;
  $  014.IGBT�¶�                                        $    $  degree C     $    $  ANS014.BYTE004  $  y=x-40;
  $  015.����¶�                                        $    $  degree C     $    $  ANS015.BYTE004  $  y=x-40;
  $  016.Կ���ź�                                        $    $               $    $  ANS016.BYTE004  $  switxh(x) 0x00:y=OFF;0x01:y=KEY_ON;default: y=@0007;
  $  017.12���ص�ѹ                                    $    $  V            $    $  ANS017.BYTE004  $  y=x1*256+x2-12;
  $  018.MCU�ܹ��ϱ���0-DRV                              $    $               $    $  ANS018.BYTE004  $  switxh(x&0x02) 0x02:y=1;default: y=0;
  $  019.MCU�ܹ��ϱ���0-�������                         $    $               $    $  ANS018.BYTE004  $  switxh(x&0x04) 0x04:y=1;default: y=0;
  $  020.MCU�ܹ��ϱ���0-Ӳ������                         $    $               $    $  ANS018.BYTE004  $  switxh(x&0x08) 0x08:y=1;default: y=0;
  $  021.MCU�ܹ��ϱ���0-12V��ѹ                          $    $               $    $  ANS018.BYTE004  $  switxh(x&0x20) 0x20:y=1;default: y=0;
  $  022.MCU�ܹ��ϱ���0-12VǷѹ                          $    $               $    $  ANS018.BYTE004  $  switxh(x&0x40) 0x40:y=1;default: y=0;
  $  023.MCU�ܹ��ϱ���0-U���������                      $    $               $    $  ANS018.BYTE004  $  switxh(x&0x80) 0x80:y=1;default: y=0;
  $  024.MCU�ܹ��ϱ���0-V���������                      $    $               $    $  ANS018.BYTE005  $  switxh(x&0x01) 0x01:y=1;default: y=0;
  $  025.MCU�ܹ��ϱ���0-W���������                      $    $               $    $  ANS018.BYTE005  $  switxh(x&0x02) 0x02:y=1;default: y=0;
  $  026.MCU�ܹ��ϱ���0-EEPROM����                       $    $               $    $  ANS018.BYTE005  $  switxh(x&0x04) 0x04:y=1;default: y=0;
  $  027.MCU�ܹ��ϱ���0-ĸ�߹�ѹ                         $    $               $    $  ANS018.BYTE005  $  switxh(x&0x08) 0x08:y=1;default: y=0;
  $  028.MCU�ܹ��ϱ���0-ĸ��Ƿѹ                         $    $               $    $  ANS018.BYTE005  $  switxh(x&0x10) 0x10:y=1;default: y=0;
  $  029.MCU�ܹ��ϱ���0-MCU����                          $    $               $    $  ANS018.BYTE005  $  switxh(x&0x20) 0x20:y=1;default: y=0;
  $  030.MCU�ܹ��ϱ���0-PG����                           $    $               $    $  ANS018.BYTE005  $  switxh(x&0x40) 0x40:y=1;default: y=0;
  $  031.MCU�ܹ��ϱ���0-����ת�غ��趨ת��У�����       $    $               $    $  ANS018.BYTE005  $  switxh(x&0x80) 0x80:y=1;default: y=0;
  $  032.MCU�ܹ��ϱ���1-���̽���ͣ������                 $    $               $    $  ANS019.BYTE004  $  switxh(x&0x01) 0x01:y=1;default: y=0;
  $  033.MCU�ܹ��ϱ���1-�Ƕȱ�ʶ����                     $    $               $    $  ANS019.BYTE004  $  switxh(x&0x02) 0x02:y=1;default: y=0;
  $  034.MCU�ܹ��ϱ���1-�������ô���                     $    $               $    $  ANS019.BYTE004  $  switxh(x&0x04) 0x04:y=1;default: y=0;
  $  035.MCU�ܹ��ϱ���1-U��IGBT�¶ȹ���                  $    $               $    $  ANS020.BYTE004  $  switxh(x&0x02) 0x02:y=1;default: y=0;
  $  036.MCU�ܹ��ϱ���1-V��IGBT�¶ȹ���                  $    $               $    $  ANS020.BYTE004  $  switxh(x&0x04) 0x04:y=1;default: y=0;
  $  037.MCU�ܹ��ϱ���1-W��IGBT�¶ȹ���                  $    $               $    $  ANS020.BYTE004  $  switxh(x&0x08) 0x08:y=1;default: y=0;
  $  038.MCU�ܹ��ϱ���1-��VCUͨѶ��ʱ                    $    $               $    $  ANS020.BYTE004  $  switxh(x&0x10) 0x10:y=1;default: y=0;
  $  039.MCU�ܹ��ϱ���1-VCU����ת�س���                  $    $               $    $  ANS020.BYTE004  $  switxh(x&0x20) 0x20:y=1;default: y=0;
  $  040.MCU�ܹ��ϱ���1-����                             $    $               $    $  ANS020.BYTE004  $  switxh(x&0x40) 0x40:y=1;default: y=0;
  $  041.MCU�ܹ��ϱ���1-�������                         $    $               $    $  ANS020.BYTE004  $  switxh(x&0x80) 0x80:y=1;default: y=0;
  $  042.MCU�ܹ��ϱ���2-IGBT��U���¶ȴ���������          $    $               $    $  ANS021.BYTE004  $  switxh(x&0x02) 0x02:y=1;default: y=0;
  $  043.MCU�ܹ��ϱ���2-IGBT��V���¶ȴ���������          $    $               $    $  ANS021.BYTE004  $  switxh(x&0x04) 0x04:y=1;default: y=0;
  $  044.MCU�ܹ��ϱ���2-IGBT��W���¶ȴ���������          $    $               $    $  ANS021.BYTE004  $  switxh(x&0x08) 0x08:y=1;default: y=0;
  $  045.MCU�ܹ��ϱ���2-����¶ȴ���������               $    $               $    $  ANS021.BYTE004  $  switxh(x&0x10) 0x10:y=1;default: y=0;
  $  046.MCU�ܹ��ϱ���2-EEPROM����                       $    $               $    $  ANS021.BYTE004  $  switxh(x&0x40) 0x40:y=1;default: y=0;
  $  047.���µ�״̬                                      $    $               $    $  ANS022.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:707 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
