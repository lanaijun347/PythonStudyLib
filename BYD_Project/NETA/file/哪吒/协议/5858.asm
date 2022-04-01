
    车型ID：5858

    模拟：协议模拟-->5858

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7B0

进入命令:

  $~  REQ000:7A0 02 10 03 FF FF FF FF FF       $~  ANS000:7B0 02 10 03 FF FF FF FF FF
  $~  REQ001:7A0 02 27 03 FF FF FF FF FF       $~  ANS001:7B0 02 27 03 FF FF FF FF FF
  $~  REQ002:7A0 04 27 04 1E B0 FF FF FF       $~  ANS002:7B0 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:7A0 02 3E 00 FF FF FF FF FF       $!  ANS000:7B0 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:7A0 02 10 01 FF FF FF FF FF       $@  ANS000:7B0 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A0 03 19 02 09 FF FF FF FF       $#  ANS000:7B0 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/92000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A0 04 14 FF FF FF FF FF FF       $$  ANS000:7B0 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A0 03 22 F1 80 FF FF FF FF       $%  ANS000:7B0 03 22 F1 80 FF FF FF FF
  $%  REQ001:7A0 03 22 F1 86 FF FF FF FF       $%  ANS001:7B0 03 22 F1 86 FF FF FF FF
  $%  REQ002:7A0 03 22 F1 87 FF FF FF FF       $%  ANS002:7B0 03 22 F1 87 FF FF FF FF
  $%  REQ003:7A0 03 22 F1 88 FF FF FF FF       $%  ANS003:7B0 03 22 F1 88 FF FF FF FF
  $%  REQ004:7A0 03 22 F1 B0 FF FF FF FF       $%  ANS004:7B0 03 22 F1 B0 FF FF FF FF
  $%  REQ005:7A0 03 22 F1 8A FF FF FF FF       $%  ANS005:7B0 03 22 F1 8A FF FF FF FF
  $%  REQ006:7A0 03 22 F1 8B FF FF FF FF       $%  ANS006:7B0 03 22 F1 8B FF FF FF FF
  $%  REQ007:7A0 03 22 F1 8C FF FF FF FF       $%  ANS007:7B0 03 22 F1 8C FF FF FF FF
  $%  REQ008:7A0 03 22 F1 90 FF FF FF FF       $%  ANS008:7B0 03 22 F1 90 FF FF FF FF
  $%  REQ009:7A0 03 22 F1 91 FF FF FF FF       $%  ANS009:7B0 03 22 F1 91 FF FF FF FF
  $%  REQ010:7A0 03 22 F1 98 FF FF FF FF       $%  ANS010:7B0 03 22 F1 98 FF FF FF FF
  $%  REQ011:7A0 03 22 F1 99 FF FF FF FF       $%  ANS011:7B0 03 22 F1 99 FF FF FF FF
  $%  REQ012:7A0 03 22 F1 9D FF FF FF FF       $%  ANS012:7B0 03 22 F1 9D FF FF FF FF
  $%  REQ013:7A0 03 22 F1 A6 FF FF FF FF       $%  ANS013:7B0 03 22 F1 A6 FF FF FF FF
  $%  REQ014:7A0 03 22 F1 A7 FF FF FF FF       $%  ANS014:7B0 03 22 F1 A7 FF FF FF FF
  $%  REQ015:7A0 03 22 F1 A8 FF FF FF FF       $%  ANS015:7B0 03 22 F1 A8 FF FF FF FF
  $%  REQ016:7A0 03 22 F1 A9 FF FF FF FF       $%  ANS016:7B0 03 22 F1 A9 FF FF FF FF
  $%  REQ017:7A0 03 22 F1 B1 FF FF FF FF       $%  ANS017:7B0 03 22 F1 B1 FF FF FF FF
  $%  REQ018:7A0 03 22 F1 B6 FF FF FF FF       $%  ANS018:7B0 03 22 F1 B6 FF FF FF FF
  $%  REQ019:7A0 03 22 16 11 FF FF FF FF       $%  ANS019:7B0 03 22 16 11 FF FF FF FF
  $%  REQ020:7A0 03 22 F1 BF FF FF FF FF       $%  ANS020:7B0 03 22 F1 BF FF FF FF FF
  $%  REQ021:7A0 03 22 F1 C0 FF FF FF FF       $%  ANS021:7B0 03 22 F1 C0 FF FF FF FF
  $%  REQ022:7A0 03 22 55 11 FF FF FF FF       $%  ANS022:7B0 03 22 55 11 FF FF FF FF
  $%  REQ023:7A0 03 22 55 12 FF FF FF FF       $%  ANS023:7B0 03 22 55 12 FF FF FF FF
  $%  REQ024:7A0 03 22 55 13 FF FF FF FF       $%  ANS024:7B0 03 22 55 13 FF FF FF FF
  $%  REQ025:7A0 03 22 55 14 FF FF FF FF       $%  ANS025:7B0 03 22 55 14 FF FF FF FF
  $%  REQ026:7A0 03 22 55 15 FF FF FF FF       $%  ANS026:7B0 03 22 55 15 FF FF FF FF
  $%  REQ027:7A0 03 22 90 0F FF FF FF FF       $%  ANS027:7B0 03 22 90 0F FF FF FF FF
  $%  REQ028:7A0 03 22 F1 D0 FF FF FF FF       $%  ANS028:7B0 03 22 F1 D0 FF FF FF FF
  $%  REQ029:7A0 03 22 90 10 FF FF FF FF       $%  ANS029:7B0 03 22 90 10 FF FF FF FF
  $%  REQ030:7A0 03 22 90 11 FF FF FF FF       $%  ANS030:7B0 03 22 90 11 FF FF FF FF

  $%  000:Bootloader软件版本号:                  $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:当前诊断任务模式:                      $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:整车零部件号:                          $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:应用软件版本号（正常升级版本）:        $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:应用软件版本号（固定版本）:            $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:系统供应商代码:                        $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  006:ECU生产日期:                           $%    $%  ANS006.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  007:控制器序列号:                          $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $%  008:整车VIN:                               $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:硬件版本号:                            $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  010:测试设备序列号:                        $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:刷新日期:                              $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  012:ECU装配日期:                           $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  013:TSP服务IP地址:                         $%    $%  ANS013.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $%  014:TSP服务IP端口号:                       $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  015:国标TSP服务IP地址:                     $%    $%  ANS015.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $%  016:国标TSP服务IP端口号:                   $%    $%  ANS016.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  017:ICCID号码:                             $%    $%  ANS017.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  018:4G信号强度:                            $%    $%  ANS018.BYTE004  $%  y=HEX(x1);
  $%  019:GPS定位状态:                           $%    $%  ANS019.BYTE004  $%  y=HEX(x1);
  $%  020:应用硬件版本号（固定版本）:            $%    $%  ANS020.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  021:软件总成版本号:                        $%    $%  ANS021.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  022:蓝牙模块MAC地址:                       $%    $%  ANS022.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  023:蓝牙SDK版本:                           $%    $%  ANS023.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  024:蓝牙协议版本号:                        $%    $%  ANS024.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  025:工厂钥匙:                              $%    $%  ANS025.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $%  026:工厂代码:                              $%    $%  ANS026.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  027:ESK:                                   $%    $%  ANS027.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  028:软件总成零件号:                        $%    $%  ANS028.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  029:TBOX激活状态:                          $%    $%  ANS029.BYTE004  $%  switxh(x&0x01) 0x01:y=@0151;default: y=@0152;
  $%  030:IMEI:                                  $%    $%  ANS030.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A0 03 22 16 12 FF FF FF FF       $  ANS000:7B0 03 22 16 12 FF FF FF FF
  $  REQ001:7A0 03 22 16 13 FF FF FF FF       $  ANS001:7B0 03 22 16 13 FF FF FF FF

  $  000.当前网络              $    $       $    $  ANS000.BYTE004  $  switxh(x) 0x00:y=@0148;0x02:y=2G;0x03:y=3G;0x04:y=4G;default: y=@0007;
  $  001.当前TSP连接状态       $    $       $    $  ANS001.BYTE004  $  switxh(x) 0x00:y=@0149;0x01:y=@0150;default: y=@0007;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A0 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
