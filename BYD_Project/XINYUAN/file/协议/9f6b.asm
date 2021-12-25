
    车型ID：9f6b

    模拟：协议模拟-->9f6b

;******************************************************************************************************************************************************

    通讯线: $~02$~10$~250K$~18F4008F

进入命令:

  $~  REQ000:0       $~  ANS000:18F4008F

空闲命令:


退出命令:



;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:010220002400001c7a00478       $  ANS000:18F4008F10220002400001c7a00478

  $  000.DCDC输出电压                $    $  V       $    $  ANS000.BYTE001  $  y=(x1*256+x2)*0.1;
  $  001.DCDC输出电流                $    $  A       $    $  ANS000.BYTE003  $  y=(x1*256+x2)*0.1;
  $  002.DCDC 初始化完成             $    $          $    $  ANS000.BYTE005  $  if((x&0x01)==0x01) y=@002f;else y=@0030;
  $  003.DCDC 工作状态               $    $          $    $  ANS000.BYTE005  $  if((x&0x02)==0x02) y=@002d;else y=@002e;
  $  004.DCDC 硬件故障               $    $          $    $  ANS000.BYTE005  $  if((x&0x04)==0x04) y=@002c;else y=@0017;
  $  005.DCDC 通讯故障               $    $          $    $  ANS000.BYTE005  $  if((x&0x08)==0x08) y=@002c;else y=@0017;
  $  006.DCDC控制风扇/水泵工作       $    $          $    $  ANS000.BYTE005  $  if((x&0x10)==0x10) y=@0014;else y=@0015;
  $  007.停机失败                    $    $          $    $  ANS000.BYTE005  $  if((x&0x20)==0x20) y=@0031;else y=@0032;
  $  008.控制冷却水泵的风扇          $    $          $    $  ANS000.BYTE005  $  if((x&0x40)==0x40) y=@0014;else y=@0015;
  $  009.高压互锁故障                $    $          $    $  ANS000.BYTE005  $  if((x&0x80)==0x80) y=@002c;else y=@0034;
  $  010.DCDC过温警告                $    $          $    $  ANS000.BYTE006  $  if((x&0x01)==0x01) y=@0033;else y=@0017;
  $  011.DCDC过温保护                $    $          $    $  ANS000.BYTE006  $  if((x&0x02)==0x02) y=@002c;else y=@0017;
  $  012.DCDC输入过压                $    $          $    $  ANS000.BYTE006  $  if((x&0x04)==0x04) y=@002c;else y=@0017;
  $  013.DCDC输入欠压                $    $          $    $  ANS000.BYTE006  $  if((x&0x08)==0x08) y=@002c;else y=@0017;
  $  014.DCDC输出过压                $    $          $    $  ANS000.BYTE006  $  if((x&0x10)==0x10) y=@002c;else y=@0017;
  $  015.DCDC输出欠压                $    $          $    $  ANS000.BYTE006  $  if((x&0x20)==0x20) y=@002c;else y=@0017;
  $  016.DCDC输出过流或短路          $    $          $    $  ANS000.BYTE006  $  if((x&0x40)==0x40) y=@002c;else y=@0017;
  $  017.DCDC 温度                   $    $  °C     $    $  ANS000.BYTE008  $  y=x-60;

;******************************************************************************************************************************************************

