
    ����ID��5829

    ģ�⣺Э��ģ��-->5829

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

  $*$*DTC/6a000000


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
  $%  REQ012:706 03 22 F1 BF FF FF FF FF       $%  ANS012:716 03 22 F1 BF FF FF FF FF
  $%  REQ013:706 03 22 F1 C0 FF FF FF FF       $%  ANS013:716 03 22 F1 C0 FF FF FF FF
  $%  REQ014:706 03 22 F1 9D FF FF FF FF       $%  ANS014:716 03 22 F1 9D FF FF FF FF
  $%  REQ015:706 03 22 F1 00 FF FF FF FF       $%  ANS015:716 03 22 F1 00 FF FF FF FF
  $%  REQ016:706 03 22 F1 D0 FF FF FF FF       $%  ANS016:716 03 22 F1 D0 FF FF FF FF

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
  $%  012:Ӧ��Ӳ���汾�ţ��̶��汾��:            $%    $%  ANS012.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  013:����ܳɰ汾��:                        $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  014:ECUװ������:                           $%    $%  ANS014.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  015:24λ������:                            $%    $%  ANS015.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  016:����ܳ������:                        $%    $%  ANS016.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);

;******************************************************************************************************************************************************

��������: 

  $  REQ000:706 03 22 20 00 FF FF FF FF       $  ANS000:716 03 22 20 00 FF FF FF FF
  $  REQ001:706 03 22 20 01 FF FF FF FF       $  ANS001:716 03 22 20 01 FF FF FF FF
  $  REQ002:706 03 22 20 02 FF FF FF FF       $  ANS002:716 03 22 20 02 FF FF FF FF
  $  REQ003:706 03 22 20 03 FF FF FF FF       $  ANS003:716 03 22 20 03 FF FF FF FF
  $  REQ004:706 03 22 20 04 FF FF FF FF       $  ANS004:716 03 22 20 04 FF FF FF FF
  $  REQ005:706 03 22 20 05 FF FF FF FF       $  ANS005:716 03 22 20 05 FF FF FF FF
  $  REQ006:706 03 22 20 06 FF FF FF FF       $  ANS006:716 03 22 20 06 FF FF FF FF
  $  REQ007:706 03 22 20 07 FF FF FF FF       $  ANS007:716 03 22 20 07 FF FF FF FF
  $  REQ008:706 03 22 20 08 FF FF FF FF       $  ANS008:716 03 22 20 08 FF FF FF FF
  $  REQ009:706 03 22 20 09 FF FF FF FF       $  ANS009:716 03 22 20 09 FF FF FF FF
  $  REQ010:706 03 22 20 0A FF FF FF FF       $  ANS010:716 03 22 20 0A FF FF FF FF
  $  REQ011:706 03 22 20 0B FF FF FF FF       $  ANS011:716 03 22 20 0B FF FF FF FF
  $  REQ012:706 03 22 20 0C FF FF FF FF       $  ANS012:716 03 22 20 0C FF FF FF FF
  $  REQ013:706 03 22 20 0D FF FF FF FF       $  ANS013:716 03 22 20 0D FF FF FF FF
  $  REQ014:706 03 22 20 0E FF FF FF FF       $  ANS014:716 03 22 20 0E FF FF FF FF
  $  REQ015:706 03 22 20 0F FF FF FF FF       $  ANS015:716 03 22 20 0F FF FF FF FF
  $  REQ016:706 03 22 20 10 FF FF FF FF       $  ANS016:716 03 22 20 10 FF FF FF FF
  $  REQ017:706 03 22 20 11 FF FF FF FF       $  ANS017:716 03 22 20 11 FF FF FF FF
  $  REQ018:706 03 22 20 12 FF FF FF FF       $  ANS018:716 03 22 20 12 FF FF FF FF
  $  REQ019:706 03 22 20 13 FF FF FF FF       $  ANS019:716 03 22 20 13 FF FF FF FF
  $  REQ020:706 03 22 20 14 FF FF FF FF       $  ANS020:716 03 22 20 14 FF FF FF FF
  $  REQ021:706 03 22 20 15 FF FF FF FF       $  ANS021:716 03 22 20 15 FF FF FF FF
  $  REQ022:706 03 22 20 16 FF FF FF FF       $  ANS022:716 03 22 20 16 FF FF FF FF
  $  REQ023:706 03 22 20 17 FF FF FF FF       $  ANS023:716 03 22 20 17 FF FF FF FF
  $  REQ024:706 03 22 20 18 FF FF FF FF       $  ANS024:716 03 22 20 18 FF FF FF FF
  $  REQ025:706 03 22 20 19 FF FF FF FF       $  ANS025:716 03 22 20 19 FF FF FF FF
  $  REQ026:706 03 22 20 1A FF FF FF FF       $  ANS026:716 03 22 20 1A FF FF FF FF
  $  REQ027:706 03 22 20 1B FF FF FF FF       $  ANS027:716 03 22 20 1B FF FF FF FF
  $  REQ028:706 03 22 20 1C FF FF FF FF       $  ANS028:716 03 22 20 1C FF FF FF FF
  $  REQ029:706 03 22 20 1D FF FF FF FF       $  ANS029:716 03 22 20 1D FF FF FF FF
  $  REQ030:706 03 22 20 1E FF FF FF FF       $  ANS030:716 03 22 20 1E FF FF FF FF
  $  REQ031:706 03 22 20 1F FF FF FF FF       $  ANS031:716 03 22 20 1F FF FF FF FF
  $  REQ032:706 03 22 20 20 FF FF FF FF       $  ANS032:716 03 22 20 20 FF FF FF FF
  $  REQ033:706 03 22 20 21 FF FF FF FF       $  ANS033:716 03 22 20 21 FF FF FF FF
  $  REQ034:706 03 22 20 22 FF FF FF FF       $  ANS034:716 03 22 20 22 FF FF FF FF
  $  REQ035:706 03 22 20 23 FF FF FF FF       $  ANS035:716 03 22 20 23 FF FF FF FF
  $  REQ036:706 03 22 20 24 FF FF FF FF       $  ANS036:716 03 22 20 24 FF FF FF FF
  $  REQ037:706 03 22 20 25 FF FF FF FF       $  ANS037:716 03 22 20 25 FF FF FF FF
  $  REQ038:706 03 22 20 26 FF FF FF FF       $  ANS038:716 03 22 20 26 FF FF FF FF
  $  REQ039:706 03 22 20 27 FF FF FF FF       $  ANS039:716 03 22 20 27 FF FF FF FF
  $  REQ040:706 03 22 20 28 FF FF FF FF       $  ANS040:716 03 22 20 28 FF FF FF FF
  $  REQ041:706 03 22 20 29 FF FF FF FF       $  ANS041:716 03 22 20 29 FF FF FF FF
  $  REQ042:706 03 22 20 2A FF FF FF FF       $  ANS042:716 03 22 20 2A FF FF FF FF
  $  REQ043:706 03 22 20 2B FF FF FF FF       $  ANS043:716 03 22 20 2B FF FF FF FF
  $  REQ044:706 03 22 20 2C FF FF FF FF       $  ANS044:716 03 22 20 2C FF FF FF FF
  $  REQ045:706 03 22 20 2D FF FF FF FF       $  ANS045:716 03 22 20 2D FF FF FF FF
  $  REQ046:706 03 22 20 2E FF FF FF FF       $  ANS046:716 03 22 20 2E FF FF FF FF
  $  REQ047:706 03 22 20 2F FF FF FF FF       $  ANS047:716 03 22 20 2F FF FF FF FF
  $  REQ048:706 03 22 20 30 FF FF FF FF       $  ANS048:716 03 22 20 30 FF FF FF FF
  $  REQ049:706 03 22 20 31 FF FF FF FF       $  ANS049:716 03 22 20 31 FF FF FF FF
  $  REQ050:706 03 22 20 32 FF FF FF FF       $  ANS050:716 03 22 20 32 FF FF FF FF
  $  REQ051:706 03 22 20 33 FF FF FF FF       $  ANS051:716 03 22 20 33 FF FF FF FF
  $  REQ052:706 03 22 20 34 FF FF FF FF       $  ANS052:716 03 22 20 34 FF FF FF FF
  $  REQ053:706 03 22 20 35 FF FF FF FF       $  ANS053:716 03 22 20 35 FF FF FF FF
  $  REQ054:706 03 22 20 36 FF FF FF FF       $  ANS054:716 03 22 20 36 FF FF FF FF
  $  REQ055:706 03 22 20 37 FF FF FF FF       $  ANS055:716 03 22 20 37 FF FF FF FF
  $  REQ056:706 03 22 20 38 FF FF FF FF       $  ANS056:716 03 22 20 38 FF FF FF FF
  $  REQ057:706 03 22 20 39 FF FF FF FF       $  ANS057:716 03 22 20 39 FF FF FF FF
  $  REQ058:706 03 22 20 3A FF FF FF FF       $  ANS058:716 03 22 20 3A FF FF FF FF
  $  REQ059:706 03 22 20 3B FF FF FF FF       $  ANS059:716 03 22 20 3B FF FF FF FF
  $  REQ060:706 03 22 20 3C FF FF FF FF       $  ANS060:716 03 22 20 3C FF FF FF FF
  $  REQ061:706 03 22 20 3D FF FF FF FF       $  ANS061:716 03 22 20 3D FF FF FF FF
  $  REQ062:706 03 22 20 3E FF FF FF FF       $  ANS062:716 03 22 20 3E FF FF FF FF
  $  REQ063:706 03 22 20 3F FF FF FF FF       $  ANS063:716 03 22 20 3F FF FF FF FF
  $  REQ064:706 03 22 20 40 FF FF FF FF       $  ANS064:716 03 22 20 40 FF FF FF FF
  $  REQ065:706 03 22 20 41 FF FF FF FF       $  ANS065:716 03 22 20 41 FF FF FF FF
  $  REQ066:706 03 22 20 42 FF FF FF FF       $  ANS066:716 03 22 20 42 FF FF FF FF
  $  REQ067:706 03 22 20 43 FF FF FF FF       $  ANS067:716 03 22 20 43 FF FF FF FF
  $  REQ068:706 03 22 20 44 FF FF FF FF       $  ANS068:716 03 22 20 44 FF FF FF FF
  $  REQ069:706 03 22 20 45 FF FF FF FF       $  ANS069:716 03 22 20 45 FF FF FF FF
  $  REQ070:706 03 22 20 46 FF FF FF FF       $  ANS070:716 03 22 20 46 FF FF FF FF
  $  REQ071:706 03 22 20 47 FF FF FF FF       $  ANS071:716 03 22 20 47 FF FF FF FF
  $  REQ072:706 03 22 20 48 FF FF FF FF       $  ANS072:716 03 22 20 48 FF FF FF FF
  $  REQ073:706 03 22 20 49 FF FF FF FF       $  ANS073:716 03 22 20 49 FF FF FF FF
  $  REQ074:706 03 22 20 4A FF FF FF FF       $  ANS074:716 03 22 20 4A FF FF FF FF
  $  REQ075:706 03 22 20 4B FF FF FF FF       $  ANS075:716 03 22 20 4B FF FF FF FF
  $  REQ076:706 03 22 20 4C FF FF FF FF       $  ANS076:716 03 22 20 4C FF FF FF FF
  $  REQ077:706 03 22 20 4D FF FF FF FF       $  ANS077:716 03 22 20 4D FF FF FF FF
  $  REQ078:706 03 22 20 4E FF FF FF FF       $  ANS078:716 03 22 20 4E FF FF FF FF
  $  REQ079:706 03 22 20 4F FF FF FF FF       $  ANS079:716 03 22 20 4F FF FF FF FF
  $  REQ080:706 03 22 20 50 FF FF FF FF       $  ANS080:716 03 22 20 50 FF FF FF FF
  $  REQ081:706 03 22 20 51 FF FF FF FF       $  ANS081:716 03 22 20 51 FF FF FF FF
  $  REQ082:706 03 22 20 52 FF FF FF FF       $  ANS082:716 03 22 20 52 FF FF FF FF
  $  REQ083:706 03 22 20 53 FF FF FF FF       $  ANS083:716 03 22 20 53 FF FF FF FF
  $  REQ084:706 03 22 20 54 FF FF FF FF       $  ANS084:716 03 22 20 54 FF FF FF FF
  $  REQ085:706 03 22 20 55 FF FF FF FF       $  ANS085:716 03 22 20 55 FF FF FF FF
  $  REQ086:706 03 22 20 56 FF FF FF FF       $  ANS086:716 03 22 20 56 FF FF FF FF
  $  REQ087:706 03 22 20 57 FF FF FF FF       $  ANS087:716 03 22 20 57 FF FF FF FF
  $  REQ088:706 03 22 20 58 FF FF FF FF       $  ANS088:716 03 22 20 58 FF FF FF FF
  $  REQ089:706 03 22 20 59 FF FF FF FF       $  ANS089:716 03 22 20 59 FF FF FF FF
  $  REQ090:706 03 22 20 5A FF FF FF FF       $  ANS090:716 03 22 20 5A FF FF FF FF
  $  REQ091:706 03 22 20 5B FF FF FF FF       $  ANS091:716 03 22 20 5B FF FF FF FF
  $  REQ092:706 03 22 20 5C FF FF FF FF       $  ANS092:716 03 22 20 5C FF FF FF FF
  $  REQ093:706 03 22 20 5D FF FF FF FF       $  ANS093:716 03 22 20 5D FF FF FF FF
  $  REQ094:706 03 22 20 5E FF FF FF FF       $  ANS094:716 03 22 20 5E FF FF FF FF
  $  REQ095:706 03 22 20 5F FF FF FF FF       $  ANS095:716 03 22 20 5F FF FF FF FF
  $  REQ096:706 03 22 20 60 FF FF FF FF       $  ANS096:716 03 22 20 60 FF FF FF FF
  $  REQ097:706 03 22 20 61 FF FF FF FF       $  ANS097:716 03 22 20 61 FF FF FF FF
  $  REQ098:706 03 22 20 62 FF FF FF FF       $  ANS098:716 03 22 20 62 FF FF FF FF
  $  REQ099:706 03 22 20 63 FF FF FF FF       $  ANS099:716 03 22 20 63 FF FF FF FF
  $  REQ100:706 03 22 20 64 FF FF FF FF       $  ANS100:716 03 22 20 64 FF FF FF FF
  $  REQ101:706 03 22 20 65 FF FF FF FF       $  ANS101:716 03 22 20 65 FF FF FF FF
  $  REQ102:706 03 22 20 66 FF FF FF FF       $  ANS102:716 03 22 20 66 FF FF FF FF
  $  REQ103:706 03 22 20 67 FF FF FF FF       $  ANS103:716 03 22 20 67 FF FF FF FF
  $  REQ104:706 03 22 20 68 FF FF FF FF       $  ANS104:716 03 22 20 68 FF FF FF FF
  $  REQ105:706 03 22 20 69 FF FF FF FF       $  ANS105:716 03 22 20 69 FF FF FF FF
  $  REQ106:706 03 22 20 6A FF FF FF FF       $  ANS106:716 03 22 20 6A FF FF FF FF
  $  REQ107:706 03 22 20 6B FF FF FF FF       $  ANS107:716 03 22 20 6B FF FF FF FF
  $  REQ108:706 03 22 20 6C FF FF FF FF       $  ANS108:716 03 22 20 6C FF FF FF FF
  $  REQ109:706 03 22 20 6D FF FF FF FF       $  ANS109:716 03 22 20 6D FF FF FF FF
  $  REQ110:706 03 22 20 6E FF FF FF FF       $  ANS110:716 03 22 20 6E FF FF FF FF
  $  REQ111:706 03 22 20 6F FF FF FF FF       $  ANS111:716 03 22 20 6F FF FF FF FF
  $  REQ112:706 03 22 20 70 FF FF FF FF       $  ANS112:716 03 22 20 70 FF FF FF FF
  $  REQ113:706 03 22 20 71 FF FF FF FF       $  ANS113:716 03 22 20 71 FF FF FF FF
  $  REQ114:706 03 22 20 72 FF FF FF FF       $  ANS114:716 03 22 20 72 FF FF FF FF

  $  000.��ص���SOC                      $    $  %            $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.01;
  $  001.����������ŵ����             $    $  A            $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  002.���������������             $    $  A            $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  003.��ذ�����                       $    $               $    $  ANS003.BYTE004  $  y=x;
  $  004.����VCU                          $    $               $    $  ANS004.BYTE004  $  y=x;
  $  005.���������С�ŵ��ѹ             $    $  V            $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.05;
  $  006.�������������ѹ             $    $  V            $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.05;
  $  007.��͵�ѹ�������                 $    $               $    $  ANS007.BYTE004  $  y=x;
  $  008.��ߵ�ѹ�������                 $    $               $    $  ANS008.BYTE004  $  y=x;
  $  009.����¶�̽���                   $    $               $    $  ANS009.BYTE004  $  y=x;
  $  010.����¶�̽���                   $    $               $    $  ANS010.BYTE004  $  y=x;
  $  011.������ߵ���                     $    $  A            $    $  ANS011.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  012.��ذ����˵�ѹ                   $    $  V            $    $  ANS012.BYTE004  $  y=(x1*256+x2)*0.05;
  $  013.��ѹ�������˵�ѹ                 $    $  V            $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.05;
  $  014.���ƽ���¶�                     $    $  degree C     $    $  ANS014.BYTE004  $  y=x-40;
  $  015.��ؽ���ָ��                     $    $  %            $    $  ANS015.BYTE004  $  y=(x1*256+x2)*0.01;
  $  016.������ص�����ߵ�ѹ           $    $  mV           $    $  ANS016.BYTE004  $  y=x1*256+x2;
  $  017.������ص�����͵�ѹ           $    $  mV           $    $  ANS017.BYTE004  $  y=x1*256+x2;
  $  018.�������¶�                     $    $  degree C     $    $  ANS018.BYTE004  $  y=x-40;
  $  019.�������¶�                     $    $  degree C     $    $  ANS019.BYTE004  $  y=x-40;
  $  020.��ذ���ˮ���¶�                 $    $  degree C     $    $  ANS020.BYTE004  $  y=x-40;
  $  021.��ذ���ˮ���¶�                 $    $  degree C     $    $  ANS021.BYTE004  $  y=x-40;
  $  022.��ֵ�ŵ繦��                     $    $  W            $    $  ANS022.BYTE004  $  y=(x1*256+x2)*5;
  $  023.�����ŵ繦��                     $    $  W            $    $  ANS023.BYTE004  $  y=(x1*256+x2)*5;
  $  024.��ֵ��繦��                     $    $  W            $    $  ANS024.BYTE004  $  y=(x1*256+x2)*5;
  $  025.������繦��                     $    $  W            $    $  ANS025.BYTE004  $  y=(x1*256+x2)*5;
  $  026.���׼������                     $    $               $    $  ANS026.BYTE004  $  y=x;
  $  027.��������̵���״̬               $    $               $    $  ANS027.BYTE004  $  y=x;
  $  028.��ظ����̵���״̬               $    $               $    $  ANS028.BYTE004  $  y=x;
  $  029.���Ԥ��״̬                     $    $               $    $  ANS029.BYTE004  $  y=x;
  $  030.���Ԥ��̵���״̬               $    $               $    $  ANS030.BYTE004  $  y=x;
  $  031.��ǰ��߷ŵ���ϵȼ�             $    $               $    $  ANS031.BYTE004  $  y=x;
  $  032.��ǰ��߳����ϵȼ�             $    $               $    $  ANS032.BYTE004  $  y=x;
  $  033.��ؿ��̵���״̬               $    $               $    $  ANS033.BYTE004  $  y=x;
  $  034.��ѹ��·��������                 $    $               $    $  ANS034.BYTE004  $  switxh(x) 0x01:y=@0208;0x02:y=@0209;0x03:y=@0210;default: y=@0007;
  $  035.������״̬                       $    $               $    $  ANS035.BYTE004  $  y=x;
  $  036.��ǰ������ش����             $    $               $    $  ANS036.BYTE004  $  y=x;
  $  037.������                         $    $               $    $  ANS037.BYTE004  $  y=x;
  $  038.S2״̬                           $    $               $    $  ANS038.BYTE004  $  y=x;
  $  039.��ػ�·ˮ�ù���״̬             $    $  %            $    $  ANS039.BYTE004  $  y=x;
  $  040.��������������                 $    $               $    $  ANS040.BYTE004  $  y=x;
  $  041.��ظ��±���                     $    $               $    $  ANS041.BYTE004  $  y=x;
  $  042.��ص��±���                     $    $               $    $  ANS042.BYTE004  $  y=x;
  $  043.�����ع�ѹ����                 $    $               $    $  ANS043.BYTE004  $  y=x;
  $  044.������Ƿѹ����                 $    $               $    $  ANS044.BYTE004  $  y=x;
  $  045.����ܵ�ѹ���߱���               $    $               $    $  ANS045.BYTE004  $  y=x;
  $  046.�ܵ�ѹ��ѹ����                   $    $               $    $  ANS046.BYTE004  $  y=x;
  $  047.SOC�ͱ���                        $    $               $    $  ANS047.BYTE004  $  y=x;
  $  048.�ܵ�����������                   $    $               $    $  ANS048.BYTE004  $  y=x;
  $  049.��Ե����                         $    $               $    $  ANS049.BYTE004  $  y=x;
  $  050.�¶Ȳ��챨��                     $    $               $    $  ANS050.BYTE004  $  y=x;
  $  051.�������ϵͳ����                 $    $               $    $  ANS051.BYTE004  $  y=x;
  $  052.����һ���Բ��                 $    $               $    $  ANS052.BYTE004  $  y=x;
  $  053.����ɢ����                       $    $               $    $  ANS053.BYTE004  $  y=x;
  $  054.����CP�źţ�0-100��              $    $  %            $    $  ANS054.BYTE004  $  y=x;
  $  055.����CC                           $    $               $    $  ANS055.BYTE004  $  y=x;
  $  056.CC �����ź�                      $    $               $    $  ANS056.BYTE004  $  y=x;
  $  057.CP �����ź�                      $    $               $    $  ANS057.BYTE004  $  y=x;
  $  058.��س��״̬                     $    $               $    $  ANS058.BYTE004  $  y=x;
  $  059.���ٳ���������������         $    $  A            $    $  ANS059.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  060.��������ܳɵ�������             $    $               $    $  ANS060.BYTE004  $  y=x;
  $  061.��������¶ȴ���������           $    $               $    $  ANS061.BYTE004  $  y=x;
  $  062.����������ʣ��ʱ��             $    $  min          $    $  ANS062.BYTE004  $  y=x1*256+x2;
  $  063.���׮�����ѹ                   $    $  V            $    $  ANS063.BYTE004  $  y=(x1*256+x2)*0.05;
  $  064.���׮�������                   $    $  A            $    $  ANS064.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  065.���CC                           $    $               $    $  ANS065.BYTE004  $  y=x;
  $  066.ֱ��������ʣ��ʱ��             $    $  min          $    $  ANS066.BYTE004  $  y=x1*256+x2;
  $  067.��ֹ���                         $    $               $    $  ANS067.BYTE004  $  switxh(x) 0x00:y=@0211;0x01:y=@0212;0x02:y=@0213;0x03:y=@0214;default: y=@0074;
  $  068.BMS����ĵ���                    $    $  A            $    $  ANS068.BYTE004  $  y=(x1*256+x2)*0.05;
  $  069.BMS����ĵ�ѹ                    $    $  V            $    $  ANS069.BYTE004  $  y=(x1*256+x2)*0.05;
  $  070.BMS������ʱ��                  $    $  min          $    $  ANS070.BYTE004  $  y=x1*256+x2;
  $  071.����״̬                       $    $               $    $  ANS071.BYTE004  $  y=x;
  $  072.�����������                   $    $  A            $    $  ANS072.BYTE004  $  y=(x1*256+x2)*0.05;
  $  073.���������ѹ                   $    $  V            $    $  ANS073.BYTE004  $  y=(x1*256+x2)*0.05;
  $  074.������ǰ������������       $    $  KW           $    $  ANS074.BYTE004  $  y=(x1*256+x2)*0.005;
  $  075.OBC��������������ѹ              $    $  V            $    $  ANS075.BYTE004  $  y=(x1*256+x2)*0.01;
  $  076.OBC����������������              $    $  A            $    $  ANS076.BYTE004  $  y=(x1*256+x2)*0.1;
  $  077.OBC������״̬                    $    $               $    $  ANS077.BYTE004  $  y=x;
  $  078.V2Lʹ��                          $    $               $    $  ANS078.BYTE004  $  y=x;
  $  079.V2L��������                      $    $  W            $    $  ANS079.BYTE004  $  y=(x1*256+x2)*5;
  $  080.Զ�̳�����                     $    $               $    $  ANS080.BYTE004  $  y=x;
  $  081.ԤԼ���ʹ��                     $    $               $    $  ANS081.BYTE004  $  y=x;
  $  082.ԤԼ���ʱ������                 $    $               $    $  ANS082.BYTE004  $  y=x*10;
  $  083.����                             $    $  km/h         $    $  ANS083.BYTE004  $  y=(x1*256+x2)*0.03125;
  $  084.������Ч                         $    $               $    $  ANS084.BYTE004  $  y=x;
  $  085.��Ե����ֵ                       $    $  ����         $    $  ANS085.BYTE004  $  y=x1*256+x2;
  $  086.���ڸ����¶�                   $    $  degree C     $    $  ANS086.BYTE004  $  y=x1*256+x2-40;
  $  087.���������¶�                   $    $  degree C     $    $  ANS087.BYTE004  $  y=x1*256+x2-40;
  $  088.��������ڸ����¶�               $    $  degree C     $    $  ANS088.BYTE004  $  y=x1*256+x2-40;
  $  089.��������������¶�               $    $  degree C     $    $  ANS089.BYTE004  $  y=x1*256+x2-40;
  $  090.��ѹ���ص�ѹֵ                 $    $  V            $    $  ANS090.BYTE004  $  y=(x1*256+x2)*0.05;
  $  091.V2L��������                      $    $  W            $    $  ANS091.BYTE004  $  y=(x1*256+x2)*5;
  $  092.����ֹͣԭ��                     $    $               $    $  ANS092.BYTE004  $  y=x;
  $  093.���ֹͣԭ��                     $    $               $    $  ANS093.BYTE004  $  y=x;
  $  094.�޷��ϸ�ѹԭ��                   $    $               $    $  ANS094.BYTE004  $  y=x;
  $  095.BMS�ڲ������ع��Ϻ�              $    $               $    $  ANS095.BYTE004  $  y=x1*256+x2;
  $  096.�Ǳ���ʾ�ܼ����                 $    $  km           $    $  ANS096.BYTE004  $  y=x*6553.6+(x2*256+x3)*0.1;
  $  097.���幦��                         $    $  W            $    $  ANS097.BYTE004  $  y=(x1*256+x2)*5;
  $  098.��ʵSOC                          $    $  %            $    $  ANS098.BYTE004  $  y=(x1*256+x2)*0.01;
  $  099.�ۼƳ��������                   $    $  Ah           $    $  ANS099.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  100.�ۼƳ��������                   $    $  kwh          $    $  ANS100.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  101.�ۼƷŵ�������                   $    $  Ah           $    $  ANS101.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  102.�ۼƷŵ�������                   $    $  kwh          $    $  ANS102.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  103.�ۼƻس�������                   $    $  Ah           $    $  ANS103.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  104.�ۼƻس�������                   $    $  kwh          $    $  ANS104.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  105.�������������                   $    $  Ah           $    $  ANS105.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  106.�������ʣ���������             $    $  Ah           $    $  ANS106.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  107.������ؿ�������                 $    $  Ah           $    $  ANS107.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  108.���׮��������ѹ               $    $  V            $    $  ANS108.BYTE004  $  y=x1*256+x2;
  $  109.���׮��������ѹ               $    $  V            $    $  ANS109.BYTE004  $  y=x1*256+x2;
  $  110.���׮����������               $    $  A            $    $  ANS110.BYTE004  $  y=x1*256+x2-400;
  $  111.���׮��С�������               $    $  A            $    $  ANS111.BYTE004  $  y=x1*256+x2-400;
  $  112.����ѹ����                     $    $  V            $    $  ANS112.BYTE004  $  y=x1*256+x2;
  $  113.�����ģʽ                     $    $               $    $  ANS113.BYTE004  $  y=x;
  $  114.����������                     $    $  A            $    $  ANS114.BYTE004  $  y=x1*256+x2-400;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:706 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
