
    车型ID：1c2d

    模拟：协议模拟-->1c2d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~76F

进入命令:

  $~  REQ000:767 02 10 01 00 00 00 00 00       $~  ANS000:76F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:767 02 3E 80 00 00 00 00 00       $!  ANS000:76F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:767 03 19 02 09 00 00 00 00       $#  ANS000:76F 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:767 04 14 FF FF FF 00 00 00       $$  ANS000:76F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:767 03 22 F1 93 00 00 00 00       $%  ANS000:76F 03 22 F1 93 00 00 00 00
  $%  REQ001:767 03 22 F1 94 00 00 00 00       $%  ANS001:76F 03 22 F1 94 00 00 00 00
  $%  REQ002:767 03 22 F1 95 00 00 00 00       $%  ANS002:76F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:767 03 22 00 04 00 00 00 00       $  ANS000:76F 03 22 00 04 00 00 00 00
  $  REQ001:767 03 22 00 05 00 00 00 00       $  ANS001:76F 03 22 00 05 00 00 00 00
  $  REQ002:767 03 22 00 06 00 00 00 00       $  ANS002:76F 03 22 00 06 00 00 00 00
  $  REQ003:767 03 22 00 07 00 00 00 00       $  ANS003:76F 03 22 00 07 00 00 00 00
  $  REQ004:767 03 22 B0 01 00 00 00 00       $  ANS004:76F 03 22 B0 01 00 00 00 00
  $  REQ005:767 03 22 B0 02 00 00 00 00       $  ANS005:76F 03 22 B0 02 00 00 00 00
  $  REQ006:767 03 22 B0 03 00 00 00 00       $  ANS006:76F 03 22 B0 03 00 00 00 00
  $  REQ007:767 03 22 B0 04 00 00 00 00       $  ANS007:76F 03 22 B0 04 00 00 00 00
  $  REQ008:767 03 22 B0 05 00 00 00 00       $  ANS008:76F 03 22 B0 05 00 00 00 00
  $  REQ009:767 03 22 B0 06 00 00 00 00       $  ANS009:76F 03 22 B0 06 00 00 00 00
  $  REQ010:767 03 22 B0 07 00 00 00 00       $  ANS010:76F 03 22 B0 07 00 00 00 00
  $  REQ011:767 03 22 B0 08 00 00 00 00       $  ANS011:76F 03 22 B0 08 00 00 00 00
  $  REQ012:767 03 22 B0 09 00 00 00 00       $  ANS012:76F 03 22 B0 09 00 00 00 00

  $  000.座椅水平调节                   $    $       $    $  ANS000.BYTE004  $  if((x1&0x03)==0x00) y=@003e;else if((x1&0x03)==0x01) y=@0167;else if((x1&0x03)==0x02) y=@0168;else if((x1&0x03)==0x03) y=@0002;
  $  001.高度调节                       $    $       $    $  ANS000.BYTE004  $  if((x1&0x0C)==0x00) y=@003e;else if((x1&0x0C)==0x04) y=@0042;else if((x1&0x0C)==0x08) y=@0043;else if((x1&0x0C)==0x0C) y=@0002;
  $  002.靠背调节                       $    $       $    $  ANS000.BYTE004  $  if((x1&0x30)==0x00) y=@003e;else if((x1&0x30)==0x10) y=@0169;else if((x1&0x30)==0x20) y=@016a;else if((x1&0x30)==0x30) y=@0002;
  $  003.座盆调节                       $    $       $    $  ANS000.BYTE004  $  if((x1&0xC0)==0x00) y=@003e;else if((x1&0xC0)==0x40) y=@0042;else if((x1&0xC0)==0x80) y=@0043;else if((x1&0xC0)==0xC0) y=@0002;
  $  004.头枕高度调节                   $    $       $    $  ANS000.BYTE005  $  if((x1&0x03)==0x00) y=@003e;else if((x1&0x03)==0x01) y=@0042;else if((x1&0x03)==0x02) y=@0043;else if((x1&0x03)==0x03) y=@0002;
  $  005.头枕前后调节                   $    $       $    $  ANS000.BYTE005  $  if((x1&0x0C)==0x00) y=@003e;else if((x1&0x0C)==0x04) y=@0167;else if((x1&0x0C)==0x08) y=@0168;else if((x1&0x0C)==0x0C) y=@0002;
  $  006.座椅通风总档位数               $    $       $    $  ANS001.BYTE004  $  if(x1==0x00)y=@016b;else if(x1==0x01)y=@010e;else y=@0002;
  $  007.座椅通风当前档位               $    $       $    $  ANS001.BYTE005  $  if(x1==0x00)y=@0000;else if(x1==0x01)y=@004c;else if(x1==0x02)y=@010e;else if(x1==0x03)y=@004b;else y=@0002;
  $  008.座椅加热总档位数               $    $       $    $  ANS002.BYTE004  $  if(x1==0x00)y=@016b;else if(x1==0x01)y=@010e;else y=@0002;
  $  009.座椅加热当前档位               $    $       $    $  ANS002.BYTE005  $  if(x1==0x00)y=@0000;else if(x1==0x01)y=@004c;else if(x1==0x02)y=@010e;else if(x1==0x03)y=@004b;else y=@0002;
  $  010.记忆档位1按键                  $    $       $    $  ANS003.BYTE004  $  if(x1&0x01)y=@0047;else y=@0056;
  $  011.记忆档位2按键                  $    $       $    $  ANS003.BYTE004  $  if(x1&0x02)y=@0047;else y=@0056;
  $  012.记忆档位3按键                  $    $       $    $  ANS003.BYTE004  $  if(x1&0x04)y=@0047;else y=@0056;
  $  013.记忆档位SET按键                $    $       $    $  ANS003.BYTE004  $  if(x1&0x08)y=@0047;else y=@0056;
  $  014.座椅通风按键                   $    $       $    $  ANS003.BYTE004  $  if(x1&0x10)y=@0047;else y=@0056;
  $  015.座椅加热按键                   $    $       $    $  ANS003.BYTE004  $  if(x1&0x20)y=@0047;else y=@0056;
  $  016.记忆1档开关次数                $    $       $    $  ANS004.BYTE004  $  y=x1+x2*256;
  $  017.记忆2档开关次数                $    $       $    $  ANS004.BYTE006  $  y=x1+x2*256;
  $  018.记忆3档开关次数                $    $       $    $  ANS005.BYTE004  $  y=x1+x2*256;
  $  019.记忆SET档开关次数              $    $       $    $  ANS005.BYTE006  $  y=x1+x2*256;
  $  020.副驾通风开关次数               $    $       $    $  ANS006.BYTE004  $  y=x1+x2*256;
  $  021.副驾加热开关次数               $    $       $    $  ANS006.BYTE006  $  y=x1+x2*256;
  $  022.副驾向前调节开关次数           $    $       $    $  ANS007.BYTE004  $  y=x1+x2*256;
  $  023.副驾向后调节开关次数           $    $       $    $  ANS007.BYTE006  $  y=x1+x2*256;
  $  024.副驾靠背向前调节开关次数       $    $       $    $  ANS008.BYTE004  $  y=x1+x2*256;
  $  025.副驾靠背向后调节开关次数       $    $       $    $  ANS008.BYTE006  $  y=x1+x2*256;
  $  026.副驾高度向上调节开关次数       $    $       $    $  ANS009.BYTE004  $  y=x1+x2*256;
  $  027.副驾高度向下调节开关次数       $    $       $    $  ANS009.BYTE006  $  y=x1+x2*256;
  $  028.副驾座盆向上调节开关次数       $    $       $    $  ANS010.BYTE004  $  y=x1+x2*256;
  $  029.副驾座盆向下开关次数           $    $       $    $  ANS010.BYTE006  $  y=x1+x2*256;
  $  030.头枕高度向上调节开关次数       $    $       $    $  ANS011.BYTE004  $  y=x1+x2*256;
  $  031.头枕高度向下调节开关次数       $    $       $    $  ANS011.BYTE006  $  y=x1+x2*256;
  $  032.头枕向前调节开关次数           $    $       $    $  ANS012.BYTE004  $  y=x1+x2*256;
  $  033.头枕向后调节开关次数           $    $       $    $  ANS012.BYTE006  $  y=x1+x2*256;

;******************************************************************************************************************************************************

动作测试:

$^ 00.座椅水平调节操作测试 
$^TYPE0
$^BUTTON:停止 
$^REQ00:767 05 2F 20 01 03 00 00 00     $^

$^BUTTON:向前 
$^REQ00:767 05 2F 20 01 03 01 00 00     $^

$^BUTTON:向后 
$^REQ00:767 05 2F 20 01 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.座椅高度调节操作测试 
$^TYPE0
$^BUTTON:停止 
$^REQ00:767 05 2F 20 02 03 00 00 00     $^

$^BUTTON:上升 
$^REQ00:767 05 2F 20 02 03 01 00 00     $^

$^BUTTON:下降 
$^REQ00:767 05 2F 20 02 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.座椅靠背调节操作测试 
$^TYPE0
$^BUTTON:停止 
$^REQ00:767 05 2F 20 03 03 00 00 00     $^

$^BUTTON:前倾 
$^REQ00:767 05 2F 20 03 03 01 00 00     $^

$^BUTTON:后倾 
$^REQ00:767 05 2F 20 03 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.座椅座盆调节操作测试 
$^TYPE0
$^BUTTON:停止 
$^REQ00:767 05 2F 20 04 03 00 00 00     $^

$^BUTTON:上升 
$^REQ00:767 05 2F 20 04 03 01 00 00     $^

$^BUTTON:下降 
$^REQ00:767 05 2F 20 04 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.头枕高度调节测试 
$^TYPE0
$^BUTTON:停止 
$^REQ00:767 05 2F 20 05 03 00 00 00     $^

$^BUTTON:上升 
$^REQ00:767 05 2F 20 05 03 01 00 00     $^

$^BUTTON:下降 
$^REQ00:767 05 2F 20 05 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.头枕前后调节测试 
$^TYPE0
$^BUTTON:停止 
$^REQ00:767 05 2F 20 06 03 00 00 00     $^

$^BUTTON:向前 
$^REQ00:767 05 2F 20 06 03 01 00 00     $^

$^BUTTON:向后 
$^REQ00:767 05 2F 20 06 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 06.记忆档位1测试 
$^TYPE0
$^BUTTON:执行 
$^REQ00:767 05 2F 20 07 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 07.记忆档位2测试 
$^TYPE0
$^BUTTON:执行 
$^REQ00:767 05 2F 20 08 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 08.座椅水平调节操作测试 
$^TYPE0
$^BUTTON:执行 
$^REQ00:767 05 2F 20 09 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 09.进行座椅水平调节测试 
$^TYPE0
$^BUTTON:执行 
$^REQ00:767 05 2F 20 0A 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 10.记忆档位SET+1测试 
$^TYPE0
$^BUTTON:执行 
$^REQ00:767 05 2F 20 0B 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 11.记忆档位SET+2测试 
$^TYPE0
$^BUTTON:执行 
$^REQ00:767 05 2F 20 0C 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 12.记忆档位SET+3测试 
$^TYPE0
$^BUTTON:执行 
$^REQ00:767 05 2F 20 0E 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 13.进行座椅通风高速测试 
$^TYPE0
$^BUTTON:执行 
$^REQ00:767 05 2F 20 0F 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 14.座椅通风低速测试 
$^TYPE0
$^BUTTON:执行 
$^REQ00:767 05 2F 20 10 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 15.座椅加热高温档测试 
$^TYPE0
$^BUTTON:执行 
$^REQ00:767 05 2F 20 11 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 16.座椅加热低温档测试 
$^TYPE0
$^BUTTON:执行 
$^REQ00:767 05 2F 20 12 03 FF 00 00     $^

$^BUTTON:退出 
$^REQ00:767 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:767 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
