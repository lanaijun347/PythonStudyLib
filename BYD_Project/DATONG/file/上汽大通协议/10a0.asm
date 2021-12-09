
    车型ID：10a0

    模拟：协议模拟-->10a0

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

  $*$*DTC/9f000000


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
  $%  004:电控单元制造日期:                $%    $%  ANS004.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);
  $%  005:电控单元网络参考号:              $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
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
  $  REQ013:74A 03 22 B0 80 00 00 00 00       $  ANS013:7CA 03 22 B0 80 00 00 00 00
  $  REQ014:74A 03 22 B0 81 00 00 00 00       $  ANS014:7CA 03 22 B0 81 00 00 00 00

  $  000.ACC未准备好激活的原因0~7_0             $    $            $    $  ANS000.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  001.ACC未准备好激活的原因8~15_0            $    $            $    $  ANS000.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  002.ACC未准备好激活的原因16~23_0           $    $            $    $  ANS000.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  003.ACC未准备好激活的原因24~31_0           $    $            $    $  ANS000.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  004.ACC未准备好激活的原因32~39_0           $    $            $    $  ANS000.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  005.ACC未准备好激活的原因40~47_0           $    $            $    $  ANS000.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  006.ACC未准备好激活的故障安全标志_0        $    $            $    $  ANS000.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  007.ACC未准备好激活的年份_0                $    $            $    $  ANS000.BYTE014  $  y=x+2000;
  $  008.ACC未准备好激活的月份_0                $    $            $    $  ANS000.BYTE015  $  y=x;
  $  009.ACC未准备好激活的日_0                  $    $            $    $  ANS000.BYTE016  $  y=x;
  $  010.ACC未准备好激活的时_0                  $    $            $    $  ANS000.BYTE017  $  y=x;
  $  011.ACC未准备好激活的分_0                  $    $            $    $  ANS000.BYTE018  $  y=x;
  $  012.ACC未准备好激活的秒_0                  $    $            $    $  ANS000.BYTE019  $  y=x;
  $  013.ACC未准备好激活的里程_0                $    $  km        $    $  ANS000.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  014.ACC未准备好激活的原因0~7_1             $    $            $    $  ANS001.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  015.ACC未准备好激活的原因8~15_1            $    $            $    $  ANS001.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  016.ACC未准备好激活的原因16~23_1           $    $            $    $  ANS001.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  017.ACC未准备好激活的原因24~31_1           $    $            $    $  ANS001.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  018.ACC未准备好激活的原因32~39_1           $    $            $    $  ANS001.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  019.ACC未准备好激活的原因40~47_1           $    $            $    $  ANS001.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  020.ACC未准备好激活的故障安全标志_1        $    $            $    $  ANS001.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  021.ACC未准备好激活的年份_1                $    $            $    $  ANS001.BYTE014  $  y=x+2000;
  $  022.ACC未准备好激活的月份_1                $    $            $    $  ANS001.BYTE015  $  y=x;
  $  023.ACC未准备好激活的日_1                  $    $            $    $  ANS001.BYTE016  $  y=x;
  $  024.ACC未准备好激活的时_1                  $    $            $    $  ANS001.BYTE017  $  y=x;
  $  025.ACC未准备好激活的分_1                  $    $            $    $  ANS001.BYTE018  $  y=x;
  $  026.ACC未准备好激活的秒_1                  $    $            $    $  ANS001.BYTE019  $  y=x;
  $  027.ACC未准备好激活的里程_1                $    $  km        $    $  ANS001.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  028.ACC未准备好激活的原因0~7_2             $    $            $    $  ANS002.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  029.ACC未准备好激活的原因8~15_2            $    $            $    $  ANS002.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  030.ACC未准备好激活的原因16~23_2           $    $            $    $  ANS002.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  031.ACC未准备好激活的原因24~31_2           $    $            $    $  ANS002.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  032.ACC未准备好激活的原因32~39_2           $    $            $    $  ANS002.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  033.ACC未准备好激活的原因40~47_2           $    $            $    $  ANS002.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  034.ACC未准备好激活的故障安全标志_2        $    $            $    $  ANS002.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  035.ACC未准备好激活的年份_2                $    $            $    $  ANS002.BYTE014  $  y=x+2000;
  $  036.ACC未准备好激活的月份_2                $    $            $    $  ANS002.BYTE015  $  y=x;
  $  037.ACC未准备好激活的日_2                  $    $            $    $  ANS002.BYTE016  $  y=x;
  $  038.ACC未准备好激活的时_2                  $    $            $    $  ANS002.BYTE017  $  y=x;
  $  039.ACC未准备好激活的分_2                  $    $            $    $  ANS002.BYTE018  $  y=x;
  $  040.ACC未准备好激活的秒_2                  $    $            $    $  ANS002.BYTE019  $  y=x;
  $  041.ACC未准备好激活的里程_2                $    $  km        $    $  ANS002.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  042.ACC未准备好激活的原因0~7_3             $    $            $    $  ANS003.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  043.ACC未准备好激活的原因8~15_3            $    $            $    $  ANS003.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  044.ACC未准备好激活的原因16~23_3           $    $            $    $  ANS003.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  045.ACC未准备好激活的原因24~31_3           $    $            $    $  ANS003.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  046.ACC未准备好激活的原因32~39_3           $    $            $    $  ANS003.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  047.ACC未准备好激活的原因40~47_3           $    $            $    $  ANS003.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  048.ACC未准备好激活的故障安全标志_3        $    $            $    $  ANS003.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  049.ACC未准备好激活的年份_3                $    $            $    $  ANS003.BYTE014  $  y=x+2000;
  $  050.ACC未准备好激活的月份_3                $    $            $    $  ANS003.BYTE015  $  y=x;
  $  051.ACC未准备好激活的日_3                  $    $            $    $  ANS003.BYTE016  $  y=x;
  $  052.ACC未准备好激活的时_3                  $    $            $    $  ANS003.BYTE017  $  y=x;
  $  053.ACC未准备好激活的分_3                  $    $            $    $  ANS003.BYTE018  $  y=x;
  $  054.ACC未准备好激活的秒_3                  $    $            $    $  ANS003.BYTE019  $  y=x;
  $  055.ACC未准备好激活的里程_3                $    $  km        $    $  ANS003.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  056.ACC未准备好激活的原因0~7_4             $    $            $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  057.ACC未准备好激活的原因8~15_4            $    $            $    $  ANS004.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  058.ACC未准备好激活的原因16~23_4           $    $            $    $  ANS004.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  059.ACC未准备好激活的原因24~31_4           $    $            $    $  ANS004.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  060.ACC未准备好激活的原因32~39_4           $    $            $    $  ANS004.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  061.ACC未准备好激活的原因40~47_4           $    $            $    $  ANS004.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  062.ACC未准备好激活的故障安全标志_4        $    $            $    $  ANS004.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  063.ACC未准备好激活的年份_4                $    $            $    $  ANS004.BYTE014  $  y=x+2000;
  $  064.ACC未准备好激活的月份_4                $    $            $    $  ANS004.BYTE015  $  y=x;
  $  065.ACC未准备好激活的日_4                  $    $            $    $  ANS004.BYTE016  $  y=x;
  $  066.ACC未准备好激活的时_4                  $    $            $    $  ANS004.BYTE017  $  y=x;
  $  067.ACC未准备好激活的分_4                  $    $            $    $  ANS004.BYTE018  $  y=x;
  $  068.ACC未准备好激活的秒_4                  $    $            $    $  ANS004.BYTE019  $  y=x;
  $  069.ACC未准备好激活的里程_4                $    $  km        $    $  ANS004.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  070.ACC未准备好激活的原因0~7               $    $            $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  071.ACC未准备好激活的原因8~15              $    $            $    $  ANS005.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  072.ACC未准备好激活的原因16~23             $    $            $    $  ANS005.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  073.ACC未准备好激活的原因24~31             $    $            $    $  ANS005.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  074.ACC未准备好激活的原因32~39             $    $            $    $  ANS005.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  075.ACC未准备好激活的原因40~47             $    $            $    $  ANS005.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  076.ACC退出激活状态的原因0~7(B091)         $    $            $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  077.ACC退出激活状态的原因8~15(B091)        $    $            $    $  ANS006.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  078.ACC退出激活状态的原因16~23(B091)       $    $            $    $  ANS006.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  079.ACC退出激活状态的原因24~31(B091)       $    $            $    $  ANS006.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  080.ACC退出激活状态的原因32~39(B091)       $    $            $    $  ANS006.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  081.ACC退出激活状态的原因40~47(B091)       $    $            $    $  ANS006.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  082.ACC退出激活状态的原因0~7_0             $    $            $    $  ANS007.BYTE004  $  if(x==0x01) y=@0e17;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0e18;else if(x==0x80) y=@0b4f;else y=@0035;
  $  083.ACC退出激活状态的原因8~15_0            $    $            $    $  ANS007.BYTE005  $  if(x==0x01) y=@0db2;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  084.ACC退出激活状态的原因16~23_0           $    $            $    $  ANS007.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0e03;else y=@0035;
  $  085.ACC退出激活状态的原因24~31_0           $    $            $    $  ANS007.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0e22;else if(x==0x04) y=@0db3;else if(x==0x08) y=@0e23;else if(x==0x10) y=@0e04;else if(x==0x20) y=@0e24;else if(x==0x40) y=@0e25;else if(x==0x80) y=@0e05;else y=@0035;
  $  086.ACC退出激活状态的原因32~39_0           $    $            $    $  ANS007.BYTE008  $  if(x==0x01) y=@0e06;else if(x==0x02) y=@0e26;else if(x==0x04) y=@0e27;else if(x==0x08) y=@0e08;else if(x==0x10) y=@0e28;else if(x==0x20) y=@0e29;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0e2a;else y=@0035;
  $  087.ACC退出激活状态的原因40~47_0           $    $            $    $  ANS007.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0db6;else if(x==0x08) y=@0db7;else y=@0035;
  $  088.ACC退出激活状态的故障安全标志_0        $    $            $    $  ANS007.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  089.ACC退出事件年份_0                      $    $            $    $  ANS007.BYTE014  $  y=x+2000;
  $  090.ACC退出事件月份_0                      $    $            $    $  ANS007.BYTE015  $  y=x;
  $  091.ACC退出事件日_0                        $    $            $    $  ANS007.BYTE016  $  y=x;
  $  092.ACC退出事件时_0                        $    $            $    $  ANS007.BYTE017  $  y=x;
  $  093.ACC退出事件分_0                        $    $            $    $  ANS007.BYTE018  $  y=x;
  $  094.ACC退出事件秒_0                        $    $            $    $  ANS007.BYTE019  $  y=x;
  $  095.ACC退出事件里程_0                      $    $  km        $    $  ANS007.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  096.ACC退出激活状态的原因0~7_1             $    $            $    $  ANS008.BYTE004  $  if(x==0x01) y=@0e17;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0e18;else if(x==0x80) y=@0b4f;else y=@0035;
  $  097.ACC退出激活状态的原因8~15_1            $    $            $    $  ANS008.BYTE005  $  if(x==0x01) y=@0db2;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  098.ACC退出激活状态的原因16~23_1           $    $            $    $  ANS008.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0e03;else y=@0035;
  $  099.ACC退出激活状态的原因24~31_1           $    $            $    $  ANS008.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0e22;else if(x==0x04) y=@0db3;else if(x==0x08) y=@0e23;else if(x==0x10) y=@0e04;else if(x==0x20) y=@0e24;else if(x==0x40) y=@0e25;else if(x==0x80) y=@0e05;else y=@0035;
  $  100.ACC退出激活状态的原因32~39_1           $    $            $    $  ANS008.BYTE008  $  if(x==0x01) y=@0e06;else if(x==0x02) y=@0e26;else if(x==0x04) y=@0e27;else if(x==0x08) y=@0e08;else if(x==0x10) y=@0e28;else if(x==0x20) y=@0e29;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0e2a;else y=@0035;
  $  101.ACC退出激活状态的原因40~47_1           $    $            $    $  ANS008.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0db6;else if(x==0x08) y=@0db7;else y=@0035;
  $  102.ACC退出激活状态的故障安全标志_1        $    $            $    $  ANS008.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  103.ACC退出事件年份_1                      $    $            $    $  ANS008.BYTE014  $  y=x+2000;
  $  104.ACC退出事件月份_1                      $    $            $    $  ANS008.BYTE015  $  y=x;
  $  105.ACC退出事件日_1                        $    $            $    $  ANS008.BYTE016  $  y=x;
  $  106.ACC退出事件时_1                        $    $            $    $  ANS008.BYTE017  $  y=x;
  $  107.ACC退出事件分_1                        $    $            $    $  ANS008.BYTE018  $  y=x;
  $  108.ACC退出事件秒_1                        $    $            $    $  ANS008.BYTE019  $  y=x;
  $  109.ACC退出事件里程_1                      $    $  km        $    $  ANS008.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  110.ACC退出激活状态的原因0~7_2             $    $            $    $  ANS009.BYTE004  $  if(x==0x01) y=@0e17;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0e18;else if(x==0x80) y=@0b4f;else y=@0035;
  $  111.ACC退出激活状态的原因8~15_2            $    $            $    $  ANS009.BYTE005  $  if(x==0x01) y=@0db2;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  112.ACC退出激活状态的原因16~23_2           $    $            $    $  ANS009.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0e03;else y=@0035;
  $  113.ACC退出激活状态的原因24~31_2           $    $            $    $  ANS009.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0e22;else if(x==0x04) y=@0db3;else if(x==0x08) y=@0e23;else if(x==0x10) y=@0e04;else if(x==0x20) y=@0e24;else if(x==0x40) y=@0e25;else if(x==0x80) y=@0e05;else y=@0035;
  $  114.ACC退出激活状态的原因32~39_2           $    $            $    $  ANS009.BYTE008  $  if(x==0x01) y=@0e06;else if(x==0x02) y=@0e26;else if(x==0x04) y=@0e27;else if(x==0x08) y=@0e08;else if(x==0x10) y=@0e28;else if(x==0x20) y=@0e29;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0e2a;else y=@0035;
  $  115.ACC退出激活状态的原因40~47_2           $    $            $    $  ANS009.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0db6;else if(x==0x08) y=@0db7;else y=@0035;
  $  116.ACC退出激活状态的故障安全标志_2        $    $            $    $  ANS009.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  117.ACC退出事件年份_2                      $    $            $    $  ANS009.BYTE014  $  y=x+2000;
  $  118.ACC退出事件月份_2                      $    $            $    $  ANS009.BYTE015  $  y=x;
  $  119.ACC退出事件日_2                        $    $            $    $  ANS009.BYTE016  $  y=x;
  $  120.ACC退出事件时_2                        $    $            $    $  ANS009.BYTE017  $  y=x;
  $  121.ACC退出事件分_2                        $    $            $    $  ANS009.BYTE018  $  y=x;
  $  122.ACC退出事件秒_2                        $    $            $    $  ANS009.BYTE019  $  y=x;
  $  123.ACC退出事件里程_2                      $    $  km        $    $  ANS009.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  124.ACC退出激活状态的原因0~7_3             $    $            $    $  ANS010.BYTE004  $  if(x==0x01) y=@0e17;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0e18;else if(x==0x80) y=@0b4f;else y=@0035;
  $  125.ACC退出激活状态的原因8~15_3            $    $            $    $  ANS010.BYTE005  $  if(x==0x01) y=@0db2;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  126.ACC退出激活状态的原因16~23_3           $    $            $    $  ANS010.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0e03;else y=@0035;
  $  127.ACC退出激活状态的原因24~31_3           $    $            $    $  ANS010.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0e22;else if(x==0x04) y=@0db3;else if(x==0x08) y=@0e23;else if(x==0x10) y=@0e04;else if(x==0x20) y=@0e24;else if(x==0x40) y=@0e25;else if(x==0x80) y=@0e05;else y=@0035;
  $  128.ACC退出激活状态的原因32~39_3           $    $            $    $  ANS010.BYTE008  $  if(x==0x01) y=@0e06;else if(x==0x02) y=@0e26;else if(x==0x04) y=@0e27;else if(x==0x08) y=@0e08;else if(x==0x10) y=@0e28;else if(x==0x20) y=@0e29;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0e2a;else y=@0035;
  $  129.ACC退出激活状态的原因40~47_3           $    $            $    $  ANS010.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0db6;else if(x==0x08) y=@0db7;else y=@0035;
  $  130.ACC退出激活状态的故障安全标志_3        $    $            $    $  ANS010.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  131.ACC退出事件年份_3                      $    $            $    $  ANS010.BYTE014  $  y=x+2000;
  $  132.ACC退出事件月份_3                      $    $            $    $  ANS010.BYTE015  $  y=x;
  $  133.ACC退出事件日_3                        $    $            $    $  ANS010.BYTE016  $  y=x;
  $  134.ACC退出事件时_3                        $    $            $    $  ANS010.BYTE017  $  y=x;
  $  135.ACC退出事件分_3                        $    $            $    $  ANS010.BYTE018  $  y=x;
  $  136.ACC退出事件秒_3                        $    $            $    $  ANS010.BYTE019  $  y=x;
  $  137.ACC退出事件里程_3                      $    $  km        $    $  ANS010.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  138.ACC退出激活状态的原因0~7_4             $    $            $    $  ANS011.BYTE004  $  if(x==0x01) y=@0e17;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0e18;else if(x==0x80) y=@0b4f;else y=@0035;
  $  139.ACC退出激活状态的原因8~15_4            $    $            $    $  ANS011.BYTE005  $  if(x==0x01) y=@0db2;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  140.ACC退出激活状态的原因16~23_4           $    $            $    $  ANS011.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0e03;else y=@0035;
  $  141.ACC退出激活状态的原因24~31_4           $    $            $    $  ANS011.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0e22;else if(x==0x04) y=@0db3;else if(x==0x08) y=@0e23;else if(x==0x10) y=@0e04;else if(x==0x20) y=@0e24;else if(x==0x40) y=@0e25;else if(x==0x80) y=@0e05;else y=@0035;
  $  142.ACC退出激活状态的原因32~39_4           $    $            $    $  ANS011.BYTE008  $  if(x==0x01) y=@0e06;else if(x==0x02) y=@0e26;else if(x==0x04) y=@0e27;else if(x==0x08) y=@0e08;else if(x==0x10) y=@0e28;else if(x==0x20) y=@0e29;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0e2a;else y=@0035;
  $  143.ACC退出激活状态的原因40~47_4           $    $            $    $  ANS011.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0db6;else if(x==0x08) y=@0db7;else y=@0035;
  $  144.ACC退出激活状态的故障安全标志_4        $    $            $    $  ANS011.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  145.ACC退出事件年份_4                      $    $            $    $  ANS011.BYTE014  $  y=x+2000;
  $  146.ACC退出事件月份_4                      $    $            $    $  ANS011.BYTE015  $  y=x;
  $  147.ACC退出事件日_4                        $    $            $    $  ANS011.BYTE016  $  y=x;
  $  148.ACC退出事件时_4                        $    $            $    $  ANS011.BYTE017  $  y=x;
  $  149.ACC退出事件分_4                        $    $            $    $  ANS011.BYTE018  $  y=x;
  $  150.ACC退出事件秒_4                        $    $            $    $  ANS011.BYTE019  $  y=x;
  $  151.ACC退出事件里程_4                      $    $  km        $    $  ANS011.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  152.ACC退出激活状态的原因0~7               $    $            $    $  ANS012.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  153.ACC退出激活状态的原因8~15              $    $            $    $  ANS012.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  154.ACC退出激活状态的原因16~23             $    $            $    $  ANS012.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  155.ACC退出激活状态的原因24~31             $    $            $    $  ANS012.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  156.ACC退出激活状态的原因32~39             $    $            $    $  ANS012.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  157.ACC退出激活状态的原因40~47             $    $            $    $  ANS012.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  158.AEB事件里程_0                          $    $  km        $    $  ANS013.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  159.AEB事件秒_0                            $    $            $    $  ANS013.BYTE008  $  y=x;
  $  160.AEB事件分_0                            $    $            $    $  ANS013.BYTE009  $  y=x;
  $  161.AEB事件时_0                            $    $            $    $  ANS013.BYTE010  $  y=x;
  $  162.AEB事件日_0                            $    $            $    $  ANS013.BYTE011  $  y=x;
  $  163.AEB事件月份_0                          $    $            $    $  ANS013.BYTE012  $  y=x;
  $  164.AEB事件年份_0                          $    $            $    $  ANS013.BYTE013  $  y=x+2000;
  $  165.物体纵向距离_0                         $    $  m         $    $  ANS013.BYTE014  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  166.物体横向距离_0                         $    $  m         $    $  ANS013.BYTE016  $  y=(((x1*256+x2)&0x3FFC)>>2)*0.05-102.4;
  $  167.事件偏航率_0                           $    $  rad/s     $    $  ANS013.BYTE017  $  y=((x1*256+x2)&0x3FF)*0.002132-2.094;
  $  168.事件经度加速度_0                       $    $  m/s2      $    $  ANS013.BYTE019  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  169.事件大灯亮_0                           $    $            $    $  ANS013.BYTE020  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  170.事件近光灯亮_0                         $    $            $    $  ANS013.BYTE020  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  171.事件车辆增强稳定性侧向加速度_0         $    $  m/s2      $    $  ANS013.BYTE020  $  y=((x1*256+x2)&0xFFF)*0.027127-21.5928;
  $  172.事件制动器踏板位置_0                   $    $  %         $    $  ANS013.BYTE022  $  y=x*0.392157;
  $  173.事件加速器实际位置_0                   $    $  %         $    $  ANS013.BYTE023  $  y=x*0.392157;
  $  174.事件车速_0                             $    $  kph       $    $  ANS013.BYTE024  $  y=(x1*256+x2)*0.5625;
  $  175.FCW驾驶员选定的灵敏度等级_0            $    $            $    $  ANS013.BYTE026  $  if(((x&0xF0)>>4)==0x00) y=@0d9c;else if(((x&0xF0)>>4)==0x01) y=@0e1b;else if(((x&0xF0)>>4)==0x02) y=@0e1c;else if(((x&0xF0)>>4)==0x03) y=@0e1d;else y=@0035;
  $  176.事件等级_0                             $    $            $    $  ANS013.BYTE026  $  if(((x&0x0C)>>2)==0x00) y=@0e1e;else if(((x&0x0C)>>2)==0x01) y=@0e1f;else if(((x&0x0C)>>2)==0x02) y=@0e20;else if(((x&0x0C)>>2)==0x03) y=@0035;else y=@0035;
  $  177.事件函数_0                             $    $            $    $  ANS013.BYTE026  $  if((x&0x03)==0x00) y=@023f;else if((x&0x03)==0x01) y=@0e21;else if((x&0x03)==0x02) y=@0b87;else if((x&0x03)==0x03) y=@0035;else y=@0035;
  $  178.AEB事件里程_1                          $    $  km        $    $  ANS014.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  179.AEB事件秒_1                            $    $            $    $  ANS014.BYTE008  $  y=x;
  $  180.AEB事件分_1                            $    $            $    $  ANS014.BYTE009  $  y=x;
  $  181.AEB事件时_1                            $    $            $    $  ANS014.BYTE010  $  y=x;
  $  182.AEB事件日_1                            $    $            $    $  ANS014.BYTE011  $  y=x;
  $  183.AEB事件月份_1                          $    $            $    $  ANS014.BYTE012  $  y=x;
  $  184.AEB事件年份_1                          $    $            $    $  ANS014.BYTE013  $  y=x+2000;
  $  185.物体纵向距离_1                         $    $  m         $    $  ANS014.BYTE014  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  186.物体横向距离_1                         $    $  m         $    $  ANS014.BYTE016  $  y=(((x1*256+x2)&0x3FFC)>>2)*0.05-102.4;
  $  187.事件偏航率_1                           $    $  rad/s     $    $  ANS014.BYTE017  $  y=((x1*256+x2)&0x3FF)*0.002132-2.094;
  $  188.事件经度加速度_1                       $    $  m/s2      $    $  ANS014.BYTE019  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  189.事件大灯亮_1                           $    $            $    $  ANS014.BYTE020  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  190.事件近光灯亮_1                         $    $            $    $  ANS014.BYTE020  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  191.事件车辆增强稳定性侧向加速度_1         $    $  m/s2      $    $  ANS014.BYTE020  $  y=((x1*256+x2)&0xFFF)*0.027127-21.5928;
  $  192.事件制动器踏板位置_1                   $    $  %         $    $  ANS014.BYTE022  $  y=x*0.392157;
  $  193.事件加速器实际位置_1                   $    $  %         $    $  ANS014.BYTE023  $  y=x*0.392157;
  $  194.事件车速_1                             $    $  kph       $    $  ANS014.BYTE024  $  y=(x1*256+x2)*0.5625;
  $  195.FCW驾驶员选定的灵敏度等级_1            $    $            $    $  ANS014.BYTE026  $  if(((x&0xF0)>>4)==0x00) y=@0d9c;else if(((x&0xF0)>>4)==0x01) y=@0e1b;else if(((x&0xF0)>>4)==0x02) y=@0e1c;else if(((x&0xF0)>>4)==0x03) y=@0e1d;else y=@0035;
  $  196.事件等级_1                             $    $            $    $  ANS014.BYTE026  $  if(((x&0x0C)>>2)==0x00) y=@0e1e;else if(((x&0x0C)>>2)==0x01) y=@0e1f;else if(((x&0x0C)>>2)==0x02) y=@0e20;else if(((x&0x0C)>>2)==0x03) y=@0035;else y=@0035;
  $  197.事件函数_1                             $    $            $    $  ANS014.BYTE026  $  if((x&0x03)==0x00) y=@023f;else if((x&0x03)==0x01) y=@0e21;else if((x&0x03)==0x02) y=@0b87;else if((x&0x03)==0x03) y=@0035;else y=@0035;

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

  $  000.AEB事件里程_2                          $    $  km        $    $  ANS000.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  001.AEB事件秒_2                            $    $            $    $  ANS000.BYTE008  $  y=x;
  $  002.AEB事件分_2                            $    $            $    $  ANS000.BYTE009  $  y=x;
  $  003.AEB事件时_2                            $    $            $    $  ANS000.BYTE010  $  y=x;
  $  004.AEB事件日_2                            $    $            $    $  ANS000.BYTE011  $  y=x;
  $  005.AEB事件月份_2                          $    $            $    $  ANS000.BYTE012  $  y=x;
  $  006.AEB事件年份_2                          $    $            $    $  ANS000.BYTE013  $  y=x+2000;
  $  007.物体纵向距离_2                         $    $  m         $    $  ANS000.BYTE014  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  008.物体横向距离_2                         $    $  m         $    $  ANS000.BYTE016  $  y=(((x1*256+x2)&0x3FFC)>>2)*0.05-102.4;
  $  009.事件偏航率_2                           $    $  rad/s     $    $  ANS000.BYTE017  $  y=((x1*256+x2)&0x3FF)*0.002132-2.094;
  $  010.事件经度加速度_2                       $    $  m/s2      $    $  ANS000.BYTE019  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  011.事件大灯亮_2                           $    $            $    $  ANS000.BYTE020  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  012.事件近光灯亮_2                         $    $            $    $  ANS000.BYTE020  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  013.事件车辆增强稳定性侧向加速度_2         $    $  m/s2      $    $  ANS000.BYTE020  $  y=((x1*256+x2)&0xFFF)*0.027127-21.5928;
  $  014.事件制动器踏板位置_2                   $    $  %         $    $  ANS000.BYTE022  $  y=x*0.392157;
  $  015.事件加速器实际位置_2                   $    $  %         $    $  ANS000.BYTE023  $  y=x*0.392157;
  $  016.事件车速_2                             $    $  kph       $    $  ANS000.BYTE024  $  y=(x1*256+x2)*0.5625;
  $  017.FCW驾驶员选定的灵敏度等级_2            $    $            $    $  ANS000.BYTE026  $  if(((x&0xF0)>>4)==0x00) y=@0d9c;else if(((x&0xF0)>>4)==0x01) y=@0e1b;else if(((x&0xF0)>>4)==0x02) y=@0e1c;else if(((x&0xF0)>>4)==0x03) y=@0e1d;else y=@0035;
  $  018.事件等级_2                             $    $            $    $  ANS000.BYTE026  $  if(((x&0x0C)>>2)==0x00) y=@0e1e;else if(((x&0x0C)>>2)==0x01) y=@0e1f;else if(((x&0x0C)>>2)==0x02) y=@0e20;else if(((x&0x0C)>>2)==0x03) y=@0035;else y=@0035;
  $  019.事件函数_2                             $    $            $    $  ANS000.BYTE026  $  if((x&0x03)==0x00) y=@023f;else if((x&0x03)==0x01) y=@0e21;else if((x&0x03)==0x02) y=@0b87;else if((x&0x03)==0x03) y=@0035;else y=@0035;
  $  020.AEB事件里程_3                          $    $  km        $    $  ANS001.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  021.AEB事件秒_3                            $    $            $    $  ANS001.BYTE008  $  y=x;
  $  022.AEB事件分_3                            $    $            $    $  ANS001.BYTE009  $  y=x;
  $  023.AEB事件时_3                            $    $            $    $  ANS001.BYTE010  $  y=x;
  $  024.AEB事件日_3                            $    $            $    $  ANS001.BYTE011  $  y=x;
  $  025.AEB事件月份_3                          $    $            $    $  ANS001.BYTE012  $  y=x;
  $  026.AEB事件年份_3                          $    $            $    $  ANS001.BYTE013  $  y=x+2000;
  $  027.物体纵向距离_3                         $    $  m         $    $  ANS001.BYTE014  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  028.物体横向距离_3                         $    $  m         $    $  ANS001.BYTE016  $  y=(((x1*256+x2)&0x3FFC)>>2)*0.05-102.4;
  $  029.事件偏航率_3                           $    $  rad/s     $    $  ANS001.BYTE017  $  y=((x1*256+x2)&0x3FF)*0.002132-2.094;
  $  030.事件经度加速度_3                       $    $  m/s2      $    $  ANS001.BYTE019  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  031.事件大灯亮_3                           $    $            $    $  ANS001.BYTE020  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  032.事件近光灯亮_3                         $    $            $    $  ANS001.BYTE020  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  033.事件车辆增强稳定性侧向加速度_3         $    $  m/s2      $    $  ANS001.BYTE020  $  y=((x1*256+x2)&0xFFF)*0.027127-21.5928;
  $  034.事件制动器踏板位置_3                   $    $  %         $    $  ANS001.BYTE022  $  y=x*0.392157;
  $  035.事件加速器实际位置_3                   $    $  %         $    $  ANS001.BYTE023  $  y=x*0.392157;
  $  036.事件车速_3                             $    $  kph       $    $  ANS001.BYTE024  $  y=(x1*256+x2)*0.5625;
  $  037.FCW驾驶员选定的灵敏度等级_3            $    $            $    $  ANS001.BYTE026  $  if(((x&0xF0)>>4)==0x00) y=@0d9c;else if(((x&0xF0)>>4)==0x01) y=@0e1b;else if(((x&0xF0)>>4)==0x02) y=@0e1c;else if(((x&0xF0)>>4)==0x03) y=@0e1d;else y=@0035;
  $  038.事件等级_3                             $    $            $    $  ANS001.BYTE026  $  if(((x&0x0C)>>2)==0x00) y=@0e1e;else if(((x&0x0C)>>2)==0x01) y=@0e1f;else if(((x&0x0C)>>2)==0x02) y=@0e20;else if(((x&0x0C)>>2)==0x03) y=@0035;else y=@0035;
  $  039.事件函数_3                             $    $            $    $  ANS001.BYTE026  $  if((x&0x03)==0x00) y=@023f;else if((x&0x03)==0x01) y=@0e21;else if((x&0x03)==0x02) y=@0b87;else if((x&0x03)==0x03) y=@0035;else y=@0035;
  $  040.AEB事件里程_4                          $    $  km        $    $  ANS002.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  041.AEB事件秒_4                            $    $            $    $  ANS002.BYTE008  $  y=x;
  $  042.AEB事件分_4                            $    $            $    $  ANS002.BYTE009  $  y=x;
  $  043.AEB事件时_4                            $    $            $    $  ANS002.BYTE010  $  y=x;
  $  044.AEB事件日_4                            $    $            $    $  ANS002.BYTE011  $  y=x;
  $  045.AEB事件月份_4                          $    $            $    $  ANS002.BYTE012  $  y=x;
  $  046.AEB事件年份_4                          $    $            $    $  ANS002.BYTE013  $  y=x+2000;
  $  047.物体纵向距离_4                         $    $  m         $    $  ANS002.BYTE014  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  048.物体横向距离_4                         $    $  m         $    $  ANS002.BYTE016  $  y=(((x1*256+x2)&0x3FFC)>>2)*0.05-102.4;
  $  049.事件偏航率_4                           $    $  rad/s     $    $  ANS002.BYTE017  $  y=((x1*256+x2)&0x3FF)*0.002132-2.094;
  $  050.事件经度加速度_4                       $    $  m/s2      $    $  ANS002.BYTE019  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  051.事件大灯亮_4                           $    $            $    $  ANS002.BYTE020  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  052.事件近光灯亮_4                         $    $            $    $  ANS002.BYTE020  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  053.事件车辆增强稳定性侧向加速度_4         $    $  m/s2      $    $  ANS002.BYTE020  $  y=((x1*256+x2)&0xFFF)*0.027127-21.5928;
  $  054.事件制动器踏板位置_4                   $    $  %         $    $  ANS002.BYTE022  $  y=x*0.392157;
  $  055.事件加速器实际位置_4                   $    $  %         $    $  ANS002.BYTE023  $  y=x*0.392157;
  $  056.事件车速_4                             $    $  kph       $    $  ANS002.BYTE024  $  y=(x1*256+x2)*0.5625;
  $  057.FCW驾驶员选定的灵敏度等级_4            $    $            $    $  ANS002.BYTE026  $  if(((x&0xF0)>>4)==0x00) y=@0d9c;else if(((x&0xF0)>>4)==0x01) y=@0e1b;else if(((x&0xF0)>>4)==0x02) y=@0e1c;else if(((x&0xF0)>>4)==0x03) y=@0e1d;else y=@0035;
  $  058.事件等级_4                             $    $            $    $  ANS002.BYTE026  $  if(((x&0x0C)>>2)==0x00) y=@0e1e;else if(((x&0x0C)>>2)==0x01) y=@0e1f;else if(((x&0x0C)>>2)==0x02) y=@0e20;else if(((x&0x0C)>>2)==0x03) y=@0035;else y=@0035;
  $  059.事件函数_4                             $    $            $    $  ANS002.BYTE026  $  if((x&0x03)==0x00) y=@023f;else if((x&0x03)==0x01) y=@0e21;else if((x&0x03)==0x02) y=@0b87;else if((x&0x03)==0x03) y=@0035;else y=@0035;
  $  060.AEB未准备好激活的原因0~7_0             $    $            $    $  ANS003.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  061.AEB未准备好激活的原因8~15_0            $    $            $    $  ANS003.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  062.AEB未准备好激活的原因16~23_0           $    $            $    $  ANS003.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  063.AEB未准备好激活的原因24~31_0           $    $            $    $  ANS003.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  064.AEB未准备好激活的故障安全标志_0        $    $            $    $  ANS003.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  065.AEB未准备好激活的年份_0                $    $            $    $  ANS003.BYTE010  $  y=x+2000;
  $  066.AEB未准备好激活的月份_0                $    $            $    $  ANS003.BYTE011  $  y=x;
  $  067.AEB未准备好激活的日_0                  $    $            $    $  ANS003.BYTE012  $  y=x;
  $  068.AEB未准备好激活的时_0                  $    $            $    $  ANS003.BYTE013  $  y=x;
  $  069.AEB未准备好激活的分_0                  $    $            $    $  ANS003.BYTE014  $  y=x;
  $  070.AEB未准备好激活的秒_0                  $    $            $    $  ANS003.BYTE015  $  y=x;
  $  071.AEB未准备好激活的里程_0                $    $  km        $    $  ANS003.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  072.AEB未准备好激活的原因0~7_1             $    $            $    $  ANS004.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  073.AEB未准备好激活的原因8~15_1            $    $            $    $  ANS004.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  074.AEB未准备好激活的原因16~23_1           $    $            $    $  ANS004.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  075.AEB未准备好激活的原因24~31_1           $    $            $    $  ANS004.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  076.AEB未准备好激活的故障安全标志_1        $    $            $    $  ANS004.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  077.AEB未准备好激活的年份_1                $    $            $    $  ANS004.BYTE010  $  y=x+2000;
  $  078.AEB未准备好激活的月份_1                $    $            $    $  ANS004.BYTE011  $  y=x;
  $  079.AEB未准备好激活的日_1                  $    $            $    $  ANS004.BYTE012  $  y=x;
  $  080.AEB未准备好激活的时_1                  $    $            $    $  ANS004.BYTE013  $  y=x;
  $  081.AEB未准备好激活的分_1                  $    $            $    $  ANS004.BYTE014  $  y=x;
  $  082.AEB未准备好激活的秒_1                  $    $            $    $  ANS004.BYTE015  $  y=x;
  $  083.AEB未准备好激活的里程_1                $    $  km        $    $  ANS004.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  084.AEB未准备好激活的原因0~7_2             $    $            $    $  ANS005.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  085.AEB未准备好激活的原因8~15_2            $    $            $    $  ANS005.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  086.AEB未准备好激活的原因16~23_2           $    $            $    $  ANS005.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  087.AEB未准备好激活的原因24~31_2           $    $            $    $  ANS005.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  088.AEB未准备好激活的故障安全标志_2        $    $            $    $  ANS005.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  089.AEB未准备好激活的年份_2                $    $            $    $  ANS005.BYTE010  $  y=x+2000;
  $  090.AEB未准备好激活的月份_2                $    $            $    $  ANS005.BYTE011  $  y=x;
  $  091.AEB未准备好激活的日_2                  $    $            $    $  ANS005.BYTE012  $  y=x;
  $  092.AEB未准备好激活的时_2                  $    $            $    $  ANS005.BYTE013  $  y=x;
  $  093.AEB未准备好激活的分_2                  $    $            $    $  ANS005.BYTE014  $  y=x;
  $  094.AEB未准备好激活的秒_2                  $    $            $    $  ANS005.BYTE015  $  y=x;
  $  095.AEB未准备好激活的里程_2                $    $  km        $    $  ANS005.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  096.AEB未准备好激活的原因0~7_3             $    $            $    $  ANS006.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  097.AEB未准备好激活的原因8~15_3            $    $            $    $  ANS006.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  098.AEB未准备好激活的原因16~23_3           $    $            $    $  ANS006.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  099.AEB未准备好激活的原因24~31_3           $    $            $    $  ANS006.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  100.AEB未准备好激活的故障安全标志_3        $    $            $    $  ANS006.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  101.AEB未准备好激活的年份_3                $    $            $    $  ANS006.BYTE010  $  y=x+2000;
  $  102.AEB未准备好激活的月份_3                $    $            $    $  ANS006.BYTE011  $  y=x;
  $  103.AEB未准备好激活的日_3                  $    $            $    $  ANS006.BYTE012  $  y=x;
  $  104.AEB未准备好激活的时_3                  $    $            $    $  ANS006.BYTE013  $  y=x;
  $  105.AEB未准备好激活的分_3                  $    $            $    $  ANS006.BYTE014  $  y=x;
  $  106.AEB未准备好激活的秒_3                  $    $            $    $  ANS006.BYTE015  $  y=x;
  $  107.AEB未准备好激活的里程_3                $    $  km        $    $  ANS006.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  108.AEB未准备好激活的原因0~7_4             $    $            $    $  ANS007.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  109.AEB未准备好激活的原因8~15_4            $    $            $    $  ANS007.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  110.AEB未准备好激活的原因16~23_4           $    $            $    $  ANS007.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  111.AEB未准备好激活的原因24~31_4           $    $            $    $  ANS007.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  112.AEB未准备好激活的故障安全标志_4        $    $            $    $  ANS007.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  113.AEB未准备好激活的年份_4                $    $            $    $  ANS007.BYTE010  $  y=x+2000;
  $  114.AEB未准备好激活的月份_4                $    $            $    $  ANS007.BYTE011  $  y=x;
  $  115.AEB未准备好激活的日_4                  $    $            $    $  ANS007.BYTE012  $  y=x;
  $  116.AEB未准备好激活的时_4                  $    $            $    $  ANS007.BYTE013  $  y=x;
  $  117.AEB未准备好激活的分_4                  $    $            $    $  ANS007.BYTE014  $  y=x;
  $  118.AEB未准备好激活的秒_4                  $    $            $    $  ANS007.BYTE015  $  y=x;
  $  119.AEB未准备好激活的里程_4                $    $  km        $    $  ANS007.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  120.AEB未准备好激活的原因0~7               $    $            $    $  ANS008.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  121.AEB未准备好激活的原因8~15              $    $            $    $  ANS008.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  122.AEB未准备好激活的原因16~23             $    $            $    $  ANS008.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  123.AEB未准备好激活的原因24~31             $    $            $    $  ANS008.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  124.AEB退出激活状态的原因0~7(B092)         $    $            $    $  ANS009.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  125.AEB退出激活状态的原因8~15(B092)        $    $            $    $  ANS009.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  126.AEB退出激活状态的原因16~23(B092)       $    $            $    $  ANS009.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  127.AEB退出激活状态的原因24~31(B092)       $    $            $    $  ANS009.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  128.AEB退出激活状态的原因0~7_0             $    $            $    $  ANS010.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0db2;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  129.AEB退出激活状态的原因8~15_0            $    $            $    $  ANS010.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0e01;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0e03;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0db3;else y=@0035;
  $  130.AEB退出激活状态的原因16~23_0           $    $            $    $  ANS010.BYTE006  $  if(x==0x01) y=@0e04;else if(x==0x02) y=@0e05;else if(x==0x04) y=@0e06;else if(x==0x08) y=@0e07;else if(x==0x10) y=@0e08;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  131.AEB退出激活状态的原因24~31_0           $    $            $    $  ANS010.BYTE007  $  if(x==0x01) y=@0db6;else if(x==0x02) y=@0db7;else y=@0035;
  $  132.AEB退出激活状态的故障安全标志_0        $    $            $    $  ANS010.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  133.AEB退出事件年份_0                      $    $            $    $  ANS010.BYTE010  $  y=x+2000;
  $  134.AEB退出事件月份_0                      $    $            $    $  ANS010.BYTE011  $  y=x;
  $  135.AEB退出事件日_0                        $    $            $    $  ANS010.BYTE012  $  y=x;
  $  136.AEB退出事件时_0                        $    $            $    $  ANS010.BYTE013  $  y=x;
  $  137.AEB退出事件分_0                        $    $            $    $  ANS010.BYTE014  $  y=x;
  $  138.AEB退出事件秒_0                        $    $            $    $  ANS010.BYTE015  $  y=x;
  $  139.AEB退出事件里程_0                      $    $  km        $    $  ANS010.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  140.AEB退出激活状态的原因0~7_1             $    $            $    $  ANS011.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0db2;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  141.AEB退出激活状态的原因8~15_1            $    $            $    $  ANS011.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0e01;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0e03;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0db3;else y=@0035;
  $  142.AEB退出激活状态的原因16~23_1           $    $            $    $  ANS011.BYTE006  $  if(x==0x01) y=@0e04;else if(x==0x02) y=@0e05;else if(x==0x04) y=@0e06;else if(x==0x08) y=@0e07;else if(x==0x10) y=@0e08;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  143.AEB退出激活状态的原因24~31_1           $    $            $    $  ANS011.BYTE007  $  if(x==0x01) y=@0db6;else if(x==0x02) y=@0db7;else y=@0035;
  $  144.AEB退出激活状态的故障安全标志_1        $    $            $    $  ANS011.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  145.AEB退出事件年份_1                      $    $            $    $  ANS011.BYTE010  $  y=x+2000;
  $  146.AEB退出事件月份_1                      $    $            $    $  ANS011.BYTE011  $  y=x;
  $  147.AEB退出事件日_1                        $    $            $    $  ANS011.BYTE012  $  y=x;
  $  148.AEB退出事件时_1                        $    $            $    $  ANS011.BYTE013  $  y=x;
  $  149.AEB退出事件分_1                        $    $            $    $  ANS011.BYTE014  $  y=x;
  $  150.AEB退出事件秒_1                        $    $            $    $  ANS011.BYTE015  $  y=x;
  $  151.AEB退出事件里程_1                      $    $  km        $    $  ANS011.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  152.AEB退出激活状态的原因0~7_2             $    $            $    $  ANS012.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0db2;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  153.AEB退出激活状态的原因8~15_2            $    $            $    $  ANS012.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0e01;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0e03;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0db3;else y=@0035;
  $  154.AEB退出激活状态的原因16~23_2           $    $            $    $  ANS012.BYTE006  $  if(x==0x01) y=@0e04;else if(x==0x02) y=@0e05;else if(x==0x04) y=@0e06;else if(x==0x08) y=@0e07;else if(x==0x10) y=@0e08;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  155.AEB退出激活状态的原因24~31_2           $    $            $    $  ANS012.BYTE007  $  if(x==0x01) y=@0db6;else if(x==0x02) y=@0db7;else y=@0035;
  $  156.AEB退出激活状态的故障安全标志_2        $    $            $    $  ANS012.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  157.AEB退出事件年份_2                      $    $            $    $  ANS012.BYTE010  $  y=x+2000;
  $  158.AEB退出事件月份_2                      $    $            $    $  ANS012.BYTE011  $  y=x;
  $  159.AEB退出事件日_2                        $    $            $    $  ANS012.BYTE012  $  y=x;
  $  160.AEB退出事件时_2                        $    $            $    $  ANS012.BYTE013  $  y=x;
  $  161.AEB退出事件分_2                        $    $            $    $  ANS012.BYTE014  $  y=x;
  $  162.AEB退出事件秒_2                        $    $            $    $  ANS012.BYTE015  $  y=x;
  $  163.AEB退出事件里程_2                      $    $  km        $    $  ANS012.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  164.AEB退出激活状态的原因0~7_3             $    $            $    $  ANS013.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0db2;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  165.AEB退出激活状态的原因8~15_3            $    $            $    $  ANS013.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0e01;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0e03;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0db3;else y=@0035;
  $  166.AEB退出激活状态的原因16~23_3           $    $            $    $  ANS013.BYTE006  $  if(x==0x01) y=@0e04;else if(x==0x02) y=@0e05;else if(x==0x04) y=@0e06;else if(x==0x08) y=@0e07;else if(x==0x10) y=@0e08;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  167.AEB退出激活状态的原因24~31_3           $    $            $    $  ANS013.BYTE007  $  if(x==0x01) y=@0db6;else if(x==0x02) y=@0db7;else y=@0035;
  $  168.AEB退出激活状态的故障安全标志_3        $    $            $    $  ANS013.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  169.AEB退出事件年份_3                      $    $            $    $  ANS013.BYTE010  $  y=x+2000;
  $  170.AEB退出事件月份_3                      $    $            $    $  ANS013.BYTE011  $  y=x;
  $  171.AEB退出事件日_3                        $    $            $    $  ANS013.BYTE012  $  y=x;
  $  172.AEB退出事件时_3                        $    $            $    $  ANS013.BYTE013  $  y=x;
  $  173.AEB退出事件分_3                        $    $            $    $  ANS013.BYTE014  $  y=x;
  $  174.AEB退出事件秒_3                        $    $            $    $  ANS013.BYTE015  $  y=x;
  $  175.AEB退出事件里程_3                      $    $  km        $    $  ANS013.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  176.AEB退出激活状态的原因0~7_4             $    $            $    $  ANS014.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0db2;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  177.AEB退出激活状态的原因8~15_4            $    $            $    $  ANS014.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0e01;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0e03;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0db3;else y=@0035;
  $  178.AEB退出激活状态的原因16~23_4           $    $            $    $  ANS014.BYTE006  $  if(x==0x01) y=@0e04;else if(x==0x02) y=@0e05;else if(x==0x04) y=@0e06;else if(x==0x08) y=@0e07;else if(x==0x10) y=@0e08;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  179.AEB退出激活状态的原因24~31_4           $    $            $    $  ANS014.BYTE007  $  if(x==0x01) y=@0db6;else if(x==0x02) y=@0db7;else y=@0035;
  $  180.AEB退出激活状态的故障安全标志_4        $    $            $    $  ANS014.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  181.AEB退出事件年份_4                      $    $            $    $  ANS014.BYTE010  $  y=x+2000;
  $  182.AEB退出事件月份_4                      $    $            $    $  ANS014.BYTE011  $  y=x;
  $  183.AEB退出事件日_4                        $    $            $    $  ANS014.BYTE012  $  y=x;
  $  184.AEB退出事件时_4                        $    $            $    $  ANS014.BYTE013  $  y=x;
  $  185.AEB退出事件分_4                        $    $            $    $  ANS014.BYTE014  $  y=x;
  $  186.AEB退出事件秒_4                        $    $            $    $  ANS014.BYTE015  $  y=x;
  $  187.AEB退出事件里程_4                      $    $  km        $    $  ANS014.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  188.AEB退出激活状态的原因0~7               $    $            $    $  ANS015.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  189.AEB退出激活状态的原因8~15              $    $            $    $  ANS015.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  190.AEB退出激活状态的原因16~23             $    $            $    $  ANS015.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  191.AEB退出激活状态的原因24~31             $    $            $    $  ANS015.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;

  $)  02.数据流3
  $  02.数据流3
  $  REQ000:74A 03 22 01 12 00 00 00 00       $  ANS000:7CA 03 22 01 12 00 00 00 00
  $  REQ001:74A 03 22 B0 3D 00 00 00 00       $  ANS001:7CA 03 22 B0 3D 00 00 00 00
  $  REQ002:74A 03 22 B0 2E 00 00 00 00       $  ANS002:7CA 03 22 B0 2E 00 00 00 00
  $  REQ003:74A 03 22 B0 3B 00 00 00 00       $  ANS003:7CA 03 22 B0 3B 00 00 00 00
  $  REQ004:74A 03 22 C0 01 00 00 00 00       $  ANS004:7CA 03 22 C0 01 00 00 00 00
  $  REQ005:74A 03 22 B0 3E 00 00 00 00       $  ANS005:7CA 03 22 B0 3E 00 00 00 00
  $  REQ006:74A 03 22 B0 4B 00 00 00 00       $  ANS006:7CA 03 22 B0 4B 00 00 00 00
  $  REQ007:74A 03 22 C0 02 00 00 00 00       $  ANS007:7CA 03 22 C0 02 00 00 00 00
  $  REQ008:74A 03 22 B0 27 00 00 00 00       $  ANS008:7CA 03 22 B0 27 00 00 00 00
  $  REQ009:74A 03 22 B0 28 00 00 00 00       $  ANS009:7CA 03 22 B0 28 00 00 00 00
  $  REQ010:74A 03 22 B0 26 00 00 00 00       $  ANS010:7CA 03 22 B0 26 00 00 00 00
  $  REQ011:74A 03 22 B0 29 00 00 00 00       $  ANS011:7CA 03 22 B0 29 00 00 00 00
  $  REQ012:74A 03 22 B0 2F 00 00 00 00       $  ANS012:7CA 03 22 B0 2F 00 00 00 00
  $  REQ013:74A 03 22 B0 75 00 00 00 00       $  ANS013:7CA 03 22 B0 75 00 00 00 00
  $  REQ014:74A 03 22 B0 77 00 00 00 00       $  ANS014:7CA 03 22 B0 77 00 00 00 00
  $  REQ015:74A 03 22 B0 94 00 00 00 00       $  ANS015:7CA 03 22 B0 94 00 00 00 00
  $  REQ016:74A 03 22 B0 74 00 00 00 00       $  ANS016:7CA 03 22 B0 74 00 00 00 00
  $  REQ017:74A 03 22 B0 76 00 00 00 00       $  ANS017:7CA 03 22 B0 76 00 00 00 00
  $  REQ018:74A 03 22 C0 04 00 00 00 00       $  ANS018:7CA 03 22 C0 04 00 00 00 00
  $  REQ019:74A 03 22 B0 7D 00 00 00 00       $  ANS019:7CA 03 22 B0 7D 00 00 00 00
  $  REQ020:74A 03 22 B0 7F 00 00 00 00       $  ANS020:7CA 03 22 B0 7F 00 00 00 00
  $  REQ021:74A 03 22 B0 96 00 00 00 00       $  ANS021:7CA 03 22 B0 96 00 00 00 00
  $  REQ022:74A 03 22 B0 7C 00 00 00 00       $  ANS022:7CA 03 22 B0 7C 00 00 00 00
  $  REQ023:74A 03 22 B0 7E 00 00 00 00       $  ANS023:7CA 03 22 B0 7E 00 00 00 00
  $  REQ024:74A 03 22 D0 01 00 00 00 00       $  ANS024:7CA 03 22 D0 01 00 00 00 00
  $  REQ025:74A 03 22 B0 31 00 00 00 00       $  ANS025:7CA 03 22 B0 31 00 00 00 00
  $  REQ026:74A 03 22 B0 02 00 00 00 00       $  ANS026:7CA 03 22 B0 02 00 00 00 00
  $  REQ027:74A 03 22 B0 01 00 00 00 00       $  ANS027:7CA 03 22 B0 01 00 00 00 00
  $  REQ028:74A 03 22 B0 71 00 00 00 00       $  ANS028:7CA 03 22 B0 71 00 00 00 00
  $  REQ029:74A 03 22 B0 73 00 00 00 00       $  ANS029:7CA 03 22 B0 73 00 00 00 00
  $  REQ030:74A 03 22 B0 93 00 00 00 00       $  ANS030:7CA 03 22 B0 93 00 00 00 00
  $  REQ031:74A 03 22 B0 70 00 00 00 00       $  ANS031:7CA 03 22 B0 70 00 00 00 00
  $  REQ032:74A 03 22 B0 72 00 00 00 00       $  ANS032:7CA 03 22 B0 72 00 00 00 00
  $  REQ033:74A 03 22 D0 03 00 00 00 00       $  ANS033:7CA 03 22 D0 03 00 00 00 00
  $  REQ034:74A 03 22 D0 02 00 00 00 00       $  ANS034:7CA 03 22 D0 02 00 00 00 00

  $  000.电池电压                                                 $    $  V       $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.自动修复超出范围                                         $    $          $    $  ANS001.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  002.应用程序致命错误-超出标定                                $    $          $    $  ANS001.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  003.未标定                                                   $    $          $    $  ANS001.BYTE004  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  004.EOL校准状态                                              $    $          $    $  ANS002.BYTE004  $  if(x==0x00) y=@0def;else if(x==0x01) y=@0b2a;else if(x==0x02) y=@0b2b;else if(x==0x03) y=@0b2c;else y=@0035;
  $  005.EOL校准错误原因                                          $    $          $    $  ANS002.BYTE005  $  if(x==0x00) y=@0df0;else if(x==0x01) y=@0096;else if(x==0x02) y=@0910;else if(x==0x03) y=@0ddd;else if(x==0x04) y=@0912;else if(x==0x05) y=@0913;else if(x==0x06) y=@0914;else if(x==0x07) y=@0915;else if(x==0x08) y=@0916;else if(x==0x09) y=@0917;else if(x==0x0A) y=@0918;else if(x==0x0B) y=@0919;else if(x==0x0C) y=@091a;else if(x==0x0D) y=@0df1;else if(x==0x0E) y=@091c;else if(x==0x0F) y=@0df2;else if(x==0x10) y=@091e;else if(x==0x11) y=@091f;else if(x==0x12) y=@0920;else if(x==0x13) y=@0df3;else if(x==0x14) y=@0922;else if(x==0x15) y=@0923;else y=@0035;
  $  006.摄像头校准偏航值                                         $    $          $    $  ANS002.BYTE006  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-188;
  $  007.摄像头校准水平值                                         $    $          $    $  ANS002.BYTE008  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-160;
  $  008.摄像头校准滚动值                                         $    $  rad     $    $  ANS002.BYTE010  $  y=(x1*256+x2)*0.001-0.055;
  $  009.摄像头自动修正偏航值                                     $    $          $    $  ANS002.BYTE012  $  y=((x&0x7F)-(x&0x80))-40;
  $  010.摄像头自动修正水平值                                     $    $          $    $  ANS002.BYTE013  $  y=((x&0x7F)-(x&0x80))-40;
  $  011.自眩光                                                   $    $          $    $  ANS003.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  012.太阳光线                                                 $    $          $    $  ANS003.BYTE004  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  013.道路溅水                                                 $    $          $    $  ANS003.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@00ca;else y=@0035;
  $  014.模糊图像                                                 $    $          $    $  ANS003.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@00ca;else y=@0035;
  $  015.夕阳直射                                                 $    $          $    $  ANS003.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  016.沾污点                                                   $    $          $    $  ANS003.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  017.部分遮挡                                                 $    $          $    $  ANS003.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@00ca;else y=@0035;
  $  018.完全遮挡                                                 $    $          $    $  ANS003.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  019.挡风玻璃冰冻                                             $    $          $    $  ANS003.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  020.雾斑                                                     $    $          $    $  ANS003.BYTE005  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  021.AHB(自动远光灯)启用                                      $    $          $    $  ANS004.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00f0;else y=@0035;
  $  022.TSR(交通标志识别)启用                                    $    $          $    $  ANS004.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00f0;else y=@0035;
  $  023.ACC(自适应巡航控制)启用                                  $    $          $    $  ANS004.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00f0;else y=@0035;
  $  024.AEBP(行人自动紧急制动)启用                               $    $          $    $  ANS004.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00f0;else y=@0035;
  $  025.AEB(自动制动系统)启用                                    $    $          $    $  ANS004.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00f0;else y=@0035;
  $  026.PCW(行人碰撞警告)启用                                    $    $          $    $  ANS004.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00f0;else y=@0035;
  $  027.FCW(正面碰撞警告)启用                                    $    $          $    $  ANS004.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00f0;else y=@0035;
  $  028.LDW(车道偏离预警系统)启用                                $    $          $    $  ANS004.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00f0;else y=@0035;
  $  029.LKA(车道保持辅助)启用                                    $    $          $    $  ANS004.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00f0;else y=@0035;
  $  030.SDM25-碰撞重叠                                           $    $          $    $  ANS005.BYTE007  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@00ca;else y=@0035;
  $  031.SDM9-关键区域与前方指挥车辆重叠的显著差异                $    $          $    $  ANS005.BYTE007  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@00ca;else y=@0035;
  $  032.SDM8-关键区域与三角采样测量之间的位置差异                $    $          $    $  ANS005.BYTE007  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  033.SDM7-目标位置有显著差异                                  $    $          $    $  ANS005.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  034.SDM6-TTC的显著差异                                       $    $          $    $  ANS005.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@00ca;else y=@0035;
  $  035.EYEQ_RFC-车辆信号消息的滚动帧计数器(RFC)错误             $    $          $    $  ANS005.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  036.EYEQ_CRC-CRC校验与安全输入信号不符                       $    $          $    $  ANS005.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  037.EYEQ_CR_REPEAT-挑战与响应重复错误                        $    $          $    $  ANS005.BYTE007  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  038.SDM11-MCU校验错误                                        $    $          $    $  ANS005.BYTE008  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@00ca;else y=@0035;
  $  039.SDM29-MCU RFC错误                                        $    $          $    $  ANS005.BYTE008  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@00ca;else y=@0035;
  $  040.SDM30-图像索引无效                                       $    $          $    $  ANS005.BYTE008  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  041.SDM4-校准不好                                            $    $          $    $  ANS005.BYTE008  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  042.SDM18-内部图像保护失败                                   $    $          $    $  ANS005.BYTE008  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@00ca;else y=@0035;
  $  043.SDM13-旧的自身数据                                       $    $          $    $  ANS005.BYTE008  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  044.SDMY-C-R挑战响应错误                                     $    $          $    $  ANS005.BYTE008  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  045.SDM32-内部信号损坏                                       $    $          $    $  ANS005.BYTE008  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  046.SDM31-内部校验错误                                       $    $          $    $  ANS005.BYTE009  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@00ca;else y=@0035;
  $  047.SDM27-AEB双重检查错误                                    $    $          $    $  ANS005.BYTE009  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@00ca;else y=@0035;
  $  048.SDM26-DDR校验出错                                        $    $          $    $  ANS005.BYTE009  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  049.SDM19图像丢失                                            $    $          $    $  ANS005.BYTE009  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  050.EyeQ 应用程序诊断失效                                    $    $          $    $  ANS005.BYTE009  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@00ca;else y=@0035;
  $  051.EyeQ 应用程序失效                                        $    $          $    $  ANS005.BYTE009  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  052.EyeQ引导失败                                             $    $          $    $  ANS005.BYTE009  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  053.GPIO10                                                   $    $          $    $  ANS005.BYTE009  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  054.EyeQ SPI丢失                                             $    $          $    $  ANS005.BYTE010  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@00ca;else y=@0035;
  $  055.MCU EEPROM测试失败                                       $    $          $    $  ANS005.BYTE010  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@00ca;else y=@0035;
  $  056.MCU RAM测试失败                                          $    $          $    $  ANS005.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  057.MCU闪存校验和错误                                        $    $          $    $  ANS005.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  058.MCU异常复位                                              $    $          $    $  ANS005.BYTE010  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@00ca;else y=@0035;
  $  059.MCU PLL失败                                              $    $          $    $  ANS005.BYTE010  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  060.DAS电源2.8V欠压                                          $    $          $    $  ANS005.BYTE010  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  061.DAS电源2.8V过压                                          $    $          $    $  ANS005.BYTE010  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  062.DAS电源1.2V欠压                                          $    $          $    $  ANS005.BYTE011  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@00ca;else y=@0035;
  $  063.DAS电源1.2V过压                                          $    $          $    $  ANS005.BYTE011  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@00ca;else y=@0035;
  $  064.DAS电源1.8V欠压                                          $    $          $    $  ANS005.BYTE011  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  065.DAS电源1.8V过压                                          $    $          $    $  ANS005.BYTE011  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  066.DAS电源3.3V欠压                                          $    $          $    $  ANS005.BYTE011  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@00ca;else y=@0035;
  $  067.DAS电源3.3V过压                                          $    $          $    $  ANS005.BYTE011  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  068.DAS电源5V欠压                                            $    $          $    $  ANS005.BYTE011  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  069.DAS电源5V过压                                            $    $          $    $  ANS005.BYTE011  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  070.MCU应用程序版本与MCU标定文件不兼容                       $    $          $    $  ANS006.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  071.图像处理单元等文件与MCU标定文件不兼容                    $    $          $    $  ANS006.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  072.MCU应用程序版本与图像处理单元不兼容                      $    $          $    $  ANS006.BYTE004  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  073.与EPB(电子手刹)失去通信                                  $    $          $    $  ANS007.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  074.与BCM(车身控制管理系统)失去通信                          $    $          $    $  ANS007.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  075.与IPK(仪表)模块失去通讯                                  $    $          $    $  ANS007.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  076.与ABS/ESP(防抱死制动系统/电子稳定系统)模块失去通讯       $    $          $    $  ANS007.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  077.与SAS(方向盘转向角传感器)模块失去通讯                    $    $          $    $  ANS007.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  078.控制器通讯总线关闭                                       $    $          $    $  ANS007.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  079.蓄电池电压低                                             $    $          $    $  ANS007.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  080.蓄电池电压高                                             $    $          $    $  ANS007.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  081.收到无效数据导致AEB被禁用                                $    $          $    $  ANS007.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  082.收到无效数据导致FCW被禁用                                $    $          $    $  ANS007.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  083.收到无效数据导致LDW被禁用                                $    $          $    $  ANS007.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  084.ECU与SRS模块通讯丢失                                     $    $          $    $  ANS007.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  085.与VCU失去通信                                            $    $          $    $  ANS007.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  086.与FICM失去通信                                           $    $          $    $  ANS007.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  087.与ATC失去通信                                            $    $          $    $  ANS007.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  088.与EPS失去通信                                            $    $          $    $  ANS007.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  089.图像处理单元温度过高                                     $    $          $    $  ANS007.BYTE006  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  090.DAS内部故障                                              $    $          $    $  ANS007.BYTE006  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  091.收到无效数据导致LKA被禁用                                $    $          $    $  ANS007.BYTE006  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  092.收到无效数据导致IHC被禁用                                $    $          $    $  ANS007.BYTE006  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  093.收到无效数据导致PCW被禁用                                $    $          $    $  ANS007.BYTE006  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  094.收到无效数据导致AEBP被禁用                               $    $          $    $  ANS007.BYTE006  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  095.收到无效数据导致TSR被禁用                                $    $          $    $  ANS007.BYTE006  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  096.收到无效数据导致FSRA被禁用                               $    $          $    $  ANS007.BYTE006  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  097.LDW开关指示灯短路至地                                    $    $          $    $  ANS007.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  098.LDW开关按键卡住                                          $    $          $    $  ANS007.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  099.DAS软件不匹配                                            $    $          $    $  ANS007.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  100.DAS标定失败                                              $    $          $    $  ANS007.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  101.DAS摄像头视图被阻止                                      $    $          $    $  ANS007.BYTE007  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  102.AHB(自动远光灯)功能开关                                  $    $          $    $  ANS008.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  103.TSR(交通标志识别)功能开关                                $    $          $    $  ANS008.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  104.ACC(自适应巡航控制)功能开关                              $    $          $    $  ANS008.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  105.AEBP(行人自动紧急制动)功能开关                           $    $          $    $  ANS008.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  106.AEB(自动制动系统)功能开关                                $    $          $    $  ANS008.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  107.PCW(行人碰撞警告)功能开关                                $    $          $    $  ANS008.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  108.FCW(正面碰撞警告)功能开关                                $    $          $    $  ANS008.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  109.LDW(车道偏离预警系统)功能开关                            $    $          $    $  ANS008.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  110.LKA(车道保持辅助)功能开关                                $    $          $    $  ANS008.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  111.车辆的地区代码                                           $    $          $    $  ANS009.BYTE004  $  if(x==0x00) y=@0136;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0da8;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0035;
  $  112.FCW(正面碰撞警告)驾驶员选定的灵敏度等级                  $    $          $    $  ANS010.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  113.LDW(车道偏离预警系统)驾驶员选定的灵敏度等级              $    $          $    $  ANS010.BYTE004  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  114.AEB(自动制动系统)驾驶员选择的灵敏度等级                  $    $          $    $  ANS010.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  115.ACC(自适应巡航控制)驾驶员选定的目标距离等级              $    $          $    $  ANS010.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0035;
  $  116.PCW(行人碰撞警告)驾驶员选定的灵敏度等级                  $    $          $    $  ANS010.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  117.AEBP(行人自动紧急制动)驾驶员选择的灵敏度等级             $    $          $    $  ANS010.BYTE006  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  118.摄像头的目标速度要求                                     $    $          $    $  ANS011.BYTE004  $  y=(x1*256+x2);
  $  119.ACC驾驶员选定的目标速度                                  $    $          $    $  ANS011.BYTE006  $  y=(x1*256+x2);
  $  120.摄像头到车轮外缘左侧的距离                               $    $  m       $    $  ANS012.BYTE004  $  y=(x1*256+x2)*0.01;
  $  121.摄像头到车轮外缘右侧的距离                               $    $  m       $    $  ANS012.BYTE006  $  y=(x1*256+x2)*0.01;
  $  122.从摄像头到目标的距离                                     $    $  m       $    $  ANS012.BYTE008  $  y=(x1*256+x2)*0.001;
  $  123.摄像头高度                                               $    $  m       $    $  ANS012.BYTE010  $  y=(x1*256+x2)*0.01;
  $  124.目标中心距地面左侧高度                                   $    $  m       $    $  ANS012.BYTE012  $  y=(x1*256+x2)*0.01;
  $  125.目标中心距地面右侧高度                                   $    $  m       $    $  ANS012.BYTE014  $  y=(x1*256+x2)*0.01;
  $  126.目标中心距汽车中心左侧的距离                             $    $  m       $    $  ANS012.BYTE016  $  y=(x1*256+x2)*0.01;
  $  127.目标中心距汽车中心右侧的距离                             $    $  m       $    $  ANS012.BYTE018  $  y=(x1*256+x2)*0.01;
  $  128.单个矩形尺寸，而非整个目标                               $    $  rad     $    $  ANS012.BYTE020  $  y=(x1*256+x2)*0.001;
  $  129.FCW未准备好激活的原因0~7                                 $    $          $    $  ANS013.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  130.FCW未准备好激活的原因8~15                                $    $          $    $  ANS013.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  131.FCW未准备好激活的年份                                    $    $          $    $  ANS013.BYTE006  $  y=x+2000;
  $  132.FCW未准备好激活的月份                                    $    $          $    $  ANS013.BYTE007  $  y=x;
  $  133.FCW未准备好激活的日                                      $    $          $    $  ANS013.BYTE008  $  y=x;
  $  134.FCW未准备好激活的时                                      $    $          $    $  ANS013.BYTE009  $  y=x;
  $  135.FCW未准备好激活的分                                      $    $          $    $  ANS013.BYTE010  $  y=x;
  $  136.FCW未准备好激活的秒                                      $    $          $    $  ANS013.BYTE011  $  y=x;
  $  137.FCW未准备好激活的里程                                    $    $  km      $    $  ANS013.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  138.FCW未准备好激活的原因0~7                                 $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  139.FCW未准备好激活的原因8~15                                $    $          $    $  ANS014.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  140.FCW退出激活状态的原因0~7(B094)                           $    $          $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  141.FCW退出激活状态的原因8~15(B094)                          $    $          $    $  ANS015.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  142.FCW退出激活状态的原因0~7                                 $    $          $    $  ANS016.BYTE004  $  if(x==0x01) y=@0dc2;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  143.FCW退出激活状态的原因8~15                                $    $          $    $  ANS016.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  144.FCW退出事件年份                                          $    $          $    $  ANS016.BYTE006  $  y=x+2000;
  $  145.FCW退出事件月份                                          $    $          $    $  ANS016.BYTE007  $  y=x;
  $  146.FCW退出活动日                                            $    $          $    $  ANS016.BYTE008  $  y=x;
  $  147.FCW退出活动时                                            $    $          $    $  ANS016.BYTE009  $  y=x;
  $  148.FCW退出事件分                                            $    $          $    $  ANS016.BYTE010  $  y=x;
  $  149.FCW退出事件秒                                            $    $          $    $  ANS016.BYTE011  $  y=x;
  $  150.FCW退出事件里程                                          $    $  km      $    $  ANS016.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  151.FCW退出激活状态的原因0~7                                 $    $          $    $  ANS017.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  152.FCW退出激活状态的原因8~15                                $    $          $    $  ANS017.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  153.AHB(自动远光灯)功能开关                                  $    $          $    $  ANS018.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  154.TSR(交通标志识别)功能开关                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  155.ACC(自适应巡航控制)功能开关                              $    $          $    $  ANS018.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  156.AEBP(行人自动紧急制动)功能开关                           $    $          $    $  ANS018.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  157.AEB(自动制动系统)功能开关                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  158.PCW(行人碰撞警告)功能开关                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  159.FCW(正面碰撞警告)功能开关                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  160.LDW(车道偏离预警系统)功能开关                            $    $          $    $  ANS018.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  161.LKA(车道保持辅助)功能开关                                $    $          $    $  ANS018.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  162.IHC未准备好激活的原因0~7                                 $    $          $    $  ANS019.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  163.IHC未准备好激活的年份                                    $    $          $    $  ANS019.BYTE006  $  y=x+2000;
  $  164.IHC未准备好激活的月份                                    $    $          $    $  ANS019.BYTE007  $  y=x;
  $  165.IHC未准备好激活的日                                      $    $          $    $  ANS019.BYTE008  $  y=x;
  $  166.IHC未准备好激活的时                                      $    $          $    $  ANS019.BYTE009  $  y=x;
  $  167.IHC未准备好激活的分                                      $    $          $    $  ANS019.BYTE010  $  y=x;
  $  168.IHC未准备好激活的秒                                      $    $          $    $  ANS019.BYTE011  $  y=x;
  $  169.IHC未准备好激活的里程                                    $    $  km      $    $  ANS019.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  170.IHC未准备好激活的原因0~7                                 $    $          $    $  ANS020.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  171.IHC退出激活状态的原因0~7(B096)                           $    $          $    $  ANS021.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  172.IHC退出激活状态的原因0~7                                 $    $          $    $  ANS022.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  173.IHC退出事件年                                            $    $          $    $  ANS022.BYTE006  $  y=x+2000;
  $  174.IHC退出事件月份                                          $    $          $    $  ANS022.BYTE007  $  y=x;
  $  175.IHC退出事件日                                            $    $          $    $  ANS022.BYTE008  $  y=x;
  $  176.IHC退出事件时                                            $    $          $    $  ANS022.BYTE009  $  y=x;
  $  177.IHC退出事件分                                            $    $          $    $  ANS022.BYTE010  $  y=x;
  $  178.IHC退出事件秒                                            $    $          $    $  ANS022.BYTE011  $  y=x;
  $  179.IHC退出事件里程                                          $    $  km      $    $  ANS022.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  180.IHC退出激活状态的原因0~7                                 $    $          $    $  ANS023.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  181.全局KL.50状态                                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  182.全局发动机运行状态                                       $    $          $    $  ANS024.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  183.全局KL15状态                                             $    $          $    $  ANS024.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  184.全局KL.R状态                                             $    $          $    $  ANS024.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  185.系统KL.50状态                                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  186.系统发动机运行状态                                       $    $          $    $  ANS024.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  187.系统KL.15状态                                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  188.系统KL.R状态                                             $    $          $    $  ANS024.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  189.图像处理器当前温度                                       $    $          $    $  ANS025.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-40;
  $  190.图像处理单元供电模式                                     $    $          $    $  ANS026.BYTE004  $  if(x==0x00) y=@0908;else if(x==0x01) y=@0dc3;else if(x==0x02) y=@0e2c;else if(x==0x03) y=@090b;else if(x==0x04) y=@0e2d;else if(x==0x05) y=@090d;else y=@0035;
  $  191.图像处理单元运行状态                                     $    $          $    $  ANS027.BYTE004  $  if(x==0x00) y=@000f;else if(x==0x02) y=@0dc4;else if(x==0x03) y=@009e;else if(x==0x22) y=@0dc5;else if(x==0x82) y=@0dc6;else if(x==0x85) y=@0dc7;else if(x==0x92) y=@0e37;else if(x==0xAA) y=@0dc9;else if(x==0xAC) y=@0dca;else y=@0035;
  $  192.LDW未准备好激活的原因0~7                                 $    $          $    $  ANS028.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  193.LDW未准备好激活的原因8~15                                $    $          $    $  ANS028.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  194.LDW未准备好激活的年份                                    $    $          $    $  ANS028.BYTE006  $  y=x+2000;
  $  195.LDW未准备好激活的月份                                    $    $          $    $  ANS028.BYTE007  $  y=x;
  $  196.LDW未准备好激活的日                                      $    $          $    $  ANS028.BYTE008  $  y=x;
  $  197.LDW未准备好激活的时                                      $    $          $    $  ANS028.BYTE009  $  y=x;
  $  198.LDW未准备好激活的分                                      $    $          $    $  ANS028.BYTE010  $  y=x;
  $  199.LDW未准备好激活的秒                                      $    $          $    $  ANS028.BYTE011  $  y=x;
  $  200.LDW未准备好激活的里程                                    $    $  km      $    $  ANS028.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  201.LDW未准备好激活的原因0~7                                 $    $          $    $  ANS029.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  202.LDW未准备好激活的原因8~15                                $    $          $    $  ANS029.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  203.LDW未准备好激活的原因0~7(B093)                           $    $          $    $  ANS030.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  204.LDW未准备好激活的原因0~78~15(B093)                       $    $          $    $  ANS030.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  205.LDW退出激活状态的原因0~7                                 $    $          $    $  ANS031.BYTE004  $  if(x==0x01) y=@0e39;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0db1;else if(x==0x10) y=@0db2;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0db3;else if(x==0x80) y=@0e03;else y=@0035;
  $  206.LDW退出激活状态的原因8~15                                $    $          $    $  ANS031.BYTE005  $  if(x==0x01) y=@0db5;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0db6;else if(x==0x10) y=@0db7;else y=@0035;
  $  207.LDW退出事件年份                                          $    $          $    $  ANS031.BYTE006  $  y=x+2000;
  $  208.LDW退出事件月份                                          $    $          $    $  ANS031.BYTE007  $  y=x;
  $  209.LDW退出事件日                                            $    $          $    $  ANS031.BYTE008  $  y=x;
  $  210.LDW退出事件时                                            $    $          $    $  ANS031.BYTE009  $  y=x;
  $  211.LDW退出事件分                                            $    $          $    $  ANS031.BYTE010  $  y=x;
  $  212.LDW退出事件秒                                            $    $          $    $  ANS031.BYTE011  $  y=x;
  $  213.LDW退出事件里程                                          $    $  km      $    $  ANS031.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  214.LDW退出激活状态的原因0~7                                 $    $          $    $  ANS032.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  215.LDW退出激活状态的原因8~15                                $    $          $    $  ANS032.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  216.LDW(车道偏离预警系统)开关                                $    $          $    $  ANS033.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  217.LDW(车道偏离预警系统)指示灯                              $    $          $    $  ANS034.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;

  $)  03.数据流4
  $  03.数据流4
  $  REQ000:74A 03 22 B0 A5 00 00 00 00       $  ANS000:7CA 03 22 B0 A5 00 00 00 00
  $  REQ001:74A 03 22 B0 A6 00 00 00 00       $  ANS001:7CA 03 22 B0 A6 00 00 00 00
  $  REQ002:74A 03 22 B0 A7 00 00 00 00       $  ANS002:7CA 03 22 B0 A7 00 00 00 00
  $  REQ003:74A 03 22 B0 A8 00 00 00 00       $  ANS003:7CA 03 22 B0 A8 00 00 00 00
  $  REQ004:74A 03 22 B0 A9 00 00 00 00       $  ANS004:7CA 03 22 B0 A9 00 00 00 00
  $  REQ005:74A 03 22 B0 AB 00 00 00 00       $  ANS005:7CA 03 22 B0 AB 00 00 00 00
  $  REQ006:74A 03 22 B0 97 00 00 00 00       $  ANS006:7CA 03 22 B0 97 00 00 00 00
  $  REQ007:74A 03 22 B0 A0 00 00 00 00       $  ANS007:7CA 03 22 B0 A0 00 00 00 00
  $  REQ008:74A 03 22 B0 A1 00 00 00 00       $  ANS008:7CA 03 22 B0 A1 00 00 00 00
  $  REQ009:74A 03 22 B0 A2 00 00 00 00       $  ANS009:7CA 03 22 B0 A2 00 00 00 00
  $  REQ010:74A 03 22 B0 A3 00 00 00 00       $  ANS010:7CA 03 22 B0 A3 00 00 00 00
  $  REQ011:74A 03 22 B0 A4 00 00 00 00       $  ANS011:7CA 03 22 B0 A4 00 00 00 00
  $  REQ012:74A 03 22 B0 AA 00 00 00 00       $  ANS012:7CA 03 22 B0 AA 00 00 00 00
  $  REQ013:74A 03 22 B0 30 00 00 00 00       $  ANS013:7CA 03 22 B0 30 00 00 00 00
  $  REQ014:74A 03 22 E1 01 00 00 00 00       $  ANS014:7CA 03 22 E1 01 00 00 00 00
  $  REQ015:74A 03 22 C0 05 00 00 00 00       $  ANS015:7CA 03 22 C0 05 00 00 00 00

  $  000.LKA未准备好激活的原因0~7_0            $    $         $    $  ANS000.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0e30;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0e3a;else y=@0035;
  $  001.LKA未准备好激活的原因8~15_0           $    $         $    $  ANS000.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0035;
  $  002.LKA未准备好激活的原因16~23_0          $    $         $    $  ANS000.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0e3b;else if(x==0x10) y=@0e3c;else if(x==0x20) y=@0e3d;else if(x==0x40) y=@0e3e;else if(x==0x80) y=@0e3f;else y=@0035;
  $  003.LKA未准备好激活的原因24~31_0          $    $         $    $  ANS000.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0e41;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  004.LKA未准备好激活的原因32~39_0          $    $         $    $  ANS000.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  005.LKA未准备好激活的原因40~47_0          $    $         $    $  ANS000.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  006.LKA未准备好激活的原因48_55_0          $    $         $    $  ANS000.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  007.LKA未准备好激活的原因56_63_0          $    $         $    $  ANS000.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  008.LKA未准备好激活的故障安全标志_0       $    $         $    $  ANS000.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  009.LKA未准备好激活的年份_0               $    $         $    $  ANS000.BYTE014  $  y=x+2000;
  $  010.LKA未准备好激活的月份_0               $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.LKA未准备好激活的日_0                 $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.LKA未准备好激活的时_0                 $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.LKA未准备好激活的分_0                 $    $         $    $  ANS000.BYTE018  $  y=x;
  $  014.LKA未准备好激活的秒_0                 $    $         $    $  ANS000.BYTE019  $  y=x;
  $  015.LKA未准备好激活的里程_0               $    $  km     $    $  ANS000.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  016.LKA未准备好激活的原因0~7_1            $    $         $    $  ANS001.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0e30;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0e3a;else y=@0035;
  $  017.LKA未准备好激活的原因8~15_1           $    $         $    $  ANS001.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0035;
  $  018.LKA未准备好激活的原因16~23_1          $    $         $    $  ANS001.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0e3b;else if(x==0x10) y=@0e3c;else if(x==0x20) y=@0e3d;else if(x==0x40) y=@0e3e;else if(x==0x80) y=@0e3f;else y=@0035;
  $  019.LKA未准备好激活的原因24~31_1          $    $         $    $  ANS001.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0e41;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  020.LKA未准备好激活的原因32~39_1          $    $         $    $  ANS001.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  021.LKA未准备好激活的原因40~47_1          $    $         $    $  ANS001.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  022.LKA未准备好激活的原因48_55_1          $    $         $    $  ANS001.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  023.LKA未准备好激活的原因56_63_1          $    $         $    $  ANS001.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  024.LKA未准备好激活的故障安全标志_1       $    $         $    $  ANS001.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  025.LKA未准备好激活的年份_1               $    $         $    $  ANS001.BYTE014  $  y=x+2000;
  $  026.LKA未准备好激活的月份_1               $    $         $    $  ANS001.BYTE015  $  y=x;
  $  027.LKA未准备好激活的日_1                 $    $         $    $  ANS001.BYTE016  $  y=x;
  $  028.LKA未准备好激活的时_1                 $    $         $    $  ANS001.BYTE017  $  y=x;
  $  029.LKA未准备好激活的分_1                 $    $         $    $  ANS001.BYTE018  $  y=x;
  $  030.LKA未准备好激活的秒_1                 $    $         $    $  ANS001.BYTE019  $  y=x;
  $  031.LKA未准备好激活的里程_1               $    $  km     $    $  ANS001.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  032.LKA未准备好激活的原因0~7_2            $    $         $    $  ANS002.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0e30;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0e3a;else y=@0035;
  $  033.LKA未准备好激活的原因8~15_2           $    $         $    $  ANS002.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0035;
  $  034.LKA未准备好激活的原因16~23_2          $    $         $    $  ANS002.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0e3b;else if(x==0x10) y=@0e3c;else if(x==0x20) y=@0e3d;else if(x==0x40) y=@0e3e;else if(x==0x80) y=@0e3f;else y=@0035;
  $  035.LKA未准备好激活的原因24~31_2          $    $         $    $  ANS002.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0e41;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  036.LKA未准备好激活的原因32~39_2          $    $         $    $  ANS002.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  037.LKA未准备好激活的原因40~47_2          $    $         $    $  ANS002.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  038.LKA未准备好激活的原因48_55_2          $    $         $    $  ANS002.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  039.LKA未准备好激活的原因56_63_2          $    $         $    $  ANS002.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  040.LKA未准备好激活的故障安全标志_2       $    $         $    $  ANS002.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  041.LKA未准备好激活的年份_2               $    $         $    $  ANS002.BYTE014  $  y=x+2000;
  $  042.LKA未准备好激活的月份_2               $    $         $    $  ANS002.BYTE015  $  y=x;
  $  043.LKA未准备好激活的日_2                 $    $         $    $  ANS002.BYTE016  $  y=x;
  $  044.LKA未准备好激活的时_2                 $    $         $    $  ANS002.BYTE017  $  y=x;
  $  045.LKA未准备好激活的分_2                 $    $         $    $  ANS002.BYTE018  $  y=x;
  $  046.LKA未准备好激活的秒_2                 $    $         $    $  ANS002.BYTE019  $  y=x;
  $  047.LKA未准备好激活的里程_2               $    $  km     $    $  ANS002.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  048.LKA未准备好激活的原因0~7_3            $    $         $    $  ANS003.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0e30;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0e3a;else y=@0035;
  $  049.LKA未准备好激活的原因8~15_3           $    $         $    $  ANS003.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0035;
  $  050.LKA未准备好激活的原因16~23_3          $    $         $    $  ANS003.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0e3b;else if(x==0x10) y=@0e3c;else if(x==0x20) y=@0e3d;else if(x==0x40) y=@0e3e;else if(x==0x80) y=@0e3f;else y=@0035;
  $  051.LKA未准备好激活的原因24~31_3          $    $         $    $  ANS003.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0e41;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  052.LKA未准备好激活的原因32~39_3          $    $         $    $  ANS003.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  053.LKA未准备好激活的原因40~47_3          $    $         $    $  ANS003.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  054.LKA未准备好激活的原因48_55_3          $    $         $    $  ANS003.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  055.LKA未准备好激活的原因56_63_3          $    $         $    $  ANS003.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  056.LKA未准备好激活的故障安全标志_3       $    $         $    $  ANS003.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  057.LKA未准备好激活的年份_3               $    $         $    $  ANS003.BYTE014  $  y=x+2000;
  $  058.LKA未准备好激活的月份_3               $    $         $    $  ANS003.BYTE015  $  y=x;
  $  059.LKA未准备好激活的日_3                 $    $         $    $  ANS003.BYTE016  $  y=x;
  $  060.LKA未准备好激活的时_3                 $    $         $    $  ANS003.BYTE017  $  y=x;
  $  061.LKA未准备好激活的分_3                 $    $         $    $  ANS003.BYTE018  $  y=x;
  $  062.LKA未准备好激活的秒_3                 $    $         $    $  ANS003.BYTE019  $  y=x;
  $  063.LKA未准备好激活的里程_3               $    $  km     $    $  ANS003.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  064.LKA未准备好激活的原因0~7_4            $    $         $    $  ANS004.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0e30;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0e3a;else y=@0035;
  $  065.LKA未准备好激活的原因8~15_4           $    $         $    $  ANS004.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0035;
  $  066.LKA未准备好激活的原因16~23_4          $    $         $    $  ANS004.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0e3b;else if(x==0x10) y=@0e3c;else if(x==0x20) y=@0e3d;else if(x==0x40) y=@0e3e;else if(x==0x80) y=@0e3f;else y=@0035;
  $  067.LKA未准备好激活的原因24~31_4          $    $         $    $  ANS004.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0e41;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  068.LKA未准备好激活的原因32~39_4          $    $         $    $  ANS004.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  069.LKA未准备好激活的原因40~47_4          $    $         $    $  ANS004.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  070.LKA未准备好激活的原因48_55_4          $    $         $    $  ANS004.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  071.LKA未准备好激活的原因56_63_4          $    $         $    $  ANS004.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  072.LKA未准备好激活的故障安全标志_4       $    $         $    $  ANS004.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  073.LKA未准备好激活的年份_4               $    $         $    $  ANS004.BYTE014  $  y=x+2000;
  $  074.LKA未准备好激活的月份_4               $    $         $    $  ANS004.BYTE015  $  y=x;
  $  075.LKA未准备好激活的日_4                 $    $         $    $  ANS004.BYTE016  $  y=x;
  $  076.LKA未准备好激活的时_4                 $    $         $    $  ANS004.BYTE017  $  y=x;
  $  077.LKA未准备好激活的分_4                 $    $         $    $  ANS004.BYTE018  $  y=x;
  $  078.LKA未准备好激活的秒_4                 $    $         $    $  ANS004.BYTE019  $  y=x;
  $  079.LKA未准备好激活的里程_4               $    $  km     $    $  ANS004.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  080.LKA未准备好激活的原因0~7              $    $         $    $  ANS005.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0e2f;else y=@0035;
  $  081.LKA未准备好激活的原因8~15             $    $         $    $  ANS005.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0035;
  $  082.LKA未准备好激活的原因16~23            $    $         $    $  ANS005.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0e3b;else if(x==0x10) y=@0e3c;else if(x==0x20) y=@0e3d;else if(x==0x40) y=@0e3e;else if(x==0x80) y=@0e3f;else y=@0035;
  $  083.LKA未准备好激活的原因24~31            $    $         $    $  ANS005.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0e41;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  084.LKA未准备好激活的原因32~39            $    $         $    $  ANS005.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  085.LKA未准备好激活的原因40~47            $    $         $    $  ANS005.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  086.LKA未准备好激活的原因48_55            $    $         $    $  ANS005.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  087.LKA未准备好激活的原因56_63            $    $         $    $  ANS005.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  088.LKA退出激活状态的原因0~7              $    $         $    $  ANS006.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  089.LKA退出激活状态的原因8~15             $    $         $    $  ANS006.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  090.LKA退出激活状态的原因16~23            $    $         $    $  ANS006.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  091.LKA退出激活状态的原因24~31            $    $         $    $  ANS006.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  092.LKA退出激活状态的原因32~39            $    $         $    $  ANS006.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  093.LKA退出激活状态的原因40~47            $    $         $    $  ANS006.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  094.LKA退出激活状态的原因48_55            $    $         $    $  ANS006.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  095.LKA退出激活状态的原因56_63            $    $         $    $  ANS006.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  096.LKA退出激活状态的原因0~7_0            $    $         $    $  ANS007.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  097.LKA退出激活状态的原因8~15_0           $    $         $    $  ANS007.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  098.LKA退出激活状态的原因16~23_0          $    $         $    $  ANS007.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  099.LKA退出激活状态的原因24~31_0          $    $         $    $  ANS007.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  100.LKA退出激活状态的原因32~39_0          $    $         $    $  ANS007.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  101.LKA退出激活状态的原因40~47_0          $    $         $    $  ANS007.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  102.LKA退出激活状态的原因48_55_0          $    $         $    $  ANS007.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  103.LKA退出激活状态的原因56_63_0          $    $         $    $  ANS007.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  104.LKA退出激活状态的故障安全标志_0       $    $         $    $  ANS007.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  105.LKA退出事件年份_0                     $    $         $    $  ANS007.BYTE014  $  y=x+2000;
  $  106.LKA退出事件月份_0                     $    $         $    $  ANS007.BYTE015  $  y=x;
  $  107.LKA退出活动日_0                       $    $         $    $  ANS007.BYTE016  $  y=x;
  $  108.LKA退出活动时_0                       $    $         $    $  ANS007.BYTE017  $  y=x;
  $  109.LKA退出事件分_0                       $    $         $    $  ANS007.BYTE018  $  y=x;
  $  110.LKA退出事件秒_0                       $    $         $    $  ANS007.BYTE019  $  y=x;
  $  111.LKA退出事件里程_0                     $    $  km     $    $  ANS007.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  112.LKA退出激活状态的原因0~7_1            $    $         $    $  ANS008.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  113.LKA退出激活状态的原因8~15_1           $    $         $    $  ANS008.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  114.LKA退出激活状态的原因16~23_1          $    $         $    $  ANS008.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  115.LKA退出激活状态的原因24~31_1          $    $         $    $  ANS008.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  116.LKA退出激活状态的原因32~39_1          $    $         $    $  ANS008.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  117.LKA退出激活状态的原因40~47_1          $    $         $    $  ANS008.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  118.LKA退出激活状态的原因48_55_1          $    $         $    $  ANS008.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  119.LKA退出激活状态的原因56_63_1          $    $         $    $  ANS008.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  120.LKA退出激活状态的故障安全标志_1       $    $         $    $  ANS008.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  121.LKA退出事件年份_1                     $    $         $    $  ANS008.BYTE014  $  y=x+2000;
  $  122.LKA退出事件月份_1                     $    $         $    $  ANS008.BYTE015  $  y=x;
  $  123.LKA退出活动日_1                       $    $         $    $  ANS008.BYTE016  $  y=x;
  $  124.LKA退出活动时_1                       $    $         $    $  ANS008.BYTE017  $  y=x;
  $  125.LKA退出事件分_1                       $    $         $    $  ANS008.BYTE018  $  y=x;
  $  126.LKA退出事件秒_1                       $    $         $    $  ANS008.BYTE019  $  y=x;
  $  127.LKA退出事件里程_1                     $    $  km     $    $  ANS008.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  128.LKA退出激活状态的原因0~7_2            $    $         $    $  ANS009.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  129.LKA退出激活状态的原因8~15_2           $    $         $    $  ANS009.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  130.LKA退出激活状态的原因16~23_2          $    $         $    $  ANS009.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  131.LKA退出激活状态的原因24~31_2          $    $         $    $  ANS009.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  132.LKA退出激活状态的原因32~39_2          $    $         $    $  ANS009.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  133.LKA退出激活状态的原因40~47_2          $    $         $    $  ANS009.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  134.LKA退出激活状态的原因48_55_2          $    $         $    $  ANS009.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  135.LKA退出激活状态的原因56_63_2          $    $         $    $  ANS009.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  136.LKA退出激活状态的故障安全标志_2       $    $         $    $  ANS009.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  137.LKA退出事件年份_2                     $    $         $    $  ANS009.BYTE014  $  y=x+2000;
  $  138.LKA退出事件月份_2                     $    $         $    $  ANS009.BYTE015  $  y=x;
  $  139.LKA退出活动日_2                       $    $         $    $  ANS009.BYTE016  $  y=x;
  $  140.LKA退出活动时_2                       $    $         $    $  ANS009.BYTE017  $  y=x;
  $  141.LKA退出事件分_2                       $    $         $    $  ANS009.BYTE018  $  y=x;
  $  142.LKA退出事件秒_2                       $    $         $    $  ANS009.BYTE019  $  y=x;
  $  143.LKA退出事件里程_2                     $    $  km     $    $  ANS009.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  144.LKA退出激活状态的原因0~7_3            $    $         $    $  ANS010.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  145.LKA退出激活状态的原因8~15_3           $    $         $    $  ANS010.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  146.LKA退出激活状态的原因16~23_3          $    $         $    $  ANS010.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  147.LKA退出激活状态的原因24~31_3          $    $         $    $  ANS010.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  148.LKA退出激活状态的原因32~39_3          $    $         $    $  ANS010.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  149.LKA退出激活状态的原因40~47_3          $    $         $    $  ANS010.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  150.LKA退出激活状态的原因48_55_3          $    $         $    $  ANS010.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  151.LKA退出激活状态的原因56_63_3          $    $         $    $  ANS010.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  152.LKA退出激活状态的故障安全标志_3       $    $         $    $  ANS010.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  153.LKA退出事件年份_3                     $    $         $    $  ANS010.BYTE014  $  y=x+2000;
  $  154.LKA退出事件月份_3                     $    $         $    $  ANS010.BYTE015  $  y=x;
  $  155.LKA退出活动日_3                       $    $         $    $  ANS010.BYTE016  $  y=x;
  $  156.LKA退出活动时_3                       $    $         $    $  ANS010.BYTE017  $  y=x;
  $  157.LKA退出事件分_3                       $    $         $    $  ANS010.BYTE018  $  y=x;
  $  158.LKA退出事件秒_3                       $    $         $    $  ANS010.BYTE019  $  y=x;
  $  159.LKA退出事件里程_3                     $    $  km     $    $  ANS010.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  160.LKA退出激活状态的原因0~7_4            $    $         $    $  ANS011.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  161.LKA退出激活状态的原因8~15_4           $    $         $    $  ANS011.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  162.LKA退出激活状态的原因16~23_4          $    $         $    $  ANS011.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  163.LKA退出激活状态的原因24~31_4          $    $         $    $  ANS011.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  164.LKA退出激活状态的原因32~39_4          $    $         $    $  ANS011.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  165.LKA退出激活状态的原因40~47_4          $    $         $    $  ANS011.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  166.LKA退出激活状态的原因48_55_4          $    $         $    $  ANS011.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  167.LKA退出激活状态的原因56_63_4          $    $         $    $  ANS011.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  168.LKA退出激活状态的故障安全标志_4       $    $         $    $  ANS011.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  169.LKA退出事件年份_4                     $    $         $    $  ANS011.BYTE014  $  y=x+2000;
  $  170.LKA退出事件月份_4                     $    $         $    $  ANS011.BYTE015  $  y=x;
  $  171.LKA退出活动日_4                       $    $         $    $  ANS011.BYTE016  $  y=x;
  $  172.LKA退出活动时_4                       $    $         $    $  ANS011.BYTE017  $  y=x;
  $  173.LKA退出事件分_4                       $    $         $    $  ANS011.BYTE018  $  y=x;
  $  174.LKA退出事件秒_4                       $    $         $    $  ANS011.BYTE019  $  y=x;
  $  175.LKA退出事件里程_4                     $    $  km     $    $  ANS011.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  176.LKA退出激活状态的原因0~7              $    $         $    $  ANS012.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  177.LKA退出激活状态的原因8~15             $    $         $    $  ANS012.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  178.LKA退出激活状态的原因16~23            $    $         $    $  ANS012.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  179.LKA退出激活状态的原因24~31            $    $         $    $  ANS012.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  180.LKA退出激活状态的原因32~39            $    $         $    $  ANS012.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  181.LKA退出激活状态的原因40~47            $    $         $    $  ANS012.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  182.LKA退出激活状态的原因48_55            $    $         $    $  ANS012.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  183.LKA退出激活状态的原因56_63            $    $         $    $  ANS012.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  184.AHB(自动远光灯)启用                   $    $         $    $  ANS013.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00f0;else y=@0035;
  $  185.TSR(交通标志识别)启用                 $    $         $    $  ANS013.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00f0;else y=@0035;
  $  186.ACC(自适应巡航控制)启用               $    $         $    $  ANS013.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00f0;else y=@0035;
  $  187.AEBP(行人自动紧急制动)启用            $    $         $    $  ANS013.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00f0;else y=@0035;
  $  188.AEB(自动制动系统)启用                 $    $         $    $  ANS013.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00f0;else y=@0035;
  $  189.PCW(行人碰撞警告)启用                 $    $         $    $  ANS013.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00f0;else y=@0035;
  $  190.FCW(正面碰撞警告)启用                 $    $         $    $  ANS013.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00f0;else y=@0035;
  $  191.LDW(车道偏离预警系统)启用             $    $         $    $  ANS013.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00f0;else y=@0035;
  $  192.LKA(车道保持辅助)启用                 $    $         $    $  ANS013.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00f0;else y=@0035;
  $  193.功能启用信号校验和                    $    $         $    $  ANS013.BYTE006  $  HEX(X1);
  $  194.里程表读数                            $    $  km     $    $  ANS014.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  195.车辆的地区代码                        $    $         $    $  ANS015.BYTE004  $  if(x==0x00) y=@0136;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0da8;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0035;

  $)  04.数据流5
  $  04.数据流5
  $  REQ000:74A 03 22 B0 90 00 00 00 00       $  ANS000:7CA 03 22 B0 90 00 00 00 00
  $  REQ001:74A 03 22 C0 03 00 00 00 00       $  ANS001:7CA 03 22 C0 03 00 00 00 00
  $  REQ002:74A 03 22 C0 06 00 00 00 00       $  ANS002:7CA 03 22 C0 06 00 00 00 00
  $  REQ003:74A 03 22 B0 47 00 00 00 00       $  ANS003:7CA 03 22 B0 47 00 00 00 00
  $  REQ004:74A 03 22 B0 79 00 00 00 00       $  ANS004:7CA 03 22 B0 79 00 00 00 00
  $  REQ005:74A 03 22 B0 7B 00 00 00 00       $  ANS005:7CA 03 22 B0 7B 00 00 00 00
  $  REQ006:74A 03 22 B0 95 00 00 00 00       $  ANS006:7CA 03 22 B0 95 00 00 00 00
  $  REQ007:74A 03 22 B0 78 00 00 00 00       $  ANS007:7CA 03 22 B0 78 00 00 00 00
  $  REQ008:74A 03 22 B0 7A 00 00 00 00       $  ANS008:7CA 03 22 B0 7A 00 00 00 00
  $  REQ009:74A 03 22 B0 00 00 00 00 00       $  ANS009:7CA 03 22 B0 00 00 00 00 00

  $  000.常量寄存器校验错误                                 $    $          $    $  ANS000.BYTE004  $  if((x&0x40)==0x00) y=@0096;else if((x&0x40)==0x40) y=@0119;else y=@0035;
  $  001.校验错误                                           $    $          $    $  ANS000.BYTE004  $  if((x&0x20)==0x00) y=@0096;else if((x&0x20)==0x20) y=@0119;else y=@0035;
  $  002.未使用的存储区校验错误                             $    $          $    $  ANS000.BYTE004  $  if((x&0x10)==0x00) y=@0096;else if((x&0x10)==0x10) y=@0119;else y=@0035;
  $  003.栈校验错误                                         $    $          $    $  ANS000.BYTE004  $  if((x&0x08)==0x00) y=@0096;else if((x&0x08)==0x08) y=@0119;else y=@0035;
  $  004.Ram校验错误                                        $    $          $    $  ANS000.BYTE004  $  if((x&0x04)==0x00) y=@0096;else if((x&0x04)==0x04) y=@0119;else y=@0035;
  $  005.PLL校验错误                                        $    $          $    $  ANS000.BYTE004  $  if((x&0x02)==0x00) y=@0096;else if((x&0x02)==0x02) y=@0119;else y=@0035;
  $  006.闪存校验错误                                       $    $          $    $  ANS000.BYTE004  $  if((x&0x01)==0x00) y=@0096;else if((x&0x01)==0x01) y=@0119;else y=@0035;
  $  007.ESR0的复位计数器                                   $    $          $    $  ANS000.BYTE005  $  y=x;
  $  008.ESR1的复位计数器                                   $    $          $    $  ANS000.BYTE006  $  y=x;
  $  009.SMU的复位计数器                                    $    $          $    $  ANS000.BYTE007  $  y=x;
  $  010.软件复位的复位计数器                               $    $          $    $  ANS000.BYTE008  $  y=x;
  $  011.STM0的复位计数器                                   $    $          $    $  ANS000.BYTE009  $  y=x;
  $  012.STM1的复位计数器                                   $    $          $    $  ANS000.BYTE010  $  y=x;
  $  013.STM2的复位计数器                                   $    $          $    $  ANS000.BYTE011  $  y=x;
  $  014.CB0的复位计数器                                    $    $          $    $  ANS000.BYTE012  $  y=x;
  $  015.CB1的复位计数器                                    $    $          $    $  ANS000.BYTE013  $  y=x;
  $  016.CB3的复位计数器                                    $    $          $    $  ANS000.BYTE014  $  y=x;
  $  017.调优保护的复位计数器                               $    $          $    $  ANS000.BYTE015  $  y=x;
  $  018.EVR13的复位计数器                                  $    $          $    $  ANS000.BYTE016  $  y=x;
  $  019.EVR33的复位计数器                                  $    $          $    $  ANS000.BYTE017  $  y=x;
  $  020.电子看门狗的复位计数器                             $    $          $    $  ANS000.BYTE018  $  y=x;
  $  021.备用看门狗的复位计数器                             $    $          $    $  ANS000.BYTE019  $  y=x;
  $  022.可靠性数据年份                                     $    $          $    $  ANS000.BYTE020  $  y=x+2000;
  $  023.可靠性数据月份                                     $    $          $    $  ANS000.BYTE021  $  y=x;
  $  024.可靠性数据日                                       $    $          $    $  ANS000.BYTE022  $  y=x;
  $  025.可靠性数据时                                       $    $          $    $  ANS000.BYTE023  $  y=x;
  $  026.可靠性数据分                                       $    $          $    $  ANS000.BYTE024  $  y=x;
  $  027.可靠性数据秒                                       $    $          $    $  ANS000.BYTE025  $  y=x;
  $  028.可靠性数据里程                                     $    $  km      $    $  ANS000.BYTE026  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  029.FCW(正面碰撞警告)驾驶员选定的灵敏度等级            $    $          $    $  ANS001.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  030.LDW(车道偏离预警系统)驾驶员选定的灵敏度等级        $    $          $    $  ANS001.BYTE004  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  031.AEB(自动制动系统)驾驶员选择的灵敏度等级            $    $          $    $  ANS001.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  032.ACC(自适应巡航控制)驾驶员选定的目标距离等级        $    $          $    $  ANS001.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0035;
  $  033.PCW(行人碰撞警告)驾驶员选定的灵敏度等级            $    $          $    $  ANS001.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  034.AEBP(行人自动紧急制动)驾驶员选择的灵敏度等级       $    $          $    $  ANS001.BYTE006  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  035.摄像头的目标速度要求                               $    $          $    $  ANS002.BYTE004  $  y=(x1*256+x2);
  $  036.ACC驾驶员选定的目标速度                            $    $          $    $  ANS002.BYTE006  $  y=(x1*256+x2);
  $  037.供应商芯片跟踪号                                   $    $          $    $  ANS003.BYTE004  $  y=UINT64(x1,x2,x3,x4,x5,x6,x7,x8);
  $  038.TSR未准备好激活的原因0~7                           $    $          $    $  ANS004.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  039.TSR未准备好激活的年份                              $    $          $    $  ANS004.BYTE006  $  y=x+2000;
  $  040.TSR未准备好激活的月份                              $    $          $    $  ANS004.BYTE007  $  y=x;
  $  041.TSR未准备好激活的日                                $    $          $    $  ANS004.BYTE008  $  y=x;
  $  042.TSR未准备好激活的时                                $    $          $    $  ANS004.BYTE009  $  y=x;
  $  043.TSR未准备好激活的分                                $    $          $    $  ANS004.BYTE010  $  y=x;
  $  044.TSR未准备好激活的秒                                $    $          $    $  ANS004.BYTE011  $  y=x;
  $  045.TSR未准备好激活的里程                              $    $  km      $    $  ANS004.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  046.TSR未准备好激活的原因0~7                           $    $          $    $  ANS005.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  047.TSR退出激活状态的原因0~7(B095)                     $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  048.TSR退出激活状态的原因0~7                           $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  049.TSR退出事件年份                                    $    $          $    $  ANS007.BYTE006  $  y=x+2000;
  $  050.TSR退出事件月份                                    $    $          $    $  ANS007.BYTE007  $  y=x;
  $  051.TSR退出活动日                                      $    $          $    $  ANS007.BYTE008  $  y=x;
  $  052.TSR退出活动时                                      $    $          $    $  ANS007.BYTE009  $  y=x;
  $  053.TSR退出事件分                                      $    $          $    $  ANS007.BYTE010  $  y=x;
  $  054.TSR退出事件秒                                      $    $          $    $  ANS007.BYTE011  $  y=x;
  $  055.TSR退出事件里程                                    $    $  km      $    $  ANS007.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  056.TSR退出激活状态的原因0~7                           $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  057.车速                                               $    $  kph     $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:74A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
