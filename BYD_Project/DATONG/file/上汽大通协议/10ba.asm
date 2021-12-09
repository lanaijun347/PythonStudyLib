
    车型ID：10ba

    模拟：协议模拟-->10ba

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:74A 02 10 01 00 00 00 00 00       $~  ANS000:7CA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:74A 02 3E 80 00 00 00 00 00       $!  ANS000:7CA 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:74A 03 19 02 09 00 00 00 00       $#  ANS000:7CA 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b7000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:74A 04 14 FF FF FF 00 00 00       $$  ANS000:7CA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:74A 03 22 F1 A0 00 00 00 00       $%  ANS000:7CA 03 22 F1 A0 00 00 00 00
  $%  REQ001:74A 03 22 F1 83 00 00 00 00       $%  ANS001:7CA 03 22 F1 83 00 00 00 00
  $%  REQ002:74A 03 22 F1 A1 00 00 00 00       $%  ANS002:7CA 03 22 F1 A1 00 00 00 00
  $%  REQ003:74A 03 22 F1 91 00 00 00 00       $%  ANS003:7CA 03 22 F1 91 00 00 00 00
  $%  REQ004:74A 03 22 F1 8B 00 00 00 00       $%  ANS004:7CA 03 22 F1 8B 00 00 00 00
  $%  REQ005:74A 03 22 F1 A2 00 00 00 00       $%  ANS005:7CA 03 22 F1 A2 00 00 00 00
  $%  REQ006:74A 03 22 F1 87 00 00 00 00       $%  ANS006:7CA 03 22 F1 87 00 00 00 00
  $%  REQ007:74A 03 22 F1 10 00 00 00 00       $%  ANS007:7CA 03 22 F1 10 00 00 00 00
  $%  REQ008:74A 03 22 F1 92 00 00 00 00       $%  ANS008:7CA 03 22 F1 92 00 00 00 00
  $%  REQ009:74A 03 22 F1 8C 00 00 00 00       $%  ANS009:7CA 03 22 F1 8C 00 00 00 00
  $%  REQ010:74A 03 22 F1 94 00 00 00 00       $%  ANS010:7CA 03 22 F1 94 00 00 00 00
  $%  REQ011:74A 03 22 F1 8A 00 00 00 00       $%  ANS011:7CA 03 22 F1 8A 00 00 00 00
  $%  REQ012:74A 03 22 F1 90 00 00 00 00       $%  ANS012:7CA 03 22 F1 90 00 00 00 00
  $%  REQ013:74A 03 22 F1 A8 00 00 00 00       $%  ANS013:7CA 03 22 F1 A8 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元制造日期:                $%    $%  ANS004.BYTE004  $%  HEX(X1,X2,X3);
  $%  005:电控单元网络文件参考号:          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:电控单元零件号(上次):            $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  008:测试工具参考号(上次):            $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:里程读数(上次):                  $%    $%  ANS007.BYTE015  $%  HEX(X1,X2,X3);
  $%  010:供应商电控单元硬件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:供应商电控单元序列号:            $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  012:供应商电控单元软件参考号:        $%    $%  ANS010.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  013:系统供应商标识号:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  014:车辆识别代码:                    $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  015:车辆特征信息:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流1
  $  00.数据流1
  $  REQ000:74A 03 22 B0 55 00 00 00 00       $  ANS000:7CA 03 22 B0 55 00 00 00 00
  $  REQ001:74A 03 22 B0 56 00 00 00 00       $  ANS001:7CA 03 22 B0 56 00 00 00 00
  $  REQ002:74A 03 22 B0 57 00 00 00 00       $  ANS002:7CA 03 22 B0 57 00 00 00 00
  $  REQ003:74A 03 22 B0 58 00 00 00 00       $  ANS003:7CA 03 22 B0 58 00 00 00 00
  $  REQ004:74A 03 22 B0 59 00 00 00 00       $  ANS004:7CA 03 22 B0 59 00 00 00 00
  $  REQ005:74A 03 22 B0 5B 00 00 00 00       $  ANS005:7CA 03 22 B0 5B 00 00 00 00
  $  REQ006:74A 03 22 B0 91 00 00 00 00       $  ANS006:7CA 03 22 B0 91 00 00 00 00
  $  REQ007:74A 03 22 B0 50 00 00 00 00       $  ANS007:7CA 03 22 B0 50 00 00 00 00
  $  REQ008:74A 03 22 B0 51 00 00 00 00       $  ANS008:7CA 03 22 B0 51 00 00 00 00
  $  REQ009:74A 03 22 B0 52 00 00 00 00       $  ANS009:7CA 03 22 B0 52 00 00 00 00
  $  REQ010:74A 03 22 B0 53 00 00 00 00       $  ANS010:7CA 03 22 B0 53 00 00 00 00
  $  REQ011:74A 03 22 B0 54 00 00 00 00       $  ANS011:7CA 03 22 B0 54 00 00 00 00
  $  REQ012:74A 03 22 B0 5A 00 00 00 00       $  ANS012:7CA 03 22 B0 5A 00 00 00 00
  $  REQ013:74A 03 22 B0 65 00 00 00 00       $  ANS013:7CA 03 22 B0 65 00 00 00 00
  $  REQ014:74A 03 22 B0 66 00 00 00 00       $  ANS014:7CA 03 22 B0 66 00 00 00 00
  $  REQ015:74A 03 22 B0 67 00 00 00 00       $  ANS015:7CA 03 22 B0 67 00 00 00 00
  $  REQ016:74A 03 22 B0 68 00 00 00 00       $  ANS016:7CA 03 22 B0 68 00 00 00 00

  $  000.ACC无法进入原因0~7                        $    $         $    $  ANS000.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  001.ACC无法进入原因8~15                       $    $         $    $  ANS000.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  002.ACC无法进入原因16~23                      $    $         $    $  ANS000.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  003.ACC无法进入原因24~31                      $    $         $    $  ANS000.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  004.ACC无法进入原因32~39                      $    $         $    $  ANS000.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  005.ACC无法进入原因40~47                      $    $         $    $  ANS000.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  006.ACC无法进入时的故障保障状态               $    $         $    $  ANS000.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  007.Acc异常退出时的年份                       $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.Acc异常退出时的月份                       $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.Acc异常退出时的日期                       $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.Acc异常退出时的时刻                       $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.Acc异常退出时的分钟                       $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.Acc异常退出时的秒数                       $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.Acc异常退出时的里程                       $    $  km     $    $  ANS000.BYTE020  $  y=x;
  $  014.ACC无法进入原因0~7                        $    $         $    $  ANS001.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  015.ACC无法进入原因8~15                       $    $         $    $  ANS001.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  016.ACC无法进入原因16~23                      $    $         $    $  ANS001.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  017.ACC无法进入原因24~31                      $    $         $    $  ANS001.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  018.ACC无法进入原因32~39                      $    $         $    $  ANS001.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  019.ACC无法进入原因40~47                      $    $         $    $  ANS001.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  020.ACC无法进入时的故障保障状态               $    $         $    $  ANS001.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  021.Acc异常退出时的年份                       $    $         $    $  ANS001.BYTE012  $  y=x+2000;
  $  022.Acc异常退出时的月份                       $    $         $    $  ANS001.BYTE013  $  y=x;
  $  023.Acc异常退出时的日期                       $    $         $    $  ANS001.BYTE014  $  y=x;
  $  024.Acc异常退出时的时刻                       $    $         $    $  ANS001.BYTE015  $  y=x;
  $  025.Acc异常退出时的分钟                       $    $         $    $  ANS001.BYTE016  $  y=x;
  $  026.Acc异常退出时的秒数                       $    $         $    $  ANS001.BYTE017  $  y=x;
  $  027.Acc异常退出时的里程                       $    $  km     $    $  ANS001.BYTE020  $  y=x;
  $  028.ACC无法进入原因0~7                        $    $         $    $  ANS002.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  029.ACC无法进入原因8~15                       $    $         $    $  ANS002.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  030.ACC无法进入原因16~23                      $    $         $    $  ANS002.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  031.ACC无法进入原因24~31                      $    $         $    $  ANS002.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  032.ACC无法进入原因32~39                      $    $         $    $  ANS002.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  033.ACC无法进入原因40~47                      $    $         $    $  ANS002.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  034.ACC无法进入时的故障保障状态               $    $         $    $  ANS002.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  035.Acc异常退出时的年份                       $    $         $    $  ANS002.BYTE012  $  y=x+2000;
  $  036.Acc异常退出时的月份                       $    $         $    $  ANS002.BYTE013  $  y=x;
  $  037.Acc异常退出时的日期                       $    $         $    $  ANS002.BYTE014  $  y=x;
  $  038.Acc异常退出时的时刻                       $    $         $    $  ANS002.BYTE015  $  y=x;
  $  039.Acc异常退出时的分钟                       $    $         $    $  ANS002.BYTE016  $  y=x;
  $  040.Acc异常退出时的秒数                       $    $         $    $  ANS002.BYTE017  $  y=x;
  $  041.Acc异常退出时的里程                       $    $  km     $    $  ANS002.BYTE020  $  y=x;
  $  042.ACC无法进入原因0~7                        $    $         $    $  ANS003.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  043.ACC无法进入原因8~15                       $    $         $    $  ANS003.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  044.ACC无法进入原因16~23                      $    $         $    $  ANS003.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  045.ACC无法进入原因24~31                      $    $         $    $  ANS003.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  046.ACC无法进入原因32~39                      $    $         $    $  ANS003.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  047.ACC无法进入原因40~47                      $    $         $    $  ANS003.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  048.ACC无法进入时的故障保障状态               $    $         $    $  ANS003.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  049.Acc异常退出时的年份                       $    $         $    $  ANS003.BYTE012  $  y=x+2000;
  $  050.Acc异常退出时的月份                       $    $         $    $  ANS003.BYTE013  $  y=x;
  $  051.Acc异常退出时的日期                       $    $         $    $  ANS003.BYTE014  $  y=x;
  $  052.Acc异常退出时的时刻                       $    $         $    $  ANS003.BYTE015  $  y=x;
  $  053.Acc异常退出时的分钟                       $    $         $    $  ANS003.BYTE016  $  y=x;
  $  054.Acc异常退出时的秒数                       $    $         $    $  ANS003.BYTE017  $  y=x;
  $  055.Acc异常退出时的里程                       $    $  km     $    $  ANS003.BYTE020  $  y=x;
  $  056.ACC无法进入原因0~7                        $    $         $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  057.ACC无法进入原因8~15                       $    $         $    $  ANS004.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  058.ACC无法进入原因16~23                      $    $         $    $  ANS004.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  059.ACC无法进入原因24~31                      $    $         $    $  ANS004.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  060.ACC无法进入原因32~39                      $    $         $    $  ANS004.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  061.ACC无法进入原因40~47                      $    $         $    $  ANS004.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  062.ACC无法进入时的故障保障状态               $    $         $    $  ANS004.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  063.Acc异常退出时的年份                       $    $         $    $  ANS004.BYTE012  $  y=x+2000;
  $  064.Acc异常退出时的月份                       $    $         $    $  ANS004.BYTE013  $  y=x;
  $  065.Acc异常退出时的日期                       $    $         $    $  ANS004.BYTE014  $  y=x;
  $  066.Acc异常退出时的时刻                       $    $         $    $  ANS004.BYTE015  $  y=x;
  $  067.Acc异常退出时的分钟                       $    $         $    $  ANS004.BYTE016  $  y=x;
  $  068.Acc异常退出时的秒数                       $    $         $    $  ANS004.BYTE017  $  y=x;
  $  069.Acc异常退出时的里程                       $    $  km     $    $  ANS004.BYTE020  $  y=x;
  $  070.ACC无法进入原因0~7                        $    $         $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  071.ACC无法进入原因8~15                       $    $         $    $  ANS005.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  072.ACC无法进入原因16~23                      $    $         $    $  ANS005.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  073.ACC无法进入原因24~31                      $    $         $    $  ANS005.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  074.ACC无法进入原因32~39                      $    $         $    $  ANS005.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  075.ACC无法进入原因40~47                      $    $         $    $  ANS005.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  076.ACC退出激活状态的原因0~7(B091)            $    $         $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  077.ACC退出激活状态的原因8~15(B091)           $    $         $    $  ANS006.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  078.ACC退出激活状态的原因16~23(B091)          $    $         $    $  ANS006.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  079.ACC退出激活状态的原因24~31(B091)          $    $         $    $  ANS006.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  080.ACC退出激活状态的原因32~39(B091)          $    $         $    $  ANS006.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  081.ACC退出激活状态的原因40~47(B091)          $    $         $    $  ANS006.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  082.ACC从激活状态异常退出原因0~7              $    $         $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  083.ACC从激活状态异常退出原因8~15             $    $         $    $  ANS007.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  084.ACC从激活状态异常退出原因16~23            $    $         $    $  ANS007.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  085.ACC从激活状态异常退出原因24~31            $    $         $    $  ANS007.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  086.ACC从激活状态异常退出原因32~39            $    $         $    $  ANS007.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  087.ACC从激活状态异常退出原因40~47            $    $         $    $  ANS007.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  088.ACC从激活状态异常退出时故障保险状态       $    $         $    $  ANS007.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  089.Acc异常退出时的年份                       $    $         $    $  ANS007.BYTE012  $  y=x+2000;
  $  090.Acc异常退出时的月份                       $    $         $    $  ANS007.BYTE013  $  y=x;
  $  091.Acc异常退出时的日期                       $    $         $    $  ANS007.BYTE014  $  y=x;
  $  092.Acc异常退出时的时刻                       $    $         $    $  ANS007.BYTE015  $  y=x;
  $  093.Acc异常退出时的分钟                       $    $         $    $  ANS007.BYTE016  $  y=x;
  $  094.Acc异常退出时的秒数                       $    $         $    $  ANS007.BYTE017  $  y=x;
  $  095.Acc异常退出时的里程                       $    $  km     $    $  ANS007.BYTE020  $  y=x;
  $  096.ACC从激活状态异常退出原因0~7              $    $         $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  097.ACC从激活状态异常退出原因8~15             $    $         $    $  ANS008.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  098.ACC从激活状态异常退出原因16~23            $    $         $    $  ANS008.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  099.ACC从激活状态异常退出原因24~31            $    $         $    $  ANS008.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  100.ACC从激活状态异常退出原因32~39            $    $         $    $  ANS008.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  101.ACC从激活状态异常退出原因40~47            $    $         $    $  ANS008.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  102.ACC从激活状态异常退出时故障保险状态       $    $         $    $  ANS008.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  103.Acc异常退出时的年份                       $    $         $    $  ANS008.BYTE012  $  y=x+2000;
  $  104.Acc异常退出时的月份                       $    $         $    $  ANS008.BYTE013  $  y=x;
  $  105.Acc异常退出时的日期                       $    $         $    $  ANS008.BYTE014  $  y=x;
  $  106.Acc异常退出时的时刻                       $    $         $    $  ANS008.BYTE015  $  y=x;
  $  107.Acc异常退出时的分钟                       $    $         $    $  ANS008.BYTE016  $  y=x;
  $  108.Acc异常退出时的秒数                       $    $         $    $  ANS008.BYTE017  $  y=x;
  $  109.Acc异常退出时的里程                       $    $  km     $    $  ANS008.BYTE020  $  y=x;
  $  110.ACC从激活状态异常退出原因0~7              $    $         $    $  ANS009.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  111.ACC从激活状态异常退出原因8~15             $    $         $    $  ANS009.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  112.ACC从激活状态异常退出原因16~23            $    $         $    $  ANS009.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  113.ACC从激活状态异常退出原因24~31            $    $         $    $  ANS009.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  114.ACC从激活状态异常退出原因32~39            $    $         $    $  ANS009.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  115.ACC从激活状态异常退出原因40~47            $    $         $    $  ANS009.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  116.ACC从激活状态异常退出时故障保险状态       $    $         $    $  ANS009.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  117.Acc异常退出时的年份                       $    $         $    $  ANS009.BYTE012  $  y=x+2000;
  $  118.Acc异常退出时的月份                       $    $         $    $  ANS009.BYTE013  $  y=x;
  $  119.Acc异常退出时的日期                       $    $         $    $  ANS009.BYTE014  $  y=x;
  $  120.Acc异常退出时的时刻                       $    $         $    $  ANS009.BYTE015  $  y=x;
  $  121.Acc异常退出时的分钟                       $    $         $    $  ANS009.BYTE016  $  y=x;
  $  122.Acc异常退出时的秒数                       $    $         $    $  ANS009.BYTE017  $  y=x;
  $  123.Acc异常退出时的里程                       $    $  km     $    $  ANS009.BYTE020  $  y=x;
  $  124.ACC从激活状态异常退出原因0~7              $    $         $    $  ANS010.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  125.ACC从激活状态异常退出原因8~15             $    $         $    $  ANS010.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  126.ACC从激活状态异常退出原因16~23            $    $         $    $  ANS010.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  127.ACC从激活状态异常退出原因24~31            $    $         $    $  ANS010.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  128.ACC从激活状态异常退出原因32~39            $    $         $    $  ANS010.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  129.ACC从激活状态异常退出原因40~47            $    $         $    $  ANS010.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  130.ACC从激活状态异常退出时故障保险状态       $    $         $    $  ANS010.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  131.Acc异常退出时的年份                       $    $         $    $  ANS010.BYTE012  $  y=x+2000;
  $  132.Acc异常退出时的月份                       $    $         $    $  ANS010.BYTE013  $  y=x;
  $  133.Acc异常退出时的日期                       $    $         $    $  ANS010.BYTE014  $  y=x;
  $  134.Acc异常退出时的时刻                       $    $         $    $  ANS010.BYTE015  $  y=x;
  $  135.Acc异常退出时的分钟                       $    $         $    $  ANS010.BYTE016  $  y=x;
  $  136.Acc异常退出时的秒数                       $    $         $    $  ANS010.BYTE017  $  y=x;
  $  137.Acc异常退出时的里程                       $    $  km     $    $  ANS010.BYTE020  $  y=x;
  $  138.ACC从激活状态异常退出原因0~7              $    $         $    $  ANS011.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  139.ACC从激活状态异常退出原因8~15             $    $         $    $  ANS011.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  140.ACC从激活状态异常退出原因16~23            $    $         $    $  ANS011.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  141.ACC从激活状态异常退出原因24~31            $    $         $    $  ANS011.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  142.ACC从激活状态异常退出原因32~39            $    $         $    $  ANS011.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  143.ACC从激活状态异常退出原因40~47            $    $         $    $  ANS011.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  144.ACC从激活状态异常退出时故障保险状态       $    $         $    $  ANS011.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  145.Acc异常退出时的年份                       $    $         $    $  ANS011.BYTE012  $  y=x+2000;
  $  146.Acc异常退出时的月份                       $    $         $    $  ANS011.BYTE013  $  y=x;
  $  147.Acc异常退出时的日期                       $    $         $    $  ANS011.BYTE014  $  y=x;
  $  148.Acc异常退出时的时刻                       $    $         $    $  ANS011.BYTE015  $  y=x;
  $  149.Acc异常退出时的分钟                       $    $         $    $  ANS011.BYTE016  $  y=x;
  $  150.Acc异常退出时的秒数                       $    $         $    $  ANS011.BYTE017  $  y=x;
  $  151.Acc异常退出时的里程                       $    $  km     $    $  ANS011.BYTE020  $  y=x;
  $  152.ACC从激活状态异常退出原因0~7              $    $         $    $  ANS012.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  153.ACC从激活状态异常退出原因8~15             $    $         $    $  ANS012.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  154.ACC从激活状态异常退出原因16~23            $    $         $    $  ANS012.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  155.ACC从激活状态异常退出原因24~31            $    $         $    $  ANS012.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  156.ACC从激活状态异常退出原因32~39            $    $         $    $  ANS012.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  157.ACC从激活状态异常退出原因40~47            $    $         $    $  ANS012.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  158.AEB原因0~7未准备好激活                    $    $         $    $  ANS013.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  159.AEB无法进入原因8~15                       $    $         $    $  ANS013.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  160.AEB无法进入原因16~23                      $    $         $    $  ANS013.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  161.AEB无法进入原因24~31                      $    $         $    $  ANS013.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  162.AEB未准备好激活的故障安全标志             $    $         $    $  ANS013.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  163.Acc异常退出时的年份                       $    $         $    $  ANS013.BYTE010  $  y=x+2000;
  $  164.Acc异常退出时的月份                       $    $         $    $  ANS013.BYTE011  $  y=x;
  $  165.Acc异常退出时的日期                       $    $         $    $  ANS013.BYTE012  $  y=x;
  $  166.Acc异常退出时的时刻                       $    $         $    $  ANS013.BYTE013  $  y=x;
  $  167.Acc异常退出时的分钟                       $    $         $    $  ANS013.BYTE014  $  y=x;
  $  168.AEB未准备好激活的秒                       $    $         $    $  ANS013.BYTE015  $  y=x;
  $  169.Acc异常退出时的里程                       $    $         $    $  ANS013.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  170.AEB原因0~7未准备好激活                    $    $         $    $  ANS014.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  171.AEB无法进入原因8~15                       $    $         $    $  ANS014.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  172.AEB无法进入原因16~23                      $    $         $    $  ANS014.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  173.AEB无法进入原因24~31                      $    $         $    $  ANS014.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  174.AEB未准备好激活的故障安全标志             $    $         $    $  ANS014.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  175.Acc异常退出时的年份                       $    $         $    $  ANS014.BYTE010  $  y=x+2000;
  $  176.Acc异常退出时的月份                       $    $         $    $  ANS014.BYTE011  $  y=x;
  $  177.Acc异常退出时的日期                       $    $         $    $  ANS014.BYTE012  $  y=x;
  $  178.Acc异常退出时的时刻                       $    $         $    $  ANS014.BYTE013  $  y=x;
  $  179.Acc异常退出时的分钟                       $    $         $    $  ANS014.BYTE014  $  y=x;
  $  180.AEB未准备好激活的秒                       $    $         $    $  ANS014.BYTE015  $  y=x;
  $  181.Acc异常退出时的里程                       $    $         $    $  ANS014.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  182.AEB原因0~7未准备好激活                    $    $         $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  183.AEB无法进入原因8~15                       $    $         $    $  ANS015.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  184.AEB无法进入原因16~23                      $    $         $    $  ANS015.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  185.AEB无法进入原因24~31                      $    $         $    $  ANS015.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  186.AEB未准备好激活的故障安全标志             $    $         $    $  ANS015.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  187.Acc异常退出时的年份                       $    $         $    $  ANS015.BYTE010  $  y=x+2000;
  $  188.Acc异常退出时的月份                       $    $         $    $  ANS015.BYTE011  $  y=x;
  $  189.Acc异常退出时的日期                       $    $         $    $  ANS015.BYTE012  $  y=x;
  $  190.Acc异常退出时的时刻                       $    $         $    $  ANS015.BYTE013  $  y=x;
  $  191.Acc异常退出时的分钟                       $    $         $    $  ANS015.BYTE014  $  y=x;
  $  192.AEB未准备好激活的秒                       $    $         $    $  ANS015.BYTE015  $  y=x;
  $  193.Acc异常退出时的里程                       $    $         $    $  ANS015.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  194.AEB原因0~7未准备好激活                    $    $         $    $  ANS016.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  195.AEB无法进入原因8~15                       $    $         $    $  ANS016.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  196.AEB无法进入原因16~23                      $    $         $    $  ANS016.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  197.AEB无法进入原因24~31                      $    $         $    $  ANS016.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  198.AEB未准备好激活的故障安全标志             $    $         $    $  ANS016.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  199.Acc异常退出时的年份                       $    $         $    $  ANS016.BYTE010  $  y=x+2000;
  $  200.Acc异常退出时的月份                       $    $         $    $  ANS016.BYTE011  $  y=x;
  $  201.Acc异常退出时的日期                       $    $         $    $  ANS016.BYTE012  $  y=x;
  $  202.Acc异常退出时的时刻                       $    $         $    $  ANS016.BYTE013  $  y=x;
  $  203.Acc异常退出时的分钟                       $    $         $    $  ANS016.BYTE014  $  y=x;
  $  204.AEB未准备好激活的秒                       $    $         $    $  ANS016.BYTE015  $  y=x;
  $  205.Acc异常退出时的里程                       $    $         $    $  ANS016.BYTE016  $  y=(x1*256*256+x2*256+x3);

  $)  01.数据流2
  $  01.数据流2
  $  REQ000:74A 03 22 B0 69 00 00 00 00       $  ANS000:7CA 03 22 B0 69 00 00 00 00
  $  REQ001:74A 03 22 B0 6B 00 00 00 00       $  ANS001:7CA 03 22 B0 6B 00 00 00 00
  $  REQ002:74A 03 22 B0 92 00 00 00 00       $  ANS002:7CA 03 22 B0 92 00 00 00 00
  $  REQ003:74A 03 22 B0 60 00 00 00 00       $  ANS003:7CA 03 22 B0 60 00 00 00 00
  $  REQ004:74A 03 22 B0 61 00 00 00 00       $  ANS004:7CA 03 22 B0 61 00 00 00 00
  $  REQ005:74A 03 22 B0 62 00 00 00 00       $  ANS005:7CA 03 22 B0 62 00 00 00 00
  $  REQ006:74A 03 22 B0 63 00 00 00 00       $  ANS006:7CA 03 22 B0 63 00 00 00 00
  $  REQ007:74A 03 22 B0 64 00 00 00 00       $  ANS007:7CA 03 22 B0 64 00 00 00 00
  $  REQ008:74A 03 22 B0 6A 00 00 00 00       $  ANS008:7CA 03 22 B0 6A 00 00 00 00
  $  REQ009:74A 03 22 01 12 00 00 00 00       $  ANS009:7CA 03 22 01 12 00 00 00 00
  $  REQ010:74A 03 22 B0 3D 00 00 00 00       $  ANS010:7CA 03 22 B0 3D 00 00 00 00
  $  REQ011:74A 03 22 B0 2E 00 00 00 00       $  ANS011:7CA 03 22 B0 2E 00 00 00 00
  $  REQ012:74A 03 22 B0 38 00 00 00 00       $  ANS012:7CA 03 22 B0 38 00 00 00 00
  $  REQ013:74A 03 22 B0 3B 00 00 00 00       $  ANS013:7CA 03 22 B0 3B 00 00 00 00
  $  REQ014:74A 03 22 C0 01 00 00 00 00       $  ANS014:7CA 03 22 C0 01 00 00 00 00
  $  REQ015:74A 03 22 B0 3E 00 00 00 00       $  ANS015:7CA 03 22 B0 3E 00 00 00 00
  $  REQ016:74A 03 22 B0 4B 00 00 00 00       $  ANS016:7CA 03 22 B0 4B 00 00 00 00
  $  REQ017:74A 03 22 C0 02 00 00 00 00       $  ANS017:7CA 03 22 C0 02 00 00 00 00
  $  REQ018:74A 03 22 B0 27 00 00 00 00       $  ANS018:7CA 03 22 B0 27 00 00 00 00
  $  REQ019:74A 03 22 B0 28 00 00 00 00       $  ANS019:7CA 03 22 B0 28 00 00 00 00
  $  REQ020:74A 03 22 B0 26 00 00 00 00       $  ANS020:7CA 03 22 B0 26 00 00 00 00
  $  REQ021:74A 03 22 B0 29 00 00 00 00       $  ANS021:7CA 03 22 B0 29 00 00 00 00
  $  REQ022:74A 03 22 B0 2F 00 00 00 00       $  ANS022:7CA 03 22 B0 2F 00 00 00 00

  $  000.AEB原因0~7未准备好激活                                   $    $          $    $  ANS000.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  001.AEB无法进入原因8~15                                      $    $          $    $  ANS000.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  002.AEB无法进入原因16~23                                     $    $          $    $  ANS000.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  003.AEB无法进入原因24~31                                     $    $          $    $  ANS000.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  004.AEB未准备好激活的故障安全标志                            $    $          $    $  ANS000.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  005.Acc异常退出时的年份                                      $    $          $    $  ANS000.BYTE010  $  y=x+2000;
  $  006.Acc异常退出时的月份                                      $    $          $    $  ANS000.BYTE011  $  y=x;
  $  007.Acc异常退出时的日期                                      $    $          $    $  ANS000.BYTE012  $  y=x;
  $  008.Acc异常退出时的时刻                                      $    $          $    $  ANS000.BYTE013  $  y=x;
  $  009.Acc异常退出时的分钟                                      $    $          $    $  ANS000.BYTE014  $  y=x;
  $  010.AEB未准备好激活的秒                                      $    $          $    $  ANS000.BYTE015  $  y=x;
  $  011.Acc异常退出时的里程                                      $    $          $    $  ANS000.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  012.AEB原因0~7未准备好激活                                   $    $          $    $  ANS001.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  013.AEB无法进入原因8~15                                      $    $          $    $  ANS001.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  014.AEB无法进入原因16~23                                     $    $          $    $  ANS001.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  015.AEB无法进入原因24~31                                     $    $          $    $  ANS001.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  016.AEB退出激活状态的原因0~7(B092)                           $    $          $    $  ANS002.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  017.AEB退出激活状态的原因8~15(B092)                          $    $          $    $  ANS002.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  018.AEB退出激活状态的原因16~23(B092)                         $    $          $    $  ANS002.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  019.AEB退出激活状态的原因24~31(B092)                         $    $          $    $  ANS002.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  020.AEB从激活状态异常退出原因0~7                             $    $          $    $  ANS003.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  021.AEB从激活状态异常退出原因8~15                            $    $          $    $  ANS003.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  022.AEB从激活状态异常退出原因16~23                           $    $          $    $  ANS003.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  023.AEB从激活状态异常退出原因24~31                           $    $          $    $  ANS003.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  024.AEB退出激活状态的故障安全标志                            $    $          $    $  ANS003.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  025.Acc异常退出时的年份                                      $    $          $    $  ANS003.BYTE010  $  y=x+2000;
  $  026.Acc异常退出时的月份                                      $    $          $    $  ANS003.BYTE011  $  y=x;
  $  027.Acc异常退出时的日期                                      $    $          $    $  ANS003.BYTE012  $  y=x;
  $  028.Acc异常退出时的时刻                                      $    $          $    $  ANS003.BYTE013  $  y=x;
  $  029.Acc异常退出时的分钟                                      $    $          $    $  ANS003.BYTE014  $  y=x;
  $  030.Acc异常退出时的秒数                                      $    $          $    $  ANS003.BYTE015  $  y=x;
  $  031.Acc异常退出时的里程                                      $    $          $    $  ANS003.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  032.AEB从激活状态异常退出原因0~7                             $    $          $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  033.AEB从激活状态异常退出原因8~15                            $    $          $    $  ANS004.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  034.AEB从激活状态异常退出原因16~23                           $    $          $    $  ANS004.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  035.AEB从激活状态异常退出原因24~31                           $    $          $    $  ANS004.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  036.AEB退出激活状态的故障安全标志                            $    $          $    $  ANS004.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  037.Acc异常退出时的年份                                      $    $          $    $  ANS004.BYTE010  $  y=x+2000;
  $  038.Acc异常退出时的月份                                      $    $          $    $  ANS004.BYTE011  $  y=x;
  $  039.Acc异常退出时的日期                                      $    $          $    $  ANS004.BYTE012  $  y=x;
  $  040.Acc异常退出时的时刻                                      $    $          $    $  ANS004.BYTE013  $  y=x;
  $  041.Acc异常退出时的分钟                                      $    $          $    $  ANS004.BYTE014  $  y=x;
  $  042.Acc异常退出时的秒数                                      $    $          $    $  ANS004.BYTE015  $  y=x;
  $  043.Acc异常退出时的里程                                      $    $          $    $  ANS004.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  044.AEB从激活状态异常退出原因0~7                             $    $          $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  045.AEB从激活状态异常退出原因8~15                            $    $          $    $  ANS005.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  046.AEB从激活状态异常退出原因16~23                           $    $          $    $  ANS005.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  047.AEB从激活状态异常退出原因24~31                           $    $          $    $  ANS005.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  048.AEB退出激活状态的故障安全标志                            $    $          $    $  ANS005.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  049.Acc异常退出时的年份                                      $    $          $    $  ANS005.BYTE010  $  y=x+2000;
  $  050.Acc异常退出时的月份                                      $    $          $    $  ANS005.BYTE011  $  y=x;
  $  051.Acc异常退出时的日期                                      $    $          $    $  ANS005.BYTE012  $  y=x;
  $  052.Acc异常退出时的时刻                                      $    $          $    $  ANS005.BYTE013  $  y=x;
  $  053.Acc异常退出时的分钟                                      $    $          $    $  ANS005.BYTE014  $  y=x;
  $  054.Acc异常退出时的秒数                                      $    $          $    $  ANS005.BYTE015  $  y=x;
  $  055.Acc异常退出时的里程                                      $    $          $    $  ANS005.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  056.AEB从激活状态异常退出原因0~7                             $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  057.AEB从激活状态异常退出原因8~15                            $    $          $    $  ANS006.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  058.AEB从激活状态异常退出原因16~23                           $    $          $    $  ANS006.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  059.AEB从激活状态异常退出原因24~31                           $    $          $    $  ANS006.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  060.AEB退出激活状态的故障安全标志                            $    $          $    $  ANS006.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  061.Acc异常退出时的年份                                      $    $          $    $  ANS006.BYTE010  $  y=x+2000;
  $  062.Acc异常退出时的月份                                      $    $          $    $  ANS006.BYTE011  $  y=x;
  $  063.Acc异常退出时的日期                                      $    $          $    $  ANS006.BYTE012  $  y=x;
  $  064.Acc异常退出时的时刻                                      $    $          $    $  ANS006.BYTE013  $  y=x;
  $  065.Acc异常退出时的分钟                                      $    $          $    $  ANS006.BYTE014  $  y=x;
  $  066.Acc异常退出时的秒数                                      $    $          $    $  ANS006.BYTE015  $  y=x;
  $  067.Acc异常退出时的里程                                      $    $          $    $  ANS006.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  068.AEB从激活状态异常退出原因0~7                             $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  069.AEB从激活状态异常退出原因8~15                            $    $          $    $  ANS007.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  070.AEB从激活状态异常退出原因16~23                           $    $          $    $  ANS007.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  071.AEB从激活状态异常退出原因24~31                           $    $          $    $  ANS007.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  072.AEB退出激活状态的故障安全标志                            $    $          $    $  ANS007.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  073.Acc异常退出时的年份                                      $    $          $    $  ANS007.BYTE010  $  y=x+2000;
  $  074.Acc异常退出时的月份                                      $    $          $    $  ANS007.BYTE011  $  y=x;
  $  075.Acc异常退出时的日期                                      $    $          $    $  ANS007.BYTE012  $  y=x;
  $  076.Acc异常退出时的时刻                                      $    $          $    $  ANS007.BYTE013  $  y=x;
  $  077.Acc异常退出时的分钟                                      $    $          $    $  ANS007.BYTE014  $  y=x;
  $  078.Acc异常退出时的秒数                                      $    $          $    $  ANS007.BYTE015  $  y=x;
  $  079.Acc异常退出时的里程                                      $    $          $    $  ANS007.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  080.AEB从激活状态异常退出原因0~7                             $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  081.AEB从激活状态异常退出原因8~15                            $    $          $    $  ANS008.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  082.AEB从激活状态异常退出原因16~23                           $    $          $    $  ANS008.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  083.AEB从激活状态异常退出原因24~31                           $    $          $    $  ANS008.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  084.电池电压                                                 $    $  V       $    $  ANS009.BYTE004  $  y=x*0.1;
  $  085.标定故障原因_超出自动调整范围                            $    $          $    $  ANS010.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  086.应用程序致命错误-超出标定                                $    $          $    $  ANS010.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  087.标定故障原因_未标定                                      $    $          $    $  ANS010.BYTE004  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  088.EOL标定状态                                              $    $          $    $  ANS011.BYTE004  $  if(x==0x00) y=@004a;else if(x==0x01) y=@0b2a;else if(x==0x02) y=@0b2b;else if(x==0x03) y=@0b2c;else y=@0103;
  $  089.EOL标定错误原因                                          $    $          $    $  ANS011.BYTE005  $  if(x==0x00) y=@023f;else if(x==0x01) y=@0096;else if(x==0x02) y=@0910;else if(x==0x03) y=@0ddd;else if(x==0x04) y=@0912;else if(x==0x05) y=@0913;else if(x==0x06) y=@0914;else if(x==0x07) y=@0915;else if(x==0x08) y=@0916;else if(x==0x09) y=@0917;else if(x==0x0A) y=@0918;else if(x==0x0B) y=@0919;else if(x==0x0C) y=@091a;else if(x==0x0D) y=@0df1;else if(x==0x0E) y=@091c;else if(x==0x0F) y=@091d;else if(x==0x10) y=@091e;else if(x==0x11) y=@091f;else if(x==0x12) y=@0920;else if(x==0x13) y=@0921;else if(x==0x14) y=@0922;else if(x==0x15) y=@0923;else y=@0103;
  $  090.摄像头校准横摆角值                                       $    $          $    $  ANS011.BYTE006  $  y=(x1*256+x2)-188;
  $  091.摄像头校准俯仰角值                                       $    $          $    $  ANS011.BYTE008  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-160;
  $  092.摄像头校准侧倾角值                                       $    $  rad     $    $  ANS011.BYTE010  $  y=(x1*256+x2)*0.001-0.055;
  $  093.摄像头自动调整横摆角值                                   $    $          $    $  ANS011.BYTE012  $  y=x-40;
  $  094.摄像头自动调整俯仰角值                                   $    $          $    $  ANS011.BYTE013  $  y=x-40;
  $  095.标定年                                                   $    $          $    $  ANS012.BYTE004  $  y=x+2000;
  $  096.标定月                                                   $    $          $    $  ANS012.BYTE005  $  y=x;
  $  097.标定天                                                   $    $          $    $  ANS012.BYTE006  $  y=x;
  $  098.标定小时                                                 $    $          $    $  ANS012.BYTE007  $  y=x;
  $  099.标定分钟                                                 $    $          $    $  ANS012.BYTE008  $  y=x;
  $  100.标定秒                                                   $    $          $    $  ANS012.BYTE009  $  y=x;
  $  101.标定里程数                                               $    $  km      $    $  ANS012.BYTE010  $  y=(x1*256*256+x2*256+x3);
  $  102.测试功能参考号                                           $    $          $    $  ANS012.BYTE013  $  y=(x1*256*256+x2*256+x3);
  $  103.自闪光                                                   $    $          $    $  ANS013.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  104.摄像头视野遮挡原因_光线太强                              $    $          $    $  ANS013.BYTE004  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  105.摄像头视野遮挡原因_散射                                  $    $          $    $  ANS013.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  106.摄像头视野遮挡原因_图像模糊                              $    $          $    $  ANS013.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  107.摄像头视野遮挡原因_光线不足                              $    $          $    $  ANS013.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  108.摄像头视野遮挡原因_斑点                                  $    $          $    $  ANS013.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  109.摄像头视野遮挡原因_部分遮挡                              $    $          $    $  ANS013.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  110.摄像头视野遮挡原因_完全遮挡                              $    $          $    $  ANS013.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  111.摄像头视野遮挡原因_结冰                                  $    $          $    $  ANS013.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  112.摄像头视野遮挡原因_起雾                                  $    $          $    $  ANS013.BYTE005  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  113.AHB自动大灯系统启用                                      $    $          $    $  ANS014.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0035;
  $  114.TSR(交通标志识别)启用                                    $    $          $    $  ANS014.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0035;
  $  115.ACC(自适应巡航控制)启用                                  $    $          $    $  ANS014.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0035;
  $  116.AEBP(行人自动紧急制动)启用                               $    $          $    $  ANS014.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0035;
  $  117.AEB(自动制动系统)启用                                    $    $          $    $  ANS014.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0035;
  $  118.PCW(行人碰撞警告)启用                                    $    $          $    $  ANS014.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0035;
  $  119.FCW(正面碰撞警告)启用                                    $    $          $    $  ANS014.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0035;
  $  120.LDW(车道偏离预警系统)启用                                $    $          $    $  ANS014.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  121.LKA(车道保持辅助)启用                                    $    $          $    $  ANS014.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  122.SDM25-碰撞重叠                                           $    $          $    $  ANS015.BYTE007  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  123.SDM9-关键区域与前方指挥车辆重叠的显著差异                $    $          $    $  ANS015.BYTE007  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  124.SDM-8关键区域与三角采样测量之间的位置差异                $    $          $    $  ANS015.BYTE007  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  125.SDM7-目标位置有显著差异                                  $    $          $    $  ANS015.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  126.SDM-6TTC的显著差异                                       $    $          $    $  ANS015.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  127.(轧-帧计数器)误差信号的消息                              $    $          $    $  ANS015.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  128.校验的安全输入信号不匹配                                 $    $          $    $  ANS015.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  129.EYEQ_CR_REPEAT-挑战和响应重复错误                        $    $          $    $  ANS015.BYTE007  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  130.SDM-11单片机CRC错误                                      $    $          $    $  ANS015.BYTE008  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  131.SDM-29单片机RFC错误                                      $    $          $    $  ANS015.BYTE008  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  132.SDM-30图像索引无效                                       $    $          $    $  ANS015.BYTE008  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  133.SDM-4校准不好                                            $    $          $    $  ANS015.BYTE008  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  134.SDM18-内部图像保护失败                                   $    $          $    $  ANS015.BYTE008  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  135.SDM-13旧的自身数据                                       $    $          $    $  ANS015.BYTE008  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  136.SDM 挑战响应误差                                         $    $          $    $  ANS015.BYTE008  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  137.SDM-32内部信号损坏                                       $    $          $    $  ANS015.BYTE008  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  138.SDM-31内部校验错误                                       $    $          $    $  ANS015.BYTE009  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  139.SDM-27-AEB双重检查错误                                   $    $          $    $  ANS015.BYTE009  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  140.SDM26-DDR校验出错                                        $    $          $    $  ANS015.BYTE009  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  141.SDM19-图像缺失                                           $    $          $    $  ANS015.BYTE009  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  142.EyeQ软件诊断失败                                         $    $          $    $  ANS015.BYTE009  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  143.EyeQ APP失败                                             $    $          $    $  ANS015.BYTE009  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  144.EyeQ启动失败                                             $    $          $    $  ANS015.BYTE009  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  145.GPIO10                                                   $    $          $    $  ANS015.BYTE009  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  146.EyeQ单个启动程序丢失                                     $    $          $    $  ANS015.BYTE010  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  147.MCU EEPROM测试失败                                       $    $          $    $  ANS015.BYTE010  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  148.MCU RAM测试失败                                          $    $          $    $  ANS015.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  149.MCU闪存校验错误                                          $    $          $    $  ANS015.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  150.MCU异常复位                                              $    $          $    $  ANS015.BYTE010  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  151.MCU PLL失败                                              $    $          $    $  ANS015.BYTE010  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  152.DAS(驾驶辅助系统) 2.8V欠压                               $    $          $    $  ANS015.BYTE010  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  153.DAS(驾驶辅助系统) 2.8V过压                               $    $          $    $  ANS015.BYTE010  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  154.DAS(驾驶辅助系统) 1.2V欠压                               $    $          $    $  ANS015.BYTE011  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  155.DAS(驾驶辅助系统) 1.2V过压                               $    $          $    $  ANS015.BYTE011  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  156.DAS(驾驶辅助系统) 1.8V欠压                               $    $          $    $  ANS015.BYTE011  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  157.DAS(驾驶辅助系统) 1.8V过压                               $    $          $    $  ANS015.BYTE011  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  158.DAS(驾驶辅助系统) 3.3V欠压                               $    $          $    $  ANS015.BYTE011  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  159.DAS(驾驶辅助系统) 3.3V过压                               $    $          $    $  ANS015.BYTE011  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  160.DAS(驾驶辅助系统) 5V欠压                                 $    $          $    $  ANS015.BYTE011  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  161.DAS(驾驶辅助系统) 5V过压                                 $    $          $    $  ANS015.BYTE011  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  162.MCU应用版本与MCU标定文件不兼容                           $    $          $    $  ANS016.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  163.图像处理单元配置文件与MCU标定文件不兼容                  $    $          $    $  ANS016.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  164.MCU应用版本与图像处理单元不兼容                          $    $          $    $  ANS016.BYTE004  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  165.与BCM(车身控制管理系统)模块失去通讯                      $    $          $    $  ANS017.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  166.与TCU(变速箱控制单元)模块失去通讯                        $    $          $    $  ANS017.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  167.与IPK(仪表)模块失去通讯                                  $    $          $    $  ANS017.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  168.与ABS/ESP(防抱死制动系统/电子稳定系统)模块失去通讯       $    $          $    $  ANS017.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  169.与SAS(方向盘转向角传感器)模块失去通讯                    $    $          $    $  ANS017.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  170.控制器通讯总线关闭                                       $    $          $    $  ANS017.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  171.电池电压低                                               $    $          $    $  ANS017.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  172.电池电压高                                               $    $          $    $  ANS017.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  173.图像处理器温度过高                                       $    $          $    $  ANS017.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  174.DAS驾驶辅助系统内部故障                                  $    $          $    $  ANS017.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  175.AHB(自动远光灯)功能因网络数据无效禁止                    $    $          $    $  ANS017.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  176.TSR(交通标志识别)功能因网络数据无效禁止                  $    $          $    $  ANS017.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  177.ACC(自适应巡航控制)功能因网络数据无效禁止                $    $          $    $  ANS017.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  178.AEB(自动制动系统)功能因网络数据无效禁止                  $    $          $    $  ANS017.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  179.FCW(正面碰撞警告)功能因网络数据无效禁止                  $    $          $    $  ANS017.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  180.LDW(车道偏离预警系统)功能因网络数据无效禁止              $    $          $    $  ANS017.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  181.LKA(车道保持辅助)功能因网络数据无效禁止                  $    $          $    $  ANS017.BYTE006  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  182.LDW(车道偏离预警系统)开关指示灯短路                      $    $          $    $  ANS017.BYTE006  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  183.LDW(车道偏离预警系统)开关按键粘滞                        $    $          $    $  ANS017.BYTE006  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  184.DAS驾驶辅助系统软件版本不匹配                            $    $          $    $  ANS017.BYTE006  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  185.DAS驾驶辅助系统标定异常                                  $    $          $    $  ANS017.BYTE006  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  186.DAS驾驶辅助系统摄像头视野遮挡                            $    $          $    $  ANS017.BYTE006  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  187.AHB(自动远光灯)功能开关                                  $    $          $    $  ANS018.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  188.TSR(交通标志识别)功能开关                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  189.ACC(自适应巡航控制)功能开关                              $    $          $    $  ANS018.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  190.AEBP(行人自动紧急制动)功能开关                           $    $          $    $  ANS018.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  191.AEB(自动制动系统)功能开关                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  192.PCW(行人碰撞警告)功能开关                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  193.FCW(正面碰撞警告)功能开关                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  194.LDW(车道偏离预警系统)功能开关                            $    $          $    $  ANS018.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  195.LKA(车道保持辅助)功能开关                                $    $          $    $  ANS018.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  196.车辆区域码                                               $    $          $    $  ANS019.BYTE004  $  if(x==0x00) y=@01df;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0b6e;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0103;
  $  197.FCW(正面碰撞警告)驱动选定的灵敏度等级                    $    $          $    $  ANS020.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  198.LDW(车道偏离预警系统)驾驶员选择的敏感级别                $    $          $    $  ANS020.BYTE004  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  199.AEB(自动制动系统)驾驶员选择的敏感级别                    $    $          $    $  ANS020.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  200.ACC(自适应巡航控制)驱动选定的目标距离等级                $    $          $    $  ANS020.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0103;
  $  201.PCW(行人碰撞警告)驾驶员选定的灵敏度等级                  $    $          $    $  ANS020.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  202.AEBP(行人自动紧急制动)驱动选择的灵敏度等级               $    $          $    $  ANS020.BYTE006  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  203.摄像头目标速度需求                                       $    $          $    $  ANS021.BYTE004  $  y=(x1*256+x2);
  $  204.ACC驾驶员选择的速度                                      $    $          $    $  ANS021.BYTE006  $  y=(x1*256+x2);
  $  205.摄像头到车轮外缘左侧的距离                               $    $  m       $    $  ANS022.BYTE004  $  y=(x1*256+x2)*0.01;
  $  206.摄像头到车轮外缘右侧的距离                               $    $  m       $    $  ANS022.BYTE006  $  y=(x1*256+x2)*0.01;
  $  207.摄像头到目标距离                                         $    $  m       $    $  ANS022.BYTE008  $  y=(x1*256+x2)*0.001;
  $  208.摄像头高度                                               $    $  m       $    $  ANS022.BYTE010  $  y=(x1*256+x2)*0.01;
  $  209.目标中心距地面左侧高度                                   $    $  m       $    $  ANS022.BYTE012  $  y=(x1*256+x2)*0.01;
  $  210.目标中心距地面右侧高度                                   $    $  m       $    $  ANS022.BYTE014  $  y=(x1*256+x2)*0.01;
  $  211.目标中心距汽车中心左侧的距离                             $    $  m       $    $  ANS022.BYTE016  $  y=(x1*256+x2)*0.01;
  $  212.目标中心距汽车中心右侧的距离                             $    $  m       $    $  ANS022.BYTE018  $  y=(x1*256+x2)*0.01;
  $  213.目标单个块大小，非整个目标                               $    $  rad     $    $  ANS022.BYTE020  $  y=(x1*256+x2)*0.001;

  $)  02.数据流3
  $  02.数据流3
  $  REQ000:74A 03 22 B0 75 00 00 00 00       $  ANS000:7CA 03 22 B0 75 00 00 00 00
  $  REQ001:74A 03 22 B0 77 00 00 00 00       $  ANS001:7CA 03 22 B0 77 00 00 00 00
  $  REQ002:74A 03 22 B0 94 00 00 00 00       $  ANS002:7CA 03 22 B0 94 00 00 00 00
  $  REQ003:74A 03 22 B0 74 00 00 00 00       $  ANS003:7CA 03 22 B0 74 00 00 00 00
  $  REQ004:74A 03 22 B0 76 00 00 00 00       $  ANS004:7CA 03 22 B0 76 00 00 00 00
  $  REQ005:74A 03 22 C0 04 00 00 00 00       $  ANS005:7CA 03 22 C0 04 00 00 00 00
  $  REQ006:74A 03 22 B0 7D 00 00 00 00       $  ANS006:7CA 03 22 B0 7D 00 00 00 00
  $  REQ007:74A 03 22 B0 7F 00 00 00 00       $  ANS007:7CA 03 22 B0 7F 00 00 00 00
  $  REQ008:74A 03 22 B0 96 00 00 00 00       $  ANS008:7CA 03 22 B0 96 00 00 00 00
  $  REQ009:74A 03 22 B0 7C 00 00 00 00       $  ANS009:7CA 03 22 B0 7C 00 00 00 00
  $  REQ010:74A 03 22 B0 7E 00 00 00 00       $  ANS010:7CA 03 22 B0 7E 00 00 00 00
  $  REQ011:74A 03 22 D0 01 00 00 00 00       $  ANS011:7CA 03 22 D0 01 00 00 00 00
  $  REQ012:74A 03 22 B0 31 00 00 00 00       $  ANS012:7CA 03 22 B0 31 00 00 00 00
  $  REQ013:74A 03 22 B0 02 00 00 00 00       $  ANS013:7CA 03 22 B0 02 00 00 00 00
  $  REQ014:74A 03 22 B0 01 00 00 00 00       $  ANS014:7CA 03 22 B0 01 00 00 00 00
  $  REQ015:74A 03 22 B0 71 00 00 00 00       $  ANS015:7CA 03 22 B0 71 00 00 00 00
  $  REQ016:74A 03 22 B0 73 00 00 00 00       $  ANS016:7CA 03 22 B0 73 00 00 00 00
  $  REQ017:74A 03 22 B0 93 00 00 00 00       $  ANS017:7CA 03 22 B0 93 00 00 00 00
  $  REQ018:74A 03 22 B0 70 00 00 00 00       $  ANS018:7CA 03 22 B0 70 00 00 00 00
  $  REQ019:74A 03 22 B0 72 00 00 00 00       $  ANS019:7CA 03 22 B0 72 00 00 00 00
  $  REQ020:74A 03 22 D0 03 00 00 00 00       $  ANS020:7CA 03 22 D0 03 00 00 00 00
  $  REQ021:74A 03 22 D0 02 00 00 00 00       $  ANS021:7CA 03 22 D0 02 00 00 00 00
  $  REQ022:74A 03 22 B0 A5 00 00 00 00       $  ANS022:7CA 03 22 B0 A5 00 00 00 00
  $  REQ023:74A 03 22 B0 A6 00 00 00 00       $  ANS023:7CA 03 22 B0 A6 00 00 00 00
  $  REQ024:74A 03 22 B0 A7 00 00 00 00       $  ANS024:7CA 03 22 B0 A7 00 00 00 00
  $  REQ025:74A 03 22 B0 A8 00 00 00 00       $  ANS025:7CA 03 22 B0 A8 00 00 00 00
  $  REQ026:74A 03 22 B0 A9 00 00 00 00       $  ANS026:7CA 03 22 B0 A9 00 00 00 00
  $  REQ027:74A 03 22 B0 AB 00 00 00 00       $  ANS027:7CA 03 22 B0 AB 00 00 00 00
  $  REQ028:74A 03 22 B0 97 00 00 00 00       $  ANS028:7CA 03 22 B0 97 00 00 00 00
  $  REQ029:74A 03 22 B0 A0 00 00 00 00       $  ANS029:7CA 03 22 B0 A0 00 00 00 00
  $  REQ030:74A 03 22 B0 A1 00 00 00 00       $  ANS030:7CA 03 22 B0 A1 00 00 00 00
  $  REQ031:74A 03 22 B0 A2 00 00 00 00       $  ANS031:7CA 03 22 B0 A2 00 00 00 00

  $  000.FCW无法进入的原因0~7                        $    $         $    $  ANS000.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  001.FCW无法进入的原因8~15                       $    $         $    $  ANS000.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  002.Acc异常退出时的年份                         $    $         $    $  ANS000.BYTE006  $  y=x+2000;
  $  003.Acc异常退出时的月份                         $    $         $    $  ANS000.BYTE007  $  y=x;
  $  004.Acc异常退出时的日期                         $    $         $    $  ANS000.BYTE008  $  y=x;
  $  005.Acc异常退出时的时刻                         $    $         $    $  ANS000.BYTE009  $  y=x;
  $  006.Acc异常退出时的分钟                         $    $         $    $  ANS000.BYTE010  $  y=x;
  $  007.Acc异常退出时的秒数                         $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.Acc异常退出时的里程                         $    $  km     $    $  ANS000.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  009.FCW无法进入的原因0~7                        $    $         $    $  ANS001.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  010.FCW无法进入的原因8~15                       $    $         $    $  ANS001.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  011.FCW退出激活状态的原因0~7(B094)              $    $         $    $  ANS002.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0dc1;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  012.FCW退出激活状态的原因8~15(B094)             $    $         $    $  ANS002.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  013.FCW从激活状态异常退出原因0~7                $    $         $    $  ANS003.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  014.FCW从激活状态异常退出原因8~15               $    $         $    $  ANS003.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  015.Acc异常退出时的年份                         $    $         $    $  ANS003.BYTE006  $  y=x+2000;
  $  016.Acc异常退出时的月份                         $    $         $    $  ANS003.BYTE007  $  y=x;
  $  017.Acc异常退出时的日期                         $    $         $    $  ANS003.BYTE008  $  y=x;
  $  018.Acc异常退出时的时刻                         $    $         $    $  ANS003.BYTE009  $  y=x;
  $  019.Acc异常退出时的分钟                         $    $         $    $  ANS003.BYTE010  $  y=x;
  $  020.Acc异常退出时的秒数                         $    $         $    $  ANS003.BYTE011  $  y=x;
  $  021.Acc异常退出时的里程                         $    $  km     $    $  ANS003.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  022.FCW从激活状态异常退出原因0~7                $    $         $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  023.FCW从激活状态异常退出原因8~15               $    $         $    $  ANS004.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  024.AHB(自动远光灯)功能开关                     $    $         $    $  ANS005.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  025.TSR(交通标志识别)功能开关                   $    $         $    $  ANS005.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  026.ACC(自适应巡航控制)功能开关                 $    $         $    $  ANS005.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  027.AEBP(行人自动紧急制动)功能开关              $    $         $    $  ANS005.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  028.AEB(自动制动系统)功能开关                   $    $         $    $  ANS005.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  029.PCW(行人碰撞警告)功能开关                   $    $         $    $  ANS005.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  030.FCW(正面碰撞警告)功能开关                   $    $         $    $  ANS005.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  031.LDW(车道偏离预警系统)功能开关               $    $         $    $  ANS005.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  032.LKA(车道保持辅助)功能开关                   $    $         $    $  ANS005.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  033.IHC无法进入为原因0~7时的状态                $    $         $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  034.Acc异常退出时的年份                         $    $         $    $  ANS006.BYTE006  $  y=x+2000;
  $  035.Acc异常退出时的月份                         $    $         $    $  ANS006.BYTE007  $  y=x;
  $  036.Acc异常退出时的日期                         $    $         $    $  ANS006.BYTE008  $  y=x;
  $  037.Acc异常退出时的时刻                         $    $         $    $  ANS006.BYTE009  $  y=x;
  $  038.Acc异常退出时的分钟                         $    $         $    $  ANS006.BYTE010  $  y=x;
  $  039.Acc异常退出时的秒数                         $    $         $    $  ANS006.BYTE011  $  y=x;
  $  040.Acc异常退出时的里程                         $    $  km     $    $  ANS006.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  041.IHC无法进入为原因0~7时的状态                $    $         $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  042.IHC退出激活状态的原因0~7(B096)              $    $         $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  043.IHC从激活状态异常退出为原因0~7的状态        $    $         $    $  ANS009.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  044.Acc异常退出时的年份                         $    $         $    $  ANS009.BYTE006  $  y=x+2000;
  $  045.Acc异常退出时的月份                         $    $         $    $  ANS009.BYTE007  $  y=x;
  $  046.Acc异常退出时的日期                         $    $         $    $  ANS009.BYTE008  $  y=x;
  $  047.Acc异常退出时的时刻                         $    $         $    $  ANS009.BYTE009  $  y=x;
  $  048.Acc异常退出时的分钟                         $    $         $    $  ANS009.BYTE010  $  y=x;
  $  049.Acc异常退出时的秒数                         $    $         $    $  ANS009.BYTE011  $  y=x;
  $  050.Acc异常退出时的里程                         $    $  km     $    $  ANS009.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  051.IHC从激活状态异常退出为原因0~7的状态        $    $         $    $  ANS010.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  052.全局KL50状态                                $    $         $    $  ANS011.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  053.全局发动机运转状态                          $    $         $    $  ANS011.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  054.全局KL15状态                                $    $         $    $  ANS011.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  055.全局ACC/KLR状态                             $    $         $    $  ANS011.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  056.系统KL50状态                                $    $         $    $  ANS011.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  057.系统发动机运转状态                          $    $         $    $  ANS011.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  058.系统KL15状态                                $    $         $    $  ANS011.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  059.系统ACC/KLR状态                             $    $         $    $  ANS011.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  060.图像处理器温度                              $    $         $    $  ANS012.BYTE004  $  y=(x1*256+x2)-40;
  $  061.图像处理单元供电模式                        $    $         $    $  ANS013.BYTE004  $  if(x==0x00) y=@023f;else if(x==0x01) y=@07de;else if(x==0x02) y=@0e7e;else if(x==0x03) y=@0e7f;else if(x==0x04) y=@0e80;else if(x==0x05) y=@0035;else y=@0103;
  $  062.图像处理单元运行状态                        $    $         $    $  ANS014.BYTE004  $  if(x==0x00) y=@000f;else if(x==0x02) y=@090e;else if(x==0x03) y=@090f;else if(x==0x22) y=@0dc5;else if(x==0x82) y=@0dc6;else if(x==0x85) y=@0dc7;else if(x==0x92) y=@0dc8;else if(x==0xAA) y=@0180;else if(x==0xAC) y=@0dca;else y=@0103;
  $  063.LDW无法进入为原因0~7时的状态                $    $         $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  064.LDW无法进入为原因8~15时的状态               $    $         $    $  ANS015.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  065.Acc异常退出时的年份                         $    $         $    $  ANS015.BYTE006  $  y=x+2000;
  $  066.Acc异常退出时的月份                         $    $         $    $  ANS015.BYTE007  $  y=x;
  $  067.Acc异常退出时的日期                         $    $         $    $  ANS015.BYTE008  $  y=x;
  $  068.Acc异常退出时的时刻                         $    $         $    $  ANS015.BYTE009  $  y=x;
  $  069.Acc异常退出时的分钟                         $    $         $    $  ANS015.BYTE010  $  y=x;
  $  070.Acc异常退出时的秒数                         $    $         $    $  ANS015.BYTE011  $  y=x;
  $  071.Acc异常退出时的里程                         $    $  km     $    $  ANS015.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  072.LDW无法进入为原因0~7时的状态                $    $         $    $  ANS016.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  073.LDW无法进入为原因8~15时的状态               $    $         $    $  ANS016.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  074.LDW未准备好激活的原因0~7(B093)              $    $         $    $  ANS017.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  075.LDW未准备好激活的原因0~78~15(B093)          $    $         $    $  ANS017.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  076.LDW从激活状态异常退出为原因0~7的状态        $    $         $    $  ANS018.BYTE004  $  if(x==0x01) y=@0daf;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0db1;else if(x==0x10) y=@0db2;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0db3;else if(x==0x80) y=@0db4;else y=@0103;
  $  077.LDW从激活状态异常退出为原因8~15的状态       $    $         $    $  ANS018.BYTE005  $  if(x==0x01) y=@0db5;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0db6;else if(x==0x10) y=@0db7;else y=@0035;
  $  078.Acc异常退出时的年份                         $    $         $    $  ANS018.BYTE006  $  y=x+2000;
  $  079.Acc异常退出时的月份                         $    $         $    $  ANS018.BYTE007  $  y=x;
  $  080.Acc异常退出时的日期                         $    $         $    $  ANS018.BYTE008  $  y=x;
  $  081.Acc异常退出时的时刻                         $    $         $    $  ANS018.BYTE009  $  y=x;
  $  082.Acc异常退出时的分钟                         $    $         $    $  ANS018.BYTE010  $  y=x;
  $  083.Acc异常退出时的秒数                         $    $         $    $  ANS018.BYTE011  $  y=x;
  $  084.Acc异常退出时的里程                         $    $  km     $    $  ANS018.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  085.LDW从激活状态异常退出为原因0~7的状态        $    $         $    $  ANS019.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  086.LDW从激活状态异常退出为原因8~15的状态       $    $         $    $  ANS019.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  087.LDW(车道偏离预警系统)开关                   $    $         $    $  ANS020.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  088.LDW(车道偏离预警系统)开关指示灯             $    $         $    $  ANS021.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  089.LAK 原因0~7未准备好激活                     $    $         $    $  ANS022.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  090.LKA原因8~15未准备好激活                     $    $         $    $  ANS022.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  091.LKA原因16~23未准备好激活                    $    $         $    $  ANS022.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  092.LKA原因24~31未准备好激活                    $    $         $    $  ANS022.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  093.LKA原因32~39未准备好激活                    $    $         $    $  ANS022.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  094.LKA原因40~47未准备好激活                    $    $         $    $  ANS022.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  095.LKA的失控状态未准备好激活                   $    $         $    $  ANS022.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  096.LKA异常推出时的年份                         $    $         $    $  ANS022.BYTE012  $  y=x+2000;
  $  097.LKA异常推出时的月份                         $    $         $    $  ANS022.BYTE013  $  y=x;
  $  098.LKA异常推出时的日期                         $    $         $    $  ANS022.BYTE014  $  y=x;
  $  099.LKA异常推出时的时刻                         $    $         $    $  ANS022.BYTE015  $  y=x;
  $  100.LKA异常退出时的分钟                         $    $         $    $  ANS022.BYTE016  $  y=x;
  $  101.LKA异常推出时的秒数                         $    $         $    $  ANS022.BYTE017  $  y=x;
  $  102.LKA异常推出时的里程数                       $    $  km     $    $  ANS022.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  103.LAK 原因0~7未准备好激活                     $    $         $    $  ANS023.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  104.LKA原因8~15未准备好激活                     $    $         $    $  ANS023.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  105.LKA原因16~23未准备好激活                    $    $         $    $  ANS023.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  106.LKA原因24~31未准备好激活                    $    $         $    $  ANS023.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  107.LKA原因32~39未准备好激活                    $    $         $    $  ANS023.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  108.LKA原因40~47未准备好激活                    $    $         $    $  ANS023.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  109.LKA的失控状态未准备好激活                   $    $         $    $  ANS023.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  110.LKA异常推出时的年份                         $    $         $    $  ANS023.BYTE012  $  y=x+2000;
  $  111.LKA异常推出时的月份                         $    $         $    $  ANS023.BYTE013  $  y=x;
  $  112.LKA异常推出时的日期                         $    $         $    $  ANS023.BYTE014  $  y=x;
  $  113.LKA异常推出时的时刻                         $    $         $    $  ANS023.BYTE015  $  y=x;
  $  114.LKA异常退出时的分钟                         $    $         $    $  ANS023.BYTE016  $  y=x;
  $  115.LKA异常推出时的秒数                         $    $         $    $  ANS023.BYTE017  $  y=x;
  $  116.LKA异常推出时的里程数                       $    $  km     $    $  ANS023.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  117.LAK 原因0~7未准备好激活                     $    $         $    $  ANS024.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  118.LKA原因8~15未准备好激活                     $    $         $    $  ANS024.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  119.LKA原因16~23未准备好激活                    $    $         $    $  ANS024.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  120.LKA原因24~31未准备好激活                    $    $         $    $  ANS024.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  121.LKA原因32~39未准备好激活                    $    $         $    $  ANS024.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  122.LKA原因40~47未准备好激活                    $    $         $    $  ANS024.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  123.LKA的失控状态未准备好激活                   $    $         $    $  ANS024.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  124.LKA异常推出时的年份                         $    $         $    $  ANS024.BYTE012  $  y=x+2000;
  $  125.LKA异常推出时的月份                         $    $         $    $  ANS024.BYTE013  $  y=x;
  $  126.LKA异常推出时的日期                         $    $         $    $  ANS024.BYTE014  $  y=x;
  $  127.LKA异常推出时的时刻                         $    $         $    $  ANS024.BYTE015  $  y=x;
  $  128.LKA异常退出时的分钟                         $    $         $    $  ANS024.BYTE016  $  y=x;
  $  129.LKA异常推出时的秒数                         $    $         $    $  ANS024.BYTE017  $  y=x;
  $  130.LKA异常推出时的里程数                       $    $  km     $    $  ANS024.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  131.LAK 原因0~7未准备好激活                     $    $         $    $  ANS025.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  132.LKA原因8~15未准备好激活                     $    $         $    $  ANS025.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  133.LKA原因16~23未准备好激活                    $    $         $    $  ANS025.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  134.LKA原因24~31未准备好激活                    $    $         $    $  ANS025.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  135.LKA原因32~39未准备好激活                    $    $         $    $  ANS025.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  136.LKA原因40~47未准备好激活                    $    $         $    $  ANS025.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  137.LKA的失控状态未准备好激活                   $    $         $    $  ANS025.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  138.LKA异常推出时的年份                         $    $         $    $  ANS025.BYTE012  $  y=x+2000;
  $  139.LKA异常推出时的月份                         $    $         $    $  ANS025.BYTE013  $  y=x;
  $  140.LKA异常推出时的日期                         $    $         $    $  ANS025.BYTE014  $  y=x;
  $  141.LKA异常推出时的时刻                         $    $         $    $  ANS025.BYTE015  $  y=x;
  $  142.LKA异常退出时的分钟                         $    $         $    $  ANS025.BYTE016  $  y=x;
  $  143.LKA异常推出时的秒数                         $    $         $    $  ANS025.BYTE017  $  y=x;
  $  144.LKA异常推出时的里程数                       $    $  km     $    $  ANS025.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  145.LAK 原因0~7未准备好激活                     $    $         $    $  ANS026.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  146.LKA原因8~15未准备好激活                     $    $         $    $  ANS026.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  147.LKA原因16~23未准备好激活                    $    $         $    $  ANS026.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  148.LKA原因24~31未准备好激活                    $    $         $    $  ANS026.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  149.LKA原因32~39未准备好激活                    $    $         $    $  ANS026.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  150.LKA原因40~47未准备好激活                    $    $         $    $  ANS026.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  151.LKA的失控状态未准备好激活                   $    $         $    $  ANS026.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  152.LKA异常推出时的年份                         $    $         $    $  ANS026.BYTE012  $  y=x+2000;
  $  153.LKA异常推出时的月份                         $    $         $    $  ANS026.BYTE013  $  y=x;
  $  154.LKA异常推出时的日期                         $    $         $    $  ANS026.BYTE014  $  y=x;
  $  155.LKA异常推出时的时刻                         $    $         $    $  ANS026.BYTE015  $  y=x;
  $  156.LKA异常退出时的分钟                         $    $         $    $  ANS026.BYTE016  $  y=x;
  $  157.LKA异常推出时的秒数                         $    $         $    $  ANS026.BYTE017  $  y=x;
  $  158.LKA异常推出时的里程数                       $    $  km     $    $  ANS026.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  159.LAK 原因0~7未准备好激活                     $    $         $    $  ANS027.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  160.LKA原因8~15未准备好激活                     $    $         $    $  ANS027.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0103;
  $  161.LKA原因16~23未准备好激活                    $    $         $    $  ANS027.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0103;
  $  162.LKA原因24~31未准备好激活                    $    $         $    $  ANS027.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  163.LKA原因32~39未准备好激活                    $    $         $    $  ANS027.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  164.LKA原因40~47未准备好激活                    $    $         $    $  ANS027.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  165.LKA原因0~7退出激活状态                      $    $         $    $  ANS028.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  166.LKA原因8~15退出激活状态                     $    $         $    $  ANS028.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  167.LKA原因16~23退出激活状态                    $    $         $    $  ANS028.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  168.LKA原因24~31退出激活状态                    $    $         $    $  ANS028.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  169.LKA原因32~39退出激活状态                    $    $         $    $  ANS028.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  170.LKA原因40~47退出激活状态                    $    $         $    $  ANS028.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  171.LKA原因0~7退出激活状态                      $    $         $    $  ANS029.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  172.LKA原因8~15退出激活状态                     $    $         $    $  ANS029.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  173.LKA原因16~23退出激活状态                    $    $         $    $  ANS029.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  174.LKA原因24~31退出激活状态                    $    $         $    $  ANS029.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  175.LKA原因32~39退出激活状态                    $    $         $    $  ANS029.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  176.LKA原因40~47退出激活状态                    $    $         $    $  ANS029.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  177.LKA的失控状态退出激活状态                   $    $         $    $  ANS029.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  178.LKA异常推出时的年份                         $    $         $    $  ANS029.BYTE012  $  y=x+2000;
  $  179.LKA异常推出时的月份                         $    $         $    $  ANS029.BYTE013  $  y=x;
  $  180.LKA异常推出时的日期                         $    $         $    $  ANS029.BYTE014  $  y=x;
  $  181.LKA异常推出时的时刻                         $    $         $    $  ANS029.BYTE015  $  y=x;
  $  182.LKA异常退出时的分钟                         $    $         $    $  ANS029.BYTE016  $  y=x;
  $  183.LKA异常推出时的秒数                         $    $         $    $  ANS029.BYTE017  $  y=x;
  $  184.LKA异常推出时的里程数                       $    $  km     $    $  ANS029.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  185.LKA原因0~7退出激活状态                      $    $         $    $  ANS030.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  186.LKA原因8~15退出激活状态                     $    $         $    $  ANS030.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  187.LKA原因16~23退出激活状态                    $    $         $    $  ANS030.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  188.LKA原因24~31退出激活状态                    $    $         $    $  ANS030.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  189.LKA原因32~39退出激活状态                    $    $         $    $  ANS030.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  190.LKA原因40~47退出激活状态                    $    $         $    $  ANS030.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  191.LKA的失控状态退出激活状态                   $    $         $    $  ANS030.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  192.LKA异常推出时的年份                         $    $         $    $  ANS030.BYTE012  $  y=x+2000;
  $  193.LKA异常推出时的月份                         $    $         $    $  ANS030.BYTE013  $  y=x;
  $  194.LKA异常推出时的日期                         $    $         $    $  ANS030.BYTE014  $  y=x;
  $  195.LKA异常推出时的时刻                         $    $         $    $  ANS030.BYTE015  $  y=x;
  $  196.LKA异常退出时的分钟                         $    $         $    $  ANS030.BYTE016  $  y=x;
  $  197.LKA异常推出时的秒数                         $    $         $    $  ANS030.BYTE017  $  y=x;
  $  198.LKA异常推出时的里程数                       $    $  km     $    $  ANS030.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  199.LKA原因0~7退出激活状态                      $    $         $    $  ANS031.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  200.LKA原因8~15退出激活状态                     $    $         $    $  ANS031.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  201.LKA原因16~23退出激活状态                    $    $         $    $  ANS031.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  202.LKA原因24~31退出激活状态                    $    $         $    $  ANS031.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  203.LKA原因32~39退出激活状态                    $    $         $    $  ANS031.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  204.LKA原因40~47退出激活状态                    $    $         $    $  ANS031.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  205.LKA的失控状态退出激活状态                   $    $         $    $  ANS031.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  206.LKA异常推出时的年份                         $    $         $    $  ANS031.BYTE012  $  y=x+2000;
  $  207.LKA异常推出时的月份                         $    $         $    $  ANS031.BYTE013  $  y=x;
  $  208.LKA异常推出时的日期                         $    $         $    $  ANS031.BYTE014  $  y=x;
  $  209.LKA异常推出时的时刻                         $    $         $    $  ANS031.BYTE015  $  y=x;
  $  210.LKA异常退出时的分钟                         $    $         $    $  ANS031.BYTE016  $  y=x;
  $  211.LKA异常推出时的秒数                         $    $         $    $  ANS031.BYTE017  $  y=x;
  $  212.LKA异常推出时的里程数                       $    $  km     $    $  ANS031.BYTE018  $  y=(x1*256*256+x2*256+x3);

  $)  03.数据流4
  $  03.数据流4
  $  REQ000:74A 03 22 B0 A3 00 00 00 00       $  ANS000:7CA 03 22 B0 A3 00 00 00 00
  $  REQ001:74A 03 22 B0 A4 00 00 00 00       $  ANS001:7CA 03 22 B0 A4 00 00 00 00
  $  REQ002:74A 03 22 B0 AA 00 00 00 00       $  ANS002:7CA 03 22 B0 AA 00 00 00 00
  $  REQ003:74A 03 22 B0 30 00 00 00 00       $  ANS003:7CA 03 22 B0 30 00 00 00 00
  $  REQ004:74A 03 22 E1 01 00 00 00 00       $  ANS004:7CA 03 22 E1 01 00 00 00 00
  $  REQ005:74A 03 22 C0 05 00 00 00 00       $  ANS005:7CA 03 22 C0 05 00 00 00 00
  $  REQ006:74A 03 22 B0 90 00 00 00 00       $  ANS006:7CA 03 22 B0 90 00 00 00 00
  $  REQ007:74A 03 22 C0 08 00 00 00 00       $  ANS007:7CA 03 22 C0 08 00 00 00 00
  $  REQ008:74A 03 22 C0 03 00 00 00 00       $  ANS008:7CA 03 22 C0 03 00 00 00 00
  $  REQ009:74A 03 22 C0 06 00 00 00 00       $  ANS009:7CA 03 22 C0 06 00 00 00 00
  $  REQ010:74A 03 22 B0 47 00 00 00 00       $  ANS010:7CA 03 22 B0 47 00 00 00 00
  $  REQ011:74A 03 22 B0 79 00 00 00 00       $  ANS011:7CA 03 22 B0 79 00 00 00 00
  $  REQ012:74A 03 22 B0 7B 00 00 00 00       $  ANS012:7CA 03 22 B0 7B 00 00 00 00
  $  REQ013:74A 03 22 B0 95 00 00 00 00       $  ANS013:7CA 03 22 B0 95 00 00 00 00
  $  REQ014:74A 03 22 B0 78 00 00 00 00       $  ANS014:7CA 03 22 B0 78 00 00 00 00
  $  REQ015:74A 03 22 B0 7A 00 00 00 00       $  ANS015:7CA 03 22 B0 7A 00 00 00 00
  $  REQ016:74A 03 22 B0 00 00 00 00 00       $  ANS016:7CA 03 22 B0 00 00 00 00 00

  $  000.LKA原因0~7退出激活状态                           $    $          $    $  ANS000.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  001.LKA原因8~15退出激活状态                          $    $          $    $  ANS000.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  002.LKA原因16~23退出激活状态                         $    $          $    $  ANS000.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  003.LKA原因24~31退出激活状态                         $    $          $    $  ANS000.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  004.LKA原因32~39退出激活状态                         $    $          $    $  ANS000.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  005.LKA原因40~47退出激活状态                         $    $          $    $  ANS000.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  006.LKA的失控状态退出激活状态                        $    $          $    $  ANS000.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  007.LKA异常推出时的年份                              $    $          $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.LKA异常推出时的月份                              $    $          $    $  ANS000.BYTE013  $  y=x;
  $  009.LKA异常推出时的日期                              $    $          $    $  ANS000.BYTE014  $  y=x;
  $  010.LKA异常推出时的时刻                              $    $          $    $  ANS000.BYTE015  $  y=x;
  $  011.LKA异常退出时的分钟                              $    $          $    $  ANS000.BYTE016  $  y=x;
  $  012.LKA异常推出时的秒数                              $    $          $    $  ANS000.BYTE017  $  y=x;
  $  013.LKA异常推出时的里程数                            $    $  km      $    $  ANS000.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  014.LKA原因0~7退出激活状态                           $    $          $    $  ANS001.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  015.LKA原因8~15退出激活状态                          $    $          $    $  ANS001.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  016.LKA原因16~23退出激活状态                         $    $          $    $  ANS001.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  017.LKA原因24~31退出激活状态                         $    $          $    $  ANS001.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  018.LKA原因32~39退出激活状态                         $    $          $    $  ANS001.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  019.LKA原因40~47退出激活状态                         $    $          $    $  ANS001.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  020.LKA的失控状态退出激活状态                        $    $          $    $  ANS001.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  021.LKA异常推出时的年份                              $    $          $    $  ANS001.BYTE012  $  y=x+2000;
  $  022.LKA异常推出时的月份                              $    $          $    $  ANS001.BYTE013  $  y=x;
  $  023.LKA异常推出时的日期                              $    $          $    $  ANS001.BYTE014  $  y=x;
  $  024.LKA异常推出时的时刻                              $    $          $    $  ANS001.BYTE015  $  y=x;
  $  025.LKA异常退出时的分钟                              $    $          $    $  ANS001.BYTE016  $  y=x;
  $  026.LKA异常推出时的秒数                              $    $          $    $  ANS001.BYTE017  $  y=x;
  $  027.LKA异常推出时的里程数                            $    $  km      $    $  ANS001.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  028.LKA原因0~7退出激活状态                           $    $          $    $  ANS002.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  029.LKA原因8~15退出激活状态                          $    $          $    $  ANS002.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  030.LKA原因16~23退出激活状态                         $    $          $    $  ANS002.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  031.LKA原因24~31退出激活状态                         $    $          $    $  ANS002.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  032.LKA原因32~39退出激活状态                         $    $          $    $  ANS002.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  033.LKA原因40~47退出激活状态                         $    $          $    $  ANS002.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  034.AHB自动大灯系统启用                              $    $          $    $  ANS003.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0035;
  $  035.TSR(交通标志识别)启用                            $    $          $    $  ANS003.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0035;
  $  036.ACC(自适应巡航控制)启用                          $    $          $    $  ANS003.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0035;
  $  037.AEBP(行人自动紧急制动)启用                       $    $          $    $  ANS003.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0035;
  $  038.AEB(自动制动系统)启用                            $    $          $    $  ANS003.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0035;
  $  039.PCW(行人碰撞警告)启用                            $    $          $    $  ANS003.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0035;
  $  040.FCW(正面碰撞警告)启用                            $    $          $    $  ANS003.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0035;
  $  041.LDW(车道偏离预警系统)启用                        $    $          $    $  ANS003.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  042.LKA(车道保持辅助)启用                            $    $          $    $  ANS003.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  043.功能启用信号经验                                 $    $          $    $  ANS003.BYTE006  $  HEX(X1);
  $  044.读取里程数                                       $    $  km      $    $  ANS004.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  045.车辆区域码                                       $    $          $    $  ANS005.BYTE004  $  if(x==0x00) y=@01df;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0b6e;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0103;
  $  046.刷写检测错误                                     $    $          $    $  ANS006.BYTE006  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  047.PLL(锁相环)校验错误                              $    $          $    $  ANS006.BYTE007  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  048.内存校验错误                                     $    $          $    $  ANS006.BYTE008  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  049.堆栈检测错误                                     $    $          $    $  ANS006.BYTE009  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  050.未使用内存检测错误                               $    $          $    $  ANS006.BYTE010  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  051.ECC(错误检查和纠正)校验错误                      $    $          $    $  ANS006.BYTE011  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  052.常量寄存器检测错误                               $    $          $    $  ANS006.BYTE012  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  053.Spi超时                                          $    $          $    $  ANS006.BYTE013  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  054.ESR0重置次数                                     $    $          $    $  ANS006.BYTE014  $  y=x;
  $  055.ESR1重置次数                                     $    $          $    $  ANS006.BYTE015  $  y=x;
  $  056.SMU重置次数                                      $    $          $    $  ANS006.BYTE016  $  y=x;
  $  057.软件复位的复位计数器                             $    $          $    $  ANS006.BYTE017  $  y=x;
  $  058.STM0重置次数                                     $    $          $    $  ANS006.BYTE018  $  y=x;
  $  059.STM1重置次数                                     $    $          $    $  ANS006.BYTE019  $  y=x;
  $  060.STM2重置次数                                     $    $          $    $  ANS006.BYTE020  $  y=x;
  $  061.MultipleReset重置次数                            $    $          $    $  ANS006.BYTE021  $  y=x;
  $  062.CB0重置次数                                      $    $          $    $  ANS006.BYTE022  $  y=x;
  $  063.CB1重置次数                                      $    $          $    $  ANS006.BYTE023  $  y=x;
  $  064.CB3重置次数                                      $    $          $    $  ANS006.BYTE024  $  y=x;
  $  065.TuningProtect重置次数                            $    $          $    $  ANS006.BYTE025  $  y=x;
  $  066.EVR13重置次数                                    $    $          $    $  ANS006.BYTE026  $  y=x;
  $  067.EVR33重置次数                                    $    $          $    $  ANS006.BYTE027  $  y=x;
  $  068.电子看门狗的复位计数器                           $    $          $    $  ANS006.BYTE028  $  y=x;
  $  069.备用看门狗的复位计数器                           $    $          $    $  ANS006.BYTE029  $  y=x;
  $  070.可靠性数据年份                                   $    $          $    $  ANS006.BYTE030  $  y=x+2000;
  $  071.可靠性数据月份                                   $    $          $    $  ANS006.BYTE031  $  y=x;
  $  072.可靠性数据日期                                   $    $          $    $  ANS006.BYTE032  $  y=x;
  $  073.可靠性数据时                                     $    $          $    $  ANS006.BYTE033  $  y=x;
  $  074.可靠性数据分                                     $    $          $    $  ANS006.BYTE034  $  y=x;
  $  075.可靠性数据秒                                     $    $          $    $  ANS006.BYTE035  $  y=x;
  $  076.可靠性数据里程数                                 $    $  km      $    $  ANS006.BYTE036  $  y=(x1*256*256+x2*256+x3);
  $  077.MT/AT配置                                        $    $          $    $  ANS007.BYTE004  $  if(x==0x55) y=@003b;else if(x==0xAA) y=@01b7;else y=@0103;
  $  078.FICM配置                                         $    $          $    $  ANS007.BYTE005  $  if(x==0x55) y=@0e85;else if(x==0xAA) y=@0e86;else y=@0103;
  $  079.FCW(正面碰撞警告)驱动选定的灵敏度等级            $    $          $    $  ANS008.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  080.LDW(车道偏离预警系统)驾驶员选择的敏感级别        $    $          $    $  ANS008.BYTE004  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  081.AEB(自动制动系统)驾驶员选择的敏感级别            $    $          $    $  ANS008.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  082.ACC(自适应巡航控制)驱动选定的目标距离等级        $    $          $    $  ANS008.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0103;
  $  083.PCW(行人碰撞警告)驾驶员选定的灵敏度等级          $    $          $    $  ANS008.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  084.AEBP(行人自动紧急制动)驱动选择的灵敏度等级       $    $          $    $  ANS008.BYTE006  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  085.摄像头目标速度需求                               $    $          $    $  ANS009.BYTE004  $  y=(x1*256+x2);
  $  086.ACC驾驶员选择的速度                              $    $          $    $  ANS009.BYTE006  $  y=(x1*256+x2);
  $  087.供应商芯片跟踪号                                 $    $          $    $  ANS010.BYTE004  $  y=UINT64(x1,x2,x3,x4,x5,x6,x7,x8);
  $  088.TSR无法进入为原因0~7时的状态                     $    $          $    $  ANS011.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  089.Acc异常退出时的年份                              $    $          $    $  ANS011.BYTE006  $  y=x+2000;
  $  090.Acc异常退出时的月份                              $    $          $    $  ANS011.BYTE007  $  y=x;
  $  091.Acc异常退出时的日期                              $    $          $    $  ANS011.BYTE008  $  y=x;
  $  092.Acc异常退出时的时刻                              $    $          $    $  ANS011.BYTE009  $  y=x;
  $  093.Acc异常退出时的分钟                              $    $          $    $  ANS011.BYTE010  $  y=x;
  $  094.Acc异常退出时的秒数                              $    $          $    $  ANS011.BYTE011  $  y=x;
  $  095.Acc异常退出时的里程                              $    $  km      $    $  ANS011.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  096.TSR无法进入为原因0~7时的状态                     $    $          $    $  ANS012.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  097.TSR无法进入为原因8~15时的状态                    $    $          $    $  ANS012.BYTE005  $  if(x==0x00) y=@075a;else y=@01a9;
  $  098.TSR退出激活状态的原因0~7(B095)                   $    $          $    $  ANS013.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  099.TSR退出激活状态的原因8~15(B095)                  $    $          $    $  ANS013.BYTE005  $  if((x>=0x01)&&(x<=0xFF))y=@0e87;else y=@075a;
  $  100.TSR从激活状态异常退出为原因0~7的状态             $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  101.Acc异常退出时的年份                              $    $          $    $  ANS014.BYTE006  $  y=x+2000;
  $  102.Acc异常退出时的月份                              $    $          $    $  ANS014.BYTE007  $  y=x;
  $  103.Acc异常退出时的日期                              $    $          $    $  ANS014.BYTE008  $  y=x;
  $  104.Acc异常退出时的时刻                              $    $          $    $  ANS014.BYTE009  $  y=x;
  $  105.Acc异常退出时的分钟                              $    $          $    $  ANS014.BYTE010  $  y=x;
  $  106.Acc异常退出时的秒数                              $    $          $    $  ANS014.BYTE011  $  y=x;
  $  107.Acc异常退出时的里程                              $    $  km      $    $  ANS014.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  108.TSR从激活状态异常退出为原因0~7的状态             $    $          $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  109.TSR从激活状态异常退出为原因8~15的状态            $    $          $    $  ANS015.BYTE005  $  if((x>=0x01)&&(x<=0xFF))y=@0e87;else y=@075a;
  $  110.车速                                             $    $  kph     $    $  ANS016.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:74A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
