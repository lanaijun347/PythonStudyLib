
    ����ID��5868

    ģ�⣺Э��ģ��-->5868

;******************************************************************************************************************************************************

    ͨѶ��: $~03$~11$~500k$~730

��������:

  $~  REQ000:720 02 10 03 FF FF FF FF FF       $~  ANS000:730 02 10 03 FF FF FF FF FF
  $~  REQ001:720 02 27 03 FF FF FF FF FF       $~  ANS001:730 02 27 03 FF FF FF FF FF
  $~  REQ002:720 04 27 04 1E B0 FF FF FF       $~  ANS002:730 04 27 04 1E B0 FF FF FF

��������:

  $!  REQ000:720 02 3E 00 FF FF FF FF FF       $!  ANS000:730 02 3E 00 FF FF FF FF FF

�˳�����:

  $@  REQ000:720 02 10 01 FF FF FF FF FF       $@  ANS000:730 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:720 03 19 02 09 FF FF FF FF       $#  ANS000:730 03 19 02 09 FF FF FF FF

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/a2000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:720 04 14 FF FF FF FF FF FF       $$  ANS000:730 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:720 03 22 F1 80 FF FF FF FF       $%  ANS000:730 03 22 F1 80 FF FF FF FF
  $%  REQ001:720 03 22 F1 86 FF FF FF FF       $%  ANS001:730 03 22 F1 86 FF FF FF FF
  $%  REQ002:720 03 22 F1 87 FF FF FF FF       $%  ANS002:730 03 22 F1 87 FF FF FF FF
  $%  REQ003:720 03 22 F1 88 FF FF FF FF       $%  ANS003:730 03 22 F1 88 FF FF FF FF
  $%  REQ004:720 03 22 F1 B0 FF FF FF FF       $%  ANS004:730 03 22 F1 B0 FF FF FF FF
  $%  REQ005:720 03 22 F1 8A FF FF FF FF       $%  ANS005:730 03 22 F1 8A FF FF FF FF
  $%  REQ006:720 03 22 F1 90 FF FF FF FF       $%  ANS006:730 03 22 F1 90 FF FF FF FF
  $%  REQ007:720 03 22 F1 91 FF FF FF FF       $%  ANS007:730 03 22 F1 91 FF FF FF FF
  $%  REQ008:720 03 22 F1 98 FF FF FF FF       $%  ANS008:730 03 22 F1 98 FF FF FF FF
  $%  REQ009:720 03 22 F1 99 FF FF FF FF       $%  ANS009:730 03 22 F1 99 FF FF FF FF
  $%  REQ010:720 03 22 F1 BF FF FF FF FF       $%  ANS010:730 03 22 F1 BF FF FF FF FF
  $%  REQ011:720 03 22 F1 C0 FF FF FF FF       $%  ANS011:730 03 22 F1 C0 FF FF FF FF
  $%  REQ012:720 03 22 F1 9D FF FF FF FF       $%  ANS012:730 03 22 F1 9D FF FF FF FF
  $%  REQ013:720 03 22 F1 D0 FF FF FF FF       $%  ANS013:730 03 22 F1 D0 FF FF FF FF

  $%  000:Bootloader����汾��:                  $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:��ǰ�������ģʽ:                      $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:�����㲿����:                          $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:Ӧ������汾�ţ����������汾��:        $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:Ӧ������汾�ţ��̶��汾��:            $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ϵͳ��Ӧ�̴���:                        $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  006:����VIN:                               $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:Ӳ���汾��:                            $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  008:����豸���к�:                        $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:ˢ������:                              $%    $%  ANS009.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  010:Ӧ��Ӳ���汾�ţ��̶��汾��:            $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  011:����ܳɰ汾��:                        $%    $%  ANS011.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  012:ECUװ������:                           $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  013:����ܳ������:                        $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);

;******************************************************************************************************************************************************

��������: 

  $  REQ000:720 03 22 40 00 FF FF FF FF       $  ANS000:730 03 22 40 00 FF FF FF FF
  $  REQ001:720 03 22 40 01 FF FF FF FF       $  ANS001:730 03 22 40 01 FF FF FF FF
  $  REQ002:720 03 22 40 02 FF FF FF FF       $  ANS002:730 03 22 40 02 FF FF FF FF
  $  REQ003:720 03 22 40 03 FF FF FF FF       $  ANS003:730 03 22 40 03 FF FF FF FF
  $  REQ004:720 03 22 40 04 FF FF FF FF       $  ANS004:730 03 22 40 04 FF FF FF FF
  $  REQ005:720 03 22 40 05 FF FF FF FF       $  ANS005:730 03 22 40 05 FF FF FF FF
  $  REQ006:720 03 22 40 06 FF FF FF FF       $  ANS006:730 03 22 40 06 FF FF FF FF
  $  REQ007:720 03 22 40 09 FF FF FF FF       $  ANS007:730 03 22 40 09 FF FF FF FF
  $  REQ008:720 03 22 40 0A FF FF FF FF       $  ANS008:730 03 22 40 0A FF FF FF FF

  $  000.��ǰ����ֵ                                      $    $  km/h         $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.01;
  $  001.��ǰ����ֵ                                      $    $  km/h         $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.01;
  $  002.�������ֵ                                      $    $  km/h         $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.01;
  $  003.�Һ�����ֵ                                      $    $  km/h         $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.01;
  $  004.����ֵ                                          $    $  km/h         $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.01;
  $  005.��ǰ��ѹ                                        $    $  V            $    $  ANS005.BYTE004  $  y=x*0.1;
  $  006.�ƶ��ź�״̬                                    $    $               $    $  ANS006.BYTE004  $  switxh(x) 0x00:y=@0021;default: y=@0022;
  $  007.Odometer value when last reset                  $    $  km           $    $  ANS007.BYTE004  $  y=(x1*256+x2)*256+x3;
  $  008.Odometer value when last second reset           $    $  km           $    $  ANS007.BYTE007  $  y=(x1*256+x2)*256+x3;
  $  009.Odometer value when last third reset            $    $  km           $    $  ANS007.BYTE010  $  y=(x1*256+x2)*256+x3;
  $  010.Odometer value when last pressure warning       $    $  km           $    $  ANS007.BYTE013  $  y=(x1*256+x2)*256+x3;
  $  011.Odometer value when last pressure warning       $    $  km           $    $  ANS007.BYTE016  $  y=(x1*256+x2)*256+x3;
  $  012.Odometer value when last pressure warning       $    $  km           $    $  ANS007.BYTE019  $  y=(x1*256+x2)*256+x3;
  $  013.temperature when last reset                     $    $  degree C     $    $  ANS007.BYTE022  $  y=x-100;
  $  014.temperature when last pressure warning          $    $  degree C     $    $  ANS007.BYTE023  $  y=x-100;
  $  015.TPMS��ʼ��                                      $    $  /            $    $  ANS008.BYTE004  $  switxh(x) 0x00:y=Uninitialized;0x01:y=Initialized;default: y=@0007;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:720 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
