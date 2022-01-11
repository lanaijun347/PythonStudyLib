
    车型ID：5857

    模拟：协议模拟-->5857

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~716

进入命令:

  $~  REQ000:706 02 10 03 FF FF FF FF FF       $~  ANS000:716 02 10 03 FF FF FF FF FF
  $~  REQ001:706 02 27 03 FF FF FF FF FF       $~  ANS001:716 02 27 03 FF FF FF FF FF
  $~  REQ002:706 04 27 04 1E B0 FF FF FF       $~  ANS002:716 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:706 02 3E 00 FF FF FF FF FF       $!  ANS000:716 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:706 02 10 01 FF FF FF FF FF       $@  ANS000:716 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:706 03 19 02 09 FF FF FF FF       $#  ANS000:716 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/91000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:706 04 14 FF FF FF FF FF FF       $$  ANS000:716 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

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
  $%  REQ012:706 03 22 F1 9D FF FF FF FF       $%  ANS012:716 03 22 F1 9D FF FF FF FF
  $%  REQ013:706 03 22 F1 70 FF FF FF FF       $%  ANS013:716 03 22 F1 70 FF FF FF FF

  $%  000:软件版本号:                        $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:当前诊断任务模式:                  $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:整车零部件号:                      $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:应用软件版本号:                    $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:应用软件版本号（固定版本）:        $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:系统供应商代码:                    $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  006:ECU生产日期:                       $%    $%  ANS006.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  007:控制器序列号:                      $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  008:整车VIN:                           $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:硬件版本号:                        $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  010:诊断设备序列号:                    $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:刷新日期:                          $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  012:ECU装配日期:                       $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  013:整车配置码:                        $%    $%  ANS013.BYTE004  $%  y=HEX(x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

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
  $  REQ056:706 03 22 20 39 FF FF FF FF       $  ANS056:716 03 22 20 39 FF FF FF FF
  $  REQ057:706 03 22 20 3A FF FF FF FF       $  ANS057:716 03 22 20 3A FF FF FF FF
  $  REQ058:706 03 22 20 3B FF FF FF FF       $  ANS058:716 03 22 20 3B FF FF FF FF
  $  REQ059:706 03 22 20 3C FF FF FF FF       $  ANS059:716 03 22 20 3C FF FF FF FF
  $  REQ060:706 03 22 20 3D FF FF FF FF       $  ANS060:716 03 22 20 3D FF FF FF FF
  $  REQ061:706 03 22 20 3E FF FF FF FF       $  ANS061:716 03 22 20 3E FF FF FF FF
  $  REQ062:706 03 22 20 3F FF FF FF FF       $  ANS062:716 03 22 20 3F FF FF FF FF
  $  REQ063:706 03 22 20 40 FF FF FF FF       $  ANS063:716 03 22 20 40 FF FF FF FF
  $  REQ064:706 03 22 20 41 FF FF FF FF       $  ANS064:716 03 22 20 41 FF FF FF FF
  $  REQ065:706 03 22 20 42 FF FF FF FF       $  ANS065:716 03 22 20 42 FF FF FF FF
  $  REQ066:706 03 22 20 43 FF FF FF FF       $  ANS066:716 03 22 20 43 FF FF FF FF
  $  REQ067:706 03 22 20 44 FF FF FF FF       $  ANS067:716 03 22 20 44 FF FF FF FF
  $  REQ068:706 03 22 20 45 FF FF FF FF       $  ANS068:716 03 22 20 45 FF FF FF FF
  $  REQ069:706 03 22 20 46 FF FF FF FF       $  ANS069:716 03 22 20 46 FF FF FF FF
  $  REQ070:706 03 22 20 47 FF FF FF FF       $  ANS070:716 03 22 20 47 FF FF FF FF
  $  REQ071:706 03 22 20 48 FF FF FF FF       $  ANS071:716 03 22 20 48 FF FF FF FF
  $  REQ072:706 03 22 20 49 FF FF FF FF       $  ANS072:716 03 22 20 49 FF FF FF FF
  $  REQ073:706 03 22 20 4A FF FF FF FF       $  ANS073:716 03 22 20 4A FF FF FF FF
  $  REQ074:706 03 22 20 4B FF FF FF FF       $  ANS074:716 03 22 20 4B FF FF FF FF
  $  REQ075:706 03 22 20 4C FF FF FF FF       $  ANS075:716 03 22 20 4C FF FF FF FF
  $  REQ076:706 03 22 20 4D FF FF FF FF       $  ANS076:716 03 22 20 4D FF FF FF FF
  $  REQ077:706 03 22 20 4E FF FF FF FF       $  ANS077:716 03 22 20 4E FF FF FF FF
  $  REQ078:706 03 22 20 4F FF FF FF FF       $  ANS078:716 03 22 20 4F FF FF FF FF
  $  REQ079:706 03 22 20 50 FF FF FF FF       $  ANS079:716 03 22 20 50 FF FF FF FF
  $  REQ080:706 03 22 20 51 FF FF FF FF       $  ANS080:716 03 22 20 51 FF FF FF FF
  $  REQ081:706 03 22 20 52 FF FF FF FF       $  ANS081:716 03 22 20 52 FF FF FF FF
  $  REQ082:706 03 22 20 53 FF FF FF FF       $  ANS082:716 03 22 20 53 FF FF FF FF
  $  REQ083:706 03 22 20 54 FF FF FF FF       $  ANS083:716 03 22 20 54 FF FF FF FF
  $  REQ084:706 03 22 20 55 FF FF FF FF       $  ANS084:716 03 22 20 55 FF FF FF FF
  $  REQ085:706 03 22 20 56 FF FF FF FF       $  ANS085:716 03 22 20 56 FF FF FF FF
  $  REQ086:706 03 22 20 57 FF FF FF FF       $  ANS086:716 03 22 20 57 FF FF FF FF
  $  REQ087:706 03 22 20 58 FF FF FF FF       $  ANS087:716 03 22 20 58 FF FF FF FF
  $  REQ088:706 03 22 20 59 FF FF FF FF       $  ANS088:716 03 22 20 59 FF FF FF FF
  $  REQ089:706 03 22 20 5A FF FF FF FF       $  ANS089:716 03 22 20 5A FF FF FF FF
  $  REQ090:706 03 22 20 5B FF FF FF FF       $  ANS090:716 03 22 20 5B FF FF FF FF
  $  REQ091:706 03 22 20 5C FF FF FF FF       $  ANS091:716 03 22 20 5C FF FF FF FF
  $  REQ092:706 03 22 20 5D FF FF FF FF       $  ANS092:716 03 22 20 5D FF FF FF FF
  $  REQ093:706 03 22 20 5E FF FF FF FF       $  ANS093:716 03 22 20 5E FF FF FF FF
  $  REQ094:706 03 22 20 5F FF FF FF FF       $  ANS094:716 03 22 20 5F FF FF FF FF
  $  REQ095:706 03 22 20 60 FF FF FF FF       $  ANS095:716 03 22 20 60 FF FF FF FF
  $  REQ096:706 03 22 20 61 FF FF FF FF       $  ANS096:716 03 22 20 61 FF FF FF FF
  $  REQ097:706 03 22 20 62 FF FF FF FF       $  ANS097:716 03 22 20 62 FF FF FF FF
  $  REQ098:706 03 22 20 63 FF FF FF FF       $  ANS098:716 03 22 20 63 FF FF FF FF
  $  REQ099:706 03 22 20 64 FF FF FF FF       $  ANS099:716 03 22 20 64 FF FF FF FF
  $  REQ100:706 03 22 20 65 FF FF FF FF       $  ANS100:716 03 22 20 65 FF FF FF FF
  $  REQ101:706 03 22 20 66 FF FF FF FF       $  ANS101:716 03 22 20 66 FF FF FF FF
  $  REQ102:706 03 22 20 67 FF FF FF FF       $  ANS102:716 03 22 20 67 FF FF FF FF
  $  REQ103:706 03 22 20 68 FF FF FF FF       $  ANS103:716 03 22 20 68 FF FF FF FF
  $  REQ104:706 03 22 20 69 FF FF FF FF       $  ANS104:716 03 22 20 69 FF FF FF FF
  $  REQ105:706 03 22 20 6A FF FF FF FF       $  ANS105:716 03 22 20 6A FF FF FF FF
  $  REQ106:706 03 22 20 6B FF FF FF FF       $  ANS106:716 03 22 20 6B FF FF FF FF
  $  REQ107:706 03 22 20 6C FF FF FF FF       $  ANS107:716 03 22 20 6C FF FF FF FF
  $  REQ108:706 03 22 20 6D FF FF FF FF       $  ANS108:716 03 22 20 6D FF FF FF FF
  $  REQ109:706 03 22 20 6E FF FF FF FF       $  ANS109:716 03 22 20 6E FF FF FF FF
  $  REQ110:706 03 22 20 6F FF FF FF FF       $  ANS110:716 03 22 20 6F FF FF FF FF
  $  REQ111:706 03 22 20 70 FF FF FF FF       $  ANS111:716 03 22 20 70 FF FF FF FF
  $  REQ112:706 03 22 20 71 FF FF FF FF       $  ANS112:716 03 22 20 71 FF FF FF FF
  $  REQ113:706 03 22 20 72 FF FF FF FF       $  ANS113:716 03 22 20 72 FF FF FF FF

  $  000.电池电量SOC                               $    $  %            $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.01;
  $  001.电池允许最大放电电流                      $    $  A            $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  002.电池允许最大充电电流                      $    $  A            $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  003.电池包类型                                $    $               $    $  ANS003.BYTE004  $  y=x;
  $  004.唤醒VCU                                   $    $               $    $  ANS004.BYTE004  $  switxh(x&0x01) 0x01:y=1;default: y=0;
  $  005.电池允许最小放电电压                      $    $  V            $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.05;
  $  006.电池允许最大充电电压                      $    $  V            $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.05;
  $  007.最低电压单体序号                          $    $               $    $  ANS007.BYTE004  $  y=x;
  $  008.最高电压单体序号                          $    $               $    $  ANS008.BYTE004  $  y=x;
  $  009.最低温度探针号                            $    $               $    $  ANS009.BYTE004  $  y=x;
  $  010.最高温度探针号                            $    $               $    $  ANS010.BYTE004  $  y=x;
  $  011.电池总线电流                              $    $  A            $    $  ANS011.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  012.电池包两端电压                            $    $  V            $    $  ANS012.BYTE004  $  y=(x1*256+x2)*0.05;
  $  013.高压总线两端电压                          $    $  V            $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.05;
  $  014.电池平均温度                              $    $  degree C     $    $  ANS014.BYTE004  $  y=x-40;
  $  015.电池健康指数                              $    $  %            $    $  ANS015.BYTE004  $  y=(x1*256+x2)*0.01;
  $  016.电池组电池单体最高电压                    $    $  mV           $    $  ANS016.BYTE004  $  y=x1*256+x2;
  $  017.电池组电池单体最低电压                    $    $  mV           $    $  ANS017.BYTE004  $  y=x1*256+x2;
  $  018.电池最高温度                              $    $  degree C     $    $  ANS018.BYTE004  $  y=x-40;
  $  019.电池最低温度                              $    $  degree C     $    $  ANS019.BYTE004  $  y=x-40;
  $  020.电池包进水口温度                          $    $  degree C     $    $  ANS020.BYTE004  $  y=x-40;
  $  021.电池包出水口温度                          $    $  degree C     $    $  ANS021.BYTE004  $  y=x-40;
  $  022.峰值放电功率                              $    $  W            $    $  ANS022.BYTE004  $  y=(x1*256+x2)*5;
  $  023.持续放电功率                              $    $  W            $    $  ANS023.BYTE004  $  y=(x1*256+x2)*5;
  $  024.峰值充电功率                              $    $  W            $    $  ANS024.BYTE004  $  y=(x1*256+x2)*5;
  $  025.持续充电功率                              $    $  W            $    $  ANS025.BYTE004  $  y=(x1*256+x2)*5;
  $  026.电池准备就绪                              $    $               $    $  ANS026.BYTE004  $  switxh(x) 0x00:y=Not ready;0x01:y=Discharge Ready;0x02:y=Req HV Down;0x03:y=Reserved;default: y=@0007;
  $  027.电池正极继电器状态                        $    $               $    $  ANS027.BYTE004  $  switxh(x) 0x00:y=Disconnect;0x01:y=Connect;0x02:y=Fault;0x03:y=Reserved;default: y=@0007;
  $  028.电池负极继电器状态                        $    $               $    $  ANS028.BYTE004  $  switxh(x) 0x00:y=Disconnect;0x01:y=Connect;0x02:y=Fault;0x03:y=Reserved;default: y=@0007;
  $  029.电池预充状态                              $    $               $    $  ANS029.BYTE004  $  switxh(x) 0x00:y=Disconnect;0x01:y=Precharging;0x02:y=PrechargeSuccess;0x03:y=PrechargeFailed;default: y=@0007;
  $  030.电池预充继电器状态                        $    $               $    $  ANS030.BYTE004  $  switxh(x) 0x00:y=Disconnect;0x01:y=Connect;0x02:y=Fault;0x03:y=Reserved;default: y=@0007;
  $  031.当前最高放电故障等级                      $    $               $    $  ANS031.BYTE004  $  switxh(x) 0x00:y=Default;0x01:y=Grade 1;0x02:y=Grade 2;0x03:y=Grade 3;0x04:y=Grade 4;0x05:y=Grade 5;0x06:y=Grade 6;0x07:y=Grade 7;0x08:y=Grade 8;default: y=@0007;
  $  032.当前最高充电故障等级                      $    $               $    $  ANS032.BYTE004  $  switxh(x) 0x00:y=Default;0x01:y=Grade 1;0x02:y=Grade 2;0x03:y=Grade 3;0x04:y=Grade 4;0x05:y=Grade 5;0x06:y=Grade 6;0x07:y=Grade 7;0x08:y=Grade 8;default: y=@0007;
  $  033.电池快充继电器状态                        $    $               $    $  ANS033.BYTE004  $  switxh(x) 0x00:y=Disconnect;0x01:y=Connect;0x02:y=Fault;0x03:y=Reserved;default: y=@0007;
  $  034.高压环路互锁故障                          $    $               $    $  ANS034.BYTE004  $  switxh(x) 0x00:y=Normal;0x01:y=Main Discharge Circle failure;0x02:y=Sub Discharge Circle failure;0x03:y=Fast Charge Circle failure;default: y=@0007;
  $  035.电子锁状态                                $    $               $    $  ANS035.BYTE004  $  switxh(x) 0x00:y=Unlock;0x01:y=Lock;0x02:y=Fault;default: y=@0007;
  $  036.当前活动最严重错误号                      $    $               $    $  ANS036.BYTE004  $  y=x;
  $  037.充电故障                                  $    $               $    $  ANS037.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=SlowChargeFault;0x02:y=FastChargeFault;0x03:y=Reserved;default: y=@0007;
  $  038.S2状态                                    $    $               $    $  ANS038.BYTE004  $  switxh(x) 0x00:y=Disconnect;0x01:y=Connect;default: y=@0007;
  $  039.电池回路水泵工作状态                      $    $  %            $    $  ANS039.BYTE004  $  y=x;
  $  040.电池温升过快故障                          $    $               $    $  ANS040.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault;0x02:y=Level 2 Fault;0x03:y=Level 3 Fault;default: y=@0007;
  $  041.电池高温报警                              $    $               $    $  ANS041.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault;0x02:y=Level 2 Fault;0x03:y=Level 3 Fault;default: y=@0007;
  $  042.电池低温报警                              $    $               $    $  ANS042.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault;0x02:y=Level 2 Fault;0x03:y=Level 3 Fault;default: y=@0007;
  $  043.单体电池过压报警                          $    $               $    $  ANS043.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault;0x02:y=Level 2 Fault;0x03:y=Level 3 Fault;default: y=@0007;
  $  044.单体电池欠压报警                          $    $               $    $  ANS044.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault;0x02:y=Level 2 Fault;0x03:y=Level 3 Fault;default: y=@0007;
  $  045.电池总电压过高报警                        $    $               $    $  ANS045.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault;0x02:y=Level 2 Fault;0x03:y=Level 3 Fault;default: y=@0007;
  $  046.总电压低压报警                            $    $               $    $  ANS046.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault;0x02:y=Level 2 Fault;0x03:y=Level 3 Fault;default: y=@0007;
  $  047.SOC低报警                                 $    $               $    $  ANS047.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault;0x02:y=Level 2 Fault;0x03:y=Level 3 Fault;default: y=@0007;
  $  048.总电流过流报警                            $    $               $    $  ANS048.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault;0x02:y=Level 2 Fault;0x03:y=Level 3 Fault;default: y=@0007;
  $  049.绝缘故障                                  $    $               $    $  ANS049.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault;0x02:y=Level 2 Fault;0x03:y=Level 3 Fault;default: y=@0007;
  $  050.温度差异报警                              $    $               $    $  ANS050.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault;0x02:y=Level 2 Fault;0x03:y=Level 3 Fault;default: y=@0007;
  $  051.动力电池系统故障                          $    $               $    $  ANS051.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault;0x02:y=Level 2 Fault;0x03:y=Level 3 Fault;default: y=@0007;
  $  052.单体一致性差报警                          $    $               $    $  ANS052.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault(10mv);0x02:y=Level 2 Fault(30mv);0x03:y=Level 3 Fault(50mv);default: y=@0007;
  $  053.热扩散报警                                $    $               $    $  ANS053.BYTE004  $  switxh(x) 0x00:y=NOT FAULT;0x01:y=Level 1 Fault;0x02:y=Level 2 Fault;0x03:y=Level 3 Fault;default: y=@0007;
  $  054.慢充CP信号（0-100）                       $    $  %            $    $  ANS054.BYTE004  $  y=x;
  $  055.慢充CC                                    $    $               $    $  ANS055.BYTE004  $  switxh(x) 0x00:y=@0137;0x01:y=@0138;0x02:y=@0139;0x03:y=@0140;0x04:y=@0141;0x05:y=@0142;0x06:y=@0143;0x07:y=@0144;0x08:y=@0145;0x09:y=@0146;default: y=@0007;
  $  056.CP 连接信号                               $    $               $    $  ANS056.BYTE004  $  switxh(x) 0x00:y=CPSig Not Connect;0x01:y=CPSig Connect;default: y=@0007;
  $  057.电池充电状态                              $    $               $    $  ANS057.BYTE004  $  switxh(x) 0x00:y=Normal;0x01:y=Slow Charging;0x02:y=Fast Charging;0x03:y=Charge Achieved;0x04:y=Chager Fault;0x05:y=Heating;0x06:y=Charging While Heating;0x07:y=Not Ready;default: y=@0007;
  $  058.慢速充电最大允许交流电流                  $    $  A            $    $  ANS058.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  059.动力电池总成单体总数                      $    $               $    $  ANS059.BYTE004  $  y=x;
  $  060.动力电池温度传感器总数                    $    $               $    $  ANS060.BYTE004  $  y=x;
  $  061.交流充电完成剩余时间                      $    $  min          $    $  ANS061.BYTE004  $  y=x1*256+x2;
  $  062.快充桩输出电压                            $    $  V            $    $  ANS062.BYTE004  $  y=(x1*256+x2)*0.05;
  $  063.快充桩输出电流                            $    $  A            $    $  ANS063.BYTE004  $  y=(x1*256+x2)*0.05-1600;
  $  064.快充CC                                    $    $               $    $  ANS064.BYTE004  $  switxh(x&0x01) 0x01:y=connect;default: y=Disconnect;
  $  065.直流充电完成剩余时间                      $    $  min          $    $  ANS065.BYTE004  $  y=x1*256+x2;
  $  066.禁止输出/充电请求/加热请求/逆变使能       $    $               $    $  ANS066.BYTE004  $  switxh(x&0x07) 0x00:y=Disconnect;0x01:y=charging;0x02:y=Heating;0x03:y=Inverting;default: y=@0007;
  $  067.BMS请求的电流                             $    $  A            $    $  ANS067.BYTE004  $  y=(x1*256+x2)*0.05-400;
  $  068.BMS请求的电压                             $    $  V            $    $  ANS068.BYTE004  $  y=(x1*256+x2)*0.05-400;
  $  069.BMS充电完成时间                           $    $  min          $    $  ANS069.BYTE004  $  y=x1*256+x2;
  $  070.充电机状态                                $    $               $    $  ANS070.BYTE004  $  switxh(x&0x07) 0x00:y=start up;0x01:y=Ready;0x02:y=Charging;0x03:y=ChargeAchieve;0x04:y=ChagerFault;0x05:y=Heating;0x06:y=Inverting;0x07:y=Sleeping;default: y=@0007;
  $  071.充电机输出电流                            $    $  A            $    $  ANS071.BYTE004  $  y=(x1*256+x2)*0.05;
  $  072.充电机输出电压                            $    $  V            $    $  ANS072.BYTE004  $  y=(x1*256+x2)*0.05;
  $  073.充电机当前可输出的最大功率                $    $  KW           $    $  ANS073.BYTE004  $  y=(x1*256+x2)*0.005;
  $  074.OBC反馈交流电网电压                       $    $  V            $    $  ANS074.BYTE004  $  y=(x1*256+x2)*0.01;
  $  075.OBC反馈交流电网电流                       $    $  A            $    $  ANS075.BYTE004  $  y=(x1*256+x2)*0.1;
  $  076.OBC降功率状态                             $    $               $    $  ANS076.BYTE004  $  switxh(x&0x07) 0x00:y=Inactive;0x01:y=Active;default: y=@0007;
  $  077.V2L使能                                   $    $               $    $  ANS077.BYTE004  $  switxh(x&0x07) 0x00:y=0;0x01:y=1;0x02:y=2;0x03:y=3;0x04:y=4;0x05:y=5;0x06:y=6;0x07:y=7;default: y=@0007;
  $  078.V2L功率限制                               $    $  W            $    $  ANS078.BYTE004  $  y=(x1*256+x2)*5;
  $  079.远程充电控制                              $    $               $    $  ANS079.BYTE004  $  switxh(x&0x07) 0x00:y=No request;0x01:y=Stop;0x02:y=Start;default: y=@0007;
  $  080.预约充电使能                              $    $               $    $  ANS080.BYTE004  $  switxh(x&0x07) 0x00:y=Disable;0x01:y=Enable;default: y=@0007;
  $  081.预约充电时间设置                          $    $               $    $  ANS081.BYTE004  $  y=x*10;
  $  082.车速                                      $    $  km/h         $    $  ANS082.BYTE004  $  y=(x1*256+x2)*0.03125;
  $  083.车速有效                                  $    $               $    $  ANS083.BYTE004  $  switxh(x&0x07) 0x00:y=Invalid;0x01:y=Valid;default: y=@0007;
  $  084.绝缘电阻值                                $    $  ΚΩ         $    $  ANS084.BYTE004  $  y=x1*256+x2;
  $  085.快充口负端温度                            $    $  degree C     $    $  ANS085.BYTE004  $  y=x1*256+x2-40;
  $  086.快充口正端温度                            $    $  degree C     $    $  ANS086.BYTE004  $  y=x1*256+x2-40;
  $  087.交流慢充口负端温度                        $    $  degree C     $    $  ANS087.BYTE004  $  y=x1*256+x2-40;
  $  088.交流慢充口正端温度                        $    $  degree C     $    $  ANS088.BYTE004  $  y=x1*256+x2-40;
  $  089.低压蓄电池电压值                          $    $  V            $    $  ANS089.BYTE004  $  y=(x1*256+x2)*0.05;
  $  090.V2L功率请求                               $    $  W            $    $  ANS090.BYTE004  $  y=(x1*256+x2)*5;
  $  091.慢充停止原因                              $    $               $    $  ANS091.BYTE004  $  y=x;
  $  092.快充停止原因                              $    $               $    $  ANS092.BYTE004  $  y=x;
  $  093.无法上高压原因                            $    $               $    $  ANS093.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  094.BMS内部最严重故障号                       $    $               $    $  ANS094.BYTE004  $  y=x1*256+x2;
  $  095.仪表显示总计里程                          $    $  km           $    $  ANS095.BYTE004  $  y=x*6553.6+(x2*256+x3)*0.1;
  $  096.脉冲功率                                  $    $  W            $    $  ANS096.BYTE004  $  y=(x1*256+x2)*5;
  $  097.真实SOC                                   $    $  %            $    $  ANS097.BYTE004  $  y=(x1*256+x2)*0.01;
  $  098.累计充电总容量                            $    $  Ah           $    $  ANS098.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  099.累计充电总能量                            $    $  kwh          $    $  ANS099.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  100.累计放电总容量                            $    $  Ah           $    $  ANS100.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  101.累计放电总能量                            $    $  kwh          $    $  ANS101.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  102.累计回充总容量                            $    $  Ah           $    $  ANS102.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  103.累计回充总能量                            $    $  kwh          $    $  ANS103.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  104.动力电池总容量                            $    $  Ah           $    $  ANS104.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  105.动力电池剩余可用容量                      $    $  Ah           $    $  ANS105.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  106.动力电池可用容量                          $    $  Ah           $    $  ANS106.BYTE004  $  y=(x1*256+x2)*655.36+(x3*256+x4)*0.01;
  $  107.快充桩最高输出电压                        $    $  V            $    $  ANS107.BYTE004  $  y=x1*256+x2;
  $  108.快充桩最低输出电压                        $    $  V            $    $  ANS108.BYTE004  $  y=x1*256+x2;
  $  109.快充桩最大输出电流                        $    $  A            $    $  ANS109.BYTE004  $  y=x1*256+x2-400;
  $  110.快充桩最小输出电流                        $    $  A            $    $  ANS110.BYTE004  $  y=x1*256+x2-400;
  $  111.快充电压需求                              $    $  V            $    $  ANS111.BYTE004  $  y=x1*256+x2;
  $  112.快充充电模式                              $    $               $    $  ANS112.BYTE004  $  switxh(x&0x07) 0x00:y=0;0x01:y=1;0x02:y=2;0x03:y=3;0x04:y=4;0x05:y=5;0x06:y=6;0x07:y=7;default: y=@0007;
  $  113.快充电流需求                              $    $  A            $    $  ANS113.BYTE004  $  y=x1*256+x2-400;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:706 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
