
    ����ID��5828

    ģ�⣺Э��ģ��-->5828

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~716

��������:

  $~  REQ000:706 02 10 03 FF FF FF FF FF       $~  ANS000:716 02 10 03 FF FF FF FF FF
  $~  REQ001:706 02 27 03 FF FF FF FF FF       $~  ANS001:716 02 27 03 FF FF FF FF FF
  $~  REQ002:706 04 27 04 1E B0 FF FF FF       $~  ANS002:716 04 27 04 1E B0 FF FF FF

��������:

  $!  REQ000:706 02 3E 00 FF FF FF FF FF       $!  ANS000:716 02 3E 00 FF FF FF FF FF

�˳�����:

  $@  REQ000:706 02 10 01 FF FF FF FF FF       $@  ANS000:716 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:706 03 19 02 09 FF FF FF FF       $#  ANS000:716 03 19 02 09 FF FF FF FF

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/69000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:706 04 14 FF FF FF FF FF FF       $$  ANS000:716 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:706 03 22 F1 80 FF FF FF FF       $%  ANS000:716 03 22 F1 80 FF FF FF FF
  $%  REQ001:706 03 22 F1 86 FF FF FF FF       $%  ANS001:716 03 22 F1 86 FF FF FF FF
  $%  REQ002:706 03 22 F1 87 FF FF FF FF       $%  ANS002:716 03 22 F1 87 FF FF FF FF
  $%  REQ003:706 03 22 F1 88 FF FF FF FF       $%  ANS003:716 03 22 F1 88 FF FF FF FF
  $%  REQ004:706 03 22 F1 B0 FF FF FF FF       $%  ANS004:716 03 22 F1 B0 FF FF FF FF
  $%  REQ005:706 03 22 F1 8A FF FF FF FF       $%  ANS005:716 03 22 F1 8A FF FF FF FF
  $%  REQ006:706 03 22 F1 8B FF FF FF FF       $%  ANS006:716 03 22 F1 8B FF FF FF FF
  $%  REQ007:706 03 22 F1 8C FF FF FF FF       $%  ANS007:716 03 22 F1 8C FF FF FF FF
  $%  REQ008:706 03 22 F1 90 FF FF FF FF       $%  ANS008:716 03 22 F1 90 FF FF FF FF
  $%  REQ009:706 03 22 F1 91 FF FF FF FF       $%  ANS009:716 03 22 F1 91 FF FF FF FF
  $%  REQ010:706 03 22 F1 98 FF FF FF FF       $%  ANS010:716 03 22 F1 98 FF FF FF FF
  $%  REQ011:706 03 22 F1 99 FF FF FF FF       $%  ANS011:716 03 22 F1 99 FF FF FF FF
  $%  REQ012:706 03 22 F1 00 FF FF FF FF       $%  ANS012:716 03 22 F1 00 FF FF FF FF
  $%  REQ013:706 03 22 F1 BF FF FF FF FF       $%  ANS013:716 03 22 F1 BF FF FF FF FF
  $%  REQ014:706 03 22 F1 C0 FF FF FF FF       $%  ANS014:716 03 22 F1 C0 FF FF FF FF
  $%  REQ015:706 03 22 F1 D0 FF FF FF FF       $%  ANS015:716 03 22 F1 D0 FF FF FF FF
  $%  REQ016:706 03 22 F1 9D FF FF FF FF       $%  ANS016:716 03 22 F1 9D FF FF FF FF

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
  $%  010:����豸���к�:                        $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:ˢ������:                              $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  012:24λ������:                            $%    $%  ANS012.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  013:Ӧ��Ӳ���汾�ţ��̶��汾��:            $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  014:����ܳɰ汾��:                        $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  015:����ܳ������:                        $%    $%  ANS015.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  016:ECUװ������:                           $%    $%  ANS016.BYTE004  $%  y=HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

��������: 

  $  REQ000:706 03 22 F0 12 FF FF FF FF       $  ANS000:716 03 22 F0 12 FF FF FF FF
  $  REQ001:706 03 22 F0 13 FF FF FF FF       $  ANS001:716 03 22 F0 13 FF FF FF FF
  $  REQ002:706 03 22 F0 14 FF FF FF FF       $  ANS002:716 03 22 F0 14 FF FF FF FF
  $  REQ003:706 03 22 20 00 FF FF FF FF       $  ANS003:716 03 22 20 00 FF FF FF FF
  $  REQ004:706 03 22 20 01 FF FF FF FF       $  ANS004:716 03 22 20 01 FF FF FF FF
  $  REQ005:706 03 22 20 02 FF FF FF FF       $  ANS005:716 03 22 20 02 FF FF FF FF
  $  REQ006:706 03 22 20 03 FF FF FF FF       $  ANS006:716 03 22 20 03 FF FF FF FF
  $  REQ007:706 03 22 20 05 FF FF FF FF       $  ANS007:716 03 22 20 05 FF FF FF FF
  $  REQ008:706 03 22 20 11 FF FF FF FF       $  ANS008:716 03 22 20 11 FF FF FF FF
  $  REQ009:706 03 22 20 19 FF FF FF FF       $  ANS009:716 03 22 20 19 FF FF FF FF
  $  REQ010:706 03 22 20 20 FF FF FF FF       $  ANS010:716 03 22 20 20 FF FF FF FF
  $  REQ011:706 03 22 20 24 FF FF FF FF       $  ANS011:716 03 22 20 24 FF FF FF FF
  $  REQ012:706 03 22 20 25 FF FF FF FF       $  ANS012:716 03 22 20 25 FF FF FF FF
  $  REQ013:706 03 22 20 28 FF FF FF FF       $  ANS013:716 03 22 20 28 FF FF FF FF
  $  REQ014:706 03 22 20 29 FF FF FF FF       $  ANS014:716 03 22 20 29 FF FF FF FF
  $  REQ015:706 03 22 20 30 FF FF FF FF       $  ANS015:716 03 22 20 30 FF FF FF FF
  $  REQ016:706 03 22 20 31 FF FF FF FF       $  ANS016:716 03 22 20 31 FF FF FF FF
  $  REQ017:706 03 22 20 32 FF FF FF FF       $  ANS017:716 03 22 20 32 FF FF FF FF
  $  REQ018:706 03 22 20 33 FF FF FF FF       $  ANS018:716 03 22 20 33 FF FF FF FF
  $  REQ019:706 03 22 20 34 FF FF FF FF       $  ANS019:716 03 22 20 34 FF FF FF FF
  $  REQ020:706 03 22 20 35 FF FF FF FF       $  ANS020:716 03 22 20 35 FF FF FF FF
  $  REQ021:706 03 22 20 36 FF FF FF FF       $  ANS021:716 03 22 20 36 FF FF FF FF
  $  REQ022:706 03 22 20 37 FF FF FF FF       $  ANS022:716 03 22 20 37 FF FF FF FF
  $  REQ023:706 03 22 20 38 FF FF FF FF       $  ANS023:716 03 22 20 38 FF FF FF FF
  $  REQ024:706 03 22 20 39 FF FF FF FF       $  ANS024:716 03 22 20 39 FF FF FF FF
  $  REQ025:706 03 22 20 40 FF FF FF FF       $  ANS025:716 03 22 20 40 FF FF FF FF
  $  REQ026:706 03 22 20 41 FF FF FF FF       $  ANS026:716 03 22 20 41 FF FF FF FF
  $  REQ027:706 03 22 20 42 FF FF FF FF       $  ANS027:716 03 22 20 42 FF FF FF FF
  $  REQ028:706 03 22 20 43 FF FF FF FF       $  ANS028:716 03 22 20 43 FF FF FF FF
  $  REQ029:706 03 22 20 47 FF FF FF FF       $  ANS029:716 03 22 20 47 FF FF FF FF
  $  REQ030:706 03 22 20 48 FF FF FF FF       $  ANS030:716 03 22 20 48 FF FF FF FF
  $  REQ031:706 03 22 20 49 FF FF FF FF       $  ANS031:716 03 22 20 49 FF FF FF FF
  $  REQ032:706 03 22 20 51 FF FF FF FF       $  ANS032:716 03 22 20 51 FF FF FF FF
  $  REQ033:706 03 22 20 52 FF FF FF FF       $  ANS033:716 03 22 20 52 FF FF FF FF
  $  REQ034:706 03 22 20 53 FF FF FF FF       $  ANS034:716 03 22 20 53 FF FF FF FF
  $  REQ035:706 03 22 20 54 FF FF FF FF       $  ANS035:716 03 22 20 54 FF FF FF FF
  $  REQ036:706 03 22 20 55 FF FF FF FF       $  ANS036:716 03 22 20 55 FF FF FF FF
  $  REQ037:706 03 22 20 56 FF FF FF FF       $  ANS037:716 03 22 20 56 FF FF FF FF
  $  REQ038:706 03 22 20 57 FF FF FF FF       $  ANS038:716 03 22 20 57 FF FF FF FF
  $  REQ039:706 03 22 20 61 FF FF FF FF       $  ANS039:716 03 22 20 61 FF FF FF FF
  $  REQ040:706 03 22 20 62 FF FF FF FF       $  ANS040:716 03 22 20 62 FF FF FF FF
  $  REQ041:706 03 22 20 63 FF FF FF FF       $  ANS041:716 03 22 20 63 FF FF FF FF
  $  REQ042:706 03 22 20 64 FF FF FF FF       $  ANS042:716 03 22 20 64 FF FF FF FF
  $  REQ043:706 03 22 20 65 FF FF FF FF       $  ANS043:716 03 22 20 65 FF FF FF FF
  $  REQ044:706 03 22 20 66 FF FF FF FF       $  ANS044:716 03 22 20 66 FF FF FF FF
  $  REQ045:706 03 22 20 67 FF FF FF FF       $  ANS045:716 03 22 20 67 FF FF FF FF
  $  REQ046:706 03 22 20 68 FF FF FF FF       $  ANS046:716 03 22 20 68 FF FF FF FF
  $  REQ047:706 03 22 20 69 FF FF FF FF       $  ANS047:716 03 22 20 69 FF FF FF FF
  $  REQ048:706 03 22 20 70 FF FF FF FF       $  ANS048:716 03 22 20 70 FF FF FF FF
  $  REQ049:706 03 22 20 71 FF FF FF FF       $  ANS049:716 03 22 20 71 FF FF FF FF
  $  REQ050:706 03 22 20 72 FF FF FF FF       $  ANS050:716 03 22 20 72 FF FF FF FF
  $  REQ051:706 03 22 20 73 FF FF FF FF       $  ANS051:716 03 22 20 73 FF FF FF FF
  $  REQ052:706 03 22 20 74 FF FF FF FF       $  ANS052:716 03 22 20 74 FF FF FF FF
  $  REQ053:706 03 22 20 75 FF FF FF FF       $  ANS053:716 03 22 20 75 FF FF FF FF
  $  REQ054:706 03 22 20 76 FF FF FF FF       $  ANS054:716 03 22 20 76 FF FF FF FF
  $  REQ055:706 03 22 20 77 FF FF FF FF       $  ANS055:716 03 22 20 77 FF FF FF FF
  $  REQ056:706 03 22 20 78 FF FF FF FF       $  ANS056:716 03 22 20 78 FF FF FF FF
  $  REQ057:706 03 22 20 79 FF FF FF FF       $  ANS057:716 03 22 20 79 FF FF FF FF
  $  REQ058:706 03 22 20 80 FF FF FF FF       $  ANS058:716 03 22 20 80 FF FF FF FF
  $  REQ059:706 03 22 20 81 FF FF FF FF       $  ANS059:716 03 22 20 81 FF FF FF FF
  $  REQ060:706 03 22 20 88 FF FF FF FF       $  ANS060:716 03 22 20 88 FF FF FF FF
  $  REQ061:706 03 22 20 89 FF FF FF FF       $  ANS061:716 03 22 20 89 FF FF FF FF
  $  REQ062:706 03 22 20 90 FF FF FF FF       $  ANS062:716 03 22 20 90 FF FF FF FF
  $  REQ063:706 03 22 20 92 FF FF FF FF       $  ANS063:716 03 22 20 92 FF FF FF FF
  $  REQ064:706 03 22 20 93 FF FF FF FF       $  ANS064:716 03 22 20 93 FF FF FF FF
  $  REQ065:706 03 22 21 09 FF FF FF FF       $  ANS065:716 03 22 21 09 FF FF FF FF
  $  REQ066:706 03 22 21 10 FF FF FF FF       $  ANS066:716 03 22 21 10 FF FF FF FF
  $  REQ067:706 03 22 21 15 FF FF FF FF       $  ANS067:716 03 22 21 15 FF FF FF FF
  $  REQ068:706 03 22 21 32 FF FF FF FF       $  ANS068:716 03 22 21 32 FF FF FF FF
  $  REQ069:706 03 22 21 33 FF FF FF FF       $  ANS069:716 03 22 21 33 FF FF FF FF
  $  REQ070:706 03 22 21 34 FF FF FF FF       $  ANS070:716 03 22 21 34 FF FF FF FF
  $  REQ071:706 03 22 21 35 FF FF FF FF       $  ANS071:716 03 22 21 35 FF FF FF FF
  $  REQ072:706 03 22 21 36 FF FF FF FF       $  ANS072:716 03 22 21 36 FF FF FF FF
  $  REQ073:706 03 22 21 37 FF FF FF FF       $  ANS073:716 03 22 21 37 FF FF FF FF
  $  REQ074:706 03 22 21 38 FF FF FF FF       $  ANS074:716 03 22 21 38 FF FF FF FF
  $  REQ075:706 03 22 21 43 FF FF FF FF       $  ANS075:716 03 22 21 43 FF FF FF FF
  $  REQ076:706 03 22 21 44 FF FF FF FF       $  ANS076:716 03 22 21 44 FF FF FF FF
  $  REQ077:706 03 22 21 45 FF FF FF FF       $  ANS077:716 03 22 21 45 FF FF FF FF
  $  REQ078:706 03 22 21 46 FF FF FF FF       $  ANS078:716 03 22 21 46 FF FF FF FF
  $  REQ079:706 03 22 21 47 FF FF FF FF       $  ANS079:716 03 22 21 47 FF FF FF FF
  $  REQ080:706 03 22 21 48 FF FF FF FF       $  ANS080:716 03 22 21 48 FF FF FF FF
  $  REQ081:706 03 22 21 49 FF FF FF FF       $  ANS081:716 03 22 21 49 FF FF FF FF
  $  REQ082:706 03 22 21 50 FF FF FF FF       $  ANS082:716 03 22 21 50 FF FF FF FF
  $  REQ083:706 03 22 21 51 FF FF FF FF       $  ANS083:716 03 22 21 51 FF FF FF FF

  $  000.��������ܵ�ѹ                            $    $  V            $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.05;
  $  001.������ص�ǰ����                          $    $  A            $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  002.���SOC                                   $    $  %            $    $  ANS002.BYTE004  $  y=x;
  $  003.��������                                  $    $  km/h         $    $  ANS003.BYTE004  $  y=x;
  $  004.���                                      $    $  km           $    $  ANS004.BYTE004  $  y=x*65536+x2*256+x3;
  $  005.Ǧ���ص�ѹ                              $    $  mV           $    $  ANS005.BYTE004  $  y=x1*256+x2;
  $  006.�ۼӺ͵�ѹ                                $    $  V            $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.1;
  $  007.���ߵ�����Ч��                            $    $               $    $  ANS007.BYTE004  $  y=x;
  $  008.��������ֵ                              $    $  A            $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.1;
  $  009.CSU��������ֵ                             $    $  A            $    $  ANS009.BYTE004  $  y=(x1*256+x2)*6553.6+(x3*256+x4)*0.1;
  $  010.CSU������������                           $    $               $    $  ANS010.BYTE004  $  y=x;
  $  011.CSU�������������±�־λ                   $    $               $    $  ANS011.BYTE004  $  y=x;
  $  012.����·�̵���״̬                          $    $               $    $  ANS012.BYTE004  $  y=x;
  $  013.ֱ���������¶�                            $    $  degree C     $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  014.ֱ���������¶�                            $    $  degree C     $    $  ANS014.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  015.���������¶�                              $    $  degree C     $    $  ANS015.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  016.�������¶�                              $    $  degree C     $    $  ANS016.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  017.�����¶���Ч��                            $    $               $    $  ANS017.BYTE004  $  y=x;
  $  018.���оƬ�ڲ��¶�                          $    $  degree C     $    $  ANS018.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  019.оƬ�ڲ��¶���Ч��                        $    $               $    $  ANS019.BYTE004  $  y=x;
  $  020.BMU����1                                  $    $  degree C     $    $  ANS020.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  021.BMU����2                                  $    $  degree C     $    $  ANS021.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  022.ģ���¶�Rawֵ                             $    $  degree C     $    $  ANS022.BYTE004  $  y=x1*256+x2;
  $  023.ƽ��ģ���¶�                              $    $  degree C     $    $  ANS023.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  024.���ģ���¶�                              $    $  degree C     $    $  ANS024.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  025.��Сģ���¶�                              $    $  degree C     $    $  ANS025.BYTE004  $  y=(x1*256+x2)*0.5-50;
  $  026.���ģ���¶�CMC��λ��                     $    $               $    $  ANS026.BYTE004  $  y=x;
  $  027.��Сģ���¶�CMC��λ��                     $    $               $    $  ANS027.BYTE004  $  y=x;
  $  028.ģ���¶���Ч��                            $    $               $    $  ANS028.BYTE004  $  y=x1*256+x2;
  $  029.����ѹSOC                               $    $  %            $    $  ANS029.BYTE004  $  y=(x1*256+x2)*0.1;
  $  030.��С��ѹSOC                               $    $  %            $    $  ANS030.BYTE004  $  y=(x1*256+x2)*0.1;
  $  031.ƽ����ѹSOC                               $    $  %            $    $  ANS031.BYTE004  $  y=(x1*256+x2)*0.1;
  $  032.��ʾSOH                                   $    $  %            $    $  ANS032.BYTE004  $  y=(x1*256+x2)*0.1;
  $  033.CSU�¶�ֵ                                 $    $  degree C     $    $  ANS033.BYTE004  $  y=x-50;
  $  034.��Ԥ���µ�����жϱ�־                    $    $               $    $  ANS034.BYTE004  $  y=x;
  $  035.ģ���¶Ⱦջ������±�־λ                  $    $               $    $  ANS035.BYTE004  $  y=x;
  $  036.��о��ѹ�ջ������±�־λ                  $    $               $    $  ANS036.BYTE004  $  y=x;
  $  037.�ջ�����λ��־                            $    $               $    $  ANS037.BYTE004  $  y=x;
  $  038.ACAN��ײ�ź�                              $    $               $    $  ANS038.BYTE004  $  y=x;
  $  039.��Ե���״̬                              $    $               $    $  ANS039.BYTE004  $  y=x;
  $  040.��Ե��ѹ�ɼ�״̬                          $    $               $    $  ANS040.BYTE004  $  y=x;
  $  041.��Ե������ѹRawֵ                         $    $               $    $  ANS041.BYTE004  $  y=x1*256+x2;
  $  042.��Ե������ѹRawֵ                         $    $               $    $  ANS042.BYTE004  $  y=x1*256+x2;
  $  043.��Ե������һ�׶�������ѹֵ                $    $  V            $    $  ANS043.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  044.��Ե������һ�׶θ�����ѹֵ                $    $  V            $    $  ANS044.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  045.��Ե�����ڶ��׶�������ѹֵ                $    $  V            $    $  ANS045.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  046.��Ե�����ڶ��׶θ�����ѹֵ                $    $  V            $    $  ANS046.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  047.������Ե��ֵ                              $    $  K��          $    $  ANS047.BYTE004  $  y=x1*256+x2;
  $  048.������Ե��ֵ                              $    $  K��          $    $  ANS048.BYTE004  $  y=x1*256+x2;
  $  049.CC2������ѹ                               $    $  mV           $    $  ANS049.BYTE004  $  y=x1*256+x2;
  $  050.���ֹͣԭ��                              $    $               $    $  ANS050.BYTE004  $  y=x;
  $  051.����ֹͣԭ��                              $    $               $    $  ANS051.BYTE004  $  y=x;
  $  052.ACǹ����״̬                              $    $               $    $  ANS052.BYTE004  $  y=x;
  $  053.DCǹ����״̬                              $    $               $    $  ANS053.BYTE004  $  y=x;
  $  054.AC���ģʽ��־                            $    $               $    $  ANS054.BYTE004  $  y=x;
  $  055.DC���ģʽ��־                            $    $               $    $  ANS055.BYTE004  $  y=x;
  $  056.�����·��·����CMC��                     $    $               $    $  ANS056.BYTE004  $  y=x;
  $  057.�����·��·����Cell��                    $    $               $    $  ANS057.BYTE004  $  y=x;
  $  058.�����·��·����CMC��                     $    $               $    $  ANS058.BYTE004  $  y=x;
  $  059.�����·��·����Cell��                    $    $               $    $  ANS059.BYTE004  $  y=x;
  $  060.���������ģʽ                            $    $               $    $  ANS060.BYTE004  $  y=x;
  $  061.HVILCh0�߱ߵ�ѹֵ                         $    $  mV           $    $  ANS061.BYTE004  $  y=x1*256+x2;
  $  062.HVILCh1�߱ߵ�ѹֵ                         $    $  mV           $    $  ANS062.BYTE004  $  y=x1*256+x2;
  $  063.HVILCh0�ͱߵ�ѹֵ                         $    $  mV           $    $  ANS063.BYTE004  $  y=x1*256+x2;
  $  064.HVILCh1�ͱߵ�ѹֵ                         $    $  mV           $    $  ANS064.BYTE004  $  y=x1*256+x2;
  $  065.�����̵������������ڲ��ѹ              $    $  V            $    $  ANS065.BYTE004  $  y=x1*256+x2;
  $  066.DC���̵������������ڲ��ѹ            $    $  V            $    $  ANS066.BYTE004  $  y=x1*256+x2;
  $  067.���ȼ̵������������ڲ��ѹ              $    $  V            $    $  ANS067.BYTE004  $  y=x1*256+x2;
  $  068.��о��ѹ����оƬ��������                  $    $               $    $  ANS068.BYTE004  $  y=x;
  $  069.����о��ѹCMC������о��ѹλ��         $    $               $    $  ANS069.BYTE004  $  y=x;
  $  070.��С��о��ѹCMC����С��о��ѹλ��         $    $               $    $  ANS070.BYTE004  $  y=x;
  $  071.��о��ѹRAW                               $    $               $    $  ANS071.BYTE004  $  y=x;
  $  072.ƽ����о��ѹ                              $    $  mV           $    $  ANS072.BYTE004  $  y=x1*256+x2;
  $  073.����о��ѹ                              $    $  mV           $    $  ANS073.BYTE004  $  y=x1*256+x2;
  $  074.��С��о��ѹ                              $    $  mV           $    $  ANS074.BYTE004  $  y=x1*256+x2;
  $  075.ÿһ����о��ѹ����Ч��                    $    $               $    $  ANS075.BYTE004  $  y=x;
  $  076.ÿһ��ģ���ѹ����Ч��                    $    $               $    $  ANS076.BYTE004  $  y=x;
  $  077.CSU�¶ȹ��ߵ��¸�λ��־λ                 $    $               $    $  ANS077.BYTE004  $  y=x;
  $  078.D2DͨѶ���ϴ����־λ                     $    $               $    $  ANS078.BYTE004  $  y=x;
  $  079.CSU�����ѹ״̬                           $    $               $    $  ANS079.BYTE004  $  y=x;
  $  080.SHUNT��·��־λ                           $    $               $    $  ANS080.BYTE004  $  y=x;
  $  081.��ΪPLL clock ����CSU�����쳣             $    $               $    $  ANS081.BYTE004  $  y=x;
  $  082.��ΪOSCILLATOR Clock����CSU�����쳣       $    $               $    $  ANS082.BYTE004  $  y=x;
  $  083.CSU���������쳣,����COP ��λ              $    $               $    $  ANS083.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:706 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
