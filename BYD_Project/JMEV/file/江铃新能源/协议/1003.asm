
    车型ID：1003

    模拟：协议模拟-->1003

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~250K$~805FF80

进入命令:

  $~  REQ000:804FF80 02 10 01 00 00 00 00 00       $~  ANS000:805FF80 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:804FF80 02 3E 00 00 00 00 00 00       $!  ANS000:805FF80 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:804FF80 03 19 02 FF 00 00 00 00       $#  ANS000:805FF80 03 19 02 FF 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/03000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:804FF80 04 14 FF FF FF 00 00 00       $$  ANS000:805FF80 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:804FF80 03 22 F1 90 00 00 00 00       $%  ANS000:805FF80 03 22 F1 90 00 00 00 00
  $%  REQ001:804FF80 03 22 F1 95 00 00 00 00       $%  ANS001:805FF80 03 22 F1 95 00 00 00 00

  $%  000:VIN:               $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  001:软件版本号:        $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:804FF80 03 22 30 07 00 00 00 00       $  ANS000:805FF80 03 22 30 07 00 00 00 00
  $  REQ001:804FF80 03 22 30 08 00 00 00 00       $  ANS001:805FF80 03 22 30 08 00 00 00 00
  $  REQ002:804FF80 03 22 30 10 00 00 00 00       $  ANS002:805FF80 03 22 30 10 00 00 00 00
  $  REQ003:804FF80 03 22 30 14 00 00 00 00       $  ANS003:805FF80 03 22 30 14 00 00 00 00

  $  000.前左轮速                      $    $  km/h     $    $  ANS000.BYTE004  $  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30);
  $  001.前右轮速                      $    $  km/h     $    $  ANS000.BYTE006  $  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30);
  $  002.后左轮速                      $    $  km/h     $    $  ANS000.BYTE008  $  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30);
  $  003.后右轮速                      $    $  km/h     $    $  ANS000.BYTE010  $  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30);
  $  004.车速                          $    $  km/h     $    $  ANS000.BYTE012  $  y=(x1*256+x2)/128.0;
  $  005.粗糙的道路参数                $    $  G        $    $  ANS000.BYTE014  $  y=(x1*256+x2)/64.0;
  $  006.状态1（按位）                 $    $           $    $  ANS000.BYTE015  $  y=x/255.1;
  $  007.系统电压                      $    $  V        $    $  ANS000.BYTE016  $  y=x;
  $  008.电池电压                      $    $  V        $    $  ANS000.BYTE018  $  y=x;
  $  009.备用                          $    $           $    $  ANS000.BYTE020  $  y=x/255.1;
  $  010.备用                          $    $           $    $  ANS000.BYTE021  $  y=x/255.1;
  $  011.系统运行状态                  $    $           $    $  ANS000.BYTE022  $  y=x/255.1;
  $  012.泵马达电流                    $    $           $    $  ANS001.BYTE004  $  y=(x1*256+x2)/128.0;
  $  013.电池电压                      $    $           $    $  ANS001.BYTE008  $  y=x;
  $  014.泵反馈电压                    $    $           $    $  ANS001.BYTE010  $  y=x;
  $  015.系统电压                      $    $           $    $  ANS001.BYTE012  $  y=x;
  $  016.马达驱动温度                  $    $           $    $  ANS001.BYTE014  $  y=(x1*256+x2)/1024.0;
  $  017.状态2（按位）                 $    $           $    $  ANS001.BYTE016  $  y=x/255.1;
  $  018.状态3（按位）                 $    $           $    $  ANS001.BYTE017  $  y=x/255.1;
  $  019.主缸压力传感器1输入电压       $    $  V        $    $  ANS002.BYTE004  $  y=x1*256+x2;
  $  020.主缸压力传感器1输入压力       $    $  psi      $    $  ANS002.BYTE006  $  y=(x1*256+x2)/4095.99;
  $  021.主缸压力传感器1偏压           $    $  PSI      $    $  ANS002.BYTE008  $  y=(x1*256+x2)*1;
  $  022.主缸压力传感器2输入电压       $    $  V        $    $  ANS002.BYTE010  $  y=x1*256+x2;
  $  023.主缸压力传感器2压力           $    $  psi      $    $  ANS002.BYTE012  $  y=(x1*256+x2)/4095.99;
  $  024.主缸压力传感器2偏压           $    $  PSI      $    $  ANS002.BYTE014  $  y=(x1*256+x2)*1;
  $  025.主缸压力                      $    $  PSI      $    $  ANS002.BYTE016  $  y=(x1*256+x2)*1;
  $  026.状态4（按位）                 $    $           $    $  ANS002.BYTE018  $  y=x/255.1;
  $  027.主缸压力传感器电压输出        $    $  V        $    $  ANS002.BYTE019  $  y=x1*256+x2;
  $  028.方向盘转角                    $    $  Deg      $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.125;

;******************************************************************************************************************************************************

