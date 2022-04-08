
    车型ID：1c1f

    模拟：协议模拟-->1c1f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72E

进入命令:

  $~  REQ000:726 02 10 01 00 00 00 00 00       $~  ANS000:72E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:726 02 3E 80 00 00 00 00 00       $!  ANS000:72E 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:726 03 19 02 09 00 00 00 00       $#  ANS000:72E 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:726 04 14 FF FF FF 00 00 00       $$  ANS000:72E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:726 03 22 F1 93 00 00 00 00       $%  ANS000:72E 03 22 F1 93 00 00 00 00
  $%  REQ001:726 03 22 F1 94 00 00 00 00       $%  ANS001:72E 03 22 F1 94 00 00 00 00
  $%  REQ002:726 03 22 F1 95 00 00 00 00       $%  ANS002:72E 03 22 F1 95 00 00 00 00
  $%  REQ003:726 03 22 00 0C 00 00 00 00       $%  ANS003:72E 03 22 00 0C 00 00 00 00
  $%  REQ004:726 03 22 00 0D 00 00 00 00       $%  ANS004:72E 03 22 00 0D 00 00 00 00
  $%  REQ005:726 03 22 00 39 00 00 00 00       $%  ANS005:72E 03 22 00 39 00 00 00 00
  $%  REQ006:726 03 22 00 3A 00 00 00 00       $%  ANS006:72E 03 22 00 3A 00 00 00 00
  $%  REQ007:726 03 22 00 49 00 00 00 00       $%  ANS007:72E 03 22 00 49 00 00 00 00
  $%  REQ008:726 03 22 00 4A 00 00 00 00       $%  ANS008:72E 03 22 00 4A 00 00 00 00
  $%  REQ009:726 03 22 00 59 00 00 00 00       $%  ANS009:72E 03 22 00 59 00 00 00 00
  $%  REQ010:726 03 22 00 5A 00 00 00 00       $%  ANS010:72E 03 22 00 5A 00 00 00 00
  $%  REQ011:726 03 22 00 18 00 00 00 00       $%  ANS011:72E 03 22 00 18 00 00 00 00
  $%  REQ012:726 03 22 00 19 00 00 00 00       $%  ANS012:72E 03 22 00 19 00 00 00 00
  $%  REQ013:726 03 22 00 27 00 00 00 00       $%  ANS013:72E 03 22 00 27 00 00 00 00
  $%  REQ014:726 03 22 00 28 00 00 00 00       $%  ANS014:72E 03 22 00 28 00 00 00 00

  $%  000:硬件版本:                        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:                        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  002:软件编号:                        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:                        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:                        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  005:修改次数:                        $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:左前车窗防夹电机软件版本:        $%    $%  ANS003.BYTE004  $%  y=x1*0.1;
  $%  007:左前车窗防夹电机硬件版本:        $%    $%  ANS004.BYTE004  $%  y=x1*0.1;
  $%  008:右前车窗防夹电机软件版本:        $%    $%  ANS005.BYTE004  $%  y=x1*0.1;
  $%  009:右前车窗防夹电机硬件版本:        $%    $%  ANS006.BYTE004  $%  y=x1*0.1;
  $%  010:左后车窗防夹电机软件版本:        $%    $%  ANS007.BYTE004  $%  y=x1*0.1;
  $%  011:左后车窗防夹电机硬件版本:        $%    $%  ANS008.BYTE004  $%  y=x1*0.1;
  $%  012:右后车窗防夹电机软件版本:        $%    $%  ANS009.BYTE004  $%  y=x1*0.1;
  $%  013:右后车窗防夹电机硬件版本:        $%    $%  ANS010.BYTE004  $%  y=x1*0.1;
  $%  014:天窗电机硬件版本:                $%    $%  ANS011.BYTE004  $%  y=x1*0.1;
  $%  015:天窗电机软件版本:                $%    $%  ANS012.BYTE004  $%  y=x1*0.1;
  $%  016:遮阳帘电机硬件版本:              $%    $%  ANS013.BYTE004  $%  y=x1*0.1;
  $%  017:遮阳帘电机软件版本:              $%    $%  ANS014.BYTE004  $%  y=x1*0.1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:726 03 22 00 04 00 00 00 00       $  ANS000:72E 03 22 00 04 00 00 00 00
  $  REQ001:726 03 22 00 05 00 00 00 00       $  ANS001:72E 03 22 00 05 00 00 00 00
  $  REQ002:726 03 22 00 06 00 00 00 00       $  ANS002:72E 03 22 00 06 00 00 00 00
  $  REQ003:726 03 22 00 07 00 00 00 00       $  ANS003:72E 03 22 00 07 00 00 00 00
  $  REQ004:726 03 22 00 08 00 00 00 00       $  ANS004:72E 03 22 00 08 00 00 00 00
  $  REQ005:726 03 22 00 09 00 00 00 00       $  ANS005:72E 03 22 00 09 00 00 00 00
  $  REQ006:726 03 22 00 0A 00 00 00 00       $  ANS006:72E 03 22 00 0A 00 00 00 00
  $  REQ007:726 03 22 00 0B 00 00 00 00       $  ANS007:72E 03 22 00 0B 00 00 00 00
  $  REQ008:726 03 22 00 0E 00 00 00 00       $  ANS008:72E 03 22 00 0E 00 00 00 00
  $  REQ009:726 03 22 00 11 00 00 00 00       $  ANS009:72E 03 22 00 11 00 00 00 00
  $  REQ010:726 03 22 00 12 00 00 00 00       $  ANS010:72E 03 22 00 12 00 00 00 00
  $  REQ011:726 03 22 00 13 00 00 00 00       $  ANS011:72E 03 22 00 13 00 00 00 00
  $  REQ012:726 03 22 00 14 00 00 00 00       $  ANS012:72E 03 22 00 14 00 00 00 00
  $  REQ013:726 03 22 00 15 00 00 00 00       $  ANS013:72E 03 22 00 15 00 00 00 00
  $  REQ014:726 03 22 00 16 00 00 00 00       $  ANS014:72E 03 22 00 16 00 00 00 00
  $  REQ015:726 03 22 00 17 00 00 00 00       $  ANS015:72E 03 22 00 17 00 00 00 00
  $  REQ016:726 03 22 00 21 00 00 00 00       $  ANS016:72E 03 22 00 21 00 00 00 00
  $  REQ017:726 03 22 00 22 00 00 00 00       $  ANS017:72E 03 22 00 22 00 00 00 00
  $  REQ018:726 03 22 00 23 00 00 00 00       $  ANS018:72E 03 22 00 23 00 00 00 00
  $  REQ019:726 03 22 00 24 00 00 00 00       $  ANS019:72E 03 22 00 24 00 00 00 00
  $  REQ020:726 03 22 00 25 00 00 00 00       $  ANS020:72E 03 22 00 25 00 00 00 00
  $  REQ021:726 03 22 00 26 00 00 00 00       $  ANS021:72E 03 22 00 26 00 00 00 00
  $  REQ022:726 03 22 00 31 00 00 00 00       $  ANS022:72E 03 22 00 31 00 00 00 00
  $  REQ023:726 03 22 00 32 00 00 00 00       $  ANS023:72E 03 22 00 32 00 00 00 00
  $  REQ024:726 03 22 00 33 00 00 00 00       $  ANS024:72E 03 22 00 33 00 00 00 00
  $  REQ025:726 03 22 00 34 00 00 00 00       $  ANS025:72E 03 22 00 34 00 00 00 00
  $  REQ026:726 03 22 00 35 00 00 00 00       $  ANS026:72E 03 22 00 35 00 00 00 00
  $  REQ027:726 03 22 00 36 00 00 00 00       $  ANS027:72E 03 22 00 36 00 00 00 00
  $  REQ028:726 03 22 00 37 00 00 00 00       $  ANS028:72E 03 22 00 37 00 00 00 00
  $  REQ029:726 03 22 00 38 00 00 00 00       $  ANS029:72E 03 22 00 38 00 00 00 00
  $  REQ030:726 03 22 00 41 00 00 00 00       $  ANS030:72E 03 22 00 41 00 00 00 00
  $  REQ031:726 03 22 00 42 00 00 00 00       $  ANS031:72E 03 22 00 42 00 00 00 00
  $  REQ032:726 03 22 00 43 00 00 00 00       $  ANS032:72E 03 22 00 43 00 00 00 00
  $  REQ033:726 03 22 00 44 00 00 00 00       $  ANS033:72E 03 22 00 44 00 00 00 00
  $  REQ034:726 03 22 00 45 00 00 00 00       $  ANS034:72E 03 22 00 45 00 00 00 00
  $  REQ035:726 03 22 00 46 00 00 00 00       $  ANS035:72E 03 22 00 46 00 00 00 00
  $  REQ036:726 03 22 00 47 00 00 00 00       $  ANS036:72E 03 22 00 47 00 00 00 00
  $  REQ037:726 03 22 00 48 00 00 00 00       $  ANS037:72E 03 22 00 48 00 00 00 00
  $  REQ038:726 03 22 00 51 00 00 00 00       $  ANS038:72E 03 22 00 51 00 00 00 00
  $  REQ039:726 03 22 00 52 00 00 00 00       $  ANS039:72E 03 22 00 52 00 00 00 00
  $  REQ040:726 03 22 00 53 00 00 00 00       $  ANS040:72E 03 22 00 53 00 00 00 00
  $  REQ041:726 03 22 00 54 00 00 00 00       $  ANS041:72E 03 22 00 54 00 00 00 00
  $  REQ042:726 03 22 00 55 00 00 00 00       $  ANS042:72E 03 22 00 55 00 00 00 00
  $  REQ043:726 03 22 00 56 00 00 00 00       $  ANS043:72E 03 22 00 56 00 00 00 00
  $  REQ044:726 03 22 00 57 00 00 00 00       $  ANS044:72E 03 22 00 57 00 00 00 00
  $  REQ045:726 03 22 00 58 00 00 00 00       $  ANS045:72E 03 22 00 58 00 00 00 00

  $  000.左前车窗当前动作状态           $    $        $    $  ANS000.BYTE004  $  if(x1==0x00)y=@003b;else if(x1==0x01)y=@003e;else if(x1==0x02)y=@0001;else if(x1==0x03)y=@0000;else y=@0002;
  $  001.左前车窗位置                   $    $        $    $  ANS001.BYTE004  $  if(x1==0x00)y=@003b;else if(x1==0x01)y=@003c;else if(x1==0x02)y=@003d;else if(x1==0x03)y=@0005;else y=@0002;
  $  002.左前车窗位置状态               $    $        $    $  ANS002.BYTE004  $  if(x1==0x00)y=@003f;else if(x1==0x01)y=@0040;else if(x1==0x02)y=@0041;else y=@0002;
  $  003.左前车窗自动上升开关信号       $    $        $    $  ANS003.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  004.左前车窗自动下降开关信号       $    $        $    $  ANS004.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  005.左前车窗手动上升开关信号       $    $        $    $  ANS005.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  006.左前车窗手动下降开关信号       $    $        $    $  ANS006.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  007.左前车窗玻璃位置百分比         $    $  %     $    $  ANS007.BYTE004  $  if(x1 < 101) y=x1;else if(x1 == 0xFF) y=@0044;else y=@0002;
  $  008.遥控升降窗状态                 $    $        $    $  ANS008.BYTE004  $  if(x1==0x00)y=@003e;else if(x1==0x01)y=@0042;else if(x1==0x02)y=@0043;else y=@0002;
  $  009.天窗当前动作状态               $    $        $    $  ANS009.BYTE004  $  if(x1==0x00)y=@003b;else if(x1==0x01)y=@003e;else if(x1==0x02)y=@0001;else if(x1==0x03)y=@0000;else y=@0002;
  $  010.天窗位置状态                   $    $        $    $  ANS010.BYTE004  $  if(x1==0x00)y=@003f;else if(x1==0x01)y=@0040;else if(x1==0x02)y=@0041;else y=@0002;
  $  011.天窗电机热保护状态             $    $        $    $  ANS011.BYTE004  $  if(x1==0x00)y=@0057;else if(x1==0x01)y=@0058;else y=@0002;
  $  012.天窗上倾开关信号               $    $        $    $  ANS012.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  013.天窗打开开关信号               $    $        $    $  ANS013.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  014.天窗关闭开关信号               $    $        $    $  ANS014.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  015.天窗玻璃位置百分比             $    $  %     $    $  ANS015.BYTE004  $  if(x1 < 101) y=x1;else if(x1 == 0xFF) y=@0044;else y=@0002;
  $  016.遮阳帘当前动作状态             $    $        $    $  ANS016.BYTE004  $  if(x1==0x00)y=@003b;else if(x1==0x01)y=@003e;else if(x1==0x02)y=@0001;else if(x1==0x03)y=@0000;else y=@0002;
  $  017.遮阳帘位置状态                 $    $        $    $  ANS017.BYTE004  $  if(x1==0x00)y=@003f;else if(x1==0x01)y=@0040;else if(x1==0x02)y=@0041;else y=@0002;
  $  018.遮阳帘电机热保护状态           $    $        $    $  ANS018.BYTE004  $  if(x1==0x00)y=@0057;else if(x1==0x01)y=@0058;else y=@0002;
  $  019.遮阳帘打开开关信号             $    $        $    $  ANS019.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  020.遮阳帘关闭开关信号             $    $        $    $  ANS020.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  021.遮阳帘位置百分比               $    $  %     $    $  ANS021.BYTE004  $  if(x1 < 101) y=x1;else if(x1 == 0xFF) y=@0044;else y=@0002;
  $  022.右前车窗当前动作状态           $    $        $    $  ANS022.BYTE004  $  if(x1==0x00)y=@003b;else if(x1==0x01)y=@003e;else if(x1==0x02)y=@0001;else if(x1==0x03)y=@0000;else y=@0002;
  $  023.右前车窗位置                   $    $        $    $  ANS023.BYTE004  $  if(x1==0x00)y=@003b;else if(x1==0x01)y=@003c;else if(x1==0x02)y=@003d;else if(x1==0x03)y=@0005;else y=@0002;
  $  024.右前车窗位置状态               $    $        $    $  ANS024.BYTE004  $  if(x1==0x00)y=@003f;else if(x1==0x01)y=@0040;else if(x1==0x02)y=@0041;else y=@0002;
  $  025.右前车窗自动上升开关信号       $    $        $    $  ANS025.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  026.右前车窗自动下降开关信号       $    $        $    $  ANS026.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  027.右前车窗手动上升开关信号       $    $        $    $  ANS027.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  028.右前车窗手动下降开关信号       $    $        $    $  ANS028.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  029.右前车窗玻璃位置百分比         $    $  %     $    $  ANS029.BYTE004  $  if(x1 < 101) y=x1;else if(x1 == 0xFF) y=@0044;else y=@0002;
  $  030.左后车窗当前动作状态           $    $        $    $  ANS030.BYTE004  $  if(x1==0x00)y=@003b;else if(x1==0x01)y=@003e;else if(x1==0x02)y=@0001;else if(x1==0x03)y=@0000;else y=@0002;
  $  031.左后车窗位置                   $    $        $    $  ANS031.BYTE004  $  if(x1==0x00)y=@003b;else if(x1==0x01)y=@003c;else if(x1==0x02)y=@003d;else if(x1==0x03)y=@0005;else y=@0002;
  $  032.左后车窗位置状态               $    $        $    $  ANS032.BYTE004  $  if(x1==0x00)y=@003f;else if(x1==0x01)y=@0040;else if(x1==0x02)y=@0041;else y=@0002;
  $  033.左后车窗自动上升开关信号       $    $        $    $  ANS033.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  034.左后车窗自动下降开关信号       $    $        $    $  ANS034.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  035.左后车窗手动上升开关信号       $    $        $    $  ANS035.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  036.左后车窗手动下降开关信号       $    $        $    $  ANS036.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  037.左后车窗玻璃位置百分比         $    $  %     $    $  ANS037.BYTE004  $  if(x1 < 101) y=x1;else if(x1 == 0xFF) y=@0044;else y=@0002;
  $  038.右后车窗当前动作状态           $    $        $    $  ANS038.BYTE004  $  if(x1==0x00)y=@003b;else if(x1==0x01)y=@003e;else if(x1==0x02)y=@0001;else if(x1==0x03)y=@0000;else y=@0002;
  $  039.右后车窗位置                   $    $        $    $  ANS039.BYTE004  $  if(x1==0x00)y=@003b;else if(x1==0x01)y=@003c;else if(x1==0x02)y=@003d;else if(x1==0x03)y=@0005;else y=@0002;
  $  040.右后车窗位置状态               $    $        $    $  ANS040.BYTE004  $  if(x1==0x00)y=@003f;else if(x1==0x01)y=@0040;else if(x1==0x02)y=@0041;else y=@0002;
  $  041.右后车窗自动上升开关信号       $    $        $    $  ANS041.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  042.右后车窗自动下降开关信号       $    $        $    $  ANS042.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  043.右后车窗手动上升开关信号       $    $        $    $  ANS043.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  044.右后车窗手动下降开关信号       $    $        $    $  ANS044.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0002;
  $  045.右后车窗玻璃位置百分比         $    $  %     $    $  ANS045.BYTE004  $  if(x1 < 101) y=x1;else if(x1 == 0xFF) y=@0044;else y=@0002;

;******************************************************************************************************************************************************

动作测试:

$^ 00.驱动左前车窗电机动作测试 
$^IN  REQ00:726 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:向上移动到顶 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 01 03 02 00 00     $^
$^REQ02:726 05 2F 20 01 03 00 00 00     $^

$^BUTTON:向下移动到底 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 01 03 02 00 00     $^
$^REQ02:726 05 2F 20 01 03 01 00 00     $^

$^BUTTON:停止移动 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 01 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 01.驱动右前车窗电机动作测试 
$^IN  REQ00:726 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:向上移动到顶 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 02 03 02 00 00     $^
$^REQ02:726 05 2F 20 02 03 00 00 00     $^

$^BUTTON:向下移动到底 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 02 03 02 00 00     $^
$^REQ02:726 05 2F 20 02 03 01 00 00     $^

$^BUTTON:停止移动 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 02 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 02.驱动左后车窗电机动作测试 
$^IN  REQ00:726 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:向上移动到顶 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 03 03 02 00 00     $^
$^REQ02:726 05 2F 20 03 03 00 00 00     $^

$^BUTTON:向下移动到底 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 03 03 02 00 00     $^
$^REQ02:726 05 2F 20 03 03 01 00 00     $^

$^BUTTON:停止移动 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 03 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 03.驱动右后车窗电机动作测试 
$^IN  REQ00:726 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:向上移动到顶 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 04 03 02 00 00     $^
$^REQ02:726 05 2F 20 04 03 00 00 00     $^

$^BUTTON:向下移动到底 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 04 03 02 00 00     $^
$^REQ02:726 05 2F 20 04 03 01 00 00     $^

$^BUTTON:停止移动 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 04 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 04.驱动天窗电机动作测试 
$^IN  REQ00:726 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:上倾 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 05 03 00 00 00     $^

$^BUTTON:打开 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 05 03 01 00 00     $^

$^BUTTON:关闭 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 05 03 02 00 00     $^

$^BUTTON:退出 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

$^ 05.驱动遮阳帘电机动作测试 
$^IN  REQ00:726 02 10 01 00 00 00 00 00     $^IN  

$^TYPE0
$^BUTTON:打开 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 06 03 00 00 00     $^

$^BUTTON:关闭 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^
$^REQ01:726 05 2F 20 06 03 01 00 00     $^

$^BUTTON:退出 
$^REQ00:726 04 2F FF 00 00 00 00 00     $^

;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:726 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
