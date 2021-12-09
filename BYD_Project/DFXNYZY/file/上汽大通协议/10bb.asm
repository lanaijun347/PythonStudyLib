
    车型ID：10bb

    模拟：协议模拟-->10bb

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

  $*$*DTC/b8000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:74A 04 14 FF FF FF 00 00 00       $$  ANS000:7CA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:74A 03 22 F1 A0 00 00 00 00       $%  ANS000:7CA 03 22 F1 A0 00 00 00 00
  $%  REQ001:74A 03 22 F1 83 00 00 00 00       $%  ANS001:7CA 03 22 F1 83 00 00 00 00
  $%  REQ002:74A 03 22 F1 A1 00 00 00 00       $%  ANS002:7CA 03 22 F1 A1 00 00 00 00
  $%  REQ003:74A 03 22 F1 91 00 00 00 00       $%  ANS003:7CA 03 22 F1 91 00 00 00 00
  $%  REQ004:74A 03 22 F1 A2 00 00 00 00       $%  ANS004:7CA 03 22 F1 A2 00 00 00 00
  $%  REQ005:74A 03 22 F1 87 00 00 00 00       $%  ANS005:7CA 03 22 F1 87 00 00 00 00
  $%  REQ006:74A 03 22 F1 10 00 00 00 00       $%  ANS006:7CA 03 22 F1 10 00 00 00 00
  $%  REQ007:74A 03 22 F1 92 00 00 00 00       $%  ANS007:7CA 03 22 F1 92 00 00 00 00
  $%  REQ008:74A 03 22 F1 8C 00 00 00 00       $%  ANS008:7CA 03 22 F1 8C 00 00 00 00
  $%  REQ009:74A 03 22 F1 94 00 00 00 00       $%  ANS009:7CA 03 22 F1 94 00 00 00 00
  $%  REQ010:74A 03 22 F1 8A 00 00 00 00       $%  ANS010:7CA 03 22 F1 8A 00 00 00 00
  $%  REQ011:74A 03 22 F1 90 00 00 00 00       $%  ANS011:7CA 03 22 F1 90 00 00 00 00
  $%  REQ012:74A 03 22 F1 A8 00 00 00 00       $%  ANS012:7CA 03 22 F1 A8 00 00 00 00
  $%  REQ013:74A 03 22 F1 8B 00 00 00 00       $%  ANS013:7CA 03 22 F1 8B 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE011  $%  ASCII(X1,X2,X3);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元网络文件参考号:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号(上次):            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  007:测试工具参考号(上次):            $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  008:里程读数(上次):                  $%    $%  ANS006.BYTE015  $%  y=x1*256*256+x2*256+x3;
  $%  009:供应商电控单元硬件参考号:        $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:车辆零部件的识别:                $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2);
  $%  011:零部件代码（最后四字节）:        $%    $%  ANS008.BYTE006  $%  ASCII(X1,X2,X3,X4);
  $%  012:供应商识别号:                    $%    $%  ANS008.BYTE010  $%  ASCII(X1,X2,X3,X4,X5,X6);
  $%  013:年:                              $%    $%  ANS008.BYTE016  $%  ASCII(X1);
  $%  014:月:                              $%    $%  ANS008.BYTE017  $%  ASCII(X1);
  $%  015:日:                              $%    $%  ANS008.BYTE018  $%  ASCII(X1,X2);
  $%  016:产品序列号:                      $%    $%  ANS008.BYTE020  $%  ASCII(X1,X2,X3,X4);
  $%  017:供应商电控单元软件参考号:        $%    $%  ANS009.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  018:系统供应商标识号:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  019:车辆识别代码:                    $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  020:车辆特征信息:                    $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  021:电控单元制造日期:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

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
  $  REQ013:74A 03 22 B0 80 00 00 00 00       $  ANS013:7CA 03 22 B0 80 00 00 00 00
  $  REQ014:74A 03 22 B0 81 00 00 00 00       $  ANS014:7CA 03 22 B0 81 00 00 00 00

  $  000.ACC无法进入原因0~7                        $    $           $    $  ANS000.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  001.ACC无法进入原因8~15                       $    $           $    $  ANS000.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  002.ACC无法进入原因16~23                      $    $           $    $  ANS000.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  003.ACC无法进入原因24~31                      $    $           $    $  ANS000.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  004.ACC无法进入原因32~39                      $    $           $    $  ANS000.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  005.ACC无法进入原因40~47                      $    $           $    $  ANS000.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  006.ACC无法进入时的故障保障状态               $    $           $    $  ANS000.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  007.Acc异常退出时的年份                       $    $           $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.Acc异常退出时的月份                       $    $           $    $  ANS000.BYTE013  $  y=x;
  $  009.Acc异常退出时的日期                       $    $           $    $  ANS000.BYTE014  $  y=x;
  $  010.Acc异常退出时的时刻                       $    $           $    $  ANS000.BYTE015  $  y=x;
  $  011.Acc异常退出时的分钟                       $    $           $    $  ANS000.BYTE016  $  y=x;
  $  012.Acc异常退出时的秒数                       $    $           $    $  ANS000.BYTE017  $  y=x;
  $  013.Acc异常退出时的里程                       $    $  km       $    $  ANS000.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  014.ACC无法进入原因0~7                        $    $           $    $  ANS001.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  015.ACC无法进入原因8~15                       $    $           $    $  ANS001.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  016.ACC无法进入原因16~23                      $    $           $    $  ANS001.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  017.ACC无法进入原因24~31                      $    $           $    $  ANS001.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  018.ACC无法进入原因32~39                      $    $           $    $  ANS001.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  019.ACC无法进入原因40~47                      $    $           $    $  ANS001.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  020.ACC无法进入时的故障保障状态               $    $           $    $  ANS001.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  021.Acc异常退出时的年份                       $    $           $    $  ANS001.BYTE012  $  y=x+2000;
  $  022.Acc异常退出时的月份                       $    $           $    $  ANS001.BYTE013  $  y=x;
  $  023.Acc异常退出时的日期                       $    $           $    $  ANS001.BYTE014  $  y=x;
  $  024.Acc异常退出时的时刻                       $    $           $    $  ANS001.BYTE015  $  y=x;
  $  025.Acc异常退出时的分钟                       $    $           $    $  ANS001.BYTE016  $  y=x;
  $  026.Acc异常退出时的秒数                       $    $           $    $  ANS001.BYTE017  $  y=x;
  $  027.Acc异常退出时的里程                       $    $  km       $    $  ANS001.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  028.ACC无法进入原因0~7                        $    $           $    $  ANS002.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  029.ACC无法进入原因8~15                       $    $           $    $  ANS002.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  030.ACC无法进入原因16~23                      $    $           $    $  ANS002.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  031.ACC无法进入原因24~31                      $    $           $    $  ANS002.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  032.ACC无法进入原因32~39                      $    $           $    $  ANS002.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  033.ACC无法进入原因40~47                      $    $           $    $  ANS002.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  034.ACC无法进入时的故障保障状态               $    $           $    $  ANS002.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  035.Acc异常退出时的年份                       $    $           $    $  ANS002.BYTE012  $  y=x+2000;
  $  036.Acc异常退出时的月份                       $    $           $    $  ANS002.BYTE013  $  y=x;
  $  037.Acc异常退出时的日期                       $    $           $    $  ANS002.BYTE014  $  y=x;
  $  038.Acc异常退出时的时刻                       $    $           $    $  ANS002.BYTE015  $  y=x;
  $  039.Acc异常退出时的分钟                       $    $           $    $  ANS002.BYTE016  $  y=x;
  $  040.Acc异常退出时的秒数                       $    $           $    $  ANS002.BYTE017  $  y=x;
  $  041.Acc异常退出时的里程                       $    $  km       $    $  ANS002.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  042.ACC无法进入原因0~7                        $    $           $    $  ANS003.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  043.ACC无法进入原因8~15                       $    $           $    $  ANS003.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  044.ACC无法进入原因16~23                      $    $           $    $  ANS003.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  045.ACC无法进入原因24~31                      $    $           $    $  ANS003.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  046.ACC无法进入原因32~39                      $    $           $    $  ANS003.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  047.ACC无法进入原因40~47                      $    $           $    $  ANS003.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  048.ACC无法进入时的故障保障状态               $    $           $    $  ANS003.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  049.Acc异常退出时的年份                       $    $           $    $  ANS003.BYTE012  $  y=x+2000;
  $  050.Acc异常退出时的月份                       $    $           $    $  ANS003.BYTE013  $  y=x;
  $  051.Acc异常退出时的日期                       $    $           $    $  ANS003.BYTE014  $  y=x;
  $  052.Acc异常退出时的时刻                       $    $           $    $  ANS003.BYTE015  $  y=x;
  $  053.Acc异常退出时的分钟                       $    $           $    $  ANS003.BYTE016  $  y=x;
  $  054.Acc异常退出时的秒数                       $    $           $    $  ANS003.BYTE017  $  y=x;
  $  055.Acc异常退出时的里程                       $    $  km       $    $  ANS003.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  056.ACC无法进入原因0~7                        $    $           $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  057.ACC无法进入原因8~15                       $    $           $    $  ANS004.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  058.ACC无法进入原因16~23                      $    $           $    $  ANS004.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  059.ACC无法进入原因24~31                      $    $           $    $  ANS004.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  060.ACC无法进入原因32~39                      $    $           $    $  ANS004.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  061.ACC无法进入原因40~47                      $    $           $    $  ANS004.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  062.ACC无法进入时的故障保障状态               $    $           $    $  ANS004.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  063.Acc异常退出时的年份                       $    $           $    $  ANS004.BYTE012  $  y=x+2000;
  $  064.Acc异常退出时的月份                       $    $           $    $  ANS004.BYTE013  $  y=x;
  $  065.Acc异常退出时的日期                       $    $           $    $  ANS004.BYTE014  $  y=x;
  $  066.Acc异常退出时的时刻                       $    $           $    $  ANS004.BYTE015  $  y=x;
  $  067.Acc异常退出时的分钟                       $    $           $    $  ANS004.BYTE016  $  y=x;
  $  068.Acc异常退出时的秒数                       $    $           $    $  ANS004.BYTE017  $  y=x;
  $  069.Acc异常退出时的里程                       $    $  km       $    $  ANS004.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  070.ACC无法进入时为原因0~7时的状态            $    $           $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  071.ACC无法进入时为原因8~15时的状态           $    $           $    $  ANS005.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  072.ACC无法进入时为原因16~23时的状态          $    $           $    $  ANS005.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  073.ACC无法进入时为原因24~31时的状态          $    $           $    $  ANS005.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  074.ACC无法进入时为原因32~39时的状态          $    $           $    $  ANS005.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  075.ACC无法进入时为原因40~47时的状态          $    $           $    $  ANS005.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  076.ACC 异常退出为原因0~7时的状态             $    $           $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  077.ACC 异常退出为原因8~15时的状态            $    $           $    $  ANS006.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  078.ACC 异常退出为原因16~23时的状态           $    $           $    $  ANS006.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  079.ACC 异常退出为原因24~31时的状态           $    $           $    $  ANS006.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  080.ACC 异常退出为原因32~39时的状态           $    $           $    $  ANS006.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  081.ACC 异常退出为原因40~47时的状态           $    $           $    $  ANS006.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  082.ACC从激活状态异常退出原因0~7              $    $           $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  083.ACC从激活状态异常退出原因8~15             $    $           $    $  ANS007.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  084.ACC从激活状态异常退出原因16~23            $    $           $    $  ANS007.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  085.ACC从激活状态异常退出原因24~31            $    $           $    $  ANS007.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  086.ACC从激活状态异常退出原因32~39            $    $           $    $  ANS007.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  087.ACC从激活状态异常退出原因40~47            $    $           $    $  ANS007.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  088.ACC从激活状态异常退出时故障保险状态       $    $           $    $  ANS007.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  089.Acc异常退出时的年份                       $    $           $    $  ANS007.BYTE012  $  y=x+2000;
  $  090.Acc异常退出时的月份                       $    $           $    $  ANS007.BYTE013  $  y=x;
  $  091.Acc异常退出时的日期                       $    $           $    $  ANS007.BYTE014  $  y=x;
  $  092.Acc异常退出时的时刻                       $    $           $    $  ANS007.BYTE015  $  y=x;
  $  093.Acc异常退出时的分钟                       $    $           $    $  ANS007.BYTE016  $  y=x;
  $  094.Acc异常退出时的秒数                       $    $           $    $  ANS007.BYTE017  $  y=x;
  $  095.Acc异常退出时的里程                       $    $  km       $    $  ANS007.BYTE020  $  y=x;
  $  096.ACC从激活状态异常退出原因0~7              $    $           $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  097.ACC从激活状态异常退出原因8~15             $    $           $    $  ANS008.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  098.ACC从激活状态异常退出原因16~23            $    $           $    $  ANS008.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  099.ACC从激活状态异常退出原因24~31            $    $           $    $  ANS008.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  100.ACC从激活状态异常退出原因32~39            $    $           $    $  ANS008.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  101.ACC从激活状态异常退出原因40~47            $    $           $    $  ANS008.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  102.ACC从激活状态异常退出时故障保险状态       $    $           $    $  ANS008.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  103.Acc异常退出时的年份                       $    $           $    $  ANS008.BYTE012  $  y=x+2000;
  $  104.Acc异常退出时的月份                       $    $           $    $  ANS008.BYTE013  $  y=x;
  $  105.Acc异常退出时的日期                       $    $           $    $  ANS008.BYTE014  $  y=x;
  $  106.Acc异常退出时的时刻                       $    $           $    $  ANS008.BYTE015  $  y=x;
  $  107.Acc异常退出时的分钟                       $    $           $    $  ANS008.BYTE016  $  y=x;
  $  108.Acc异常退出时的秒数                       $    $           $    $  ANS008.BYTE017  $  y=x;
  $  109.Acc异常退出时的里程                       $    $  km       $    $  ANS008.BYTE020  $  y=x;
  $  110.ACC从激活状态异常退出原因0~7              $    $           $    $  ANS009.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  111.ACC从激活状态异常退出原因8~15             $    $           $    $  ANS009.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  112.ACC从激活状态异常退出原因16~23            $    $           $    $  ANS009.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  113.ACC从激活状态异常退出原因24~31            $    $           $    $  ANS009.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  114.ACC从激活状态异常退出原因32~39            $    $           $    $  ANS009.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  115.ACC从激活状态异常退出原因40~47            $    $           $    $  ANS009.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  116.ACC从激活状态异常退出时故障保险状态       $    $           $    $  ANS009.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  117.Acc异常退出时的年份                       $    $           $    $  ANS009.BYTE012  $  y=x+2000;
  $  118.Acc异常退出时的月份                       $    $           $    $  ANS009.BYTE013  $  y=x;
  $  119.Acc异常退出时的日期                       $    $           $    $  ANS009.BYTE014  $  y=x;
  $  120.Acc异常退出时的时刻                       $    $           $    $  ANS009.BYTE015  $  y=x;
  $  121.Acc异常退出时的分钟                       $    $           $    $  ANS009.BYTE016  $  y=x;
  $  122.Acc异常退出时的秒数                       $    $           $    $  ANS009.BYTE017  $  y=x;
  $  123.Acc异常退出时的里程                       $    $  km       $    $  ANS009.BYTE020  $  y=x;
  $  124.ACC从激活状态异常退出原因0~7              $    $           $    $  ANS010.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  125.ACC从激活状态异常退出原因8~15             $    $           $    $  ANS010.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  126.ACC从激活状态异常退出原因16~23            $    $           $    $  ANS010.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  127.ACC从激活状态异常退出原因24~31            $    $           $    $  ANS010.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  128.ACC从激活状态异常退出原因32~39            $    $           $    $  ANS010.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  129.ACC从激活状态异常退出原因40~47            $    $           $    $  ANS010.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  130.ACC从激活状态异常退出时故障保险状态       $    $           $    $  ANS010.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  131.Acc异常退出时的年份                       $    $           $    $  ANS010.BYTE012  $  y=x+2000;
  $  132.Acc异常退出时的月份                       $    $           $    $  ANS010.BYTE013  $  y=x;
  $  133.Acc异常退出时的日期                       $    $           $    $  ANS010.BYTE014  $  y=x;
  $  134.Acc异常退出时的时刻                       $    $           $    $  ANS010.BYTE015  $  y=x;
  $  135.Acc异常退出时的分钟                       $    $           $    $  ANS010.BYTE016  $  y=x;
  $  136.Acc异常退出时的秒数                       $    $           $    $  ANS010.BYTE017  $  y=x;
  $  137.Acc异常退出时的里程                       $    $  km       $    $  ANS010.BYTE020  $  y=x;
  $  138.ACC从激活状态异常退出原因0~7              $    $           $    $  ANS011.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  139.ACC从激活状态异常退出原因8~15             $    $           $    $  ANS011.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  140.ACC从激活状态异常退出原因16~23            $    $           $    $  ANS011.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  141.ACC从激活状态异常退出原因24~31            $    $           $    $  ANS011.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  142.ACC从激活状态异常退出原因32~39            $    $           $    $  ANS011.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  143.ACC从激活状态异常退出原因40~47            $    $           $    $  ANS011.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  144.ACC从激活状态异常退出时故障保险状态       $    $           $    $  ANS011.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  145.Acc异常退出时的年份                       $    $           $    $  ANS011.BYTE012  $  y=x+2000;
  $  146.Acc异常退出时的月份                       $    $           $    $  ANS011.BYTE013  $  y=x;
  $  147.Acc异常退出时的日期                       $    $           $    $  ANS011.BYTE014  $  y=x;
  $  148.Acc异常退出时的时刻                       $    $           $    $  ANS011.BYTE015  $  y=x;
  $  149.Acc异常退出时的分钟                       $    $           $    $  ANS011.BYTE016  $  y=x;
  $  150.Acc异常退出时的秒数                       $    $           $    $  ANS011.BYTE017  $  y=x;
  $  151.Acc异常退出时的里程                       $    $  km       $    $  ANS011.BYTE020  $  y=x;
  $  152.ACC 异常退出为原因0~7时的状态             $    $           $    $  ANS012.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  153.ACC 异常退出为原因8~15时的状态            $    $           $    $  ANS012.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  154.ACC 异常退出为原因16~23时的状态           $    $           $    $  ANS012.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  155.ACC 异常退出为原因24~31时的状态           $    $           $    $  ANS012.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  156.ACC 异常退出为原因32~39时的状态           $    $           $    $  ANS012.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  157.ACC 异常退出为原因40~47时的状态           $    $           $    $  ANS012.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  158.事件功能                                  $    $           $    $  ANS013.BYTE004  $  if(((x&0xC0)>>6)==0x00) y=@023f;else if(((x&0xC0)>>6)==0x01) y=@0e6f;else if(((x&0xC0)>>6)==0x02) y=@0e70;else if(((x&0xC0)>>6)==0x03) y=@0035;else y=@0035;
  $  159.AEB水准                                   $    $           $    $  ANS013.BYTE004  $  if(((x&0x30)>>4)==0x00) y=@0e71;else if(((x&0x30)>>4)==0x01) y=@0e72;else if(((x&0x30)>>4)==0x02) y=@0e73;else if(((x&0x30)>>4)==0x03) y=@0035;else y=@0035;
  $  160.FCW驾驶员敏感度                           $    $           $    $  ANS013.BYTE004  $  if((x&0x0F)==0x00) y=@0d9c;else if((x&0x0F)==0x01) y=@0e74;else if((x&0x0F)==0x02) y=@0e75;else if((x&0x0F)==0x03) y=@0e76;else y=@0035;
  $  161.事件发生车速                              $    $  kPa      $    $  ANS013.BYTE005  $  y=(x1*256+x2)*0.5625;
  $  162.AEB_EventAccelActuPos                     $    $  %        $    $  ANS013.BYTE007  $  y=x*0.392157;
  $  163.AEB_EventBrkPdlPos                        $    $  %        $    $  ANS013.BYTE008  $  y=x*0.392157;
  $  164.AEB_EventLongitudeAcc                     $    $  m/s2     $    $  ANS013.BYTE009  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  165.事件近光灯打开                            $    $           $    $  ANS013.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  166.事件主光灯打开                            $    $           $    $  ANS013.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  167.AEB_EventVSELatAcc                        $    $  m/s2     $    $  ANS013.BYTE010  $  y=((x1*256+x2)&0xFFF)*0.027127-21.592;
  $  168.AEB_EventObjLongDist                      $    $  m        $    $  ANS013.BYTE012  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  169.AEB_EventObjLatDist                       $    $  m        $    $  ANS013.BYTE014  $  y=(((x1*256+x2)&0x7FFC)>>2)*0.05-102.4;
  $  170.AEB_EventYawRate                          $    $  rad      $    $  ANS013.BYTE015  $  y=((x1*256+x2)&0x3FF)*0.0021326-2.094;
  $  171.事件发生年份                              $    $           $    $  ANS013.BYTE017  $  y=x+2000;
  $  172.事件发生月份                              $    $           $    $  ANS013.BYTE018  $  y=x;
  $  173.事件发生日期                              $    $           $    $  ANS013.BYTE019  $  y=x;
  $  174.事件发生时刻                              $    $           $    $  ANS013.BYTE020  $  y=x;
  $  175.事件发生分钟                              $    $           $    $  ANS013.BYTE021  $  y=x;
  $  176.事件发生秒数                              $    $           $    $  ANS013.BYTE022  $  y=x;
  $  177.事件发生里程数                            $    $  km       $    $  ANS013.BYTE023  $  y=(x1*256*256+x2*256+x3);
  $  178.事件功能                                  $    $           $    $  ANS014.BYTE004  $  if(((x&0xC0)>>6)==0x00) y=@023f;else if(((x&0xC0)>>6)==0x01) y=@0e6f;else if(((x&0xC0)>>6)==0x02) y=@0e70;else if(((x&0xC0)>>6)==0x03) y=@0035;else y=@0035;
  $  179.AEB水准                                   $    $           $    $  ANS014.BYTE004  $  if(((x&0x30)>>4)==0x00) y=@0e71;else if(((x&0x30)>>4)==0x01) y=@0e72;else if(((x&0x30)>>4)==0x02) y=@0e73;else if(((x&0x30)>>4)==0x03) y=@0035;else y=@0035;
  $  180.FCW驾驶员敏感度                           $    $           $    $  ANS014.BYTE004  $  if((x&0x0F)==0x00) y=@0d9c;else if((x&0x0F)==0x01) y=@0e74;else if((x&0x0F)==0x02) y=@0e75;else if((x&0x0F)==0x03) y=@0e76;else y=@0035;
  $  181.事件发生车速                              $    $  kPa      $    $  ANS014.BYTE005  $  y=(x1*256+x2)*0.5625;
  $  182.AEB_EventAccelActuPos                     $    $  %        $    $  ANS014.BYTE007  $  y=x*0.392157;
  $  183.AEB_EventBrkPdlPos                        $    $  %        $    $  ANS014.BYTE008  $  y=x*0.392157;
  $  184.AEB_EventLongitudeAcc                     $    $  m/s2     $    $  ANS014.BYTE009  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  185.事件近光灯打开                            $    $           $    $  ANS014.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  186.事件主光灯打开                            $    $           $    $  ANS014.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  187.AEB_EventVSELatAcc                        $    $  m/s2     $    $  ANS014.BYTE010  $  y=((x1*256+x2)&0xFFF)*0.027127-21.592;
  $  188.AEB_EventObjLongDist                      $    $  m        $    $  ANS014.BYTE012  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  189.AEB_EventObjLatDist                       $    $  m        $    $  ANS014.BYTE014  $  y=(((x1*256+x2)&0x7FFC)>>2)*0.05-102.4;
  $  190.AEB_EventYawRate                          $    $  rad      $    $  ANS014.BYTE015  $  y=((x1*256+x2)&0x3FF)*0.0021326-2.094;
  $  191.事件发生年份                              $    $           $    $  ANS014.BYTE017  $  y=x+2000;
  $  192.事件发生月份                              $    $           $    $  ANS014.BYTE018  $  y=x;
  $  193.事件发生日期                              $    $           $    $  ANS014.BYTE019  $  y=x;
  $  194.事件发生时刻                              $    $           $    $  ANS014.BYTE020  $  y=x;
  $  195.事件发生分钟                              $    $           $    $  ANS014.BYTE021  $  y=x;
  $  196.事件发生秒数                              $    $           $    $  ANS014.BYTE022  $  y=x;
  $  197.事件发生里程数                            $    $  km       $    $  ANS014.BYTE023  $  y=(x1*256*256+x2*256+x3);

  $)  01.数据流2
  $  01.数据流2
  $  REQ000:74A 03 22 B0 82 00 00 00 00       $  ANS000:7CA 03 22 B0 82 00 00 00 00
  $  REQ001:74A 03 22 B0 83 00 00 00 00       $  ANS001:7CA 03 22 B0 83 00 00 00 00
  $  REQ002:74A 03 22 B0 84 00 00 00 00       $  ANS002:7CA 03 22 B0 84 00 00 00 00
  $  REQ003:74A 03 22 B0 65 00 00 00 00       $  ANS003:7CA 03 22 B0 65 00 00 00 00
  $  REQ004:74A 03 22 B0 66 00 00 00 00       $  ANS004:7CA 03 22 B0 66 00 00 00 00
  $  REQ005:74A 03 22 B0 67 00 00 00 00       $  ANS005:7CA 03 22 B0 67 00 00 00 00
  $  REQ006:74A 03 22 B0 68 00 00 00 00       $  ANS006:7CA 03 22 B0 68 00 00 00 00
  $  REQ007:74A 03 22 B0 69 00 00 00 00       $  ANS007:7CA 03 22 B0 69 00 00 00 00
  $  REQ008:74A 03 22 B0 6B 00 00 00 00       $  ANS008:7CA 03 22 B0 6B 00 00 00 00
  $  REQ009:74A 03 22 B0 92 00 00 00 00       $  ANS009:7CA 03 22 B0 92 00 00 00 00
  $  REQ010:74A 03 22 B0 60 00 00 00 00       $  ANS010:7CA 03 22 B0 60 00 00 00 00
  $  REQ011:74A 03 22 B0 61 00 00 00 00       $  ANS011:7CA 03 22 B0 61 00 00 00 00
  $  REQ012:74A 03 22 B0 62 00 00 00 00       $  ANS012:7CA 03 22 B0 62 00 00 00 00
  $  REQ013:74A 03 22 B0 63 00 00 00 00       $  ANS013:7CA 03 22 B0 63 00 00 00 00
  $  REQ014:74A 03 22 B0 64 00 00 00 00       $  ANS014:7CA 03 22 B0 64 00 00 00 00
  $  REQ015:74A 03 22 B0 6A 00 00 00 00       $  ANS015:7CA 03 22 B0 6A 00 00 00 00
  $  REQ016:74A 03 22 C0 07 00 00 00 00       $  ANS016:7CA 03 22 C0 07 00 00 00 00
  $  REQ017:74A 03 22 01 12 00 00 00 00       $  ANS017:7CA 03 22 01 12 00 00 00 00
  $  REQ018:74A 03 22 B0 3D 00 00 00 00       $  ANS018:7CA 03 22 B0 3D 00 00 00 00

  $  000.事件功能                                   $    $           $    $  ANS000.BYTE004  $  if(((x&0xC0)>>6)==0x00) y=@023f;else if(((x&0xC0)>>6)==0x01) y=@0e6f;else if(((x&0xC0)>>6)==0x02) y=@0e70;else if(((x&0xC0)>>6)==0x03) y=@0035;else y=@0035;
  $  001.AEB水准                                    $    $           $    $  ANS000.BYTE004  $  if(((x&0x30)>>4)==0x00) y=@0e71;else if(((x&0x30)>>4)==0x01) y=@0e72;else if(((x&0x30)>>4)==0x02) y=@0e73;else if(((x&0x30)>>4)==0x03) y=@0035;else y=@0035;
  $  002.FCW驾驶员敏感度                            $    $           $    $  ANS000.BYTE004  $  if((x&0x0F)==0x00) y=@0d9c;else if((x&0x0F)==0x01) y=@0e74;else if((x&0x0F)==0x02) y=@0e75;else if((x&0x0F)==0x03) y=@0e76;else y=@0035;
  $  003.事件发生车速                               $    $  kPa      $    $  ANS000.BYTE005  $  y=(x1*256+x2)*0.5625;
  $  004.AEB_EventAccelActuPos                      $    $  %        $    $  ANS000.BYTE007  $  y=x*0.392157;
  $  005.AEB_EventBrkPdlPos                         $    $  %        $    $  ANS000.BYTE008  $  y=x*0.392157;
  $  006.AEB_EventLongitudeAcc                      $    $  m/s2     $    $  ANS000.BYTE009  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  007.事件近光灯打开                             $    $           $    $  ANS000.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  008.事件主光灯打开                             $    $           $    $  ANS000.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  009.AEB_EventVSELatAcc                         $    $  m/s2     $    $  ANS000.BYTE010  $  y=((x1*256+x2)&0xFFF)*0.027127-21.592;
  $  010.AEB_EventObjLongDist                       $    $  m        $    $  ANS000.BYTE012  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  011.AEB_EventObjLatDist                        $    $  m        $    $  ANS000.BYTE014  $  y=(((x1*256+x2)&0x7FFC)>>2)*0.05-102.4;
  $  012.AEB_EventYawRate                           $    $  rad      $    $  ANS000.BYTE015  $  y=((x1*256+x2)&0x3FF)*0.0021326-2.094;
  $  013.事件发生年份                               $    $           $    $  ANS000.BYTE017  $  y=x+2000;
  $  014.事件发生月份                               $    $           $    $  ANS000.BYTE018  $  y=x;
  $  015.事件发生日期                               $    $           $    $  ANS000.BYTE019  $  y=x;
  $  016.事件发生时刻                               $    $           $    $  ANS000.BYTE020  $  y=x;
  $  017.事件发生分钟                               $    $           $    $  ANS000.BYTE021  $  y=x;
  $  018.事件发生秒数                               $    $           $    $  ANS000.BYTE022  $  y=x;
  $  019.事件发生里程数                             $    $  km       $    $  ANS000.BYTE023  $  y=(x1*256*256+x2*256+x3);
  $  020.事件功能                                   $    $           $    $  ANS001.BYTE004  $  if(((x&0xC0)>>6)==0x00) y=@023f;else if(((x&0xC0)>>6)==0x01) y=@0e6f;else if(((x&0xC0)>>6)==0x02) y=@0e70;else if(((x&0xC0)>>6)==0x03) y=@0035;else y=@0035;
  $  021.AEB水准                                    $    $           $    $  ANS001.BYTE004  $  if(((x&0x30)>>4)==0x00) y=@0e71;else if(((x&0x30)>>4)==0x01) y=@0e72;else if(((x&0x30)>>4)==0x02) y=@0e73;else if(((x&0x30)>>4)==0x03) y=@0035;else y=@0035;
  $  022.FCW驾驶员敏感度                            $    $           $    $  ANS001.BYTE004  $  if((x&0x0F)==0x00) y=@0d9c;else if((x&0x0F)==0x01) y=@0e74;else if((x&0x0F)==0x02) y=@0e75;else if((x&0x0F)==0x03) y=@0e76;else y=@0035;
  $  023.事件发生车速                               $    $  kPa      $    $  ANS001.BYTE005  $  y=(x1*256+x2)*0.5625;
  $  024.AEB_EventAccelActuPos                      $    $  %        $    $  ANS001.BYTE007  $  y=x*0.392157;
  $  025.AEB_EventBrkPdlPos                         $    $  %        $    $  ANS001.BYTE008  $  y=x*0.392157;
  $  026.AEB_EventLongitudeAcc                      $    $  m/s2     $    $  ANS001.BYTE009  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  027.事件近光灯打开                             $    $           $    $  ANS001.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  028.事件主光灯打开                             $    $           $    $  ANS001.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  029.AEB_EventVSELatAcc                         $    $  m/s2     $    $  ANS001.BYTE010  $  y=((x1*256+x2)&0xFFF)*0.027127-21.592;
  $  030.AEB_EventObjLongDist                       $    $  m        $    $  ANS001.BYTE012  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  031.AEB_EventObjLatDist                        $    $  m        $    $  ANS001.BYTE014  $  y=(((x1*256+x2)&0x7FFC)>>2)*0.05-102.4;
  $  032.AEB_EventYawRate                           $    $  rad      $    $  ANS001.BYTE015  $  y=((x1*256+x2)&0x3FF)*0.0021326-2.094;
  $  033.事件发生年份                               $    $           $    $  ANS001.BYTE017  $  y=x+2000;
  $  034.事件发生月份                               $    $           $    $  ANS001.BYTE018  $  y=x;
  $  035.事件发生日期                               $    $           $    $  ANS001.BYTE019  $  y=x;
  $  036.事件发生时刻                               $    $           $    $  ANS001.BYTE020  $  y=x;
  $  037.事件发生分钟                               $    $           $    $  ANS001.BYTE021  $  y=x;
  $  038.事件发生秒数                               $    $           $    $  ANS001.BYTE022  $  y=x;
  $  039.事件发生里程数                             $    $  km       $    $  ANS001.BYTE023  $  y=(x1*256*256+x2*256+x3);
  $  040.事件功能                                   $    $           $    $  ANS002.BYTE004  $  if(((x&0xC0)>>6)==0x00) y=@023f;else if(((x&0xC0)>>6)==0x01) y=@0e6f;else if(((x&0xC0)>>6)==0x02) y=@0e70;else if(((x&0xC0)>>6)==0x03) y=@0035;else y=@0035;
  $  041.AEB水准                                    $    $           $    $  ANS002.BYTE004  $  if(((x&0x30)>>4)==0x00) y=@0e71;else if(((x&0x30)>>4)==0x01) y=@0e72;else if(((x&0x30)>>4)==0x02) y=@0e73;else if(((x&0x30)>>4)==0x03) y=@0035;else y=@0035;
  $  042.FCW驾驶员敏感度                            $    $           $    $  ANS002.BYTE004  $  if((x&0x0F)==0x00) y=@0d9c;else if((x&0x0F)==0x01) y=@0e74;else if((x&0x0F)==0x02) y=@0e75;else if((x&0x0F)==0x03) y=@0e76;else y=@0035;
  $  043.事件发生车速                               $    $  kPa      $    $  ANS002.BYTE005  $  y=(x1*256+x2)*0.5625;
  $  044.AEB_EventAccelActuPos                      $    $  %        $    $  ANS002.BYTE007  $  y=x*0.392157;
  $  045.AEB_EventBrkPdlPos                         $    $  %        $    $  ANS002.BYTE008  $  y=x*0.392157;
  $  046.AEB_EventLongitudeAcc                      $    $  m/s2     $    $  ANS002.BYTE009  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  047.事件近光灯打开                             $    $           $    $  ANS002.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  048.事件主光灯打开                             $    $           $    $  ANS002.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  049.AEB_EventVSELatAcc                         $    $  m/s2     $    $  ANS002.BYTE010  $  y=((x1*256+x2)&0xFFF)*0.027127-21.592;
  $  050.AEB_EventObjLongDist                       $    $  m        $    $  ANS002.BYTE012  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  051.AEB_EventObjLatDist                        $    $  m        $    $  ANS002.BYTE014  $  y=(((x1*256+x2)&0x7FFC)>>2)*0.05-102.4;
  $  052.AEB_EventYawRate                           $    $  rad      $    $  ANS002.BYTE015  $  y=((x1*256+x2)&0x3FF)*0.0021326-2.094;
  $  053.事件发生年份                               $    $           $    $  ANS002.BYTE017  $  y=x+2000;
  $  054.事件发生月份                               $    $           $    $  ANS002.BYTE018  $  y=x;
  $  055.事件发生日期                               $    $           $    $  ANS002.BYTE019  $  y=x;
  $  056.事件发生时刻                               $    $           $    $  ANS002.BYTE020  $  y=x;
  $  057.事件发生分钟                               $    $           $    $  ANS002.BYTE021  $  y=x;
  $  058.事件发生秒数                               $    $           $    $  ANS002.BYTE022  $  y=x;
  $  059.事件发生里程数                             $    $  km       $    $  ANS002.BYTE023  $  y=(x1*256*256+x2*256+x3);
  $  060.AEB无法进入原因0~7                         $    $           $    $  ANS003.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  061.AEB无法进入原因8~15                        $    $           $    $  ANS003.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  062.AEB无法进入原因16~23                       $    $           $    $  ANS003.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  063.AEB无法进入原因24~31                       $    $           $    $  ANS003.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  064.AEB无法进入时的故障保障状态1               $    $           $    $  ANS003.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  065.AEB无法进入时的故障保障状态2               $    $           $    $  ANS003.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  066.Acc异常退出时的年份                        $    $           $    $  ANS003.BYTE010  $  y=x+2000;
  $  067.Acc异常退出时的月份                        $    $           $    $  ANS003.BYTE011  $  y=x;
  $  068.Acc异常退出时的日期                        $    $           $    $  ANS003.BYTE012  $  y=x;
  $  069.Acc异常退出时的时刻                        $    $           $    $  ANS003.BYTE013  $  y=x;
  $  070.Acc异常退出时的分钟                        $    $           $    $  ANS003.BYTE014  $  y=x;
  $  071.Acc异常退出时的秒数                        $    $           $    $  ANS003.BYTE015  $  y=x;
  $  072.Acc异常退出时的里程                        $    $  km       $    $  ANS003.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  073.AEB无法进入原因0~7                         $    $           $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  074.AEB无法进入原因8~15                        $    $           $    $  ANS004.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  075.AEB无法进入原因16~23                       $    $           $    $  ANS004.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  076.AEB无法进入原因24~31                       $    $           $    $  ANS004.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  077.AEB无法进入时的故障保障状态1               $    $           $    $  ANS004.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  078.AEB无法进入时的故障保障状态2               $    $           $    $  ANS004.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  079.Acc异常退出时的年份                        $    $           $    $  ANS004.BYTE010  $  y=x+2000;
  $  080.Acc异常退出时的月份                        $    $           $    $  ANS004.BYTE011  $  y=x;
  $  081.Acc异常退出时的日期                        $    $           $    $  ANS004.BYTE012  $  y=x;
  $  082.Acc异常退出时的时刻                        $    $           $    $  ANS004.BYTE013  $  y=x;
  $  083.Acc异常退出时的分钟                        $    $           $    $  ANS004.BYTE014  $  y=x;
  $  084.Acc异常退出时的秒数                        $    $           $    $  ANS004.BYTE015  $  y=x;
  $  085.Acc异常退出时的里程                        $    $  km       $    $  ANS004.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  086.AEB无法进入原因0~7                         $    $           $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  087.AEB无法进入原因8~15                        $    $           $    $  ANS005.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  088.AEB无法进入原因16~23                       $    $           $    $  ANS005.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  089.AEB无法进入原因24~31                       $    $           $    $  ANS005.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  090.AEB无法进入时的故障保障状态1               $    $           $    $  ANS005.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  091.AEB无法进入时的故障保障状态2               $    $           $    $  ANS005.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  092.Acc异常退出时的年份                        $    $           $    $  ANS005.BYTE010  $  y=x+2000;
  $  093.Acc异常退出时的月份                        $    $           $    $  ANS005.BYTE011  $  y=x;
  $  094.Acc异常退出时的日期                        $    $           $    $  ANS005.BYTE012  $  y=x;
  $  095.Acc异常退出时的时刻                        $    $           $    $  ANS005.BYTE013  $  y=x;
  $  096.Acc异常退出时的分钟                        $    $           $    $  ANS005.BYTE014  $  y=x;
  $  097.Acc异常退出时的秒数                        $    $           $    $  ANS005.BYTE015  $  y=x;
  $  098.Acc异常退出时的里程                        $    $  km       $    $  ANS005.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  099.AEB无法进入原因0~7                         $    $           $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  100.AEB无法进入原因8~15                        $    $           $    $  ANS006.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  101.AEB无法进入原因16~23                       $    $           $    $  ANS006.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  102.AEB无法进入原因24~31                       $    $           $    $  ANS006.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  103.AEB无法进入时的故障保障状态1               $    $           $    $  ANS006.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  104.AEB无法进入时的故障保障状态2               $    $           $    $  ANS006.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  105.Acc异常退出时的年份                        $    $           $    $  ANS006.BYTE010  $  y=x+2000;
  $  106.Acc异常退出时的月份                        $    $           $    $  ANS006.BYTE011  $  y=x;
  $  107.Acc异常退出时的日期                        $    $           $    $  ANS006.BYTE012  $  y=x;
  $  108.Acc异常退出时的时刻                        $    $           $    $  ANS006.BYTE013  $  y=x;
  $  109.Acc异常退出时的分钟                        $    $           $    $  ANS006.BYTE014  $  y=x;
  $  110.Acc异常退出时的秒数                        $    $           $    $  ANS006.BYTE015  $  y=x;
  $  111.Acc异常退出时的里程                        $    $  km       $    $  ANS006.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  112.AEB无法进入原因0~7                         $    $           $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  113.AEB无法进入原因8~15                        $    $           $    $  ANS007.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  114.AEB无法进入原因16~23                       $    $           $    $  ANS007.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  115.AEB无法进入原因24~31                       $    $           $    $  ANS007.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  116.AEB无法进入时的故障保障状态1               $    $           $    $  ANS007.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  117.AEB无法进入时的故障保障状态2               $    $           $    $  ANS007.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  118.Acc异常退出时的年份                        $    $           $    $  ANS007.BYTE010  $  y=x+2000;
  $  119.Acc异常退出时的月份                        $    $           $    $  ANS007.BYTE011  $  y=x;
  $  120.Acc异常退出时的日期                        $    $           $    $  ANS007.BYTE012  $  y=x;
  $  121.Acc异常退出时的时刻                        $    $           $    $  ANS007.BYTE013  $  y=x;
  $  122.Acc异常退出时的分钟                        $    $           $    $  ANS007.BYTE014  $  y=x;
  $  123.Acc异常退出时的秒数                        $    $           $    $  ANS007.BYTE015  $  y=x;
  $  124.Acc异常退出时的里程                        $    $  km       $    $  ANS007.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  125.AEB无法进入时为原因0~7时的状态             $    $           $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  126.AEB无法进入时为原因8~15时的状态            $    $           $    $  ANS008.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  127.AEB无法进入时为原因16~23时的状态           $    $           $    $  ANS008.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  128.AEB无法进入时为原因24~31时的状态           $    $           $    $  ANS008.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  129.AEB 异常退出为原因0~7时的状态              $    $           $    $  ANS009.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  130.AEB 异常退出为原因8~15时的状态             $    $           $    $  ANS009.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  131.AEB 异常退出为原因16~23时的状态            $    $           $    $  ANS009.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  132.AEB 异常退出为原因24~31时的状态            $    $           $    $  ANS009.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  133.AEB从激活状态异常退出原因0~7               $    $           $    $  ANS010.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  134.AEB从激活状态异常退出原因8~15              $    $           $    $  ANS010.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  135.AEB从激活状态异常退出原因16~23             $    $           $    $  ANS010.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  136.AEB从激活状态异常退出原因24~31             $    $           $    $  ANS010.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  137.AEB从激活状态异常退出时故障保险状态1       $    $           $    $  ANS010.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  138.AEB从激活状态异常退出时故障保险状态2       $    $           $    $  ANS010.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  139.Acc异常退出时的年份                        $    $           $    $  ANS010.BYTE010  $  y=x+2000;
  $  140.Acc异常退出时的月份                        $    $           $    $  ANS010.BYTE011  $  y=x;
  $  141.Acc异常退出时的日期                        $    $           $    $  ANS010.BYTE012  $  y=x;
  $  142.Acc异常退出时的时刻                        $    $           $    $  ANS010.BYTE013  $  y=x;
  $  143.Acc异常退出时的分钟                        $    $           $    $  ANS010.BYTE014  $  y=x;
  $  144.Acc异常退出时的秒数                        $    $           $    $  ANS010.BYTE015  $  y=x;
  $  145.Acc异常退出时的里程                        $    $  km       $    $  ANS010.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  146.AEB从激活状态异常退出原因0~7               $    $           $    $  ANS011.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  147.AEB从激活状态异常退出原因8~15              $    $           $    $  ANS011.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  148.AEB从激活状态异常退出原因16~23             $    $           $    $  ANS011.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  149.AEB从激活状态异常退出原因24~31             $    $           $    $  ANS011.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  150.AEB从激活状态异常退出时故障保险状态1       $    $           $    $  ANS011.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  151.AEB从激活状态异常退出时故障保险状态2       $    $           $    $  ANS011.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  152.Acc异常退出时的年份                        $    $           $    $  ANS011.BYTE010  $  y=x+2000;
  $  153.Acc异常退出时的月份                        $    $           $    $  ANS011.BYTE011  $  y=x;
  $  154.Acc异常退出时的日期                        $    $           $    $  ANS011.BYTE012  $  y=x;
  $  155.Acc异常退出时的时刻                        $    $           $    $  ANS011.BYTE013  $  y=x;
  $  156.Acc异常退出时的分钟                        $    $           $    $  ANS011.BYTE014  $  y=x;
  $  157.Acc异常退出时的秒数                        $    $           $    $  ANS011.BYTE015  $  y=x;
  $  158.Acc异常退出时的里程                        $    $  km       $    $  ANS011.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  159.AEB从激活状态异常退出原因0~7               $    $           $    $  ANS012.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  160.AEB从激活状态异常退出原因8~15              $    $           $    $  ANS012.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  161.AEB从激活状态异常退出原因16~23             $    $           $    $  ANS012.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  162.AEB从激活状态异常退出原因24~31             $    $           $    $  ANS012.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  163.AEB从激活状态异常退出时故障保险状态1       $    $           $    $  ANS012.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  164.AEB从激活状态异常退出时故障保险状态2       $    $           $    $  ANS012.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  165.Acc异常退出时的年份                        $    $           $    $  ANS012.BYTE010  $  y=x+2000;
  $  166.Acc异常退出时的月份                        $    $           $    $  ANS012.BYTE011  $  y=x;
  $  167.Acc异常退出时的日期                        $    $           $    $  ANS012.BYTE012  $  y=x;
  $  168.Acc异常退出时的时刻                        $    $           $    $  ANS012.BYTE013  $  y=x;
  $  169.Acc异常退出时的分钟                        $    $           $    $  ANS012.BYTE014  $  y=x;
  $  170.Acc异常退出时的秒数                        $    $           $    $  ANS012.BYTE015  $  y=x;
  $  171.Acc异常退出时的里程                        $    $  km       $    $  ANS012.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  172.AEB从激活状态异常退出原因0~7               $    $           $    $  ANS013.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  173.AEB从激活状态异常退出原因8~15              $    $           $    $  ANS013.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  174.AEB从激活状态异常退出原因16~23             $    $           $    $  ANS013.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  175.AEB从激活状态异常退出原因24~31             $    $           $    $  ANS013.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  176.AEB从激活状态异常退出时故障保险状态1       $    $           $    $  ANS013.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  177.AEB从激活状态异常退出时故障保险状态2       $    $           $    $  ANS013.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  178.Acc异常退出时的年份                        $    $           $    $  ANS013.BYTE010  $  y=x+2000;
  $  179.Acc异常退出时的月份                        $    $           $    $  ANS013.BYTE011  $  y=x;
  $  180.Acc异常退出时的日期                        $    $           $    $  ANS013.BYTE012  $  y=x;
  $  181.Acc异常退出时的时刻                        $    $           $    $  ANS013.BYTE013  $  y=x;
  $  182.Acc异常退出时的分钟                        $    $           $    $  ANS013.BYTE014  $  y=x;
  $  183.Acc异常退出时的秒数                        $    $           $    $  ANS013.BYTE015  $  y=x;
  $  184.Acc异常退出时的里程                        $    $  km       $    $  ANS013.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  185.AEB从激活状态异常退出原因0~7               $    $           $    $  ANS014.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  186.AEB从激活状态异常退出原因8~15              $    $           $    $  ANS014.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  187.AEB从激活状态异常退出原因16~23             $    $           $    $  ANS014.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  188.AEB从激活状态异常退出原因24~31             $    $           $    $  ANS014.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  189.AEB从激活状态异常退出时故障保险状态1       $    $           $    $  ANS014.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  190.AEB从激活状态异常退出时故障保险状态2       $    $           $    $  ANS014.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  191.Acc异常退出时的年份                        $    $           $    $  ANS014.BYTE010  $  y=x+2000;
  $  192.Acc异常退出时的月份                        $    $           $    $  ANS014.BYTE011  $  y=x;
  $  193.Acc异常退出时的日期                        $    $           $    $  ANS014.BYTE012  $  y=x;
  $  194.Acc异常退出时的时刻                        $    $           $    $  ANS014.BYTE013  $  y=x;
  $  195.Acc异常退出时的分钟                        $    $           $    $  ANS014.BYTE014  $  y=x;
  $  196.Acc异常退出时的秒数                        $    $           $    $  ANS014.BYTE015  $  y=x;
  $  197.Acc异常退出时的里程                        $    $  km       $    $  ANS014.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  198.AEB 异常退出为原因0~7时的状态              $    $           $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  199.AEB 异常退出为原因8~15时的状态             $    $           $    $  ANS015.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  200.AEB 异常退出为原因16~23时的状态            $    $           $    $  ANS015.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  201.AEB 异常退出为原因24~31时的状态            $    $           $    $  ANS015.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  202.APA配置                                    $    $           $    $  ANS016.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  203.电池电压                                   $    $  V        $    $  ANS017.BYTE004  $  y=x*0.1;
  $  204.标定故障原因_超出自动调整范围              $    $           $    $  ANS018.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  205.标定故障原因_软件故障(不在标定范围)        $    $           $    $  ANS018.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  206.标定故障原因_未标定                        $    $           $    $  ANS018.BYTE004  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;

  $)  02.数据流3
  $  02.数据流3
  $  REQ000:74A 03 22 B0 2E 00 00 00 00       $  ANS000:7CA 03 22 B0 2E 00 00 00 00
  $  REQ001:74A 03 22 B0 38 00 00 00 00       $  ANS001:7CA 03 22 B0 38 00 00 00 00
  $  REQ002:74A 03 22 B0 3B 00 00 00 00       $  ANS002:7CA 03 22 B0 3B 00 00 00 00
  $  REQ003:74A 03 22 C0 01 00 00 00 00       $  ANS003:7CA 03 22 C0 01 00 00 00 00
  $  REQ004:74A 03 22 B0 3E 00 00 00 00       $  ANS004:7CA 03 22 B0 3E 00 00 00 00
  $  REQ005:74A 03 22 B0 4B 00 00 00 00       $  ANS005:7CA 03 22 B0 4B 00 00 00 00
  $  REQ006:74A 03 22 C0 02 00 00 00 00       $  ANS006:7CA 03 22 C0 02 00 00 00 00
  $  REQ007:74A 03 22 B0 26 00 00 00 00       $  ANS007:7CA 03 22 B0 26 00 00 00 00
  $  REQ008:74A 03 22 C0 03 00 00 00 00       $  ANS008:7CA 03 22 C0 03 00 00 00 00
  $  REQ009:74A 03 22 B0 2F 00 00 00 00       $  ANS009:7CA 03 22 B0 2F 00 00 00 00
  $  REQ010:74A 03 22 B0 75 00 00 00 00       $  ANS010:7CA 03 22 B0 75 00 00 00 00
  $  REQ011:74A 03 22 B0 77 00 00 00 00       $  ANS011:7CA 03 22 B0 77 00 00 00 00
  $  REQ012:74A 03 22 B0 94 00 00 00 00       $  ANS012:7CA 03 22 B0 94 00 00 00 00
  $  REQ013:74A 03 22 B0 74 00 00 00 00       $  ANS013:7CA 03 22 B0 74 00 00 00 00
  $  REQ014:74A 03 22 B0 76 00 00 00 00       $  ANS014:7CA 03 22 B0 76 00 00 00 00
  $  REQ015:74A 03 22 C0 04 00 00 00 00       $  ANS015:7CA 03 22 C0 04 00 00 00 00
  $  REQ016:74A 03 22 B0 27 00 00 00 00       $  ANS016:7CA 03 22 B0 27 00 00 00 00
  $  REQ017:74A 03 22 B0 7D 00 00 00 00       $  ANS017:7CA 03 22 B0 7D 00 00 00 00
  $  REQ018:74A 03 22 B0 7F 00 00 00 00       $  ANS018:7CA 03 22 B0 7F 00 00 00 00
  $  REQ019:74A 03 22 B0 96 00 00 00 00       $  ANS019:7CA 03 22 B0 96 00 00 00 00
  $  REQ020:74A 03 22 B0 7C 00 00 00 00       $  ANS020:7CA 03 22 B0 7C 00 00 00 00
  $  REQ021:74A 03 22 B0 7E 00 00 00 00       $  ANS021:7CA 03 22 B0 7E 00 00 00 00
  $  REQ022:74A 03 22 D0 01 00 00 00 00       $  ANS022:7CA 03 22 D0 01 00 00 00 00
  $  REQ023:74A 03 22 B0 31 00 00 00 00       $  ANS023:7CA 03 22 B0 31 00 00 00 00
  $  REQ024:74A 03 22 B0 02 00 00 00 00       $  ANS024:7CA 03 22 B0 02 00 00 00 00
  $  REQ025:74A 03 22 B0 01 00 00 00 00       $  ANS025:7CA 03 22 B0 01 00 00 00 00
  $  REQ026:74A 03 22 B0 71 00 00 00 00       $  ANS026:7CA 03 22 B0 71 00 00 00 00

  $  000.EOL标定状态                                       $    $          $    $  ANS000.BYTE004  $  if(x==0x00) y=@004a;else if(x==0x01) y=@0b2a;else if(x==0x02) y=@0b2b;else if(x==0x03) y=@0b2c;else y=@0035;
  $  001.EOL标定错误原因                                   $    $          $    $  ANS000.BYTE005  $  if(x==0x00) y=@023f;else if(x==0x01) y=@0096;else if(x==0x02) y=@0910;else if(x==0x03) y=@0ddd;else if(x==0x04) y=@0912;else if(x==0x05) y=@0913;else if(x==0x06) y=@0914;else if(x==0x07) y=@0915;else if(x==0x08) y=@0916;else if(x==0x09) y=@0917;else if(x==0x0A) y=@0918;else if(x==0x0B) y=@0919;else if(x==0x0C) y=@091a;else if(x==0x0D) y=@0df1;else if(x==0x0E) y=@091c;else if(x==0x0F) y=@091d;else if(x==0x10) y=@091e;else if(x==0x11) y=@091f;else if(x==0x12) y=@0920;else if(x==0x13) y=@0921;else if(x==0x14) y=@0922;else if(x==0x15) y=@0923;else y=@0035;
  $  002.摄像头校准横摆角值                                $    $          $    $  ANS000.BYTE006  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-188;
  $  003.摄像头校准俯仰角值                                $    $          $    $  ANS000.BYTE008  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-160;
  $  004.摄像头校准侧倾角值                                $    $  rad     $    $  ANS000.BYTE010  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.001-0.55;
  $  005.摄像头自动调整横摆角值                            $    $          $    $  ANS000.BYTE012  $  y=((x&0x7F)-(x&0x80))-40;
  $  006.摄像头自动调整俯仰角值                            $    $          $    $  ANS000.BYTE013  $  y=((x&0x7F)-(x&0x80))-40;
  $  007.标定年                                            $    $          $    $  ANS001.BYTE004  $  y=x+2000;
  $  008.标定月                                            $    $          $    $  ANS001.BYTE005  $  y=x;
  $  009.标定天                                            $    $          $    $  ANS001.BYTE006  $  y=x;
  $  010.标定小时                                          $    $          $    $  ANS001.BYTE007  $  y=x;
  $  011.标定分钟                                          $    $          $    $  ANS001.BYTE008  $  y=x;
  $  012.标定秒                                            $    $          $    $  ANS001.BYTE009  $  y=x;
  $  013.读取里程数                                        $    $  km      $    $  ANS001.BYTE010  $  y=(x1*256*256+x2*256+x3);
  $  014.测试功能参考号                                    $    $          $    $  ANS001.BYTE013  $  HEX(X1,X2,X3);
  $  015.自闪光                                            $    $          $    $  ANS002.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  016.摄像头视野遮挡原因_光线太强                       $    $          $    $  ANS002.BYTE004  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  017.摄像头视野遮挡原因_散射                           $    $          $    $  ANS002.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  018.摄像头视野遮挡原因_图像模糊                       $    $          $    $  ANS002.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  019.摄像头视野遮挡原因_光线不足                       $    $          $    $  ANS002.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  020.摄像头视野遮挡原因_斑点                           $    $          $    $  ANS002.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  021.摄像头视野遮挡原因_部分遮挡                       $    $          $    $  ANS002.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  022.摄像头视野遮挡原因_完全遮挡                       $    $          $    $  ANS002.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  023.摄像头视野遮挡原因_结冰                           $    $          $    $  ANS002.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  024.摄像头视野遮挡原因_起雾                           $    $          $    $  ANS002.BYTE005  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  025.AHB启用                                           $    $          $    $  ANS003.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0035;
  $  026.TSR启用                                           $    $          $    $  ANS003.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0035;
  $  027.ACC启用                                           $    $          $    $  ANS003.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0035;
  $  028.AEBP启用                                          $    $          $    $  ANS003.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0035;
  $  029.AEB(自动制动系统)启用                             $    $          $    $  ANS003.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  030.PCW启用                                           $    $          $    $  ANS003.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0035;
  $  031.FCW(正面碰撞警告)启用                             $    $          $    $  ANS003.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  032.LDW(车道偏离预警系统)启用                         $    $          $    $  ANS003.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  033.LKA(车道保持辅助系统)启用                         $    $          $    $  ANS003.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  034.SDM25-碰撞重叠                                    $    $          $    $  ANS004.BYTE007  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  035.SDM9-关键区域与前方指挥车辆重叠的显著差异         $    $          $    $  ANS004.BYTE007  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  036.SDM-8关键区域与三角采样测量之间的位置差异         $    $          $    $  ANS004.BYTE007  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  037.SDM-7目标位置有显著差异                           $    $          $    $  ANS004.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  038.SDM-6TTC的显著差异                                $    $          $    $  ANS004.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  039.(轧-帧计数器)误差信号的消息                       $    $          $    $  ANS004.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  040.校验的安全输入信号不匹配                          $    $          $    $  ANS004.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  041.重复误差重复的挑战与回应                          $    $          $    $  ANS004.BYTE007  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  042.SDM-11单片机CRC错误                               $    $          $    $  ANS004.BYTE008  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  043.SDM-29单片机RFC错误                               $    $          $    $  ANS004.BYTE008  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  044.SDM-30图像索引无效                                $    $          $    $  ANS004.BYTE008  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  045.SDM-4校准不好                                     $    $          $    $  ANS004.BYTE008  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  046.SDM-18内部图像保护失败                            $    $          $    $  ANS004.BYTE008  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  047.SDM-13旧的自身数据                                $    $          $    $  ANS004.BYTE008  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  048.SDM 挑战响应误差                                  $    $          $    $  ANS004.BYTE008  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  049.SDM-32内部信号损坏                                $    $          $    $  ANS004.BYTE008  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  050.SDM-31内部校验错误                                $    $          $    $  ANS004.BYTE009  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  051.SDM-27-AEB双重检查错误                            $    $          $    $  ANS004.BYTE009  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  052.SDM26-DDR校验出错                                 $    $          $    $  ANS004.BYTE009  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  053.SDM19-图像缺失                                    $    $          $    $  ANS004.BYTE009  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  054.EyeQ软件诊断失败                                  $    $          $    $  ANS004.BYTE009  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  055.EyeQ APP失败                                      $    $          $    $  ANS004.BYTE009  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  056.EyeQ启动失败                                      $    $          $    $  ANS004.BYTE009  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  057.GPIO10                                            $    $          $    $  ANS004.BYTE009  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  058.EyeQ单个启动程序丢失                              $    $          $    $  ANS004.BYTE010  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  059.MCU EEPROM测试失败                                $    $          $    $  ANS004.BYTE010  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  060.MCU RAM测试失败                                   $    $          $    $  ANS004.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  061.MCU闪存校验错误                                   $    $          $    $  ANS004.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  062.MCU异常复位                                       $    $          $    $  ANS004.BYTE010  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  063.MCU PLL失败                                       $    $          $    $  ANS004.BYTE010  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  064.DAS(驾驶辅助系统) 2.8V欠压                        $    $          $    $  ANS004.BYTE010  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  065.DAS(驾驶辅助系统) 2.8V过压                        $    $          $    $  ANS004.BYTE010  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  066.DAS(驾驶辅助系统) 1.2V欠压                        $    $          $    $  ANS004.BYTE011  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  067.DAS(驾驶辅助系统) 1.2V过压                        $    $          $    $  ANS004.BYTE011  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  068.DAS(驾驶辅助系统) 1.8V欠压                        $    $          $    $  ANS004.BYTE011  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  069.DAS(驾驶辅助系统) 1.8V过压                        $    $          $    $  ANS004.BYTE011  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  070.DAS(驾驶辅助系统) 3.3V欠压                        $    $          $    $  ANS004.BYTE011  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  071.DAS(驾驶辅助系统) 3.3V过压                        $    $          $    $  ANS004.BYTE011  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  072.DAS(驾驶辅助系统) 5V欠压                          $    $          $    $  ANS004.BYTE011  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  073.DAS(驾驶辅助系统) 5V过压                          $    $          $    $  ANS004.BYTE011  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  074.MCU应用版本与MCU标定文件不兼容                    $    $          $    $  ANS005.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  075.图像处理单元配置文件与MCU标定文件不兼容           $    $          $    $  ANS005.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  076.MCU应用版本与图像处理单元不兼容                   $    $          $    $  ANS005.BYTE004  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  077.LKA由于收到无效数据而被禁用                       $    $          $    $  ANS006.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  078.LDW(车道偏离预警系统)开关指示灯短路               $    $          $    $  ANS006.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  079.LDW(车道偏离预警系统)开关按键粘滞                 $    $          $    $  ANS006.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  080.DAS驾驶辅助系统软件版本不匹配                     $    $          $    $  ANS006.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  081.DAS驾驶辅助系统标定异常                           $    $          $    $  ANS006.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  082.DAS驾驶辅助系统摄像头视野遮挡                     $    $          $    $  ANS006.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  083.图像处理器温度过高                                $    $          $    $  ANS006.BYTE006  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  084.DAS驾驶辅助系统内部故障                           $    $          $    $  ANS006.BYTE006  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  085.AHB功能因网络数据无效禁止                         $    $          $    $  ANS006.BYTE006  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  086.TSR功能因网络数据无效禁止                         $    $          $    $  ANS006.BYTE006  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  087.ACC功能因网络数据无效禁止                         $    $          $    $  ANS006.BYTE006  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  088.AEB(自动制动系统)功能因网络数据无效禁止           $    $          $    $  ANS006.BYTE006  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  089.FCW(正面碰撞警告)功能因网络数据无效禁止           $    $          $    $  ANS006.BYTE006  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  090.LDW(车道偏离预警系统)功能因网络数据无效禁止       $    $          $    $  ANS006.BYTE006  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  091.与BCM(车身控制管理系统)模块失去通讯               $    $          $    $  ANS006.BYTE007  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  092.与TCU(变速箱控制单元)模块失去通讯                 $    $          $    $  ANS006.BYTE007  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  093.与IPK(仪表)模块失去通讯                           $    $          $    $  ANS006.BYTE007  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  094.与ABS/ESP模块失去通讯                             $    $          $    $  ANS006.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  095.与SAS(方向盘转向角传感器)模块失去通讯             $    $          $    $  ANS006.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  096.控制器通讯总线关闭                                $    $          $    $  ANS006.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  097.电池电压低                                        $    $          $    $  ANS006.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  098.电池电压高                                        $    $          $    $  ANS006.BYTE007  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  099.FCW(正面碰撞警告)驾驶员选择的敏感级别             $    $          $    $  ANS007.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  100.LDW(车道偏离预警系统)驾驶员选择的敏感级别         $    $          $    $  ANS007.BYTE004  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  101.AEB(自动制动系统)驾驶员选择的敏感级别             $    $          $    $  ANS007.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  102.ACC驾驶员选择的敏感级别                           $    $          $    $  ANS007.BYTE005  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0035;
  $  103.PCW驾驶员选择的敏感级别                           $    $          $    $  ANS007.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  104.AEBP驾驶员选择的敏感级别                          $    $          $    $  ANS007.BYTE006  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  105.FCW(正面碰撞警告)驾驶员选择的敏感级别             $    $          $    $  ANS008.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  106.LDW(车道偏离预警系统)驾驶员选择的敏感级别         $    $          $    $  ANS008.BYTE004  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  107.AEB(自动制动系统)驾驶员选择的敏感级别             $    $          $    $  ANS008.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  108.ACC驾驶员选择的敏感级别                           $    $          $    $  ANS008.BYTE005  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0035;
  $  109.PCW驾驶员选择的敏感级别                           $    $          $    $  ANS008.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  110.AEBP驾驶员选择的敏感级别                          $    $          $    $  ANS008.BYTE006  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  111.摄像头到左车轮外边缘距离                          $    $  m       $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.01;
  $  112.摄像头到右车轮外边缘距离                          $    $  m       $    $  ANS009.BYTE006  $  y=(x1*256+x2)*0.01;
  $  113.摄像头到目标距离                                  $    $  m       $    $  ANS009.BYTE008  $  y=(x1*256+x2)*0.001;
  $  114.摄像头高度                                        $    $  m       $    $  ANS009.BYTE010  $  y=(x1*256+x2)*0.01;
  $  115.从地面到目标中心左侧高度                          $    $  m       $    $  ANS009.BYTE012  $  y=(x1*256+x2)*0.01;
  $  116.从地面到目标中心右侧高度                          $    $  m       $    $  ANS009.BYTE014  $  y=(x1*256+x2)*0.01;
  $  117.从车辆中心到目标中心左侧距离                      $    $  m       $    $  ANS009.BYTE016  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.01;
  $  118.从车辆中心到目标中心右侧距离                      $    $  m       $    $  ANS009.BYTE018  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.01;
  $  119.目标单个块大小，非整个目标                        $    $  rad     $    $  ANS009.BYTE020  $  y=(x1*256+x2)*0.001;
  $  120.FCW从激活状态异常退出原因0~7                      $    $          $    $  ANS010.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  121.FCW从激活状态异常退出原因8~15                     $    $          $    $  ANS010.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  122.Acc异常退出时的年份                               $    $          $    $  ANS010.BYTE006  $  y=x+2000;
  $  123.Acc异常退出时的月份                               $    $          $    $  ANS010.BYTE007  $  y=x;
  $  124.Acc异常退出时的日期                               $    $          $    $  ANS010.BYTE008  $  y=x;
  $  125.Acc异常退出时的时刻                               $    $          $    $  ANS010.BYTE009  $  y=x;
  $  126.Acc异常退出时的分钟                               $    $          $    $  ANS010.BYTE010  $  y=x;
  $  127.Acc异常退出时的秒数                               $    $          $    $  ANS010.BYTE011  $  y=x;
  $  128.Acc异常退出时的里程                               $    $  km      $    $  ANS010.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  129.FCW无法进入为原因0~7时的状态                      $    $          $    $  ANS011.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  130.FCW无法进入为原因8~15时的状态                     $    $          $    $  ANS011.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  131.FCW从激活状态异常退出为原因0~7的状态              $    $          $    $  ANS012.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  132.FCW从激活状态异常退出为原因8~15的状态             $    $          $    $  ANS012.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  133.FCW从激活状态异常退出原因0~7                      $    $          $    $  ANS013.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  134.FCW从激活状态异常退出原因8~15                     $    $          $    $  ANS013.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  135.Acc异常退出时的年份                               $    $          $    $  ANS013.BYTE006  $  y=x+2000;
  $  136.Acc异常退出时的月份                               $    $          $    $  ANS013.BYTE007  $  y=x;
  $  137.Acc异常退出时的日期                               $    $          $    $  ANS013.BYTE008  $  y=x;
  $  138.Acc异常退出时的时刻                               $    $          $    $  ANS013.BYTE009  $  y=x;
  $  139.Acc异常退出时的分钟                               $    $          $    $  ANS013.BYTE010  $  y=x;
  $  140.Acc异常退出时的秒数                               $    $          $    $  ANS013.BYTE011  $  y=x;
  $  141.Acc异常退出时的里程                               $    $  km      $    $  ANS013.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  142.FCW从激活状态异常退出为原因0~7的状态              $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  143.FCW从激活状态异常退出为原因8~15的状态             $    $          $    $  ANS014.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  144.AHB功能开关                                       $    $          $    $  ANS015.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  145.TSR功能开关                                       $    $          $    $  ANS015.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  146.ACC功能开关                                       $    $          $    $  ANS015.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  147.AEBP功能开关                                      $    $          $    $  ANS015.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  148.AEB(自动制动系统)功能开关                         $    $          $    $  ANS015.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  149.PCW功能开关                                       $    $          $    $  ANS015.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  150.FCW(正面碰撞警告)功能开关                         $    $          $    $  ANS015.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  151.LDW(车道偏离预警系统)功能开关                     $    $          $    $  ANS015.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  152.LKA(车道保持辅助系统)功能开关                     $    $          $    $  ANS015.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  153.AHB功能开关                                       $    $          $    $  ANS016.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  154.TSR功能开关                                       $    $          $    $  ANS016.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  155.ACC功能开关                                       $    $          $    $  ANS016.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  156.AEBP功能开关                                      $    $          $    $  ANS016.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  157.AEB(自动制动系统)功能开关                         $    $          $    $  ANS016.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  158.PCW功能开关                                       $    $          $    $  ANS016.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  159.FCW(正面碰撞警告)功能开关                         $    $          $    $  ANS016.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  160.LDW(车道偏离预警系统)功能开关                     $    $          $    $  ANS016.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  161.LKA(车道保持辅助系统)功能开关                     $    $          $    $  ANS016.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  162.IHC从激活状态异常退出原因0~7                      $    $          $    $  ANS017.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  163.IHC从激活状态异常退出原因8~15                     $    $          $    $  ANS017.BYTE005  $  y=x;
  $  164.Acc异常退出时的年份                               $    $          $    $  ANS017.BYTE006  $  y=x+2000;
  $  165.Acc异常退出时的月份                               $    $          $    $  ANS017.BYTE007  $  y=x;
  $  166.Acc异常退出时的日期                               $    $          $    $  ANS017.BYTE008  $  y=x;
  $  167.Acc异常退出时的时刻                               $    $          $    $  ANS017.BYTE009  $  y=x;
  $  168.Acc异常退出时的分钟                               $    $          $    $  ANS017.BYTE010  $  y=x;
  $  169.Acc异常退出时的秒数                               $    $          $    $  ANS017.BYTE011  $  y=x;
  $  170.Acc异常退出时的里程                               $    $  km      $    $  ANS017.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  171.IHC无法进入为原因0~7时的状态                      $    $          $    $  ANS018.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  172.IHC无法进入为原因8~15时的状态                     $    $          $    $  ANS018.BYTE005  $  y=x;
  $  173.IHC从激活状态异常退出为原因0~7的状态              $    $          $    $  ANS019.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  174.IHC从激活状态异常退出为原因8~15的状态             $    $          $    $  ANS019.BYTE005  $  y=x;
  $  175.IHC从激活状态异常退出原因0~7                      $    $          $    $  ANS020.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  176.IHC从激活状态异常退出原因8~15                     $    $          $    $  ANS020.BYTE005  $  y=x;
  $  177.Acc异常退出时的年份                               $    $          $    $  ANS020.BYTE006  $  y=x+2000;
  $  178.Acc异常退出时的月份                               $    $          $    $  ANS020.BYTE007  $  y=x;
  $  179.Acc异常退出时的日期                               $    $          $    $  ANS020.BYTE008  $  y=x;
  $  180.Acc异常退出时的时刻                               $    $          $    $  ANS020.BYTE009  $  y=x;
  $  181.Acc异常退出时的分钟                               $    $          $    $  ANS020.BYTE010  $  y=x;
  $  182.Acc异常退出时的秒数                               $    $          $    $  ANS020.BYTE011  $  y=x;
  $  183.Acc异常退出时的里程                               $    $  km      $    $  ANS020.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  184.IHC从激活状态异常退出为原因0~7的状态              $    $          $    $  ANS021.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  185.IHC从激活状态异常退出为原因8~15的状态             $    $          $    $  ANS021.BYTE005  $  y=x;
  $  186.全局KL50状态                                      $    $          $    $  ANS022.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  187.全局发动机运转状态                                $    $          $    $  ANS022.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  188.全局KL15状态                                      $    $          $    $  ANS022.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  189.全局ACC/KLR状态                                   $    $          $    $  ANS022.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  190.系统KL50状态                                      $    $          $    $  ANS022.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  191.系统发动机运转状态                                $    $          $    $  ANS022.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  192.系统KL15状态                                      $    $          $    $  ANS022.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  193.系统ACC/KLR状态                                   $    $          $    $  ANS022.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  194.图像处理器温度                                    $    $          $    $  ANS023.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-40;
  $  195.图像处理单元供电模式                              $    $          $    $  ANS024.BYTE004  $  if(x==0x00) y=@023f;else if(x==0x01) y=@07de;else if(x==0x02) y=@0e7e;else if(x==0x03) y=@0e7f;else if(x==0x04) y=@0e80;else if(x==0x05) y=@0035;else y=@0035;
  $  196.图像处理单元运行状态                              $    $          $    $  ANS025.BYTE004  $  if(x==0x00) y=@000f;else if(x==0x02) y=@090e;else if(x==0x03) y=@090f;else if(x==0x22) y=@0e81;else if(x==0x82) y=@0e82;else if(x==0x85) y=@0e83;else if(x==0x92) y=@0dc8;else if(x==0xAA) y=@0180;else if(x==0xAC) y=@0e84;else y=@0035;
  $  197.LDW从激活状态异常退出原因0~7                      $    $          $    $  ANS026.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  198.LDW从激活状态异常退出原因8~15                     $    $          $    $  ANS026.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  199.Acc异常退出时的年份                               $    $          $    $  ANS026.BYTE006  $  y=x+2000;
  $  200.Acc异常退出时的月份                               $    $          $    $  ANS026.BYTE007  $  y=x;
  $  201.Acc异常退出时的日期                               $    $          $    $  ANS026.BYTE008  $  y=x;
  $  202.Acc异常退出时的时刻                               $    $          $    $  ANS026.BYTE009  $  y=x;
  $  203.Acc异常退出时的分钟                               $    $          $    $  ANS026.BYTE010  $  y=x;
  $  204.Acc异常退出时的秒数                               $    $          $    $  ANS026.BYTE011  $  y=x;
  $  205.Acc异常退出时的里程                               $    $  km      $    $  ANS026.BYTE012  $  y=(x1*256*256+x2*256+x3);

  $)  03.数据流4
  $  03.数据流4
  $  REQ000:74A 03 22 B0 73 00 00 00 00       $  ANS000:7CA 03 22 B0 73 00 00 00 00
  $  REQ001:74A 03 22 B0 93 00 00 00 00       $  ANS001:7CA 03 22 B0 93 00 00 00 00
  $  REQ002:74A 03 22 B0 70 00 00 00 00       $  ANS002:7CA 03 22 B0 70 00 00 00 00
  $  REQ003:74A 03 22 B0 72 00 00 00 00       $  ANS003:7CA 03 22 B0 72 00 00 00 00
  $  REQ004:74A 03 22 D0 03 00 00 00 00       $  ANS004:7CA 03 22 D0 03 00 00 00 00
  $  REQ005:74A 03 22 D0 02 00 00 00 00       $  ANS005:7CA 03 22 D0 02 00 00 00 00
  $  REQ006:74A 03 22 B0 A6 00 00 00 00       $  ANS006:7CA 03 22 B0 A6 00 00 00 00
  $  REQ007:74A 03 22 B0 A7 00 00 00 00       $  ANS007:7CA 03 22 B0 A7 00 00 00 00
  $  REQ008:74A 03 22 B0 A8 00 00 00 00       $  ANS008:7CA 03 22 B0 A8 00 00 00 00
  $  REQ009:74A 03 22 B0 A9 00 00 00 00       $  ANS009:7CA 03 22 B0 A9 00 00 00 00
  $  REQ010:74A 03 22 B0 AB 00 00 00 00       $  ANS010:7CA 03 22 B0 AB 00 00 00 00
  $  REQ011:74A 03 22 B0 97 00 00 00 00       $  ANS011:7CA 03 22 B0 97 00 00 00 00
  $  REQ012:74A 03 22 B0 A0 00 00 00 00       $  ANS012:7CA 03 22 B0 A0 00 00 00 00
  $  REQ013:74A 03 22 B0 A1 00 00 00 00       $  ANS013:7CA 03 22 B0 A1 00 00 00 00
  $  REQ014:74A 03 22 B0 A2 00 00 00 00       $  ANS014:7CA 03 22 B0 A2 00 00 00 00
  $  REQ015:74A 03 22 B0 A3 00 00 00 00       $  ANS015:7CA 03 22 B0 A3 00 00 00 00
  $  REQ016:74A 03 22 B0 A4 00 00 00 00       $  ANS016:7CA 03 22 B0 A4 00 00 00 00
  $  REQ017:74A 03 22 B0 A5 00 00 00 00       $  ANS017:7CA 03 22 B0 A5 00 00 00 00
  $  REQ018:74A 03 22 B0 AA 00 00 00 00       $  ANS018:7CA 03 22 B0 AA 00 00 00 00
  $  REQ019:74A 03 22 B0 30 00 00 00 00       $  ANS019:7CA 03 22 B0 30 00 00 00 00
  $  REQ020:74A 03 22 E1 01 00 00 00 00       $  ANS020:7CA 03 22 E1 01 00 00 00 00
  $  REQ021:74A 03 22 B0 90 00 00 00 00       $  ANS021:7CA 03 22 B0 90 00 00 00 00
  $  REQ022:74A 03 22 B0 47 00 00 00 00       $  ANS022:7CA 03 22 B0 47 00 00 00 00
  $  REQ023:74A 03 22 B0 79 00 00 00 00       $  ANS023:7CA 03 22 B0 79 00 00 00 00
  $  REQ024:74A 03 22 B0 7B 00 00 00 00       $  ANS024:7CA 03 22 B0 7B 00 00 00 00
  $  REQ025:74A 03 22 B0 95 00 00 00 00       $  ANS025:7CA 03 22 B0 95 00 00 00 00
  $  REQ026:74A 03 22 B0 78 00 00 00 00       $  ANS026:7CA 03 22 B0 78 00 00 00 00
  $  REQ027:74A 03 22 B0 7A 00 00 00 00       $  ANS027:7CA 03 22 B0 7A 00 00 00 00
  $  REQ028:74A 03 22 B0 29 00 00 00 00       $  ANS028:7CA 03 22 B0 29 00 00 00 00
  $  REQ029:74A 03 22 C0 06 00 00 00 00       $  ANS029:7CA 03 22 C0 06 00 00 00 00
  $  REQ030:74A 03 22 B0 28 00 00 00 00       $  ANS030:7CA 03 22 B0 28 00 00 00 00
  $  REQ031:74A 03 22 C0 05 00 00 00 00       $  ANS031:7CA 03 22 C0 05 00 00 00 00
  $  REQ032:74A 03 22 B0 00 00 00 00 00       $  ANS032:7CA 03 22 B0 00 00 00 00 00

  $  000.LDW无法进入为原因0~7时的状态                 $    $          $    $  ANS000.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  001.LDW无法进入为原因8~15时的状态                $    $          $    $  ANS000.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  002.LDW无法进入为原因0~7时的状态                 $    $          $    $  ANS001.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  003.LDW无法进入为原因8~15时的状态                $    $          $    $  ANS001.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  004.LDW从激活状态异常退出原因0~7                 $    $          $    $  ANS002.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  005.LDW从激活状态异常退出原因8~15                $    $          $    $  ANS002.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  006.Acc异常退出时的年份                          $    $          $    $  ANS002.BYTE006  $  y=x+2000;
  $  007.Acc异常退出时的月份                          $    $          $    $  ANS002.BYTE007  $  y=x;
  $  008.Acc异常退出时的日期                          $    $          $    $  ANS002.BYTE008  $  y=x;
  $  009.Acc异常退出时的时刻                          $    $          $    $  ANS002.BYTE009  $  y=x;
  $  010.Acc异常退出时的分钟                          $    $          $    $  ANS002.BYTE010  $  y=x;
  $  011.Acc异常退出时的秒数                          $    $          $    $  ANS002.BYTE011  $  y=x;
  $  012.Acc异常退出时的里程                          $    $  km      $    $  ANS002.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  013.LDW从激活状态异常退出为原因0~7的状态         $    $          $    $  ANS003.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  014.LDW从激活状态异常退出为原因8~15的状态        $    $          $    $  ANS003.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  015.LDW(车道偏离预警系统)开关                    $    $          $    $  ANS004.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  016.LDW(车道偏离预警系统)开关指示灯              $    $          $    $  ANS005.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  017.LKA从激活状态异常退出为原因0-7的状态         $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0b31;else y=@0035;
  $  018.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS006.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0035;
  $  019.LKA从激活状态异常退出为原因16-23的状态       $    $          $    $  ANS006.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0035;
  $  020.LKA从激活状态异常退出为原因24-31的状态       $    $          $    $  ANS006.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else y=@0035;
  $  021.LKA从激活状态异常退出为原因32-39的状态       $    $          $    $  ANS006.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  022.LKA从激活状态异常退出为原因40-47的状态       $    $          $    $  ANS006.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  023.LKA从激活状态异常退出为原因                  $    $          $    $  ANS006.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  024.LKA异常推出时的年份                          $    $          $    $  ANS006.BYTE012  $  y=x+2000;
  $  025.LKA异常推出时的月份                          $    $          $    $  ANS006.BYTE013  $  y=x;
  $  026.LKA异常推出时的日期                          $    $          $    $  ANS006.BYTE014  $  y=x;
  $  027.LKA异常推出时的时刻                          $    $          $    $  ANS006.BYTE015  $  y=x;
  $  028.LKA异常推出时的分钟                          $    $          $    $  ANS006.BYTE016  $  y=x;
  $  029.LKA异常推出时的秒数                          $    $          $    $  ANS006.BYTE017  $  y=x;
  $  030.LKA异常推出时的里程数                        $    $  km      $    $  ANS006.BYTE020  $  y=x;
  $  031.LKA从激活状态异常退出为原因0-7的状态         $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0b31;else y=@0035;
  $  032.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS007.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0035;
  $  033.LKA从激活状态异常退出为原因16-23的状态       $    $          $    $  ANS007.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0035;
  $  034.LKA从激活状态异常退出为原因24-31的状态       $    $          $    $  ANS007.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else y=@0035;
  $  035.LKA从激活状态异常退出为原因32-39的状态       $    $          $    $  ANS007.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  036.LKA从激活状态异常退出为原因40-47的状态       $    $          $    $  ANS007.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  037.LKA从激活状态异常退出为原因                  $    $          $    $  ANS007.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  038.LKA异常推出时的年份                          $    $          $    $  ANS007.BYTE012  $  y=x+2000;
  $  039.LKA异常推出时的月份                          $    $          $    $  ANS007.BYTE013  $  y=x;
  $  040.LKA异常推出时的日期                          $    $          $    $  ANS007.BYTE014  $  y=x;
  $  041.LKA异常推出时的时刻                          $    $          $    $  ANS007.BYTE015  $  y=x;
  $  042.LKA异常推出时的分钟                          $    $          $    $  ANS007.BYTE016  $  y=x;
  $  043.LKA异常推出时的秒数                          $    $          $    $  ANS007.BYTE017  $  y=x;
  $  044.LKA异常推出时的里程数                        $    $  km      $    $  ANS007.BYTE020  $  y=x;
  $  045.LKA从激活状态异常退出为原因0-7的状态         $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0b31;else y=@0035;
  $  046.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS008.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0035;
  $  047.LKA从激活状态异常退出为原因16-23的状态       $    $          $    $  ANS008.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0035;
  $  048.LKA从激活状态异常退出为原因24-31的状态       $    $          $    $  ANS008.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else y=@0035;
  $  049.LKA从激活状态异常退出为原因32-39的状态       $    $          $    $  ANS008.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  050.LKA从激活状态异常退出为原因40-47的状态       $    $          $    $  ANS008.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  051.LKA从激活状态异常退出为原因                  $    $          $    $  ANS008.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  052.LKA异常推出时的年份                          $    $          $    $  ANS008.BYTE012  $  y=x+2000;
  $  053.LKA异常推出时的月份                          $    $          $    $  ANS008.BYTE013  $  y=x;
  $  054.LKA异常推出时的日期                          $    $          $    $  ANS008.BYTE014  $  y=x;
  $  055.LKA异常推出时的时刻                          $    $          $    $  ANS008.BYTE015  $  y=x;
  $  056.LKA异常推出时的分钟                          $    $          $    $  ANS008.BYTE016  $  y=x;
  $  057.LKA异常推出时的秒数                          $    $          $    $  ANS008.BYTE017  $  y=x;
  $  058.LKA异常推出时的里程数                        $    $  km      $    $  ANS008.BYTE020  $  y=x;
  $  059.LKA从激活状态异常退出为原因0-7的状态         $    $          $    $  ANS009.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0b31;else y=@0035;
  $  060.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS009.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0035;
  $  061.LKA从激活状态异常退出为原因16-23的状态       $    $          $    $  ANS009.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0035;
  $  062.LKA从激活状态异常退出为原因24-31的状态       $    $          $    $  ANS009.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else y=@0035;
  $  063.LKA从激活状态异常退出为原因32-39的状态       $    $          $    $  ANS009.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  064.LKA从激活状态异常退出为原因40-47的状态       $    $          $    $  ANS009.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  065.LKA从激活状态异常退出为原因                  $    $          $    $  ANS009.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  066.LKA异常推出时的年份                          $    $          $    $  ANS009.BYTE012  $  y=x+2000;
  $  067.LKA异常推出时的月份                          $    $          $    $  ANS009.BYTE013  $  y=x;
  $  068.LKA异常推出时的日期                          $    $          $    $  ANS009.BYTE014  $  y=x;
  $  069.LKA异常推出时的时刻                          $    $          $    $  ANS009.BYTE015  $  y=x;
  $  070.LKA异常推出时的分钟                          $    $          $    $  ANS009.BYTE016  $  y=x;
  $  071.LKA异常推出时的秒数                          $    $          $    $  ANS009.BYTE017  $  y=x;
  $  072.LKA异常推出时的里程数                        $    $  km      $    $  ANS009.BYTE020  $  y=x;
  $  073.LKA从激活状态异常退出为原因0-7的状态         $    $          $    $  ANS010.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0b31;else y=@0035;
  $  074.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS010.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0035;
  $  075.LKA从激活状态异常退出为原因16-23的状态       $    $          $    $  ANS010.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0035;
  $  076.LKA从激活状态异常退出为原因24-31的状态       $    $          $    $  ANS010.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else y=@0035;
  $  077.LKA从激活状态异常退出为原因32-39的状态       $    $          $    $  ANS010.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  078.LKA从激活状态异常退出为原因40-47的状态       $    $          $    $  ANS010.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  079.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS011.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  080.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS011.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  081.LKA从激活状态异常退出为原因16-23的状态       $    $          $    $  ANS011.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  082.LKA从激活状态异常退出为原因24-31的状态       $    $          $    $  ANS011.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  083.LKA从激活状态异常退出为原因32-39的状态       $    $          $    $  ANS011.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  084.LKA从激活状态异常退出为原因40-47的状态       $    $          $    $  ANS011.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  085.LKA从激活状态异常退出为原因0-7的状态         $    $          $    $  ANS012.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  086.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS012.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  087.LKA从激活状态异常退出为原因16-23的状态       $    $          $    $  ANS012.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  088.LKA从激活状态异常退出为原因24-31的状态       $    $          $    $  ANS012.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  089.LKA从激活状态异常退出为原因32-39的状态       $    $          $    $  ANS012.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  090.LKA从激活状态异常退出为原因40-47的状态       $    $          $    $  ANS012.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  091.LKA从激活状态异常退出为原因                  $    $          $    $  ANS012.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  092.LKA异常推出时的年份                          $    $          $    $  ANS012.BYTE012  $  y=x+2000;
  $  093.LKA异常推出时的月份                          $    $          $    $  ANS012.BYTE013  $  y=x;
  $  094.LKA异常推出时的日期                          $    $          $    $  ANS012.BYTE014  $  y=x;
  $  095.LKA异常推出时的时刻                          $    $          $    $  ANS012.BYTE015  $  y=x;
  $  096.LKA异常推出时的分钟                          $    $          $    $  ANS012.BYTE016  $  y=x;
  $  097.LKA异常推出时的秒数                          $    $          $    $  ANS012.BYTE017  $  y=x;
  $  098.LKA异常推出时的里程数                        $    $  km      $    $  ANS012.BYTE020  $  y=x;
  $  099.LKA从激活状态异常退出为原因0-7的状态         $    $          $    $  ANS013.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  100.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS013.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  101.LKA从激活状态异常退出为原因16-23的状态       $    $          $    $  ANS013.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  102.LKA从激活状态异常退出为原因24-31的状态       $    $          $    $  ANS013.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  103.LKA从激活状态异常退出为原因32-39的状态       $    $          $    $  ANS013.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  104.LKA从激活状态异常退出为原因40-47的状态       $    $          $    $  ANS013.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  105.LKA从激活状态异常退出为原因                  $    $          $    $  ANS013.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  106.LKA异常推出时的年份                          $    $          $    $  ANS013.BYTE012  $  y=x+2000;
  $  107.LKA异常推出时的月份                          $    $          $    $  ANS013.BYTE013  $  y=x;
  $  108.LKA异常推出时的日期                          $    $          $    $  ANS013.BYTE014  $  y=x;
  $  109.LKA异常推出时的时刻                          $    $          $    $  ANS013.BYTE015  $  y=x;
  $  110.LKA异常推出时的分钟                          $    $          $    $  ANS013.BYTE016  $  y=x;
  $  111.LKA异常推出时的秒数                          $    $          $    $  ANS013.BYTE017  $  y=x;
  $  112.LKA异常推出时的里程数                        $    $  km      $    $  ANS013.BYTE020  $  y=x;
  $  113.LKA从激活状态异常退出为原因0-7的状态         $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  114.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS014.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  115.LKA从激活状态异常退出为原因16-23的状态       $    $          $    $  ANS014.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  116.LKA从激活状态异常退出为原因24-31的状态       $    $          $    $  ANS014.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  117.LKA从激活状态异常退出为原因32-39的状态       $    $          $    $  ANS014.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  118.LKA从激活状态异常退出为原因40-47的状态       $    $          $    $  ANS014.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  119.LKA从激活状态异常退出为原因                  $    $          $    $  ANS014.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  120.LKA异常推出时的年份                          $    $          $    $  ANS014.BYTE012  $  y=x+2000;
  $  121.LKA异常推出时的月份                          $    $          $    $  ANS014.BYTE013  $  y=x;
  $  122.LKA异常推出时的日期                          $    $          $    $  ANS014.BYTE014  $  y=x;
  $  123.LKA异常推出时的时刻                          $    $          $    $  ANS014.BYTE015  $  y=x;
  $  124.LKA异常推出时的分钟                          $    $          $    $  ANS014.BYTE016  $  y=x;
  $  125.LKA异常推出时的秒数                          $    $          $    $  ANS014.BYTE017  $  y=x;
  $  126.LKA异常推出时的里程数                        $    $  km      $    $  ANS014.BYTE020  $  y=x;
  $  127.LKA从激活状态异常退出为原因0-7的状态         $    $          $    $  ANS015.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  128.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS015.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  129.LKA从激活状态异常退出为原因16-23的状态       $    $          $    $  ANS015.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  130.LKA从激活状态异常退出为原因24-31的状态       $    $          $    $  ANS015.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  131.LKA从激活状态异常退出为原因32-39的状态       $    $          $    $  ANS015.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  132.LKA从激活状态异常退出为原因40-47的状态       $    $          $    $  ANS015.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  133.LKA从激活状态异常退出为原因                  $    $          $    $  ANS015.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  134.LKA异常推出时的年份                          $    $          $    $  ANS015.BYTE012  $  y=x+2000;
  $  135.LKA异常推出时的月份                          $    $          $    $  ANS015.BYTE013  $  y=x;
  $  136.LKA异常推出时的日期                          $    $          $    $  ANS015.BYTE014  $  y=x;
  $  137.LKA异常推出时的时刻                          $    $          $    $  ANS015.BYTE015  $  y=x;
  $  138.LKA异常推出时的分钟                          $    $          $    $  ANS015.BYTE016  $  y=x;
  $  139.LKA异常推出时的秒数                          $    $          $    $  ANS015.BYTE017  $  y=x;
  $  140.LKA异常推出时的里程数                        $    $  km      $    $  ANS015.BYTE020  $  y=x;
  $  141.LKA从激活状态异常退出为原因0-7的状态         $    $          $    $  ANS016.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  142.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS016.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  143.LKA从激活状态异常退出为原因16-23的状态       $    $          $    $  ANS016.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  144.LKA从激活状态异常退出为原因24-31的状态       $    $          $    $  ANS016.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  145.LKA从激活状态异常退出为原因32-39的状态       $    $          $    $  ANS016.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  146.LKA从激活状态异常退出为原因40-47的状态       $    $          $    $  ANS016.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  147.LKA从激活状态异常退出为原因                  $    $          $    $  ANS016.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  148.LKA异常推出时的年份                          $    $          $    $  ANS016.BYTE012  $  y=x+2000;
  $  149.LKA异常推出时的月份                          $    $          $    $  ANS016.BYTE013  $  y=x;
  $  150.LKA异常推出时的日期                          $    $          $    $  ANS016.BYTE014  $  y=x;
  $  151.LKA异常推出时的时刻                          $    $          $    $  ANS016.BYTE015  $  y=x;
  $  152.LKA异常推出时的分钟                          $    $          $    $  ANS016.BYTE016  $  y=x;
  $  153.LKA异常推出时的秒数                          $    $          $    $  ANS016.BYTE017  $  y=x;
  $  154.LKA异常推出时的里程数                        $    $  km      $    $  ANS016.BYTE020  $  y=x;
  $  155.LKA从激活状态异常退出为原因0-7的状态         $    $          $    $  ANS017.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0b31;else y=@0035;
  $  156.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS017.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0035;
  $  157.LKA从激活状态异常退出为原因16-23的状态       $    $          $    $  ANS017.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0035;
  $  158.LKA从激活状态异常退出为原因24-31的状态       $    $          $    $  ANS017.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else y=@0035;
  $  159.LKA从激活状态异常退出为原因32-39的状态       $    $          $    $  ANS017.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  160.LKA从激活状态异常退出为原因40-47的状态       $    $          $    $  ANS017.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  161.LKA从激活状态异常退出为原因                  $    $          $    $  ANS017.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  162.LKA异常推出时的年份                          $    $          $    $  ANS017.BYTE012  $  y=x+2000;
  $  163.LKA异常推出时的月份                          $    $          $    $  ANS017.BYTE013  $  y=x;
  $  164.LKA异常推出时的日期                          $    $          $    $  ANS017.BYTE014  $  y=x;
  $  165.LKA异常推出时的时刻                          $    $          $    $  ANS017.BYTE015  $  y=x;
  $  166.LKA异常推出时的分钟                          $    $          $    $  ANS017.BYTE016  $  y=x;
  $  167.LKA异常推出时的秒数                          $    $          $    $  ANS017.BYTE017  $  y=x;
  $  168.LKA异常推出时的里程数                        $    $  km      $    $  ANS017.BYTE020  $  y=x;
  $  169.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS018.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  170.LKA从激活状态异常退出为原因8-15的状态        $    $          $    $  ANS018.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  171.LKA从激活状态异常退出为原因16-23的状态       $    $          $    $  ANS018.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  172.LKA从激活状态异常退出为原因24-31的状态       $    $          $    $  ANS018.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  173.LKA从激活状态异常退出为原因32-39的状态       $    $          $    $  ANS018.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  174.LKA从激活状态异常退出为原因40-47的状态       $    $          $    $  ANS018.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  175.AHB启用                                      $    $          $    $  ANS019.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0035;
  $  176.TSR启用                                      $    $          $    $  ANS019.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0035;
  $  177.ACC启用                                      $    $          $    $  ANS019.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0035;
  $  178.AEBP启用                                     $    $          $    $  ANS019.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0035;
  $  179.AEB开启                                      $    $          $    $  ANS019.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0035;
  $  180.PCW启用                                      $    $          $    $  ANS019.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0035;
  $  181.FCW开启                                      $    $          $    $  ANS019.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0035;
  $  182.LDW开启                                      $    $          $    $  ANS019.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  183.LKA(车道保持辅助系统)启用                    $    $          $    $  ANS019.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  184.功能启用信号经验                             $    $          $    $  ANS019.BYTE006  $  HEX(X1);
  $  185.读取里程数                                   $    $  km      $    $  ANS020.BYTE010  $  y=(x1*256*256+x2*256+x3);
  $  186.刷写检测错误                                 $    $          $    $  ANS021.BYTE006  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  187.PLL检测错误                                  $    $          $    $  ANS021.BYTE007  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  188.Ram检测错误                                  $    $          $    $  ANS021.BYTE008  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  189.堆栈检测错误                                 $    $          $    $  ANS021.BYTE009  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  190.未使用内存检测错误                           $    $          $    $  ANS021.BYTE010  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  191.ECC检测错误                                  $    $          $    $  ANS021.BYTE011  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  192.常量寄存器检测错误                           $    $          $    $  ANS021.BYTE012  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  193.Spi超时                                      $    $          $    $  ANS021.BYTE013  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  194.ESR0                                         $    $          $    $  ANS021.BYTE014  $  y=x;
  $  195.ESR1                                         $    $          $    $  ANS021.BYTE015  $  y=x;
  $  196.SMU                                          $    $          $    $  ANS021.BYTE016  $  y=x;
  $  197.软重启                                       $    $          $    $  ANS021.BYTE017  $  y=x;
  $  198.STM0                                         $    $          $    $  ANS021.BYTE018  $  y=x;
  $  199.STM1                                         $    $          $    $  ANS021.BYTE019  $  y=x;
  $  200.STM2                                         $    $          $    $  ANS021.BYTE020  $  y=x;
  $  201.多次重启                                     $    $          $    $  ANS021.BYTE021  $  y=x;
  $  202.CB0                                          $    $          $    $  ANS021.BYTE022  $  y=x;
  $  203.CB1                                          $    $          $    $  ANS021.BYTE023  $  y=x;
  $  204.CB3                                          $    $          $    $  ANS021.BYTE024  $  y=x;
  $  205.调试保护                                     $    $          $    $  ANS021.BYTE025  $  y=x;
  $  206.EVR13                                        $    $          $    $  ANS021.BYTE026  $  y=x;
  $  207.EVR33                                        $    $          $    $  ANS021.BYTE027  $  y=x;
  $  208.供应看门狗                                   $    $          $    $  ANS021.BYTE028  $  y=x;
  $  209.候命看门狗                                   $    $          $    $  ANS021.BYTE029  $  y=x;
  $  210.可靠性数据年份                               $    $          $    $  ANS021.BYTE030  $  y=x+2000;
  $  211.可靠性数据月份                               $    $          $    $  ANS021.BYTE031  $  y=x;
  $  212.可靠性数据日期                               $    $          $    $  ANS021.BYTE032  $  y=x;
  $  213.可靠性数据时刻                               $    $          $    $  ANS021.BYTE033  $  y=x;
  $  214.可靠性数据分钟                               $    $          $    $  ANS021.BYTE034  $  y=x;
  $  215.可靠性数据秒数                               $    $          $    $  ANS021.BYTE035  $  y=x;
  $  216.可靠性数据里程数                             $    $  km      $    $  ANS021.BYTE036  $  y=(x1*256*256+x2*256+x3);
  $  217.供应商芯片跟踪号                             $    $          $    $  ANS022.BYTE004  $  HEX(X1,X2,X3,X4,X5,X6,X7,X8);
  $  218.TSR从激活状态异常退出原因0~7                 $    $          $    $  ANS023.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  219.TSR从激活状态异常退出原因8~15                $    $          $    $  ANS023.BYTE005  $  y=x;
  $  220.Acc异常退出时的年份                          $    $          $    $  ANS023.BYTE006  $  y=x+2000;
  $  221.Acc异常退出时的月份                          $    $          $    $  ANS023.BYTE007  $  y=x;
  $  222.Acc异常退出时的日期                          $    $          $    $  ANS023.BYTE008  $  y=x;
  $  223.Acc异常退出时的时刻                          $    $          $    $  ANS023.BYTE009  $  y=x;
  $  224.Acc异常退出时的分钟                          $    $          $    $  ANS023.BYTE010  $  y=x;
  $  225.Acc异常退出时的秒数                          $    $          $    $  ANS023.BYTE011  $  y=x;
  $  226.Acc异常退出时的里程                          $    $  km      $    $  ANS023.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  227.TSR无法进入为原因0~7时的状态                 $    $          $    $  ANS024.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  228.TSR无法进入为原因8~15时的状态                $    $          $    $  ANS024.BYTE005  $  y=x;
  $  229.TSR从激活状态异常退出为原因0~7的状态         $    $          $    $  ANS025.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  230.TSR从激活状态异常退出为原因8~15的状态        $    $          $    $  ANS025.BYTE005  $  y=x;
  $  231.TSR从激活状态异常退出原因0~7                 $    $          $    $  ANS026.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  232.TSR从激活状态异常退出原因8~15的状态          $    $          $    $  ANS026.BYTE005  $  y=x;
  $  233.Acc异常退出时的年份                          $    $          $    $  ANS026.BYTE006  $  y=x+2000;
  $  234.Acc异常退出时的月份                          $    $          $    $  ANS026.BYTE007  $  y=x;
  $  235.Acc异常退出时的日期                          $    $          $    $  ANS026.BYTE008  $  y=x;
  $  236.Acc异常退出时的时刻                          $    $          $    $  ANS026.BYTE009  $  y=x;
  $  237.Acc异常退出时的分钟                          $    $          $    $  ANS026.BYTE010  $  y=x;
  $  238.Acc异常退出时的秒数                          $    $          $    $  ANS026.BYTE011  $  y=x;
  $  239.Acc异常退出时的里程                          $    $  km      $    $  ANS026.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  240.TSR从激活状态异常退出为原因0~7的状态         $    $          $    $  ANS027.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  241.TSR从激活状态异常退出为原因8~15的状态        $    $          $    $  ANS027.BYTE005  $  y=x;
  $  242.摄像头目标速度需求                           $    $          $    $  ANS028.BYTE004  $  y=(x1*256+x2);
  $  243.ACC驾驶员选择的速度                          $    $          $    $  ANS028.BYTE006  $  y=(x1*256+x2);
  $  244.摄像头目标速度需求                           $    $          $    $  ANS029.BYTE004  $  y=(x1*256+x2);
  $  245.ACC驾驶员选择的速度                          $    $          $    $  ANS029.BYTE006  $  y=(x1*256+x2);
  $  246.车辆区域码                                   $    $          $    $  ANS030.BYTE004  $  if(x==0x00) y=@01df;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0b6e;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0103;
  $  247.车辆区域码                                   $    $          $    $  ANS031.BYTE004  $  if(x==0x00) y=@01df;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0b6e;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0103;
  $  248.车速                                         $    $  kph     $    $  ANS032.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:74A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
