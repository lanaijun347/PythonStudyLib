
    车型ID：10a3

    模拟：协议模拟-->10a3

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

  $*$*DTC/a0000000


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
  $%  005:电控单元网络文件参考号:          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:电控单元零件号（上次）:          $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  008:测试工具参考号（上次）:          $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:里程读数（上次）:                $%    $%  ANS007.BYTE015  $%  HEX(X1,X2,X3);
  $%  010:供应商电控单元硬件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:供应商电控单元序列号:            $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  012:供应商电控单元软件参考号:        $%    $%  ANS010.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  013:系统供应商识别号:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  014:VIN:                             $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
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
  $  REQ017:74A 03 22 B0 69 00 00 00 00       $  ANS017:7CA 03 22 B0 69 00 00 00 00
  $  REQ018:74A 03 22 B0 6B 00 00 00 00       $  ANS018:7CA 03 22 B0 6B 00 00 00 00
  $  REQ019:74A 03 22 B0 92 00 00 00 00       $  ANS019:7CA 03 22 B0 92 00 00 00 00
  $  REQ020:74A 03 22 B0 60 00 00 00 00       $  ANS020:7CA 03 22 B0 60 00 00 00 00
  $  REQ021:74A 03 22 B0 61 00 00 00 00       $  ANS021:7CA 03 22 B0 61 00 00 00 00
  $  REQ022:74A 03 22 B0 62 00 00 00 00       $  ANS022:7CA 03 22 B0 62 00 00 00 00
  $  REQ023:74A 03 22 B0 63 00 00 00 00       $  ANS023:7CA 03 22 B0 63 00 00 00 00
  $  REQ024:74A 03 22 B0 64 00 00 00 00       $  ANS024:7CA 03 22 B0 64 00 00 00 00
  $  REQ025:74A 03 22 B0 6A 00 00 00 00       $  ANS025:7CA 03 22 B0 6A 00 00 00 00

  $  000.ACC未准备好激活的原因0~7               $    $         $    $  ANS000.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  001.ACC未准备好激活的原因8~15              $    $         $    $  ANS000.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  002.ACC无法进入原因16~23                   $    $         $    $  ANS000.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  003.ACC未准备好激活的原因24~31             $    $         $    $  ANS000.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@012b;
  $  004.ACC无法进入原因32~39                   $    $         $    $  ANS000.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  005.ACC无法进入原因40~47                   $    $         $    $  ANS000.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  006.ACC未准备好激活的故障安全标志          $    $         $    $  ANS000.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  007.ACC未准备好激活的年份                  $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.ACC未准备好激活的月份                  $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.ACC无法进入时的日期                    $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.ACC未准备好激活的时                    $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.ACC无法进入时的分钟                    $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.ACC无法进入时的秒数                    $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.ACC无法进入时的年份                    $    $  km     $    $  ANS000.BYTE020  $  y=x;
  $  014.ACC未准备好激活的原因0~7               $    $         $    $  ANS001.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  015.ACC未准备好激活的原因8~15              $    $         $    $  ANS001.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  016.ACC无法进入原因16~23                   $    $         $    $  ANS001.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  017.ACC未准备好激活的原因24~31             $    $         $    $  ANS001.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@012b;
  $  018.ACC无法进入原因32~39                   $    $         $    $  ANS001.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  019.ACC无法进入原因40~47                   $    $         $    $  ANS001.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  020.ACC未准备好激活的故障安全标志          $    $         $    $  ANS001.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  021.ACC未准备好激活的年份                  $    $         $    $  ANS001.BYTE012  $  y=x+2000;
  $  022.ACC未准备好激活的月份                  $    $         $    $  ANS001.BYTE013  $  y=x;
  $  023.ACC无法进入时的日期                    $    $         $    $  ANS001.BYTE014  $  y=x;
  $  024.ACC未准备好激活的时                    $    $         $    $  ANS001.BYTE015  $  y=x;
  $  025.ACC无法进入时的分钟                    $    $         $    $  ANS001.BYTE016  $  y=x;
  $  026.ACC无法进入时的秒数                    $    $         $    $  ANS001.BYTE017  $  y=x;
  $  027.ACC无法进入时的年份                    $    $  km     $    $  ANS001.BYTE020  $  y=x;
  $  028.ACC未准备好激活的原因0~7               $    $         $    $  ANS002.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  029.ACC未准备好激活的原因8~15              $    $         $    $  ANS002.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  030.ACC无法进入原因16~23                   $    $         $    $  ANS002.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  031.ACC未准备好激活的原因24~31             $    $         $    $  ANS002.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@012b;
  $  032.ACC无法进入原因32~39                   $    $         $    $  ANS002.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  033.ACC无法进入原因40~47                   $    $         $    $  ANS002.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  034.ACC未准备好激活的故障安全标志          $    $         $    $  ANS002.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  035.ACC未准备好激活的年份                  $    $         $    $  ANS002.BYTE012  $  y=x+2000;
  $  036.ACC未准备好激活的月份                  $    $         $    $  ANS002.BYTE013  $  y=x;
  $  037.ACC无法进入时的日期                    $    $         $    $  ANS002.BYTE014  $  y=x;
  $  038.ACC未准备好激活的时                    $    $         $    $  ANS002.BYTE015  $  y=x;
  $  039.ACC无法进入时的分钟                    $    $         $    $  ANS002.BYTE016  $  y=x;
  $  040.ACC无法进入时的秒数                    $    $         $    $  ANS002.BYTE017  $  y=x;
  $  041.ACC无法进入时的年份                    $    $  km     $    $  ANS002.BYTE020  $  y=x;
  $  042.ACC未准备好激活的原因0~7               $    $         $    $  ANS003.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  043.ACC未准备好激活的原因8~15              $    $         $    $  ANS003.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  044.ACC无法进入原因16~23                   $    $         $    $  ANS003.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  045.ACC未准备好激活的原因24~31             $    $         $    $  ANS003.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@012b;
  $  046.ACC无法进入原因32~39                   $    $         $    $  ANS003.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  047.ACC无法进入原因40~47                   $    $         $    $  ANS003.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  048.ACC未准备好激活的故障安全标志          $    $         $    $  ANS003.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  049.ACC未准备好激活的年份                  $    $         $    $  ANS003.BYTE012  $  y=x+2000;
  $  050.ACC未准备好激活的月份                  $    $         $    $  ANS003.BYTE013  $  y=x;
  $  051.ACC无法进入时的日期                    $    $         $    $  ANS003.BYTE014  $  y=x;
  $  052.ACC未准备好激活的时                    $    $         $    $  ANS003.BYTE015  $  y=x;
  $  053.ACC无法进入时的分钟                    $    $         $    $  ANS003.BYTE016  $  y=x;
  $  054.ACC无法进入时的秒数                    $    $         $    $  ANS003.BYTE017  $  y=x;
  $  055.ACC无法进入时的年份                    $    $  km     $    $  ANS003.BYTE020  $  y=x;
  $  056.ACC未准备好激活的原因0~7               $    $         $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  057.ACC未准备好激活的原因8~15              $    $         $    $  ANS004.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  058.ACC无法进入原因16~23                   $    $         $    $  ANS004.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  059.ACC未准备好激活的原因24~31             $    $         $    $  ANS004.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@012b;
  $  060.ACC无法进入原因32~39                   $    $         $    $  ANS004.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  061.ACC无法进入原因40~47                   $    $         $    $  ANS004.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  062.ACC未准备好激活的故障安全标志          $    $         $    $  ANS004.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  063.ACC未准备好激活的年份                  $    $         $    $  ANS004.BYTE012  $  y=x+2000;
  $  064.ACC未准备好激活的月份                  $    $         $    $  ANS004.BYTE013  $  y=x;
  $  065.ACC无法进入时的日期                    $    $         $    $  ANS004.BYTE014  $  y=x;
  $  066.ACC未准备好激活的时                    $    $         $    $  ANS004.BYTE015  $  y=x;
  $  067.ACC无法进入时的分钟                    $    $         $    $  ANS004.BYTE016  $  y=x;
  $  068.ACC无法进入时的秒数                    $    $         $    $  ANS004.BYTE017  $  y=x;
  $  069.ACC无法进入时的年份                    $    $  km     $    $  ANS004.BYTE020  $  y=x;
  $  070.ACC未准备好激活的原因0~7               $    $         $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  071.ACC未准备好激活的原因8~15              $    $         $    $  ANS005.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  072.ACC无法进入原因16~23                   $    $         $    $  ANS005.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  073.ACC未准备好激活的原因24~31             $    $         $    $  ANS005.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@012b;
  $  074.ACC无法进入原因32~39                   $    $         $    $  ANS005.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  075.ACC无法进入原因40~47                   $    $         $    $  ANS005.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  076.ACC退出激活状态的原因0~7(B091)         $    $         $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  077.ACC退出激活状态的原因8~15(B091)        $    $         $    $  ANS006.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  078.ACC退出激活状态的原因16~23(B091)       $    $         $    $  ANS006.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  079.ACC退出激活状态的原因24~31(B091)       $    $         $    $  ANS006.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  080.ACC退出激活状态的原因32~39(B091)       $    $         $    $  ANS006.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  081.ACC退出激活状态的原因40~47(B091)       $    $         $    $  ANS006.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  082.ACC从激活状态异常退出原因0~7           $    $         $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  083.ACC退出激活状态的原因8~15              $    $         $    $  ANS007.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  084.ACC退出激活状态的原因16~23             $    $         $    $  ANS007.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  085.ACC从激活状态异常退出原因24~31         $    $         $    $  ANS007.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  086.ACC从激活状态异常退出原因32~39         $    $         $    $  ANS007.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  087.ACC从激活状态异常退出原因40~47         $    $         $    $  ANS007.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  088.ACC退出激活状态的故障安全标志          $    $         $    $  ANS007.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  089.Acc异常退出时的年份                    $    $         $    $  ANS007.BYTE012  $  y=x+2000;
  $  090.Acc异常退出时的月份                    $    $         $    $  ANS007.BYTE013  $  y=x;
  $  091.Acc异常退出时的日期                    $    $         $    $  ANS007.BYTE014  $  y=x;
  $  092.Acc异常退出时的时刻                    $    $         $    $  ANS007.BYTE015  $  y=x;
  $  093.Acc异常退出时的分钟                    $    $         $    $  ANS007.BYTE016  $  y=x;
  $  094.Acc异常退出时的秒数                    $    $         $    $  ANS007.BYTE017  $  y=x;
  $  095.ACC退出事件里程                        $    $  km     $    $  ANS007.BYTE020  $  y=x;
  $  096.ACC从激活状态异常退出原因0~7           $    $         $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  097.ACC退出激活状态的原因8~15              $    $         $    $  ANS008.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  098.ACC退出激活状态的原因16~23             $    $         $    $  ANS008.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  099.ACC从激活状态异常退出原因24~31         $    $         $    $  ANS008.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  100.ACC从激活状态异常退出原因32~39         $    $         $    $  ANS008.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  101.ACC从激活状态异常退出原因40~47         $    $         $    $  ANS008.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  102.ACC退出激活状态的故障安全标志          $    $         $    $  ANS008.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  103.Acc异常退出时的年份                    $    $         $    $  ANS008.BYTE012  $  y=x+2000;
  $  104.Acc异常退出时的月份                    $    $         $    $  ANS008.BYTE013  $  y=x;
  $  105.Acc异常退出时的日期                    $    $         $    $  ANS008.BYTE014  $  y=x;
  $  106.Acc异常退出时的时刻                    $    $         $    $  ANS008.BYTE015  $  y=x;
  $  107.Acc异常退出时的分钟                    $    $         $    $  ANS008.BYTE016  $  y=x;
  $  108.Acc异常退出时的秒数                    $    $         $    $  ANS008.BYTE017  $  y=x;
  $  109.ACC退出事件里程                        $    $  km     $    $  ANS008.BYTE020  $  y=x;
  $  110.ACC从激活状态异常退出原因0~7           $    $         $    $  ANS009.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  111.ACC退出激活状态的原因8~15              $    $         $    $  ANS009.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  112.ACC退出激活状态的原因16~23             $    $         $    $  ANS009.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  113.ACC从激活状态异常退出原因24~31         $    $         $    $  ANS009.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  114.ACC从激活状态异常退出原因32~39         $    $         $    $  ANS009.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  115.ACC从激活状态异常退出原因40~47         $    $         $    $  ANS009.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  116.ACC退出激活状态的故障安全标志          $    $         $    $  ANS009.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  117.Acc异常退出时的年份                    $    $         $    $  ANS009.BYTE012  $  y=x+2000;
  $  118.Acc异常退出时的月份                    $    $         $    $  ANS009.BYTE013  $  y=x;
  $  119.Acc异常退出时的日期                    $    $         $    $  ANS009.BYTE014  $  y=x;
  $  120.Acc异常退出时的时刻                    $    $         $    $  ANS009.BYTE015  $  y=x;
  $  121.Acc异常退出时的分钟                    $    $         $    $  ANS009.BYTE016  $  y=x;
  $  122.Acc异常退出时的秒数                    $    $         $    $  ANS009.BYTE017  $  y=x;
  $  123.ACC退出事件里程                        $    $  km     $    $  ANS009.BYTE020  $  y=x;
  $  124.ACC从激活状态异常退出原因0~7           $    $         $    $  ANS010.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  125.ACC退出激活状态的原因8~15              $    $         $    $  ANS010.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  126.ACC退出激活状态的原因16~23             $    $         $    $  ANS010.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  127.ACC从激活状态异常退出原因24~31         $    $         $    $  ANS010.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  128.ACC从激活状态异常退出原因32~39         $    $         $    $  ANS010.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  129.ACC从激活状态异常退出原因40~47         $    $         $    $  ANS010.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  130.ACC退出激活状态的故障安全标志          $    $         $    $  ANS010.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  131.Acc异常退出时的年份                    $    $         $    $  ANS010.BYTE012  $  y=x+2000;
  $  132.Acc异常退出时的月份                    $    $         $    $  ANS010.BYTE013  $  y=x;
  $  133.Acc异常退出时的日期                    $    $         $    $  ANS010.BYTE014  $  y=x;
  $  134.Acc异常退出时的时刻                    $    $         $    $  ANS010.BYTE015  $  y=x;
  $  135.Acc异常退出时的分钟                    $    $         $    $  ANS010.BYTE016  $  y=x;
  $  136.Acc异常退出时的秒数                    $    $         $    $  ANS010.BYTE017  $  y=x;
  $  137.ACC退出事件里程                        $    $  km     $    $  ANS010.BYTE020  $  y=x;
  $  138.ACC从激活状态异常退出原因0~7           $    $         $    $  ANS011.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  139.ACC退出激活状态的原因8~15              $    $         $    $  ANS011.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  140.ACC退出激活状态的原因16~23             $    $         $    $  ANS011.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  141.ACC从激活状态异常退出原因24~31         $    $         $    $  ANS011.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  142.ACC从激活状态异常退出原因32~39         $    $         $    $  ANS011.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  143.ACC从激活状态异常退出原因40~47         $    $         $    $  ANS011.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  144.ACC退出激活状态的故障安全标志          $    $         $    $  ANS011.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  145.Acc异常退出时的年份                    $    $         $    $  ANS011.BYTE012  $  y=x+2000;
  $  146.Acc异常退出时的月份                    $    $         $    $  ANS011.BYTE013  $  y=x;
  $  147.Acc异常退出时的日期                    $    $         $    $  ANS011.BYTE014  $  y=x;
  $  148.Acc异常退出时的时刻                    $    $         $    $  ANS011.BYTE015  $  y=x;
  $  149.Acc异常退出时的分钟                    $    $         $    $  ANS011.BYTE016  $  y=x;
  $  150.Acc异常退出时的秒数                    $    $         $    $  ANS011.BYTE017  $  y=x;
  $  151.ACC退出事件里程                        $    $  km     $    $  ANS011.BYTE020  $  y=x;
  $  152.ACC从激活状态异常退出原因0~7           $    $         $    $  ANS012.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  153.ACC退出激活状态的原因8~15              $    $         $    $  ANS012.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  154.ACC退出激活状态的原因16~23             $    $         $    $  ANS012.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  155.ACC从激活状态异常退出原因24~31         $    $         $    $  ANS012.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  156.ACC从激活状态异常退出原因32~39         $    $         $    $  ANS012.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  157.ACC从激活状态异常退出原因40~47         $    $         $    $  ANS012.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  158.AEB未准备好激活的原因0~7               $    $         $    $  ANS013.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  159.AEB无法进入原因8~15                    $    $         $    $  ANS013.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  160.AEB未准备好激活的原因16~23             $    $         $    $  ANS013.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  161.AEB无法进入原因24~31                   $    $         $    $  ANS013.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  162.AEB未准备好激活的故障安全标志          $    $         $    $  ANS013.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  163.AEB无法进入时的年份                    $    $         $    $  ANS013.BYTE010  $  y=x+2000;
  $  164.AEB无法进入时的月份                    $    $         $    $  ANS013.BYTE011  $  y=x;
  $  165.AEB无法进入时的日期                    $    $         $    $  ANS013.BYTE012  $  y=x;
  $  166.AEB无法进入时的时刻                    $    $         $    $  ANS013.BYTE013  $  y=x;
  $  167.AEB未准备好激活的分                    $    $         $    $  ANS013.BYTE014  $  y=x;
  $  168.AEB未准备好激活的秒                    $    $         $    $  ANS013.BYTE015  $  y=x;
  $  169.AEB未准备好激活的里程                  $    $         $    $  ANS013.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  170.AEB未准备好激活的原因0~7               $    $         $    $  ANS014.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  171.AEB无法进入原因8~15                    $    $         $    $  ANS014.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  172.AEB未准备好激活的原因16~23             $    $         $    $  ANS014.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  173.AEB无法进入原因24~31                   $    $         $    $  ANS014.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  174.AEB未准备好激活的故障安全标志          $    $         $    $  ANS014.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  175.AEB无法进入时的年份                    $    $         $    $  ANS014.BYTE010  $  y=x+2000;
  $  176.AEB无法进入时的月份                    $    $         $    $  ANS014.BYTE011  $  y=x;
  $  177.AEB无法进入时的日期                    $    $         $    $  ANS014.BYTE012  $  y=x;
  $  178.AEB无法进入时的时刻                    $    $         $    $  ANS014.BYTE013  $  y=x;
  $  179.AEB未准备好激活的分                    $    $         $    $  ANS014.BYTE014  $  y=x;
  $  180.AEB未准备好激活的秒                    $    $         $    $  ANS014.BYTE015  $  y=x;
  $  181.AEB未准备好激活的里程                  $    $         $    $  ANS014.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  182.AEB未准备好激活的原因0~7               $    $         $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  183.AEB无法进入原因8~15                    $    $         $    $  ANS015.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  184.AEB未准备好激活的原因16~23             $    $         $    $  ANS015.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  185.AEB无法进入原因24~31                   $    $         $    $  ANS015.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  186.AEB未准备好激活的故障安全标志          $    $         $    $  ANS015.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  187.AEB无法进入时的年份                    $    $         $    $  ANS015.BYTE010  $  y=x+2000;
  $  188.AEB无法进入时的月份                    $    $         $    $  ANS015.BYTE011  $  y=x;
  $  189.AEB无法进入时的日期                    $    $         $    $  ANS015.BYTE012  $  y=x;
  $  190.AEB无法进入时的时刻                    $    $         $    $  ANS015.BYTE013  $  y=x;
  $  191.AEB未准备好激活的分                    $    $         $    $  ANS015.BYTE014  $  y=x;
  $  192.AEB未准备好激活的秒                    $    $         $    $  ANS015.BYTE015  $  y=x;
  $  193.AEB未准备好激活的里程                  $    $         $    $  ANS015.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  194.AEB未准备好激活的原因0~7               $    $         $    $  ANS016.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  195.AEB无法进入原因8~15                    $    $         $    $  ANS016.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  196.AEB未准备好激活的原因16~23             $    $         $    $  ANS016.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  197.AEB无法进入原因24~31                   $    $         $    $  ANS016.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  198.AEB未准备好激活的故障安全标志          $    $         $    $  ANS016.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  199.AEB无法进入时的年份                    $    $         $    $  ANS016.BYTE010  $  y=x+2000;
  $  200.AEB无法进入时的月份                    $    $         $    $  ANS016.BYTE011  $  y=x;
  $  201.AEB无法进入时的日期                    $    $         $    $  ANS016.BYTE012  $  y=x;
  $  202.AEB无法进入时的时刻                    $    $         $    $  ANS016.BYTE013  $  y=x;
  $  203.AEB未准备好激活的分                    $    $         $    $  ANS016.BYTE014  $  y=x;
  $  204.AEB未准备好激活的秒                    $    $         $    $  ANS016.BYTE015  $  y=x;
  $  205.AEB未准备好激活的里程                  $    $         $    $  ANS016.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  206.AEB未准备好激活的原因0~7               $    $         $    $  ANS017.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  207.AEB无法进入原因8~15                    $    $         $    $  ANS017.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  208.AEB未准备好激活的原因16~23             $    $         $    $  ANS017.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  209.AEB无法进入原因24~31                   $    $         $    $  ANS017.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  210.AEB未准备好激活的故障安全标志          $    $         $    $  ANS017.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  211.AEB无法进入时的年份                    $    $         $    $  ANS017.BYTE010  $  y=x+2000;
  $  212.AEB无法进入时的月份                    $    $         $    $  ANS017.BYTE011  $  y=x;
  $  213.AEB无法进入时的日期                    $    $         $    $  ANS017.BYTE012  $  y=x;
  $  214.AEB无法进入时的时刻                    $    $         $    $  ANS017.BYTE013  $  y=x;
  $  215.AEB未准备好激活的分                    $    $         $    $  ANS017.BYTE014  $  y=x;
  $  216.AEB未准备好激活的秒                    $    $         $    $  ANS017.BYTE015  $  y=x;
  $  217.AEB未准备好激活的里程                  $    $         $    $  ANS017.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  218.AEB未准备好激活的原因0~7               $    $         $    $  ANS018.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  219.AEB无法进入原因8~15                    $    $         $    $  ANS018.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  220.AEB未准备好激活的原因16~23             $    $         $    $  ANS018.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  221.AEB无法进入原因24~31                   $    $         $    $  ANS018.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  222.AEB退出激活状态的原因0~7(B092)         $    $         $    $  ANS019.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  223.AEB退出激活状态的原因8~15(B092)        $    $         $    $  ANS019.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  224.AEB退出激活状态的原因16~23(B092)       $    $         $    $  ANS019.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  225.AEB退出激活状态的原因24~31(B092)       $    $         $    $  ANS019.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  226.AEB退出激活状态的原因0~7               $    $         $    $  ANS020.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  227.AEB退出激活状态的原因8~15              $    $         $    $  ANS020.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  228.AEB退出激活状态的原因16~23             $    $         $    $  ANS020.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  229.AEB退出激活状态的原因24~31             $    $         $    $  ANS020.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  230.AEB退出激活状态的故障安全标志          $    $         $    $  ANS020.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  231.AEB异常退出时的年份                    $    $         $    $  ANS020.BYTE010  $  y=x+2000;
  $  232.AEB异常退出时的月份                    $    $         $    $  ANS020.BYTE011  $  y=x;
  $  233.AEB异常退出时的日期                    $    $         $    $  ANS020.BYTE012  $  y=x;
  $  234.AEB异常退出时的时刻                    $    $         $    $  ANS020.BYTE013  $  y=x;
  $  235.AEB异常退出时的分钟                    $    $         $    $  ANS020.BYTE014  $  y=x;
  $  236.AEB异常退出时的秒数                    $    $         $    $  ANS020.BYTE015  $  y=x;
  $  237.AEB异常退出时的年份                    $    $         $    $  ANS020.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  238.AEB退出激活状态的原因0~7               $    $         $    $  ANS021.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  239.AEB退出激活状态的原因8~15              $    $         $    $  ANS021.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  240.AEB退出激活状态的原因16~23             $    $         $    $  ANS021.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  241.AEB退出激活状态的原因24~31             $    $         $    $  ANS021.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  242.AEB退出激活状态的故障安全标志          $    $         $    $  ANS021.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  243.AEB异常退出时的年份                    $    $         $    $  ANS021.BYTE010  $  y=x+2000;
  $  244.AEB异常退出时的月份                    $    $         $    $  ANS021.BYTE011  $  y=x;
  $  245.AEB异常退出时的日期                    $    $         $    $  ANS021.BYTE012  $  y=x;
  $  246.AEB异常退出时的时刻                    $    $         $    $  ANS021.BYTE013  $  y=x;
  $  247.AEB异常退出时的分钟                    $    $         $    $  ANS021.BYTE014  $  y=x;
  $  248.AEB异常退出时的秒数                    $    $         $    $  ANS021.BYTE015  $  y=x;
  $  249.AEB异常退出时的年份                    $    $         $    $  ANS021.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  250.AEB退出激活状态的原因0~7               $    $         $    $  ANS022.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  251.AEB退出激活状态的原因8~15              $    $         $    $  ANS022.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  252.AEB退出激活状态的原因16~23             $    $         $    $  ANS022.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  253.AEB退出激活状态的原因24~31             $    $         $    $  ANS022.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  254.AEB退出激活状态的故障安全标志          $    $         $    $  ANS022.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  255.AEB异常退出时的年份                    $    $         $    $  ANS022.BYTE010  $  y=x+2000;
  $  256.AEB异常退出时的月份                    $    $         $    $  ANS022.BYTE011  $  y=x;
  $  257.AEB异常退出时的日期                    $    $         $    $  ANS022.BYTE012  $  y=x;
  $  258.AEB异常退出时的时刻                    $    $         $    $  ANS022.BYTE013  $  y=x;
  $  259.AEB异常退出时的分钟                    $    $         $    $  ANS022.BYTE014  $  y=x;
  $  260.AEB异常退出时的秒数                    $    $         $    $  ANS022.BYTE015  $  y=x;
  $  261.AEB异常退出时的年份                    $    $         $    $  ANS022.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  262.AEB退出激活状态的原因0~7               $    $         $    $  ANS023.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  263.AEB退出激活状态的原因8~15              $    $         $    $  ANS023.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  264.AEB退出激活状态的原因16~23             $    $         $    $  ANS023.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  265.AEB退出激活状态的原因24~31             $    $         $    $  ANS023.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  266.AEB退出激活状态的故障安全标志          $    $         $    $  ANS023.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  267.AEB异常退出时的年份                    $    $         $    $  ANS023.BYTE010  $  y=x+2000;
  $  268.AEB异常退出时的月份                    $    $         $    $  ANS023.BYTE011  $  y=x;
  $  269.AEB异常退出时的日期                    $    $         $    $  ANS023.BYTE012  $  y=x;
  $  270.AEB异常退出时的时刻                    $    $         $    $  ANS023.BYTE013  $  y=x;
  $  271.AEB异常退出时的分钟                    $    $         $    $  ANS023.BYTE014  $  y=x;
  $  272.AEB异常退出时的秒数                    $    $         $    $  ANS023.BYTE015  $  y=x;
  $  273.AEB异常退出时的年份                    $    $         $    $  ANS023.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  274.AEB退出激活状态的原因0~7               $    $         $    $  ANS024.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  275.AEB退出激活状态的原因8~15              $    $         $    $  ANS024.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  276.AEB退出激活状态的原因16~23             $    $         $    $  ANS024.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  277.AEB退出激活状态的原因24~31             $    $         $    $  ANS024.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  278.AEB退出激活状态的故障安全标志          $    $         $    $  ANS024.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  279.AEB异常退出时的年份                    $    $         $    $  ANS024.BYTE010  $  y=x+2000;
  $  280.AEB异常退出时的月份                    $    $         $    $  ANS024.BYTE011  $  y=x;
  $  281.AEB异常退出时的日期                    $    $         $    $  ANS024.BYTE012  $  y=x;
  $  282.AEB异常退出时的时刻                    $    $         $    $  ANS024.BYTE013  $  y=x;
  $  283.AEB异常退出时的分钟                    $    $         $    $  ANS024.BYTE014  $  y=x;
  $  284.AEB异常退出时的秒数                    $    $         $    $  ANS024.BYTE015  $  y=x;
  $  285.AEB异常退出时的年份                    $    $         $    $  ANS024.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  286.AEB退出激活状态的原因0~7               $    $         $    $  ANS025.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  287.AEB退出激活状态的原因8~15              $    $         $    $  ANS025.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  288.AEB退出激活状态的原因16~23             $    $         $    $  ANS025.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  289.AEB退出激活状态的原因24~31             $    $         $    $  ANS025.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;

  $)  01.数据流2
  $  01.数据流2
  $  REQ000:74A 03 22 01 12 00 00 00 00       $  ANS000:7CA 03 22 01 12 00 00 00 00
  $  REQ001:74A 03 22 B0 3D 00 00 00 00       $  ANS001:7CA 03 22 B0 3D 00 00 00 00
  $  REQ002:74A 03 22 B0 2E 00 00 00 00       $  ANS002:7CA 03 22 B0 2E 00 00 00 00
  $  REQ003:74A 03 22 B0 38 00 00 00 00       $  ANS003:7CA 03 22 B0 38 00 00 00 00
  $  REQ004:74A 03 22 B0 3B 00 00 00 00       $  ANS004:7CA 03 22 B0 3B 00 00 00 00
  $  REQ005:74A 03 22 C0 01 00 00 00 00       $  ANS005:7CA 03 22 C0 01 00 00 00 00
  $  REQ006:74A 03 22 B0 3E 00 00 00 00       $  ANS006:7CA 03 22 B0 3E 00 00 00 00
  $  REQ007:74A 03 22 B0 4B 00 00 00 00       $  ANS007:7CA 03 22 B0 4B 00 00 00 00
  $  REQ008:74A 03 22 C0 02 00 00 00 00       $  ANS008:7CA 03 22 C0 02 00 00 00 00
  $  REQ009:74A 03 22 B0 27 00 00 00 00       $  ANS009:7CA 03 22 B0 27 00 00 00 00
  $  REQ010:74A 03 22 B0 28 00 00 00 00       $  ANS010:7CA 03 22 B0 28 00 00 00 00
  $  REQ011:74A 03 22 B0 26 00 00 00 00       $  ANS011:7CA 03 22 B0 26 00 00 00 00
  $  REQ012:74A 03 22 B0 29 00 00 00 00       $  ANS012:7CA 03 22 B0 29 00 00 00 00
  $  REQ013:74A 03 22 B0 2F 00 00 00 00       $  ANS013:7CA 03 22 B0 2F 00 00 00 00
  $  REQ014:74A 03 22 B0 75 00 00 00 00       $  ANS014:7CA 03 22 B0 75 00 00 00 00
  $  REQ015:74A 03 22 B0 77 00 00 00 00       $  ANS015:7CA 03 22 B0 77 00 00 00 00
  $  REQ016:74A 03 22 B0 94 00 00 00 00       $  ANS016:7CA 03 22 B0 94 00 00 00 00
  $  REQ017:74A 03 22 B0 74 00 00 00 00       $  ANS017:7CA 03 22 B0 74 00 00 00 00
  $  REQ018:74A 03 22 B0 76 00 00 00 00       $  ANS018:7CA 03 22 B0 76 00 00 00 00
  $  REQ019:74A 03 22 C0 04 00 00 00 00       $  ANS019:7CA 03 22 C0 04 00 00 00 00
  $  REQ020:74A 03 22 B0 7D 00 00 00 00       $  ANS020:7CA 03 22 B0 7D 00 00 00 00
  $  REQ021:74A 03 22 B0 7F 00 00 00 00       $  ANS021:7CA 03 22 B0 7F 00 00 00 00
  $  REQ022:74A 03 22 B0 96 00 00 00 00       $  ANS022:7CA 03 22 B0 96 00 00 00 00
  $  REQ023:74A 03 22 B0 7C 00 00 00 00       $  ANS023:7CA 03 22 B0 7C 00 00 00 00
  $  REQ024:74A 03 22 B0 7E 00 00 00 00       $  ANS024:7CA 03 22 B0 7E 00 00 00 00

  $  000.电池电压                                                 $    $  V       $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.超出自动调整范围                                         $    $          $    $  ANS001.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  002.应用程序致命错误-超出标定                                $    $          $    $  ANS001.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  003.未标定                                                   $    $          $    $  ANS001.BYTE004  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  004.EOL校准状态                                              $    $          $    $  ANS002.BYTE004  $  if(x==0x00) y=@004a;else if(x==0x01) y=@0b2a;else if(x==0x02) y=@0b2b;else if(x==0x03) y=@0b2c;else y=@012b;
  $  005.EOL校准错误原因                                          $    $          $    $  ANS002.BYTE005  $  if(x==0x00) y=@023f;else if(x==0x01) y=@012a;else if(x==0x02) y=@0910;else if(x==0x03) y=@0ddd;else if(x==0x04) y=@0912;else if(x==0x05) y=@0913;else if(x==0x06) y=@0914;else if(x==0x07) y=@0915;else if(x==0x08) y=@0916;else if(x==0x09) y=@0917;else if(x==0x0A) y=@0918;else if(x==0x0B) y=@0919;else if(x==0x0C) y=@091a;else if(x==0x0D) y=@091b;else if(x==0x0E) y=@091c;else if(x==0x0F) y=@091d;else if(x==0x10) y=@091e;else if(x==0x11) y=@091f;else if(x==0x12) y=@0920;else if(x==0x13) y=@0921;else if(x==0x14) y=@0922;else if(x==0x15) y=@0923;else y=@012b;
  $  006.摄像头校准偏航值                                         $    $          $    $  ANS002.BYTE006  $  y=(x1*256+x2)-188;
  $  007.摄像头校准水平值                                         $    $          $    $  ANS002.BYTE008  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-160;
  $  008.摄像头校准侧倾角值                                       $    $  rad     $    $  ANS002.BYTE010  $  y=(x1*256+x2)*0.001-0.055;
  $  009.摄像头自动修正偏航值                                     $    $          $    $  ANS002.BYTE012  $  y=x-40;
  $  010.摄像头自动调整俯仰角值                                   $    $          $    $  ANS002.BYTE013  $  y=x-40;
  $  011.校准年                                                   $    $          $    $  ANS003.BYTE004  $  y=x+2000;
  $  012.标定月                                                   $    $          $    $  ANS003.BYTE005  $  y=x;
  $  013.校准天                                                   $    $          $    $  ANS003.BYTE006  $  y=x;
  $  014.校准小时                                                 $    $          $    $  ANS003.BYTE007  $  y=x;
  $  015.标定分钟                                                 $    $          $    $  ANS003.BYTE008  $  y=x;
  $  016.校准秒                                                   $    $          $    $  ANS003.BYTE009  $  y=x;
  $  017.标定里程数                                               $    $  km      $    $  ANS003.BYTE010  $  y=(x1*256*256+x2*256+x3);
  $  018.测试人员参考编号                                         $    $          $    $  ANS003.BYTE013  $  y=(x1*256*256+x2*256+x3);
  $  019.摄像头视野遮挡原因_眩光                                  $    $          $    $  ANS004.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  020.摄像头视野遮挡原因_光线太强                              $    $          $    $  ANS004.BYTE004  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  021.摄像头视野遮挡原因_散射                                  $    $          $    $  ANS004.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0004;
  $  022.摄像头视野遮挡原因_图像模糊                              $    $          $    $  ANS004.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0004;
  $  023.摄像头视野遮挡原因_光线不足                              $    $          $    $  ANS004.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0004;
  $  024.摄像头视野遮挡原因_斑点                                  $    $          $    $  ANS004.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0004;
  $  025.摄像头视野遮挡原因_部分遮挡                              $    $          $    $  ANS004.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0004;
  $  026.摄像头视野遮挡原因_完全遮挡                              $    $          $    $  ANS004.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  027.摄像头视野遮挡原因_结冰                                  $    $          $    $  ANS004.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  028.摄像头视野遮挡原因_起雾                                  $    $          $    $  ANS004.BYTE005  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  029.AHB自动大灯系统启用                                      $    $          $    $  ANS005.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00b1;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0004;
  $  030.TSR(交通标志识别)启用                                    $    $          $    $  ANS005.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00b1;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0004;
  $  031.ACC(自适应巡航控制)启用                                  $    $          $    $  ANS005.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00b1;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0004;
  $  032.AEBP(行人自动紧急制动)启用                               $    $          $    $  ANS005.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00b1;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0004;
  $  033.AEB(自动制动系统)启用                                    $    $          $    $  ANS005.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00b1;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0004;
  $  034.PCW(行人碰撞警告)启用                                    $    $          $    $  ANS005.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00b1;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0004;
  $  035.FCW(正面碰撞警告)启用                                    $    $          $    $  ANS005.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00b1;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0004;
  $  036.LDW(车道偏离预警系统)启用                                $    $          $    $  ANS005.BYTE004  $  if((x&0x01)==0x00) y=@00b1;else if((x&0x01)==0x01) y=@00dc;else y=@0004;
  $  037.LKA(车道保持辅助)启用                                    $    $          $    $  ANS005.BYTE005  $  if((x&0x01)==0x00) y=@00b1;else if((x&0x01)==0x01) y=@00dc;else y=@0004;
  $  038.SDM25-碰撞重叠                                           $    $          $    $  ANS006.BYTE007  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0004;
  $  039.SDM9-关键区域与前方指挥车辆重叠的显著差异                $    $          $    $  ANS006.BYTE007  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0004;
  $  040.SDM8-关键区域与三角采样测量之间的位置差异                $    $          $    $  ANS006.BYTE007  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0004;
  $  041.SDM7-目标位置有显著差异                                  $    $          $    $  ANS006.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0004;
  $  042.SDM6-TTC的显著差异                                       $    $          $    $  ANS006.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0004;
  $  043.（轧-帧计数器）误差信号的消息。                          $    $          $    $  ANS006.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  044.校验的安全输入信号不匹配                                 $    $          $    $  ANS006.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  045.EYEQ_CR_REPEAT-挑战与响应重复错误                        $    $          $    $  ANS006.BYTE007  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  046.sdm11单片机CRC错误                                       $    $          $    $  ANS006.BYTE008  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0004;
  $  047.SDM29-MCU RFC错误                                        $    $          $    $  ANS006.BYTE008  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0004;
  $  048.SDM30-图像索引无效                                       $    $          $    $  ANS006.BYTE008  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0004;
  $  049.SDM4-校准不好                                            $    $          $    $  ANS006.BYTE008  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0004;
  $  050.SDM18-内部图像保护失败                                   $    $          $    $  ANS006.BYTE008  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0004;
  $  051.SDM13-旧的自身数据                                       $    $          $    $  ANS006.BYTE008  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  052.SDM 挑战响应误差                                         $    $          $    $  ANS006.BYTE008  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  053.SDM32-内部信号损坏                                       $    $          $    $  ANS006.BYTE008  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  054.SDM31-内部校验错误                                       $    $          $    $  ANS006.BYTE009  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0004;
  $  055.SDM27-AEB双重检查错误                                    $    $          $    $  ANS006.BYTE009  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0004;
  $  056.SDM26-DDR校验出错                                        $    $          $    $  ANS006.BYTE009  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0004;
  $  057.sdm19 图像缺失                                           $    $          $    $  ANS006.BYTE009  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0004;
  $  058.EyeQ 应用程序诊断失效                                    $    $          $    $  ANS006.BYTE009  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0004;
  $  059.EyeQ 应用程序失效                                        $    $          $    $  ANS006.BYTE009  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  060.EyeQ引导失败                                             $    $          $    $  ANS006.BYTE009  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  061.GPIO10                                                   $    $          $    $  ANS006.BYTE009  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  062.EyeQ单个启动程序丢失                                     $    $          $    $  ANS006.BYTE010  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0004;
  $  063.MCU EEPROM(电可擦只读存取器)测试失败                     $    $          $    $  ANS006.BYTE010  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0004;
  $  064.MCU RAM(随机存取存贮器)测试失败                          $    $          $    $  ANS006.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0004;
  $  065.MCU闪存校验错误                                          $    $          $    $  ANS006.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0004;
  $  066.MCU异常复位                                              $    $          $    $  ANS006.BYTE010  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0004;
  $  067.MCU PLL失败                                              $    $          $    $  ANS006.BYTE010  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  068.DAS电源2.8V欠压                                          $    $          $    $  ANS006.BYTE010  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  069.DAS电源2.8V过压                                          $    $          $    $  ANS006.BYTE010  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  070.DAS 1.2V欠压                                             $    $          $    $  ANS006.BYTE011  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0004;
  $  071.DAS 1.2V过压                                             $    $          $    $  ANS006.BYTE011  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0004;
  $  072.DAS 1.8V欠压                                             $    $          $    $  ANS006.BYTE011  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0004;
  $  073.DAS电源1.8V过压                                          $    $          $    $  ANS006.BYTE011  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0004;
  $  074.DAS电源3.3V欠压                                          $    $          $    $  ANS006.BYTE011  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0004;
  $  075.DAS 3.3V过压                                             $    $          $    $  ANS006.BYTE011  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  076.DAS 5V欠压                                               $    $          $    $  ANS006.BYTE011  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  077.DAS电源5V过压                                            $    $          $    $  ANS006.BYTE011  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  078.MCU应用程序版本与MCU标定文件不兼容                       $    $          $    $  ANS007.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  079.图像处理单元配置文件与MCU标定文件不兼容                  $    $          $    $  ANS007.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  080.MCU应用版本与图像处理单元不兼容                          $    $          $    $  ANS007.BYTE004  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  081.与BCM(车身控制管理系统)通讯丢失                          $    $          $    $  ANS008.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0004;
  $  082.与TCU(变速箱控制单元)通讯丢失                            $    $          $    $  ANS008.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0004;
  $  083.与IPK(仪表)通讯丢失                                      $    $          $    $  ANS008.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0004;
  $  084.与ABS/ESP(防抱死制动系统/电子稳定系统)模块失去通讯       $    $          $    $  ANS008.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0004;
  $  085.与SAS(方向盘转向角传感器)模块失去通讯                    $    $          $    $  ANS008.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0004;
  $  086.控制模块通信总线关闭                                     $    $          $    $  ANS008.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0004;
  $  087.电池电压过低                                             $    $          $    $  ANS008.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0004;
  $  088.电池电压过高                                             $    $          $    $  ANS008.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  089.图像处理器温度过高                                       $    $          $    $  ANS008.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0004;
  $  090.DAS驾驶辅助系统内部故障                                  $    $          $    $  ANS008.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0004;
  $  091.AHB(自动远光灯)功能因网络数据无效禁止                    $    $          $    $  ANS008.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0004;
  $  092.TSR(交通标志识别)功能因网络数据无效禁止                  $    $          $    $  ANS008.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0004;
  $  093.ACC(自适应巡航控制)功能因网络数据无效禁止                $    $          $    $  ANS008.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0004;
  $  094.AEB(自动制动系统)功能因网络数据无效禁止                  $    $          $    $  ANS008.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0004;
  $  095.FCW(正面碰撞警告)功能因网络数据无效禁止                  $    $          $    $  ANS008.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0004;
  $  096.LDW(车道偏离预警系统)功能因网络数据无效禁止              $    $          $    $  ANS008.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  097.LKA(车道保持辅助)功能因网络数据无效禁止                  $    $          $    $  ANS008.BYTE006  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0004;
  $  098.LDW(车道偏离预警系统)开关指示灯短路至地                  $    $          $    $  ANS008.BYTE006  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0004;
  $  099.LDW(车道偏离预警系统)开关按键粘滞                        $    $          $    $  ANS008.BYTE006  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0004;
  $  100.DAS驾驶辅助系统软件版本不匹配                            $    $          $    $  ANS008.BYTE006  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0004;
  $  101.DAS驾驶辅助系统标定异常                                  $    $          $    $  ANS008.BYTE006  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0004;
  $  102.DAS(驾驶辅助系统)摄像头视野遮挡                          $    $          $    $  ANS008.BYTE006  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  103.AHB(自动远光灯)功能开关                                  $    $          $    $  ANS009.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0004;
  $  104.TSR(交通标志识别)功能开关                                $    $          $    $  ANS009.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0004;
  $  105.ACC(自适应巡航控制)功能开关                              $    $          $    $  ANS009.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0004;
  $  106.AEBP(行人自动紧急制动)功能开关                           $    $          $    $  ANS009.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0004;
  $  107.AEB(自动制动系统)功能开关                                $    $          $    $  ANS009.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0004;
  $  108.PCW(行人碰撞警告)功能开关                                $    $          $    $  ANS009.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0004;
  $  109.FCW(正面碰撞警告)功能开关                                $    $          $    $  ANS009.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0004;
  $  110.LDW(车道偏离预警系统)功能开关                            $    $          $    $  ANS009.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  111.LKA(车道保持辅助)功能开关                                $    $          $    $  ANS009.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  112.车辆区域码                                               $    $          $    $  ANS010.BYTE004  $  if(x==0x00) y=@0136;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0da8;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@012b;
  $  113.FCW(正面碰撞警告)驱动选定的灵敏度等级                    $    $          $    $  ANS011.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@02ce;else if(((x&0xF0)>>4)==0x01) y=@098b;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@098c;else y=@012b;
  $  114.LDW(车道偏离预警系统)驱动选定的灵敏度等级                $    $          $    $  ANS011.BYTE004  $  if((x&0x0F)==0x00) y=@02ce;else if((x&0x0F)==0x01) y=@098b;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@098c;else y=@012b;
  $  115.AEB(自动制动系统)驱动选择的灵敏度等级                    $    $          $    $  ANS011.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@02ce;else if(((x&0xF0)>>4)==0x01) y=@098b;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@098c;else y=@012b;
  $  116.ACC(自适应巡航控制)驱动选定的目标距离等级                $    $          $    $  ANS011.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@012b;
  $  117.PCW(行人碰撞警告)驾驶员选定的灵敏度等级                  $    $          $    $  ANS011.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@02ce;else if(((x&0xF0)>>4)==0x01) y=@098b;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@098c;else y=@012b;
  $  118.AEBP(行人自动紧急制动)驱动选择的灵敏度等级               $    $          $    $  ANS011.BYTE006  $  if((x&0x0F)==0x00) y=@02ce;else if((x&0x0F)==0x01) y=@098b;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@098c;else y=@012b;
  $  119.摄像头的目标速度要求                                     $    $          $    $  ANS012.BYTE004  $  y=(x1*256+x2);
  $  120.ACC驾驶员选择的速度                                      $    $          $    $  ANS012.BYTE006  $  y=(x1*256+x2);
  $  121.摄像头到车轮外缘左侧的距离                               $    $  m       $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.01;
  $  122.摄像头到车轮外缘右侧的距离                               $    $  m       $    $  ANS013.BYTE006  $  y=(x1*256+x2)*0.01;
  $  123.摄像头到目标距离                                         $    $  m       $    $  ANS013.BYTE008  $  y=(x1*256+x2)*0.001;
  $  124.摄像头高度                                               $    $  m       $    $  ANS013.BYTE010  $  y=(x1*256+x2)*0.01;
  $  125.目标中心距地面左侧高度                                   $    $  m       $    $  ANS013.BYTE012  $  y=(x1*256+x2)*0.01;
  $  126.目标中心距地面右侧高度                                   $    $  m       $    $  ANS013.BYTE014  $  y=(x1*256+x2)*0.01;
  $  127.目标中心距汽车中心左侧的距离                             $    $  m       $    $  ANS013.BYTE016  $  y=(x1*256+x2)*0.01;
  $  128.目标中心距汽车中心右侧的距离                             $    $  m       $    $  ANS013.BYTE018  $  y=(x1*256+x2)*0.01;
  $  129.目标单个块大小，非整个目标                               $    $  rad     $    $  ANS013.BYTE020  $  y=(x1*256+x2)*0.001;
  $  130.FCW未准备好激活的原因0~7                                 $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  131.FCW无法进入的原因8~15                                    $    $          $    $  ANS014.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  132.FCW未准备好激活的年份                                    $    $          $    $  ANS014.BYTE006  $  y=x+2000;
  $  133.FCW未准备好激活的月份                                    $    $          $    $  ANS014.BYTE007  $  y=x;
  $  134.FCW异常退出时的日期                                      $    $          $    $  ANS014.BYTE008  $  y=x;
  $  135.FCW未准备好激活的时                                      $    $          $    $  ANS014.BYTE009  $  y=x;
  $  136.FCW异常退出时的分钟                                      $    $          $    $  ANS014.BYTE010  $  y=x;
  $  137.FCW未准备好激活的秒                                      $    $          $    $  ANS014.BYTE011  $  y=x;
  $  138.FCW未准备好激活的里程                                    $    $  km      $    $  ANS014.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  139.FCW未准备好激活的原因0~7                                 $    $          $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  140.FCW无法进入的原因8~15                                    $    $          $    $  ANS015.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  141.FCW退出激活状态的原因0~7(B094)                           $    $          $    $  ANS016.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0dc1;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  142.FCW退出激活状态的原因8~15(B094)                          $    $          $    $  ANS016.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  143.FCW退出激活状态的原因0~7                                 $    $          $    $  ANS017.BYTE004  $  if(x==0x01) y=@0dc2;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  144.FCW从激活状态异常退出原因8~15                            $    $          $    $  ANS017.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  145.FCW异常退出时的年份                                      $    $          $    $  ANS017.BYTE006  $  y=x+2000;
  $  146.FCW异常退出时的月份                                      $    $          $    $  ANS017.BYTE007  $  y=x;
  $  147.FCW异常退出时的日期                                      $    $          $    $  ANS017.BYTE008  $  y=x;
  $  148.FCW异常退出时的时刻                                      $    $          $    $  ANS017.BYTE009  $  y=x;
  $  149.FCW退出事件分                                            $    $          $    $  ANS017.BYTE010  $  y=x;
  $  150.FCW异常退出时的秒数                                      $    $          $    $  ANS017.BYTE011  $  y=x;
  $  151.FCW异常退出时的年份                                      $    $  km      $    $  ANS017.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  152.FCW退出激活状态的原因0~7                                 $    $          $    $  ANS018.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  153.FCW从激活状态异常退出原因8~15                            $    $          $    $  ANS018.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  154.AHB(自动远光灯)功能开关                                  $    $          $    $  ANS019.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0004;
  $  155.TSR(交通标志识别)功能开关                                $    $          $    $  ANS019.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0004;
  $  156.ACC(自适应巡航控制)功能开关                              $    $          $    $  ANS019.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0004;
  $  157.AEBP(行人自动紧急制动)功能开关                           $    $          $    $  ANS019.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0004;
  $  158.AEB(自动制动系统)功能开关                                $    $          $    $  ANS019.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0004;
  $  159.PCW(行人碰撞警告)功能开关                                $    $          $    $  ANS019.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0004;
  $  160.FCW(正面碰撞警告)功能开关                                $    $          $    $  ANS019.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0004;
  $  161.LDW(车道偏离预警系统)功能开关                            $    $          $    $  ANS019.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  162.LKA(车道保持辅助)功能开关                                $    $          $    $  ANS019.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  163.IHC未准备好激活的原因0~7                                 $    $          $    $  ANS020.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  164.IHC异常退出时的年份                                      $    $          $    $  ANS020.BYTE006  $  y=x+2000;
  $  165.IHC异常退出时的月份                                      $    $          $    $  ANS020.BYTE007  $  y=x;
  $  166.IHC异常退出时的日期                                      $    $          $    $  ANS020.BYTE008  $  y=x;
  $  167.IHC异常退出时的时刻                                      $    $          $    $  ANS020.BYTE009  $  y=x;
  $  168.IHC异常退出时的分钟                                      $    $          $    $  ANS020.BYTE010  $  y=x;
  $  169.IHC未准备好激活的秒                                      $    $          $    $  ANS020.BYTE011  $  y=x;
  $  170.IHC异常退出时的年份                                      $    $  km      $    $  ANS020.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  171.IHC未准备好激活的原因0~7                                 $    $          $    $  ANS021.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  172.IHC退出激活状态的原因0~7(B096)                           $    $          $    $  ANS022.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  173.IHC退出激活状态的原因0~7                                 $    $          $    $  ANS023.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  174.IHC异常退出时的年份                                      $    $          $    $  ANS023.BYTE006  $  y=x+2000;
  $  175.IHC异常退出时的月份                                      $    $          $    $  ANS023.BYTE007  $  y=x;
  $  176.IHC异常退出时的日期                                      $    $          $    $  ANS023.BYTE008  $  y=x;
  $  177.IHC异常退出时的时刻                                      $    $          $    $  ANS023.BYTE009  $  y=x;
  $  178.IHC异常退出时的分钟                                      $    $          $    $  ANS023.BYTE010  $  y=x;
  $  179.IHC异常退出时的秒数                                      $    $          $    $  ANS023.BYTE011  $  y=x;
  $  180.IHC异常退出时的年份                                      $    $  km      $    $  ANS023.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  181.IHC退出激活状态的原因0~7                                 $    $          $    $  ANS024.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;

  $)  02.数据流3
  $  02.数据流3
  $  REQ000:74A 03 22 D0 01 00 00 00 00       $  ANS000:7CA 03 22 D0 01 00 00 00 00
  $  REQ001:74A 03 22 B0 31 00 00 00 00       $  ANS001:7CA 03 22 B0 31 00 00 00 00
  $  REQ002:74A 03 22 B0 02 00 00 00 00       $  ANS002:7CA 03 22 B0 02 00 00 00 00
  $  REQ003:74A 03 22 B0 01 00 00 00 00       $  ANS003:7CA 03 22 B0 01 00 00 00 00
  $  REQ004:74A 03 22 B0 71 00 00 00 00       $  ANS004:7CA 03 22 B0 71 00 00 00 00
  $  REQ005:74A 03 22 B0 73 00 00 00 00       $  ANS005:7CA 03 22 B0 73 00 00 00 00
  $  REQ006:74A 03 22 B0 93 00 00 00 00       $  ANS006:7CA 03 22 B0 93 00 00 00 00
  $  REQ007:74A 03 22 B0 70 00 00 00 00       $  ANS007:7CA 03 22 B0 70 00 00 00 00
  $  REQ008:74A 03 22 B0 72 00 00 00 00       $  ANS008:7CA 03 22 B0 72 00 00 00 00
  $  REQ009:74A 03 22 D0 03 00 00 00 00       $  ANS009:7CA 03 22 D0 03 00 00 00 00
  $  REQ010:74A 03 22 D0 02 00 00 00 00       $  ANS010:7CA 03 22 D0 02 00 00 00 00
  $  REQ011:74A 03 22 B0 A5 00 00 00 00       $  ANS011:7CA 03 22 B0 A5 00 00 00 00
  $  REQ012:74A 03 22 B0 A6 00 00 00 00       $  ANS012:7CA 03 22 B0 A6 00 00 00 00
  $  REQ013:74A 03 22 B0 A7 00 00 00 00       $  ANS013:7CA 03 22 B0 A7 00 00 00 00
  $  REQ014:74A 03 22 B0 A8 00 00 00 00       $  ANS014:7CA 03 22 B0 A8 00 00 00 00
  $  REQ015:74A 03 22 B0 A9 00 00 00 00       $  ANS015:7CA 03 22 B0 A9 00 00 00 00
  $  REQ016:74A 03 22 B0 AB 00 00 00 00       $  ANS016:7CA 03 22 B0 AB 00 00 00 00
  $  REQ017:74A 03 22 B0 97 00 00 00 00       $  ANS017:7CA 03 22 B0 97 00 00 00 00
  $  REQ018:74A 03 22 B0 A0 00 00 00 00       $  ANS018:7CA 03 22 B0 A0 00 00 00 00
  $  REQ019:74A 03 22 B0 A1 00 00 00 00       $  ANS019:7CA 03 22 B0 A1 00 00 00 00
  $  REQ020:74A 03 22 B0 A2 00 00 00 00       $  ANS020:7CA 03 22 B0 A2 00 00 00 00
  $  REQ021:74A 03 22 B0 A3 00 00 00 00       $  ANS021:7CA 03 22 B0 A3 00 00 00 00
  $  REQ022:74A 03 22 B0 A4 00 00 00 00       $  ANS022:7CA 03 22 B0 A4 00 00 00 00
  $  REQ023:74A 03 22 B0 AA 00 00 00 00       $  ANS023:7CA 03 22 B0 AA 00 00 00 00
  $  REQ024:74A 03 22 B0 30 00 00 00 00       $  ANS024:7CA 03 22 B0 30 00 00 00 00
  $  REQ025:74A 03 22 E1 01 00 00 00 00       $  ANS025:7CA 03 22 E1 01 00 00 00 00
  $  REQ026:74A 03 22 C0 05 00 00 00 00       $  ANS026:7CA 03 22 C0 05 00 00 00 00
  $  REQ027:74A 03 22 B0 90 00 00 00 00       $  ANS027:7CA 03 22 B0 90 00 00 00 00
  $  REQ028:74A 03 22 C0 08 00 00 00 00       $  ANS028:7CA 03 22 C0 08 00 00 00 00
  $  REQ029:74A 03 22 C0 03 00 00 00 00       $  ANS029:7CA 03 22 C0 03 00 00 00 00
  $  REQ030:74A 03 22 C0 06 00 00 00 00       $  ANS030:7CA 03 22 C0 06 00 00 00 00
  $  REQ031:74A 03 22 B0 47 00 00 00 00       $  ANS031:7CA 03 22 B0 47 00 00 00 00
  $  REQ032:74A 03 22 C0 09 00 00 00 00       $  ANS032:7CA 03 22 C0 09 00 00 00 00
  $  REQ033:74A 03 22 B0 79 00 00 00 00       $  ANS033:7CA 03 22 B0 79 00 00 00 00
  $  REQ034:74A 03 22 B0 7B 00 00 00 00       $  ANS034:7CA 03 22 B0 7B 00 00 00 00
  $  REQ035:74A 03 22 B0 95 00 00 00 00       $  ANS035:7CA 03 22 B0 95 00 00 00 00
  $  REQ036:74A 03 22 B0 78 00 00 00 00       $  ANS036:7CA 03 22 B0 78 00 00 00 00
  $  REQ037:74A 03 22 B0 7A 00 00 00 00       $  ANS037:7CA 03 22 B0 7A 00 00 00 00
  $  REQ038:74A 03 22 B0 00 00 00 00 00       $  ANS038:7CA 03 22 B0 00 00 00 00 00

  $  000.全局KL.50状态                                    $    $          $    $  ANS000.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0004;
  $  001.全局发动机运行状态                               $    $          $    $  ANS000.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0004;
  $  002.全局 KL.15 状态                                  $    $          $    $  ANS000.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0004;
  $  003.全局KL.R状态                                     $    $          $    $  ANS000.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0004;
  $  004.系统KL.50状态                                    $    $          $    $  ANS000.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0004;
  $  005.系统发动机运转状态                               $    $          $    $  ANS000.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0004;
  $  006.系统KL.15状态                                    $    $          $    $  ANS000.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0004;
  $  007.系统KL.R状态                                     $    $          $    $  ANS000.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  008.图像处理单元温度                                 $    $          $    $  ANS001.BYTE004  $  y=(x1*256+x2)-40;
  $  009.图像处理单元供电模式                             $    $          $    $  ANS002.BYTE004  $  if(x==0x00) y=@0908;else if(x==0x01) y=@0dc3;else if(x==0x02) y=@090a;else if(x==0x03) y=@090b;else if(x==0x04) y=@090c;else if(x==0x05) y=@090d;else y=@012b;
  $  010.图像处理单元运行状态                             $    $          $    $  ANS003.BYTE004  $  if(x==0x00) y=@000f;else if(x==0x02) y=@0dc4;else if(x==0x03) y=@090f;else if(x==0x22) y=@0dc5;else if(x==0x82) y=@0dc6;else if(x==0x85) y=@0dc7;else if(x==0x92) y=@0dc8;else if(x==0xAA) y=@0dc9;else if(x==0xAC) y=@0dca;else y=@012b;
  $  011.LDW未准备好激活的原因0~7                         $    $          $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  012.LDW无法进入为原因8~15时的状态                    $    $          $    $  ANS004.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  013.LDW异常退出时的年份                              $    $          $    $  ANS004.BYTE006  $  y=x+2000;
  $  014.LDW未准备好激活的月份                            $    $          $    $  ANS004.BYTE007  $  y=x;
  $  015.LDW未准备好激活的日                              $    $          $    $  ANS004.BYTE008  $  y=x;
  $  016.LDW异常退出时的时刻                              $    $          $    $  ANS004.BYTE009  $  y=x;
  $  017.LDW异常退出时的分钟                              $    $          $    $  ANS004.BYTE010  $  y=x;
  $  018.LDW异常退出时的秒数                              $    $          $    $  ANS004.BYTE011  $  y=x;
  $  019.LDW未准备好激活的里程                            $    $  km      $    $  ANS004.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  020.LDW未准备好激活的原因0~7                         $    $          $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  021.LDW无法进入为原因8~15时的状态                    $    $          $    $  ANS005.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  022.LDW未准备好激活的原因0~7(B093)                   $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  023.LDW未准备好激活的原因0~78~15(B093)               $    $          $    $  ANS006.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  024.LDW退出激活状态的原因0~7                         $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0daf;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0db1;else if(x==0x10) y=@0db2;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0db3;else if(x==0x80) y=@0db4;else y=@012b;
  $  025.LDW从激活状态异常退出为原因8~15的状态            $    $          $    $  ANS007.BYTE005  $  if(x==0x01) y=@0db5;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0db6;else if(x==0x10) y=@0db7;else y=@0004;
  $  026.LDW异常退出时的年份                              $    $          $    $  ANS007.BYTE006  $  y=x+2000;
  $  027.LDW异常退出时的月份                              $    $          $    $  ANS007.BYTE007  $  y=x;
  $  028.LDW异常退出时的日期                              $    $          $    $  ANS007.BYTE008  $  y=x;
  $  029.LDW退出活动时                                    $    $          $    $  ANS007.BYTE009  $  y=x;
  $  030.LDW异常退出时的分钟                              $    $          $    $  ANS007.BYTE010  $  y=x;
  $  031.LDW异常退出时的秒数                              $    $          $    $  ANS007.BYTE011  $  y=x;
  $  032.LDW退出事件里程                                  $    $  km      $    $  ANS007.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  033.LDW退出激活状态的原因0~7                         $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  034.LDW从激活状态异常退出为原因8~15的状态            $    $          $    $  ANS008.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  035.LDW(车道偏离预警系统)开关                        $    $          $    $  ANS009.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  036.LDW(车道偏离预警系统)开关指示灯                  $    $          $    $  ANS010.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  037.LKA未准备好激活的原因0~7                         $    $          $    $  ANS011.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  038.LKA未准备好激活的原因8~15                        $    $          $    $  ANS011.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  039.LKA未准备好激活的原因16~23                       $    $          $    $  ANS011.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  040.LKA未准备好激活的原因24~31                       $    $          $    $  ANS011.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  041.LKA未准备好激活的原因32~39                       $    $          $    $  ANS011.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  042.LKA未准备好激活的原因40~47                       $    $          $    $  ANS011.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  043.LKA未准备好激活的故障安全标志                    $    $          $    $  ANS011.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  044.LKA未准备好激活的年份                            $    $          $    $  ANS011.BYTE012  $  y=x+2000;
  $  045.LKA未准备好激活的月份                            $    $          $    $  ANS011.BYTE013  $  y=x;
  $  046.LKA未准备好激活的日                              $    $          $    $  ANS011.BYTE014  $  y=x;
  $  047.LKA未准备好激活的时                              $    $          $    $  ANS011.BYTE015  $  y=x;
  $  048.LKA未准备好激活的分                              $    $          $    $  ANS011.BYTE016  $  y=x;
  $  049.LKA异常退出时的秒数                              $    $          $    $  ANS011.BYTE017  $  y=x;
  $  050.LKA未准备好激活的里程                            $    $  km      $    $  ANS011.BYTE020  $  y=x;
  $  051.LKA未准备好激活的原因0~7                         $    $          $    $  ANS012.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  052.LKA未准备好激活的原因8~15                        $    $          $    $  ANS012.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  053.LKA未准备好激活的原因16~23                       $    $          $    $  ANS012.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  054.LKA未准备好激活的原因24~31                       $    $          $    $  ANS012.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  055.LKA未准备好激活的原因32~39                       $    $          $    $  ANS012.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  056.LKA未准备好激活的原因40~47                       $    $          $    $  ANS012.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  057.LKA未准备好激活的故障安全标志                    $    $          $    $  ANS012.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  058.LKA未准备好激活的年份                            $    $          $    $  ANS012.BYTE012  $  y=x+2000;
  $  059.LKA未准备好激活的月份                            $    $          $    $  ANS012.BYTE013  $  y=x;
  $  060.LKA未准备好激活的日                              $    $          $    $  ANS012.BYTE014  $  y=x;
  $  061.LKA未准备好激活的时                              $    $          $    $  ANS012.BYTE015  $  y=x;
  $  062.LKA未准备好激活的分                              $    $          $    $  ANS012.BYTE016  $  y=x;
  $  063.LKA异常退出时的秒数                              $    $          $    $  ANS012.BYTE017  $  y=x;
  $  064.LKA未准备好激活的里程                            $    $  km      $    $  ANS012.BYTE020  $  y=x;
  $  065.LKA未准备好激活的原因0~7                         $    $          $    $  ANS013.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  066.LKA未准备好激活的原因8~15                        $    $          $    $  ANS013.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  067.LKA未准备好激活的原因16~23                       $    $          $    $  ANS013.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  068.LKA未准备好激活的原因24~31                       $    $          $    $  ANS013.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  069.LKA未准备好激活的原因32~39                       $    $          $    $  ANS013.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  070.LKA未准备好激活的原因40~47                       $    $          $    $  ANS013.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  071.LKA未准备好激活的故障安全标志                    $    $          $    $  ANS013.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  072.LKA未准备好激活的年份                            $    $          $    $  ANS013.BYTE012  $  y=x+2000;
  $  073.LKA未准备好激活的月份                            $    $          $    $  ANS013.BYTE013  $  y=x;
  $  074.LKA未准备好激活的日                              $    $          $    $  ANS013.BYTE014  $  y=x;
  $  075.LKA未准备好激活的时                              $    $          $    $  ANS013.BYTE015  $  y=x;
  $  076.LKA未准备好激活的分                              $    $          $    $  ANS013.BYTE016  $  y=x;
  $  077.LKA异常退出时的秒数                              $    $          $    $  ANS013.BYTE017  $  y=x;
  $  078.LKA未准备好激活的里程                            $    $  km      $    $  ANS013.BYTE020  $  y=x;
  $  079.LKA未准备好激活的原因0~7                         $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  080.LKA未准备好激活的原因8~15                        $    $          $    $  ANS014.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  081.LKA未准备好激活的原因16~23                       $    $          $    $  ANS014.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  082.LKA未准备好激活的原因24~31                       $    $          $    $  ANS014.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  083.LKA未准备好激活的原因32~39                       $    $          $    $  ANS014.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  084.LKA未准备好激活的原因40~47                       $    $          $    $  ANS014.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  085.LKA未准备好激活的故障安全标志                    $    $          $    $  ANS014.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  086.LKA未准备好激活的年份                            $    $          $    $  ANS014.BYTE012  $  y=x+2000;
  $  087.LKA未准备好激活的月份                            $    $          $    $  ANS014.BYTE013  $  y=x;
  $  088.LKA未准备好激活的日                              $    $          $    $  ANS014.BYTE014  $  y=x;
  $  089.LKA未准备好激活的时                              $    $          $    $  ANS014.BYTE015  $  y=x;
  $  090.LKA未准备好激活的分                              $    $          $    $  ANS014.BYTE016  $  y=x;
  $  091.LKA异常退出时的秒数                              $    $          $    $  ANS014.BYTE017  $  y=x;
  $  092.LKA未准备好激活的里程                            $    $  km      $    $  ANS014.BYTE020  $  y=x;
  $  093.LKA未准备好激活的原因0~7                         $    $          $    $  ANS015.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  094.LKA未准备好激活的原因8~15                        $    $          $    $  ANS015.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  095.LKA未准备好激活的原因16~23                       $    $          $    $  ANS015.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  096.LKA未准备好激活的原因24~31                       $    $          $    $  ANS015.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  097.LKA未准备好激活的原因32~39                       $    $          $    $  ANS015.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  098.LKA未准备好激活的原因40~47                       $    $          $    $  ANS015.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  099.LKA未准备好激活的故障安全标志                    $    $          $    $  ANS015.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  100.LKA未准备好激活的年份                            $    $          $    $  ANS015.BYTE012  $  y=x+2000;
  $  101.LKA未准备好激活的月份                            $    $          $    $  ANS015.BYTE013  $  y=x;
  $  102.LKA未准备好激活的日                              $    $          $    $  ANS015.BYTE014  $  y=x;
  $  103.LKA未准备好激活的时                              $    $          $    $  ANS015.BYTE015  $  y=x;
  $  104.LKA未准备好激活的分                              $    $          $    $  ANS015.BYTE016  $  y=x;
  $  105.LKA异常退出时的秒数                              $    $          $    $  ANS015.BYTE017  $  y=x;
  $  106.LKA未准备好激活的里程                            $    $  km      $    $  ANS015.BYTE020  $  y=x;
  $  107.LKA未准备好激活的原因0~7                         $    $          $    $  ANS016.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@012b;
  $  108.LKA未准备好激活的原因8~15                        $    $          $    $  ANS016.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@012b;
  $  109.LKA未准备好激活的原因16~23                       $    $          $    $  ANS016.BYTE006  $  if(x==0x01) y=@0b34;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@012b;
  $  110.LKA未准备好激活的原因24~31                       $    $          $    $  ANS016.BYTE007  $  if(x==0x01) y=@0de2;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  111.LKA未准备好激活的原因32~39                       $    $          $    $  ANS016.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  112.LKA未准备好激活的原因40~47                       $    $          $    $  ANS016.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  113.LKA退出激活状态的原因0~7                         $    $          $    $  ANS017.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  114.LKA退出激活状态的原因8~15                        $    $          $    $  ANS017.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  115.LKA退出激活状态的原因16~23                       $    $          $    $  ANS017.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  116.LKA退出激活状态的原因24~31                       $    $          $    $  ANS017.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  117.LKA退出激活状态的原因32~39                       $    $          $    $  ANS017.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  118.LKA退出激活状态的原因40~47                       $    $          $    $  ANS017.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  119.LKA退出激活状态的原因0~7                         $    $          $    $  ANS018.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  120.LKA退出激活状态的原因8~15                        $    $          $    $  ANS018.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  121.LKA退出激活状态的原因16~23                       $    $          $    $  ANS018.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  122.LKA退出激活状态的原因24~31                       $    $          $    $  ANS018.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  123.LKA退出激活状态的原因32~39                       $    $          $    $  ANS018.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  124.LKA退出激活状态的原因40~47                       $    $          $    $  ANS018.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  125.LKA退出激活状态的故障安全标志                    $    $          $    $  ANS018.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  126.LKA异常退出时的年份                              $    $          $    $  ANS018.BYTE012  $  y=x+2000;
  $  127.LKA异常退出时的月份                              $    $          $    $  ANS018.BYTE013  $  y=x;
  $  128.LKA异常退出时的日期                              $    $          $    $  ANS018.BYTE014  $  y=x;
  $  129.LKA异常退出时的时刻                              $    $          $    $  ANS018.BYTE015  $  y=x;
  $  130.LKA异常退出时的分钟                              $    $          $    $  ANS018.BYTE016  $  y=x;
  $  131.LKA异常退出时的秒数                              $    $          $    $  ANS018.BYTE017  $  y=x;
  $  132.LKA退出事件里程                                  $    $  km      $    $  ANS018.BYTE020  $  y=x;
  $  133.LKA退出激活状态的原因0~7                         $    $          $    $  ANS019.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  134.LKA退出激活状态的原因8~15                        $    $          $    $  ANS019.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  135.LKA退出激活状态的原因16~23                       $    $          $    $  ANS019.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  136.LKA退出激活状态的原因24~31                       $    $          $    $  ANS019.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  137.LKA退出激活状态的原因32~39                       $    $          $    $  ANS019.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  138.LKA退出激活状态的原因40~47                       $    $          $    $  ANS019.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  139.LKA退出激活状态的故障安全标志                    $    $          $    $  ANS019.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  140.LKA异常退出时的年份                              $    $          $    $  ANS019.BYTE012  $  y=x+2000;
  $  141.LKA异常退出时的月份                              $    $          $    $  ANS019.BYTE013  $  y=x;
  $  142.LKA异常退出时的日期                              $    $          $    $  ANS019.BYTE014  $  y=x;
  $  143.LKA异常退出时的时刻                              $    $          $    $  ANS019.BYTE015  $  y=x;
  $  144.LKA异常退出时的分钟                              $    $          $    $  ANS019.BYTE016  $  y=x;
  $  145.LKA异常退出时的秒数                              $    $          $    $  ANS019.BYTE017  $  y=x;
  $  146.LKA退出事件里程                                  $    $  km      $    $  ANS019.BYTE020  $  y=x;
  $  147.LKA退出激活状态的原因0~7                         $    $          $    $  ANS020.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  148.LKA退出激活状态的原因8~15                        $    $          $    $  ANS020.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  149.LKA退出激活状态的原因16~23                       $    $          $    $  ANS020.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  150.LKA退出激活状态的原因24~31                       $    $          $    $  ANS020.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  151.LKA退出激活状态的原因32~39                       $    $          $    $  ANS020.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  152.LKA退出激活状态的原因40~47                       $    $          $    $  ANS020.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  153.LKA退出激活状态的故障安全标志                    $    $          $    $  ANS020.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  154.LKA异常退出时的年份                              $    $          $    $  ANS020.BYTE012  $  y=x+2000;
  $  155.LKA异常退出时的月份                              $    $          $    $  ANS020.BYTE013  $  y=x;
  $  156.LKA异常退出时的日期                              $    $          $    $  ANS020.BYTE014  $  y=x;
  $  157.LKA异常退出时的时刻                              $    $          $    $  ANS020.BYTE015  $  y=x;
  $  158.LKA异常退出时的分钟                              $    $          $    $  ANS020.BYTE016  $  y=x;
  $  159.LKA异常退出时的秒数                              $    $          $    $  ANS020.BYTE017  $  y=x;
  $  160.LKA退出事件里程                                  $    $  km      $    $  ANS020.BYTE020  $  y=x;
  $  161.LKA退出激活状态的原因0~7                         $    $          $    $  ANS021.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  162.LKA退出激活状态的原因8~15                        $    $          $    $  ANS021.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  163.LKA退出激活状态的原因16~23                       $    $          $    $  ANS021.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  164.LKA退出激活状态的原因24~31                       $    $          $    $  ANS021.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  165.LKA退出激活状态的原因32~39                       $    $          $    $  ANS021.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  166.LKA退出激活状态的原因40~47                       $    $          $    $  ANS021.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  167.LKA退出激活状态的故障安全标志                    $    $          $    $  ANS021.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  168.LKA异常退出时的年份                              $    $          $    $  ANS021.BYTE012  $  y=x+2000;
  $  169.LKA异常退出时的月份                              $    $          $    $  ANS021.BYTE013  $  y=x;
  $  170.LKA异常退出时的日期                              $    $          $    $  ANS021.BYTE014  $  y=x;
  $  171.LKA异常退出时的时刻                              $    $          $    $  ANS021.BYTE015  $  y=x;
  $  172.LKA异常退出时的分钟                              $    $          $    $  ANS021.BYTE016  $  y=x;
  $  173.LKA异常退出时的秒数                              $    $          $    $  ANS021.BYTE017  $  y=x;
  $  174.LKA退出事件里程                                  $    $  km      $    $  ANS021.BYTE020  $  y=x;
  $  175.LKA退出激活状态的原因0~7                         $    $          $    $  ANS022.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  176.LKA退出激活状态的原因8~15                        $    $          $    $  ANS022.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  177.LKA退出激活状态的原因16~23                       $    $          $    $  ANS022.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  178.LKA退出激活状态的原因24~31                       $    $          $    $  ANS022.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  179.LKA退出激活状态的原因32~39                       $    $          $    $  ANS022.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  180.LKA退出激活状态的原因40~47                       $    $          $    $  ANS022.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  181.LKA退出激活状态的故障安全标志                    $    $          $    $  ANS022.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  182.LKA异常退出时的年份                              $    $          $    $  ANS022.BYTE012  $  y=x+2000;
  $  183.LKA异常退出时的月份                              $    $          $    $  ANS022.BYTE013  $  y=x;
  $  184.LKA异常退出时的日期                              $    $          $    $  ANS022.BYTE014  $  y=x;
  $  185.LKA异常退出时的时刻                              $    $          $    $  ANS022.BYTE015  $  y=x;
  $  186.LKA异常退出时的分钟                              $    $          $    $  ANS022.BYTE016  $  y=x;
  $  187.LKA异常退出时的秒数                              $    $          $    $  ANS022.BYTE017  $  y=x;
  $  188.LKA退出事件里程                                  $    $  km      $    $  ANS022.BYTE020  $  y=x;
  $  189.LKA退出激活状态的原因0~7                         $    $          $    $  ANS023.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  190.LKA退出激活状态的原因8~15                        $    $          $    $  ANS023.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  191.LKA退出激活状态的原因16~23                       $    $          $    $  ANS023.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  192.LKA退出激活状态的原因24~31                       $    $          $    $  ANS023.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  193.LKA退出激活状态的原因32~39                       $    $          $    $  ANS023.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  194.LKA退出激活状态的原因40~47                       $    $          $    $  ANS023.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  195.AHB自动大灯系统启用                              $    $          $    $  ANS024.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00b1;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0004;
  $  196.TSR(交通标志识别)启用                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00b1;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0004;
  $  197.ACC(自适应巡航控制)启用                          $    $          $    $  ANS024.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00b1;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0004;
  $  198.AEBP(行人自动紧急制动)启用                       $    $          $    $  ANS024.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00b1;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0004;
  $  199.AEB(自动制动系统)启用                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00b1;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0004;
  $  200.PCW(行人碰撞警告)启用                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00b1;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0004;
  $  201.FCW(正面碰撞警告)启用                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00b1;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0004;
  $  202.LDW(车道偏离预警系统)启用                        $    $          $    $  ANS024.BYTE004  $  if((x&0x01)==0x00) y=@00b1;else if((x&0x01)==0x01) y=@00dc;else y=@0004;
  $  203.LKA(车道保持辅助)启用                            $    $          $    $  ANS024.BYTE005  $  if((x&0x01)==0x00) y=@00b1;else if((x&0x01)==0x01) y=@00dc;else y=@0004;
  $  204.功能启用信号效验                                 $    $          $    $  ANS024.BYTE006  $  HEX(X1);
  $  205.里程表读数                                       $    $  km      $    $  ANS025.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  206.车辆区域码                                       $    $          $    $  ANS026.BYTE004  $  if(x==0x00) y=@0136;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0da8;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@012b;
  $  207.刷写检测错误                                     $    $          $    $  ANS027.BYTE006  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  208.PLL(锁相环)校验错误                              $    $          $    $  ANS027.BYTE007  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  209.内存校验错误                                     $    $          $    $  ANS027.BYTE008  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  210.堆栈检测错误                                     $    $          $    $  ANS027.BYTE009  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  211.未使用的存储区校验错误                           $    $          $    $  ANS027.BYTE010  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  212.ECC(错误检查和纠正)校验错误                      $    $          $    $  ANS027.BYTE011  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  213.常量寄存器校验错误                               $    $          $    $  ANS027.BYTE012  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  214.Spi超时                                          $    $          $    $  ANS027.BYTE013  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  215.ESR0重置次数                                     $    $          $    $  ANS027.BYTE014  $  y=x;
  $  216.ESR1重置次数                                     $    $          $    $  ANS027.BYTE015  $  y=x;
  $  217.SMU的复位计数器                                  $    $          $    $  ANS027.BYTE016  $  y=x;
  $  218.软件复位的复位计数器                             $    $          $    $  ANS027.BYTE017  $  y=x;
  $  219.STM0重置次数                                     $    $          $    $  ANS027.BYTE018  $  y=x;
  $  220.STM1重置次数                                     $    $          $    $  ANS027.BYTE019  $  y=x;
  $  221.STM2重置次数                                     $    $          $    $  ANS027.BYTE020  $  y=x;
  $  222.MultipleReset重置次数                            $    $          $    $  ANS027.BYTE021  $  y=x;
  $  223.CB0重置次数                                      $    $          $    $  ANS027.BYTE022  $  y=x;
  $  224.CB1重置次数                                      $    $          $    $  ANS027.BYTE023  $  y=x;
  $  225.CB3重置次数                                      $    $          $    $  ANS027.BYTE024  $  y=x;
  $  226.调优保护的复位计数器                             $    $          $    $  ANS027.BYTE025  $  y=x;
  $  227.EVR13的复位计数器                                $    $          $    $  ANS027.BYTE026  $  y=x;
  $  228.EVR33的复位计数器                                $    $          $    $  ANS027.BYTE027  $  y=x;
  $  229.电子看门狗的复位计数器                           $    $          $    $  ANS027.BYTE028  $  y=x;
  $  230.备用看门狗的复位计数器                           $    $          $    $  ANS027.BYTE029  $  y=x;
  $  231.可靠性数据年份                                   $    $          $    $  ANS027.BYTE030  $  y=x+2000;
  $  232.可靠性数据月份                                   $    $          $    $  ANS027.BYTE031  $  y=x;
  $  233.可靠性数据日期                                   $    $          $    $  ANS027.BYTE032  $  y=x;
  $  234.可靠性数据时                                     $    $          $    $  ANS027.BYTE033  $  y=x;
  $  235.可靠性数据分                                     $    $          $    $  ANS027.BYTE034  $  y=x;
  $  236.可靠性数据秒                                     $    $          $    $  ANS027.BYTE035  $  y=x;
  $  237.可靠性数据里程                                   $    $  km      $    $  ANS027.BYTE036  $  y=(x1*256*256+x2*256+x3);
  $  238.车型配置                                         $    $          $    $  ANS028.BYTE004  $  if(x==0x01) y=@0de6;else if(x==0x02) y=@0de7;else if(x==0x03) y=@0de8;else if(x==0x04) y=@0de9;else if(x==0x05) y=@0dea;else if(x==0x06) y=@0deb;else if(x==0x07) y=@0dec;else if(x==0x08) y=@0ded;else y=@0004;
  $  239.FCW(正面碰撞警告)驱动选定的灵敏度等级            $    $          $    $  ANS029.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@02ce;else if(((x&0xF0)>>4)==0x01) y=@098b;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@098c;else y=@012b;
  $  240.LDW(车道偏离预警系统)驱动选定的灵敏度等级        $    $          $    $  ANS029.BYTE004  $  if((x&0x0F)==0x00) y=@02ce;else if((x&0x0F)==0x01) y=@098b;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@098c;else y=@012b;
  $  241.AEB(自动制动系统)驱动选择的灵敏度等级            $    $          $    $  ANS029.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@02ce;else if(((x&0xF0)>>4)==0x01) y=@098b;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@098c;else y=@012b;
  $  242.ACC(自适应巡航控制)驱动选定的目标距离等级        $    $          $    $  ANS029.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@012b;
  $  243.PCW(行人碰撞警告)驾驶员选定的灵敏度等级          $    $          $    $  ANS029.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@02ce;else if(((x&0xF0)>>4)==0x01) y=@098b;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@098c;else y=@012b;
  $  244.AEBP(行人自动紧急制动)驱动选择的灵敏度等级       $    $          $    $  ANS029.BYTE006  $  if((x&0x0F)==0x00) y=@02ce;else if((x&0x0F)==0x01) y=@098b;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@098c;else y=@012b;
  $  245.摄像头的目标速度要求                             $    $          $    $  ANS030.BYTE004  $  y=(x1*256+x2);
  $  246.ACC驾驶员选择的速度                              $    $          $    $  ANS030.BYTE006  $  y=(x1*256+x2);
  $  247.供应商芯片跟踪号                                 $    $          $    $  ANS031.BYTE004  $  y=UINT64(x1,x2,x3,x4,x5,x6,x7,x8);
  $  248.自动变速箱控制单元种类                           $    $          $    $  ANS032.BYTE004  $  if(x==0x01) y=@0dee;else if(x==0x02) y=@0164;else y=@0004;
  $  249.TSR未准备好激活的原因0~7                         $    $          $    $  ANS033.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  250.TSR未准备好激活的年份                            $    $          $    $  ANS033.BYTE006  $  y=x+2000;
  $  251.TSR未准备好激活的月份                            $    $          $    $  ANS033.BYTE007  $  y=x;
  $  252.TSR异常退出时的日期                              $    $          $    $  ANS033.BYTE008  $  y=x;
  $  253.TSR未准备好激活的时                              $    $          $    $  ANS033.BYTE009  $  y=x;
  $  254.TSR异常退出时的分钟                              $    $          $    $  ANS033.BYTE010  $  y=x;
  $  255.TSR未准备好激活的秒                              $    $          $    $  ANS033.BYTE011  $  y=x;
  $  256.TSR异常退出时的年份                              $    $  km      $    $  ANS033.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  257.TSR未准备好激活的原因0~7                         $    $          $    $  ANS034.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  258.TSR未准备好激活的原因8~15                        $    $          $    $  ANS034.BYTE005  $  if(x==0x00)y=@075a;else y=@0dde;
  $  259.TSR退出激活状态的原因0~7(B095)                   $    $          $    $  ANS035.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  260.TSR退出激活状态的原因8~15(B095)                  $    $          $    $  ANS035.BYTE005  $  if(x==0x00)y=@075a;else y=@0dde;
  $  261.TSR退出激活状态的原因0~7                         $    $          $    $  ANS036.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  262.TSR异常退出时的年份                              $    $          $    $  ANS036.BYTE006  $  y=x+2000;
  $  263.TSR异常退出时的月份                              $    $          $    $  ANS036.BYTE007  $  y=x;
  $  264.TSR异常退出时的日期                              $    $          $    $  ANS036.BYTE008  $  y=x;
  $  265.TSR异常退出时的时刻                              $    $          $    $  ANS036.BYTE009  $  y=x;
  $  266.TSR异常退出时的分钟                              $    $          $    $  ANS036.BYTE010  $  y=x;
  $  267.TSR退出事件秒                                    $    $          $    $  ANS036.BYTE011  $  y=x;
  $  268.TSR退出事件里程                                  $    $  km      $    $  ANS036.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  269.TSR退出激活状态的原因0~7                         $    $          $    $  ANS037.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  270.TSR退出激活状态的原因8~15                        $    $          $    $  ANS037.BYTE005  $  if(x==0x00)y=@075a;else y=@0dde;
  $  271.车辆速度                                         $    $  kph     $    $  ANS038.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:74A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
