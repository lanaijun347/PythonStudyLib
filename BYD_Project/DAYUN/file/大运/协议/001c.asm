
    车型ID：001c

    模拟：协议模拟-->001c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A0

进入命令:

  $~  REQ000:720 02 10 01 00 00 00 00 00       $~  ANS000:7A0 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:720 02 3E 00 00 00 00 00 00       $!  ANS000:7A0 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:720 03 19 02 09 00 00 00 00       $#  ANS000:7A0 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/1b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:720 04 14 FF FF FF 00 00 00       $$  ANS000:7A0 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:720 03 22 F1 87 00 00 00 00       $%  ANS000:7A0 03 22 F1 87 00 00 00 00
  $%  REQ001:720 03 22 F1 8A 00 00 00 00       $%  ANS001:7A0 03 22 F1 8A 00 00 00 00
  $%  REQ002:720 03 22 F1 93 00 00 00 00       $%  ANS002:7A0 03 22 F1 93 00 00 00 00
  $%  REQ003:720 03 22 F1 95 00 00 00 00       $%  ANS003:7A0 03 22 F1 95 00 00 00 00
  $%  REQ004:720 03 22 F1 9D 00 00 00 00       $%  ANS004:7A0 03 22 F1 9D 00 00 00 00
  $%  REQ005:720 03 22 F1 8B 00 00 00 00       $%  ANS005:7A0 03 22 F1 8B 00 00 00 00
  $%  REQ006:720 03 22 F1 90 00 00 00 00       $%  ANS006:7A0 03 22 F1 90 00 00 00 00
  $%  REQ007:720 03 22 F1 8C 00 00 00 00       $%  ANS007:7A0 03 22 F1 8C 00 00 00 00
  $%  REQ008:720 03 22 F1 98 00 00 00 00       $%  ANS008:7A0 03 22 F1 98 00 00 00 00
  $%  REQ009:720 03 22 38 00 00 00 00 00       $%  ANS009:7A0 03 22 38 00 00 00 00 00

  $%  000:零部件件号:                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  001:系统供应商代码:                 $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:系统供应商ECU硬件版本号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  003:系统供应商ECU软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  004:ECU安装日期:                    $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  005:ECU制造日期:                    $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  006:VIN:                            $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU序列号:                      $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  008:维修店代码/测试仪序列号:        $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:ECU维修日期:                    $%    $%  ANS009.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.ECU点火回路电阻值
  $  00.ECU点火回路电阻值
  $  REQ000:720 03 22 38 10 00 00 00 00       $  ANS000:7A0 03 22 38 10 00 00 00 00

  $  000.驾驶员安全气囊（DAB）爆震电阻值               $    $  ohm     $    $  ANS000.BYTE004  $  y = SPRINTF([%.2f], x1*0.05);
  $  001.乘客安全气囊（PAB）爆震电阻值                 $    $  ohm     $    $  ANS000.BYTE005  $  y = SPRINTF([%.2f], x1*0.05);
  $  002.驾驶员座椅安全带预紧器（DBT）爆震电阻值       $    $  ohm     $    $  ANS000.BYTE006  $  y = SPRINTF([%.2f], x1*0.05);
  $  003.乘客座椅安全带预紧器（PBT）爆震电阻值         $    $  ohm     $    $  ANS000.BYTE007  $  y = SPRINTF([%.2f], x1*0.05);
  $  004.驾驶员侧安全气囊（DSAB）爆震电阻值            $    $  ohm     $    $  ANS000.BYTE008  $  y = SPRINTF([%.2f], x1*0.05);
  $  005.乘客侧安全气囊（PAB）爆震电阻值               $    $  ohm     $    $  ANS000.BYTE009  $  y = SPRINTF([%.2f], x1*0.05);
  $  006.驾驶员窗帘安全气囊（DCAB）爆震电阻值          $    $  ohm     $    $  ANS000.BYTE010  $  y = SPRINTF([%.2f], x1*0.05);
  $  007.乘客窗帘安全气囊（PCAB）爆震电阻值            $    $  ohm     $    $  ANS000.BYTE011  $  y = SPRINTF([%.2f], x1*0.05);

  $)  01.ECU配置信息
  $  01.ECU配置信息
  $  REQ000:720 03 22 38 20 00 00 00 00       $  ANS000:7A0 03 22 38 20 00 00 00 00

  $  000.驾驶员正面安全气囊（DAB）           $    $       $    $  ANS000.BYTE004  $  if(x1&0x01) y=@0054;else y=@0055;
  $  001.乘客正面安全气囊（PAB）             $    $       $    $  ANS000.BYTE004  $  if(x1&0x02) y=@0054;else y=@0055;
  $  002.驾驶员安全带预紧器（DBT）           $    $       $    $  ANS000.BYTE004  $  if(x1&0x04) y=@0054;else y=@0055;
  $  003.乘客安全带预紧器（PBT）             $    $       $    $  ANS000.BYTE004  $  if(x1&0x08) y=@0054;else y=@0055;
  $  004.驾驶员侧安全气囊（DSAB）            $    $       $    $  ANS000.BYTE005  $  if(x1&0x01) y=@0054;else y=@0055;
  $  005.副驾驶侧安全气囊（PSAB）            $    $       $    $  ANS000.BYTE005  $  if(x1&0x02) y=@0054;else y=@0055;
  $  006.驾驶员安全气帘（DCAB）              $    $       $    $  ANS000.BYTE005  $  if(x1&0x04) y=@0054;else y=@0055;
  $  007.副驾驶安全气帘（PCAB）              $    $       $    $  ANS000.BYTE005  $  if(x1&0x08) y=@0054;else y=@0055;
  $  008.左侧加速度传感器                    $    $       $    $  ANS000.BYTE006  $  if(x1&0x01) y=@0054;else y=@0055;
  $  009.右侧加速度传感器                    $    $       $    $  ANS000.BYTE006  $  if(x1&0x02) y=@0054;else y=@0055;
  $  010.左前加速度传感器                    $    $       $    $  ANS000.BYTE006  $  if(x1&0x04) y=@0054;else y=@0055;
  $  011.右前加速度传感器                    $    $       $    $  ANS000.BYTE006  $  if(x1&0x08) y=@0054;else y=@0055;
  $  012.驾驶员安全带扣                      $    $       $    $  ANS000.BYTE007  $  if(x1&0x01) y=@0054;else y=@0055;
  $  013.副驾驶安全带扣                      $    $       $    $  ANS000.BYTE007  $  if(x1&0x02) y=@0054;else y=@0055;
  $  014.副驾驶安全带扣检测开关              $    $       $    $  ANS000.BYTE007  $  if(x1&0x04) y=@0054;else y=@0055;
  $  015.碰撞电流输出通道1                   $    $       $    $  ANS000.BYTE008  $  if(x1&0x01) y=@0054;else y=@0055;
  $  016.碰撞电流输出通道2                   $    $       $    $  ANS000.BYTE008  $  if(x1&0x02) y=@0054;else y=@0055;
  $  017.通过CAN线输出碰撞信息               $    $       $    $  ANS000.BYTE008  $  if(x1&0x10) y=@0054;else y=@0055;
  $  018.安全气囊警告灯                      $    $       $    $  ANS000.BYTE009  $  if(x1&0x01) y=@0054;else y=@0055;
  $  019.通过CAN线控制的安全气囊警告灯       $    $       $    $  ANS000.BYTE009  $  if(x1&0x10) y=@0054;else y=@0055;

  $)  02.点爆状态
  $  02.点爆状态
  $  REQ000:720 03 22 38 30 00 00 00 00       $  ANS000:7A0 03 22 38 30 00 00 00 00

  $  000.碰撞状态         $    $       $    $  ANS000.BYTE004  $  if(((x1>>0)&1)) y=@0059;else y=@005b;
  $  001.全局故障         $    $       $    $  ANS000.BYTE004  $  if(((x1>>1)&1)) y=@0058;else y=@002f;
  $  002.电源状态         $    $       $    $  ANS000.BYTE004  $  if(((x1>>2)&1)) y=@0058;else y=@002f;
  $  003.ER状态           $    $       $    $  ANS000.BYTE004  $  if(((x1>>3)&1)) y=@0058;else y=@002f;
  $  004.看门狗故障       $    $       $    $  ANS000.BYTE004  $  if(((x1>>4)&1)) y=@0058;else y=@002f;
  $  005.事件类型         $    $       $    $  ANS000.BYTE004  $  if(((x1>>5)&1)) y=@0059;else y=@005a;
  $  006.点爆状态         $    $       $    $  ANS000.BYTE004  $  if(((x1>>6)&1)) y=@0056;else y=@0057;
  $  007.SPI故障          $    $       $    $  ANS000.BYTE004  $  if(((x1>>7)&1)) y=@0058;else y=@002f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:720 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
