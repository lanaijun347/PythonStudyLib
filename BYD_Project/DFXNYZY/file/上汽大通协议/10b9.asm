
    车型ID：10b9

    模拟：协议模拟-->10b9

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

  $*$*DTC/b6000000


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
  $%  004:电控单元生产日期:                $%    $%  ANS004.BYTE004  $%  HEX(X1,X2,X3);
  $%  005:电控单元网络文件参考号:          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:电控单元零件号（上次）:          $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  008:测试工具参考号（上次）:          $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:里程读数（上次）:                $%    $%  ANS007.BYTE015  $%  HEX(X1,X2,X3);
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

  $  000.ACC未准备好激活的原因0~7               $    $         $    $  ANS000.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  001.ACC未准备好激活的原因8~15              $    $         $    $  ANS000.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  002.ACC未准备好激活的原因16~23             $    $         $    $  ANS000.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  003.ACC未准备好激活的原因24~31             $    $         $    $  ANS000.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  004.ACC未准备好激活的原因32~39             $    $         $    $  ANS000.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  005.ACC未准备好激活的原因40~47             $    $         $    $  ANS000.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  006.ACC未准备好激活的原因48_55             $    $         $    $  ANS000.BYTE010  $  y=x;
  $  007.ACC未准备好激活的原因56_63             $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.ACC未准备好激活的故障安全标志          $    $         $    $  ANS000.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  009.ACC未准备好激活的年份                  $    $         $    $  ANS000.BYTE014  $  y=x+2000;
  $  010.ACC未准备好激活的月份                  $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.ACC未准备好激活的日                    $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.ACC未准备好激活的时                    $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.ACC未准备好激活的分                    $    $         $    $  ANS000.BYTE018  $  y=x;
  $  014.ACC未准备好激活的秒                    $    $         $    $  ANS000.BYTE019  $  y=x;
  $  015.ACC未准备好激活的里程                  $    $  km     $    $  ANS000.BYTE023  $  y=x;
  $  016.ACC未准备好激活的原因0~7               $    $         $    $  ANS001.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  017.ACC未准备好激活的原因8~15              $    $         $    $  ANS001.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  018.ACC未准备好激活的原因16~23             $    $         $    $  ANS001.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  019.ACC未准备好激活的原因24~31             $    $         $    $  ANS001.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  020.ACC未准备好激活的原因32~39             $    $         $    $  ANS001.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  021.ACC未准备好激活的原因40~47             $    $         $    $  ANS001.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  022.ACC未准备好激活的原因48_55             $    $         $    $  ANS001.BYTE010  $  y=x;
  $  023.ACC未准备好激活的原因56_63             $    $         $    $  ANS001.BYTE011  $  y=x;
  $  024.ACC未准备好激活的故障安全标志          $    $         $    $  ANS001.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  025.ACC未准备好激活的年份                  $    $         $    $  ANS001.BYTE014  $  y=x+2000;
  $  026.ACC未准备好激活的月份                  $    $         $    $  ANS001.BYTE015  $  y=x;
  $  027.ACC未准备好激活的日                    $    $         $    $  ANS001.BYTE016  $  y=x;
  $  028.ACC未准备好激活的时                    $    $         $    $  ANS001.BYTE017  $  y=x;
  $  029.ACC未准备好激活的分                    $    $         $    $  ANS001.BYTE018  $  y=x;
  $  030.ACC未准备好激活的秒                    $    $         $    $  ANS001.BYTE019  $  y=x;
  $  031.ACC未准备好激活的里程                  $    $  km     $    $  ANS001.BYTE023  $  y=x;
  $  032.ACC未准备好激活的原因0~7               $    $         $    $  ANS002.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  033.ACC未准备好激活的原因8~15              $    $         $    $  ANS002.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  034.ACC未准备好激活的原因16~23             $    $         $    $  ANS002.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  035.ACC未准备好激活的原因24~31             $    $         $    $  ANS002.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  036.ACC未准备好激活的原因32~39             $    $         $    $  ANS002.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  037.ACC未准备好激活的原因40~47             $    $         $    $  ANS002.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  038.ACC未准备好激活的原因48_55             $    $         $    $  ANS002.BYTE010  $  y=x;
  $  039.ACC未准备好激活的原因56_63             $    $         $    $  ANS002.BYTE011  $  y=x;
  $  040.ACC未准备好激活的故障安全标志          $    $         $    $  ANS002.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  041.ACC未准备好激活的年份                  $    $         $    $  ANS002.BYTE014  $  y=x+2000;
  $  042.ACC未准备好激活的月份                  $    $         $    $  ANS002.BYTE015  $  y=x;
  $  043.ACC未准备好激活的日                    $    $         $    $  ANS002.BYTE016  $  y=x;
  $  044.ACC未准备好激活的时                    $    $         $    $  ANS002.BYTE017  $  y=x;
  $  045.ACC未准备好激活的分                    $    $         $    $  ANS002.BYTE018  $  y=x;
  $  046.ACC未准备好激活的秒                    $    $         $    $  ANS002.BYTE019  $  y=x;
  $  047.ACC未准备好激活的里程                  $    $  km     $    $  ANS002.BYTE023  $  y=x;
  $  048.ACC未准备好激活的原因0~7               $    $         $    $  ANS003.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  049.ACC未准备好激活的原因8~15              $    $         $    $  ANS003.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  050.ACC未准备好激活的原因16~23             $    $         $    $  ANS003.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  051.ACC未准备好激活的原因24~31             $    $         $    $  ANS003.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  052.ACC未准备好激活的原因32~39             $    $         $    $  ANS003.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  053.ACC未准备好激活的原因40~47             $    $         $    $  ANS003.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  054.ACC未准备好激活的原因48_55             $    $         $    $  ANS003.BYTE010  $  y=x;
  $  055.ACC未准备好激活的原因56_63             $    $         $    $  ANS003.BYTE011  $  y=x;
  $  056.ACC未准备好激活的故障安全标志          $    $         $    $  ANS003.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  057.ACC未准备好激活的年份                  $    $         $    $  ANS003.BYTE014  $  y=x+2000;
  $  058.ACC未准备好激活的月份                  $    $         $    $  ANS003.BYTE015  $  y=x;
  $  059.ACC未准备好激活的日                    $    $         $    $  ANS003.BYTE016  $  y=x;
  $  060.ACC未准备好激活的时                    $    $         $    $  ANS003.BYTE017  $  y=x;
  $  061.ACC未准备好激活的分                    $    $         $    $  ANS003.BYTE018  $  y=x;
  $  062.ACC未准备好激活的秒                    $    $         $    $  ANS003.BYTE019  $  y=x;
  $  063.ACC未准备好激活的里程                  $    $  km     $    $  ANS003.BYTE023  $  y=x;
  $  064.ACC未准备好激活的原因0~7               $    $         $    $  ANS004.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  065.ACC未准备好激活的原因8~15              $    $         $    $  ANS004.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  066.ACC未准备好激活的原因16~23             $    $         $    $  ANS004.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  067.ACC未准备好激活的原因24~31             $    $         $    $  ANS004.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  068.ACC未准备好激活的原因32~39             $    $         $    $  ANS004.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  069.ACC未准备好激活的原因40~47             $    $         $    $  ANS004.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  070.ACC未准备好激活的原因48_55             $    $         $    $  ANS004.BYTE010  $  y=x;
  $  071.ACC未准备好激活的原因56_63             $    $         $    $  ANS004.BYTE011  $  y=x;
  $  072.ACC未准备好激活的故障安全标志          $    $         $    $  ANS004.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  073.ACC未准备好激活的年份                  $    $         $    $  ANS004.BYTE014  $  y=x+2000;
  $  074.ACC未准备好激活的月份                  $    $         $    $  ANS004.BYTE015  $  y=x;
  $  075.ACC未准备好激活的日                    $    $         $    $  ANS004.BYTE016  $  y=x;
  $  076.ACC未准备好激活的时                    $    $         $    $  ANS004.BYTE017  $  y=x;
  $  077.ACC未准备好激活的分                    $    $         $    $  ANS004.BYTE018  $  y=x;
  $  078.ACC未准备好激活的秒                    $    $         $    $  ANS004.BYTE019  $  y=x;
  $  079.ACC未准备好激活的里程                  $    $  km     $    $  ANS004.BYTE023  $  y=x;
  $  080.ACC未准备好激活的原因0~7               $    $         $    $  ANS005.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  081.ACC未准备好激活的原因8~15              $    $         $    $  ANS005.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  082.ACC未准备好激活的原因16~23             $    $         $    $  ANS005.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  083.ACC未准备好激活的原因24~31             $    $         $    $  ANS005.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  084.ACC未准备好激活的原因32~39             $    $         $    $  ANS005.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  085.ACC未准备好激活的原因40~47             $    $         $    $  ANS005.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  086.ACC未准备好激活的原因48~55             $    $         $    $  ANS005.BYTE010  $  y=x;
  $  087.ACC未准备好激活的原因56_63             $    $         $    $  ANS005.BYTE011  $  y=x;
  $  088.ACC退出激活状态的原因0~7(B091)         $    $         $    $  ANS006.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  089.ACC退出激活状态的原因8~15(B091)        $    $         $    $  ANS006.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  090.ACC退出激活状态的原因16~23(B091)       $    $         $    $  ANS006.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  091.ACC退出激活状态的原因24~31(B091)       $    $         $    $  ANS006.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  092.ACC退出激活状态的原因32~39(B091)       $    $         $    $  ANS006.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  093.ACC退出激活状态的原因40~47(B091)       $    $         $    $  ANS006.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  094.ACC退出激活状态的原因48_55             $    $         $    $  ANS006.BYTE010  $  y=x;
  $  095.ACC退出激活状态的原因56_63             $    $         $    $  ANS006.BYTE011  $  y=x;
  $  096.ACC退出激活状态的原因0~7               $    $         $    $  ANS007.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  097.ACC退出激活状态的原因8~15              $    $         $    $  ANS007.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  098.ACC退出激活状态的原因16~23             $    $         $    $  ANS007.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  099.ACC退出激活状态的原因24~31             $    $         $    $  ANS007.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  100.ACC退出激活状态的原因32~39             $    $         $    $  ANS007.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  101.ACC退出激活状态的原因40~47             $    $         $    $  ANS007.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  102.ACC退出激活状态的原因48~55             $    $         $    $  ANS007.BYTE010  $  y=x;
  $  103.ACC退出激活状态的原因56~63             $    $         $    $  ANS007.BYTE011  $  y=x;
  $  104.ACC退出激活状态的故障安全标志          $    $         $    $  ANS007.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  105.ACC退出事件年份                        $    $         $    $  ANS007.BYTE014  $  y=x+2000;
  $  106.ACC退出事件月份                        $    $         $    $  ANS007.BYTE015  $  y=x;
  $  107.ACC退出活动日                          $    $         $    $  ANS007.BYTE016  $  y=x;
  $  108.ACC退出活动时                          $    $         $    $  ANS007.BYTE017  $  y=x;
  $  109.ACC退出事件分                          $    $         $    $  ANS007.BYTE018  $  y=x;
  $  110.ACC退出事件秒                          $    $         $    $  ANS007.BYTE019  $  y=x;
  $  111.ACC退出事件里程                        $    $  km     $    $  ANS007.BYTE023  $  y=x;
  $  112.ACC退出激活状态的原因0~7               $    $         $    $  ANS008.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  113.ACC退出激活状态的原因8~15              $    $         $    $  ANS008.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  114.ACC退出激活状态的原因16~23             $    $         $    $  ANS008.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  115.ACC退出激活状态的原因24~31             $    $         $    $  ANS008.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  116.ACC退出激活状态的原因32~39             $    $         $    $  ANS008.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  117.ACC退出激活状态的原因40~47             $    $         $    $  ANS008.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  118.ACC退出激活状态的原因48~55             $    $         $    $  ANS008.BYTE010  $  y=x;
  $  119.ACC退出激活状态的原因56~63             $    $         $    $  ANS008.BYTE011  $  y=x;
  $  120.ACC退出激活状态的故障安全标志          $    $         $    $  ANS008.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  121.ACC退出事件年份                        $    $         $    $  ANS008.BYTE014  $  y=x+2000;
  $  122.ACC退出事件月份                        $    $         $    $  ANS008.BYTE015  $  y=x;
  $  123.ACC退出活动日                          $    $         $    $  ANS008.BYTE016  $  y=x;
  $  124.ACC退出活动时                          $    $         $    $  ANS008.BYTE017  $  y=x;
  $  125.ACC退出事件分                          $    $         $    $  ANS008.BYTE018  $  y=x;
  $  126.ACC退出事件秒                          $    $         $    $  ANS008.BYTE019  $  y=x;
  $  127.ACC退出事件里程                        $    $  km     $    $  ANS008.BYTE023  $  y=x;
  $  128.ACC退出激活状态的原因0~7               $    $         $    $  ANS009.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  129.ACC退出激活状态的原因8~15              $    $         $    $  ANS009.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  130.ACC退出激活状态的原因16~23             $    $         $    $  ANS009.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  131.ACC退出激活状态的原因24~31             $    $         $    $  ANS009.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  132.ACC退出激活状态的原因32~39             $    $         $    $  ANS009.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  133.ACC退出激活状态的原因40~47             $    $         $    $  ANS009.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  134.ACC退出激活状态的原因48~55             $    $         $    $  ANS009.BYTE010  $  y=x;
  $  135.ACC退出激活状态的原因56~63             $    $         $    $  ANS009.BYTE011  $  y=x;
  $  136.ACC退出激活状态的故障安全标志          $    $         $    $  ANS009.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  137.ACC退出事件年份                        $    $         $    $  ANS009.BYTE014  $  y=x+2000;
  $  138.ACC退出事件月份                        $    $         $    $  ANS009.BYTE015  $  y=x;
  $  139.ACC退出活动日                          $    $         $    $  ANS009.BYTE016  $  y=x;
  $  140.ACC退出活动时                          $    $         $    $  ANS009.BYTE017  $  y=x;
  $  141.ACC退出事件分                          $    $         $    $  ANS009.BYTE018  $  y=x;
  $  142.ACC退出事件秒                          $    $         $    $  ANS009.BYTE019  $  y=x;
  $  143.ACC退出事件里程                        $    $  km     $    $  ANS009.BYTE023  $  y=x;
  $  144.ACC退出激活状态的原因0~7               $    $         $    $  ANS010.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  145.ACC退出激活状态的原因8~15              $    $         $    $  ANS010.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  146.ACC退出激活状态的原因16~23             $    $         $    $  ANS010.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  147.ACC退出激活状态的原因24~31             $    $         $    $  ANS010.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  148.ACC退出激活状态的原因32~39             $    $         $    $  ANS010.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  149.ACC退出激活状态的原因40~47             $    $         $    $  ANS010.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  150.ACC退出激活状态的原因48~55             $    $         $    $  ANS010.BYTE010  $  y=x;
  $  151.ACC退出激活状态的原因56~63             $    $         $    $  ANS010.BYTE011  $  y=x;
  $  152.ACC退出激活状态的故障安全标志          $    $         $    $  ANS010.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  153.ACC退出事件年份                        $    $         $    $  ANS010.BYTE014  $  y=x+2000;
  $  154.ACC退出事件月份                        $    $         $    $  ANS010.BYTE015  $  y=x;
  $  155.ACC退出活动日                          $    $         $    $  ANS010.BYTE016  $  y=x;
  $  156.ACC退出活动时                          $    $         $    $  ANS010.BYTE017  $  y=x;
  $  157.ACC退出事件分                          $    $         $    $  ANS010.BYTE018  $  y=x;
  $  158.ACC退出事件秒                          $    $         $    $  ANS010.BYTE019  $  y=x;
  $  159.ACC退出事件里程                        $    $  km     $    $  ANS010.BYTE023  $  y=x;
  $  160.ACC退出激活状态的原因0~7               $    $         $    $  ANS011.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  161.ACC退出激活状态的原因8~15              $    $         $    $  ANS011.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  162.ACC退出激活状态的原因16~23             $    $         $    $  ANS011.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  163.ACC退出激活状态的原因24~31             $    $         $    $  ANS011.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  164.ACC退出激活状态的原因32~39             $    $         $    $  ANS011.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  165.ACC退出激活状态的原因40~47             $    $         $    $  ANS011.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  166.ACC退出激活状态的原因48~55             $    $         $    $  ANS011.BYTE010  $  y=x;
  $  167.ACC退出激活状态的原因56~63             $    $         $    $  ANS011.BYTE011  $  y=x;
  $  168.ACC退出激活状态的故障安全标志          $    $         $    $  ANS011.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  169.ACC退出事件年份                        $    $         $    $  ANS011.BYTE014  $  y=x+2000;
  $  170.ACC退出事件月份                        $    $         $    $  ANS011.BYTE015  $  y=x;
  $  171.ACC退出活动日                          $    $         $    $  ANS011.BYTE016  $  y=x;
  $  172.ACC退出活动时                          $    $         $    $  ANS011.BYTE017  $  y=x;
  $  173.ACC退出事件分                          $    $         $    $  ANS011.BYTE018  $  y=x;
  $  174.ACC退出事件秒                          $    $         $    $  ANS011.BYTE019  $  y=x;
  $  175.ACC退出事件里程                        $    $  km     $    $  ANS011.BYTE023  $  y=x;
  $  176.ACC退出激活状态的原因0~7               $    $         $    $  ANS012.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  177.ACC退出激活状态的原因8~15              $    $         $    $  ANS012.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  178.ACC退出激活状态的原因16~23             $    $         $    $  ANS012.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  179.ACC退出激活状态的原因24~31             $    $         $    $  ANS012.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  180.ACC退出激活状态的原因32~39             $    $         $    $  ANS012.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  181.ACC退出激活状态的原因40~47             $    $         $    $  ANS012.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  182.ACC退出激活状态的原因48_55             $    $         $    $  ANS012.BYTE010  $  y=x;
  $  183.ACC退出激活状态的原因56_63             $    $         $    $  ANS012.BYTE011  $  y=x;
  $  184.AEB未准备好激活的原因0~7               $    $         $    $  ANS013.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  185.AEB未准备好激活的原因8~15              $    $         $    $  ANS013.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  186.AEB未准备好激活的原因16~23             $    $         $    $  ANS013.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  187.AEB未准备好激活的原因24~31             $    $         $    $  ANS013.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  188.AEB未准备好激活的故障安全标志          $    $         $    $  ANS013.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  189.AEB未准备好激活的年份                  $    $         $    $  ANS013.BYTE010  $  y=x+2000;
  $  190.AEB未准备好激活的月份                  $    $         $    $  ANS013.BYTE011  $  y=x;
  $  191.AEB未准备好激活的日                    $    $         $    $  ANS013.BYTE012  $  y=x;
  $  192.AEB未准备好激活的时                    $    $         $    $  ANS013.BYTE013  $  y=x;
  $  193.AEB未准备好激活的分                    $    $         $    $  ANS013.BYTE014  $  y=x;
  $  194.AEB未准备好激活的秒                    $    $         $    $  ANS013.BYTE015  $  y=x;
  $  195.AEB未准备好激活的里程                  $    $         $    $  ANS013.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  196.AEB未准备好激活的原因0~7               $    $         $    $  ANS014.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  197.AEB未准备好激活的原因8~15              $    $         $    $  ANS014.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  198.AEB未准备好激活的原因16~23             $    $         $    $  ANS014.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  199.AEB未准备好激活的原因24~31             $    $         $    $  ANS014.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  200.AEB未准备好激活的故障安全标志          $    $         $    $  ANS014.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  201.AEB未准备好激活的年份                  $    $         $    $  ANS014.BYTE010  $  y=x+2000;
  $  202.AEB未准备好激活的月份                  $    $         $    $  ANS014.BYTE011  $  y=x;
  $  203.AEB未准备好激活的日                    $    $         $    $  ANS014.BYTE012  $  y=x;
  $  204.AEB未准备好激活的时                    $    $         $    $  ANS014.BYTE013  $  y=x;
  $  205.AEB未准备好激活的分                    $    $         $    $  ANS014.BYTE014  $  y=x;
  $  206.AEB未准备好激活的秒                    $    $         $    $  ANS014.BYTE015  $  y=x;
  $  207.AEB未准备好激活的里程                  $    $         $    $  ANS014.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);

  $)  01.数据流2
  $  01.数据流2
  $  REQ000:74A 03 22 B0 67 00 00 00 00       $  ANS000:7CA 03 22 B0 67 00 00 00 00
  $  REQ001:74A 03 22 B0 68 00 00 00 00       $  ANS001:7CA 03 22 B0 68 00 00 00 00
  $  REQ002:74A 03 22 B0 69 00 00 00 00       $  ANS002:7CA 03 22 B0 69 00 00 00 00
  $  REQ003:74A 03 22 B0 6B 00 00 00 00       $  ANS003:7CA 03 22 B0 6B 00 00 00 00
  $  REQ004:74A 03 22 B0 92 00 00 00 00       $  ANS004:7CA 03 22 B0 92 00 00 00 00
  $  REQ005:74A 03 22 B0 60 00 00 00 00       $  ANS005:7CA 03 22 B0 60 00 00 00 00
  $  REQ006:74A 03 22 B0 61 00 00 00 00       $  ANS006:7CA 03 22 B0 61 00 00 00 00
  $  REQ007:74A 03 22 B0 62 00 00 00 00       $  ANS007:7CA 03 22 B0 62 00 00 00 00
  $  REQ008:74A 03 22 B0 63 00 00 00 00       $  ANS008:7CA 03 22 B0 63 00 00 00 00
  $  REQ009:74A 03 22 B0 64 00 00 00 00       $  ANS009:7CA 03 22 B0 64 00 00 00 00
  $  REQ010:74A 03 22 B0 6A 00 00 00 00       $  ANS010:7CA 03 22 B0 6A 00 00 00 00
  $  REQ011:74A 03 22 01 12 00 00 00 00       $  ANS011:7CA 03 22 01 12 00 00 00 00
  $  REQ012:74A 03 22 B0 3D 00 00 00 00       $  ANS012:7CA 03 22 B0 3D 00 00 00 00
  $  REQ013:74A 03 22 B0 2E 00 00 00 00       $  ANS013:7CA 03 22 B0 2E 00 00 00 00
  $  REQ014:74A 03 22 B0 3B 00 00 00 00       $  ANS014:7CA 03 22 B0 3B 00 00 00 00
  $  REQ015:74A 03 22 C0 01 00 00 00 00       $  ANS015:7CA 03 22 C0 01 00 00 00 00
  $  REQ016:74A 03 22 B0 3E 00 00 00 00       $  ANS016:7CA 03 22 B0 3E 00 00 00 00
  $  REQ017:74A 03 22 B0 4B 00 00 00 00       $  ANS017:7CA 03 22 B0 4B 00 00 00 00
  $  REQ018:74A 03 22 C0 02 00 00 00 00       $  ANS018:7CA 03 22 C0 02 00 00 00 00

  $  000.AEB未准备好激活的原因0~7                                 $    $          $    $  ANS000.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  001.AEB未准备好激活的原因8~15                                $    $          $    $  ANS000.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  002.AEB未准备好激活的原因16~23                               $    $          $    $  ANS000.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  003.AEB未准备好激活的原因24~31                               $    $          $    $  ANS000.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  004.AEB未准备好激活的故障安全标志                            $    $          $    $  ANS000.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  005.AEB未准备好激活的年份                                    $    $          $    $  ANS000.BYTE010  $  y=x+2000;
  $  006.AEB未准备好激活的月份                                    $    $          $    $  ANS000.BYTE011  $  y=x;
  $  007.AEB未准备好激活的日                                      $    $          $    $  ANS000.BYTE012  $  y=x;
  $  008.AEB未准备好激活的时                                      $    $          $    $  ANS000.BYTE013  $  y=x;
  $  009.AEB未准备好激活的分                                      $    $          $    $  ANS000.BYTE014  $  y=x;
  $  010.AEB未准备好激活的秒                                      $    $          $    $  ANS000.BYTE015  $  y=x;
  $  011.AEB未准备好激活的里程                                    $    $          $    $  ANS000.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  012.AEB未准备好激活的原因0~7                                 $    $          $    $  ANS001.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  013.AEB未准备好激活的原因8~15                                $    $          $    $  ANS001.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  014.AEB未准备好激活的原因16~23                               $    $          $    $  ANS001.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  015.AEB未准备好激活的原因24~31                               $    $          $    $  ANS001.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  016.AEB未准备好激活的故障安全标志                            $    $          $    $  ANS001.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  017.AEB未准备好激活的年份                                    $    $          $    $  ANS001.BYTE010  $  y=x+2000;
  $  018.AEB未准备好激活的月份                                    $    $          $    $  ANS001.BYTE011  $  y=x;
  $  019.AEB未准备好激活的日                                      $    $          $    $  ANS001.BYTE012  $  y=x;
  $  020.AEB未准备好激活的时                                      $    $          $    $  ANS001.BYTE013  $  y=x;
  $  021.AEB未准备好激活的分                                      $    $          $    $  ANS001.BYTE014  $  y=x;
  $  022.AEB未准备好激活的秒                                      $    $          $    $  ANS001.BYTE015  $  y=x;
  $  023.AEB未准备好激活的里程                                    $    $          $    $  ANS001.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  024.AEB未准备好激活的原因0~7                                 $    $          $    $  ANS002.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  025.AEB未准备好激活的原因8~15                                $    $          $    $  ANS002.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  026.AEB未准备好激活的原因16~23                               $    $          $    $  ANS002.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  027.AEB未准备好激活的原因24~31                               $    $          $    $  ANS002.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  028.AEB未准备好激活的故障安全标志                            $    $          $    $  ANS002.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  029.AEB未准备好激活的年份                                    $    $          $    $  ANS002.BYTE010  $  y=x+2000;
  $  030.AEB未准备好激活的月份                                    $    $          $    $  ANS002.BYTE011  $  y=x;
  $  031.AEB未准备好激活的日                                      $    $          $    $  ANS002.BYTE012  $  y=x;
  $  032.AEB未准备好激活的时                                      $    $          $    $  ANS002.BYTE013  $  y=x;
  $  033.AEB未准备好激活的分                                      $    $          $    $  ANS002.BYTE014  $  y=x;
  $  034.AEB未准备好激活的秒                                      $    $          $    $  ANS002.BYTE015  $  y=x;
  $  035.AEB未准备好激活的里程                                    $    $          $    $  ANS002.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  036.AEB未准备好激活的原因0~7                                 $    $          $    $  ANS003.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  037.AEB未准备好激活的原因8~15                                $    $          $    $  ANS003.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  038.AEB未准备好激活的原因16~23                               $    $          $    $  ANS003.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  039.AEB未准备好激活的原因24~31                               $    $          $    $  ANS003.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  040.AEB退出激活状态的原因0~7(B092)                           $    $          $    $  ANS004.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  041.AEB退出激活状态的原因8~15(B092)                          $    $          $    $  ANS004.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  042.AEB退出激活状态的原因16~23(B092)                         $    $          $    $  ANS004.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  043.AEB退出激活状态的原因24~31(B092)                         $    $          $    $  ANS004.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  044.AEB退出激活状态的原因0~7                                 $    $          $    $  ANS005.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  045.AEB退出激活状态的原因8~15                                $    $          $    $  ANS005.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  046.AEB退出激活状态的原因16~23                               $    $          $    $  ANS005.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  047.AEB退出激活状态的原因24~31                               $    $          $    $  ANS005.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  048.AEB退出激活状态的故障安全标志                            $    $          $    $  ANS005.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  049.AEB退出事件年份                                          $    $          $    $  ANS005.BYTE010  $  y=x+2000;
  $  050.AEB退出事件月份                                          $    $          $    $  ANS005.BYTE011  $  y=x;
  $  051.AEB退出活动日                                            $    $          $    $  ANS005.BYTE012  $  y=x;
  $  052.AEB退出活动时                                            $    $          $    $  ANS005.BYTE013  $  y=x;
  $  053.AEB退出事件分                                            $    $          $    $  ANS005.BYTE014  $  y=x;
  $  054.AEB退出事件秒                                            $    $          $    $  ANS005.BYTE015  $  y=x;
  $  055.AEB退出事件里程                                          $    $          $    $  ANS005.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  056.AEB退出激活状态的原因0~7                                 $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  057.AEB退出激活状态的原因8~15                                $    $          $    $  ANS006.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  058.AEB退出激活状态的原因16~23                               $    $          $    $  ANS006.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  059.AEB退出激活状态的原因24~31                               $    $          $    $  ANS006.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  060.AEB退出激活状态的故障安全标志                            $    $          $    $  ANS006.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  061.AEB退出事件年份                                          $    $          $    $  ANS006.BYTE010  $  y=x+2000;
  $  062.AEB退出事件月份                                          $    $          $    $  ANS006.BYTE011  $  y=x;
  $  063.AEB退出活动日                                            $    $          $    $  ANS006.BYTE012  $  y=x;
  $  064.AEB退出活动时                                            $    $          $    $  ANS006.BYTE013  $  y=x;
  $  065.AEB退出事件分                                            $    $          $    $  ANS006.BYTE014  $  y=x;
  $  066.AEB退出事件秒                                            $    $          $    $  ANS006.BYTE015  $  y=x;
  $  067.AEB退出事件里程                                          $    $          $    $  ANS006.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  068.AEB退出激活状态的原因0~7                                 $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  069.AEB退出激活状态的原因8~15                                $    $          $    $  ANS007.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  070.AEB退出激活状态的原因16~23                               $    $          $    $  ANS007.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  071.AEB退出激活状态的原因24~31                               $    $          $    $  ANS007.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  072.AEB退出激活状态的故障安全标志                            $    $          $    $  ANS007.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  073.AEB退出事件年份                                          $    $          $    $  ANS007.BYTE010  $  y=x+2000;
  $  074.AEB退出事件月份                                          $    $          $    $  ANS007.BYTE011  $  y=x;
  $  075.AEB退出活动日                                            $    $          $    $  ANS007.BYTE012  $  y=x;
  $  076.AEB退出活动时                                            $    $          $    $  ANS007.BYTE013  $  y=x;
  $  077.AEB退出事件分                                            $    $          $    $  ANS007.BYTE014  $  y=x;
  $  078.AEB退出事件秒                                            $    $          $    $  ANS007.BYTE015  $  y=x;
  $  079.AEB退出事件里程                                          $    $          $    $  ANS007.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  080.AEB退出激活状态的原因0~7                                 $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  081.AEB退出激活状态的原因8~15                                $    $          $    $  ANS008.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  082.AEB退出激活状态的原因16~23                               $    $          $    $  ANS008.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  083.AEB退出激活状态的原因24~31                               $    $          $    $  ANS008.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  084.AEB退出激活状态的故障安全标志                            $    $          $    $  ANS008.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  085.AEB退出事件年份                                          $    $          $    $  ANS008.BYTE010  $  y=x+2000;
  $  086.AEB退出事件月份                                          $    $          $    $  ANS008.BYTE011  $  y=x;
  $  087.AEB退出活动日                                            $    $          $    $  ANS008.BYTE012  $  y=x;
  $  088.AEB退出活动时                                            $    $          $    $  ANS008.BYTE013  $  y=x;
  $  089.AEB退出事件分                                            $    $          $    $  ANS008.BYTE014  $  y=x;
  $  090.AEB退出事件秒                                            $    $          $    $  ANS008.BYTE015  $  y=x;
  $  091.AEB退出事件里程                                          $    $          $    $  ANS008.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  092.AEB退出激活状态的原因0~7                                 $    $          $    $  ANS009.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  093.AEB退出激活状态的原因8~15                                $    $          $    $  ANS009.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  094.AEB退出激活状态的原因16~23                               $    $          $    $  ANS009.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  095.AEB退出激活状态的原因24~31                               $    $          $    $  ANS009.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  096.AEB退出激活状态的故障安全标志                            $    $          $    $  ANS009.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  097.AEB退出事件年份                                          $    $          $    $  ANS009.BYTE010  $  y=x+2000;
  $  098.AEB退出事件月份                                          $    $          $    $  ANS009.BYTE011  $  y=x;
  $  099.AEB退出活动日                                            $    $          $    $  ANS009.BYTE012  $  y=x;
  $  100.AEB退出活动时                                            $    $          $    $  ANS009.BYTE013  $  y=x;
  $  101.AEB退出事件分                                            $    $          $    $  ANS009.BYTE014  $  y=x;
  $  102.AEB退出事件秒                                            $    $          $    $  ANS009.BYTE015  $  y=x;
  $  103.AEB退出事件里程                                          $    $          $    $  ANS009.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  104.AEB退出激活状态的原因0~7                                 $    $          $    $  ANS010.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  105.AEB退出激活状态的原因8~15                                $    $          $    $  ANS010.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  106.AEB退出激活状态的原因16~23                               $    $          $    $  ANS010.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  107.AEB退出激活状态的原因24~31                               $    $          $    $  ANS010.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  108.电池电压                                                 $    $  V       $    $  ANS011.BYTE004  $  y=x*0.1;
  $  109.自动修复超出范围                                         $    $          $    $  ANS012.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  110.应用程序致命错误-超出标定                                $    $          $    $  ANS012.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  111.未标定                                                   $    $          $    $  ANS012.BYTE004  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  112.EOL校准状态                                              $    $          $    $  ANS013.BYTE004  $  if(x==0x00) y=@0475;else if(x==0x01) y=@0ee4;else if(x==0x02) y=@0ee5;else if(x==0x03) y=@0ee6;else y=@0103;
  $  113.EOL校准错误原因                                          $    $          $    $  ANS013.BYTE005  $  if(x==0x00) y=@0df0;else if(x==0x01) y=@0197;else if(x==0x02) y=@0910;else if(x==0x03) y=@0ee7;else if(x==0x04) y=@0ee8;else if(x==0x05) y=@0ee9;else if(x==0x06) y=@0eea;else if(x==0x07) y=@0eeb;else if(x==0x08) y=@0eec;else if(x==0x09) y=@0eed;else if(x==0x0A) y=@0eee;else if(x==0x0B) y=@0eef;else if(x==0x0C) y=@0ef0;else if(x==0x0D) y=@0df1;else if(x==0x0E) y=@091c;else if(x==0x0F) y=@0df2;else if(x==0x10) y=@091e;else if(x==0x11) y=@091f;else if(x==0x12) y=@0920;else if(x==0x13) y=@0df3;else if(x==0x14) y=@0922;else if(x==0x15) y=@0923;else if(x==0x18) y=@0ef1;else y=@0103;
  $  114.摄像头校准偏航值                                         $    $          $    $  ANS013.BYTE006  $  y=(x1*256+x2)-250;
  $  115.摄像头校准水平值                                         $    $          $    $  ANS013.BYTE008  $  y=(x1*256+x2)-250;
  $  116.摄像头校准滚动值                                         $    $  rad     $    $  ANS013.BYTE010  $  y=(x1*256+x2)*0.001-0.055;
  $  117.摄像头自动修正偏航值                                     $    $          $    $  ANS013.BYTE012  $  y=(x1*256+x2)*160-160;
  $  118.摄像头自动修正水平值                                     $    $          $    $  ANS013.BYTE014  $  y=(x1*256+x2)*160-160;
  $  119.摄像头自动校准的翻滚角度                                 $    $  rad     $    $  ANS013.BYTE016  $  y=(x1*256+x2)*0.001-0.055;
  $  120.自眩光                                                   $    $          $    $  ANS014.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  121.太阳光线                                                 $    $          $    $  ANS014.BYTE004  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  122.道路溅水                                                 $    $          $    $  ANS014.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@040c;else if(((x&0x80)>>7)==0x01) y=@040d;else y=@0035;
  $  123.模糊图像                                                 $    $          $    $  ANS014.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@040c;else if(((x&0x40)>>6)==0x01) y=@040d;else y=@0035;
  $  124.夕阳直射                                                 $    $          $    $  ANS014.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@040c;else if(((x&0x20)>>5)==0x01) y=@040d;else y=@0035;
  $  125.沾污点                                                   $    $          $    $  ANS014.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@040c;else if(((x&0x10)>>4)==0x01) y=@040d;else y=@0035;
  $  126.部分遮挡                                                 $    $          $    $  ANS014.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@040c;else if(((x&0x08)>>3)==0x01) y=@040d;else y=@0035;
  $  127.完全遮挡                                                 $    $          $    $  ANS014.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  128.挡风玻璃冰冻                                             $    $          $    $  ANS014.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  129.雾斑                                                     $    $          $    $  ANS014.BYTE005  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  130.AHB(自动远光灯)启用                                      $    $          $    $  ANS015.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0035;
  $  131.TSR(交通标志识别)启用                                    $    $          $    $  ANS015.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0035;
  $  132.ACC(自适应巡航控制)启用                                  $    $          $    $  ANS015.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0035;
  $  133.AEBP(行人自动紧急制动)启用                               $    $          $    $  ANS015.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0035;
  $  134.AEB(自动制动系统)启用                                    $    $          $    $  ANS015.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0035;
  $  135.PCW(行人碰撞警告)启用                                    $    $          $    $  ANS015.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0035;
  $  136.FCW(正面碰撞警告)启用                                    $    $          $    $  ANS015.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0035;
  $  137.LDW(车道偏离预警系统)启用                                $    $          $    $  ANS015.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  138.LKA(车道保持辅助)启用                                    $    $          $    $  ANS015.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  139.SDM25-碰撞重叠                                           $    $          $    $  ANS016.BYTE007  $  if(((x&0x80)>>7)==0x00) y=@040c;else if(((x&0x80)>>7)==0x01) y=@040d;else y=@0035;
  $  140.SDM9-关键区域与前方指挥车辆重叠的显著差异                $    $          $    $  ANS016.BYTE007  $  if(((x&0x40)>>6)==0x00) y=@040c;else if(((x&0x40)>>6)==0x01) y=@040d;else y=@0035;
  $  141.SDM8-关键区域与三角采样测量之间的位置差异                $    $          $    $  ANS016.BYTE007  $  if(((x&0x20)>>5)==0x00) y=@040c;else if(((x&0x20)>>5)==0x01) y=@040d;else y=@0035;
  $  142.SDM7-目标位置有显著差异                                  $    $          $    $  ANS016.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@040c;else if(((x&0x10)>>4)==0x01) y=@040d;else y=@0035;
  $  143.SDM6-TTC的显著差异                                       $    $          $    $  ANS016.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@040c;else if(((x&0x08)>>3)==0x01) y=@040d;else y=@0035;
  $  144.EYEQ_RFC-车辆信号消息的滚动帧计数器(RFC)错误             $    $          $    $  ANS016.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  145.EYEQ_CRC-CRC校验与安全输入信号不符                       $    $          $    $  ANS016.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  146.EYEQ_CR_REPEAT-挑战与响应重复错误                        $    $          $    $  ANS016.BYTE007  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  147.SDM11-MCU校验错误                                        $    $          $    $  ANS016.BYTE008  $  if(((x&0x80)>>7)==0x00) y=@040c;else if(((x&0x80)>>7)==0x01) y=@040d;else y=@0035;
  $  148.SDM29-MCU RFC错误                                        $    $          $    $  ANS016.BYTE008  $  if(((x&0x40)>>6)==0x00) y=@040c;else if(((x&0x40)>>6)==0x01) y=@040d;else y=@0035;
  $  149.SDM30-图像索引无效                                       $    $          $    $  ANS016.BYTE008  $  if(((x&0x20)>>5)==0x00) y=@040c;else if(((x&0x20)>>5)==0x01) y=@040d;else y=@0035;
  $  150.SDM4-校准不好                                            $    $          $    $  ANS016.BYTE008  $  if(((x&0x10)>>4)==0x00) y=@040c;else if(((x&0x10)>>4)==0x01) y=@040d;else y=@0035;
  $  151.SDM18-内部图像保护失败                                   $    $          $    $  ANS016.BYTE008  $  if(((x&0x08)>>3)==0x00) y=@040c;else if(((x&0x08)>>3)==0x01) y=@040d;else y=@0035;
  $  152.SDM13-旧的自身数据                                       $    $          $    $  ANS016.BYTE008  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  153.SDMY-C-R挑战响应误差                                     $    $          $    $  ANS016.BYTE008  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  154.SDM32-内部信号损坏                                       $    $          $    $  ANS016.BYTE008  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  155.SDM31-内部校验错误                                       $    $          $    $  ANS016.BYTE009  $  if(((x&0x80)>>7)==0x00) y=@040c;else if(((x&0x80)>>7)==0x01) y=@040d;else y=@0035;
  $  156.SDM27-AEB双重检查错误                                    $    $          $    $  ANS016.BYTE009  $  if(((x&0x40)>>6)==0x00) y=@040c;else if(((x&0x40)>>6)==0x01) y=@040d;else y=@0035;
  $  157.SDM26-DDR校验出错                                        $    $          $    $  ANS016.BYTE009  $  if(((x&0x20)>>5)==0x00) y=@040c;else if(((x&0x20)>>5)==0x01) y=@040d;else y=@0035;
  $  158.SDM19图像丢失                                            $    $          $    $  ANS016.BYTE009  $  if(((x&0x10)>>4)==0x00) y=@040c;else if(((x&0x10)>>4)==0x01) y=@040d;else y=@0035;
  $  159.EyeQ 应用程序诊断失效                                    $    $          $    $  ANS016.BYTE009  $  if(((x&0x08)>>3)==0x00) y=@040c;else if(((x&0x08)>>3)==0x01) y=@040d;else y=@0035;
  $  160.EyeQ 应用程序失效                                        $    $          $    $  ANS016.BYTE009  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  161.EyeQ引导失败                                             $    $          $    $  ANS016.BYTE009  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  162.GPIO10                                                   $    $          $    $  ANS016.BYTE009  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  163.EyeQ SPI丢失                                             $    $          $    $  ANS016.BYTE010  $  if(((x&0x80)>>7)==0x00) y=@040c;else if(((x&0x80)>>7)==0x01) y=@040d;else y=@0035;
  $  164.MCU EEPROM测试失败                                       $    $          $    $  ANS016.BYTE010  $  if(((x&0x40)>>6)==0x00) y=@040c;else if(((x&0x40)>>6)==0x01) y=@040d;else y=@0035;
  $  165.MCU RAM测试失败                                          $    $          $    $  ANS016.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@040c;else if(((x&0x20)>>5)==0x01) y=@040d;else y=@0035;
  $  166.MCU闪存校验和错误                                        $    $          $    $  ANS016.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@040c;else if(((x&0x10)>>4)==0x01) y=@040d;else y=@0035;
  $  167.MCU异常复位                                              $    $          $    $  ANS016.BYTE010  $  if(((x&0x08)>>3)==0x00) y=@040c;else if(((x&0x08)>>3)==0x01) y=@040d;else y=@0035;
  $  168.MCU PLL失败                                              $    $          $    $  ANS016.BYTE010  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  169.DAS电源2.8V欠压                                          $    $          $    $  ANS016.BYTE010  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  170.DAS电源2.8V过压                                          $    $          $    $  ANS016.BYTE010  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  171.DAS电源1.2V欠压                                          $    $          $    $  ANS016.BYTE011  $  if(((x&0x80)>>7)==0x00) y=@040c;else if(((x&0x80)>>7)==0x01) y=@040d;else y=@0035;
  $  172.DAS电源1.2V过压                                          $    $          $    $  ANS016.BYTE011  $  if(((x&0x40)>>6)==0x00) y=@040c;else if(((x&0x40)>>6)==0x01) y=@040d;else y=@0035;
  $  173.DAS电源1.8V欠压                                          $    $          $    $  ANS016.BYTE011  $  if(((x&0x20)>>5)==0x00) y=@040c;else if(((x&0x20)>>5)==0x01) y=@040d;else y=@0035;
  $  174.DAS电源1.8V过压                                          $    $          $    $  ANS016.BYTE011  $  if(((x&0x10)>>4)==0x00) y=@040c;else if(((x&0x10)>>4)==0x01) y=@040d;else y=@0035;
  $  175.DAS电源3.3V欠压                                          $    $          $    $  ANS016.BYTE011  $  if(((x&0x08)>>3)==0x00) y=@040c;else if(((x&0x08)>>3)==0x01) y=@040d;else y=@0035;
  $  176.DAS电源3.3V过压                                          $    $          $    $  ANS016.BYTE011  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  177.DAS电源5V欠压                                            $    $          $    $  ANS016.BYTE011  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  178.DAS电源5V过压                                            $    $          $    $  ANS016.BYTE011  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  179.MCU应用程序版本与MCU标定文件不兼容                       $    $          $    $  ANS017.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  180.图像处理单元等文件与MCU标定文件不兼容                    $    $          $    $  ANS017.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  181.MCU应用程序版本与图像处理单元不兼容                      $    $          $    $  ANS017.BYTE004  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  182.与BCM(车身控制管理系统)通讯丢失                          $    $          $    $  ANS018.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  183.与TCU(变速箱控制单元)模块失去通讯                        $    $          $    $  ANS018.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  184.与IPK(仪表)通讯丢失                                      $    $          $    $  ANS018.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  185.与ABS/ESP(防抱死制动系统/电子稳定系统)模块失去通讯       $    $          $    $  ANS018.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  186.与SAS(方向盘转向角传感器)模块失去通讯                    $    $          $    $  ANS018.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  187.控制器通讯总线关闭                                       $    $          $    $  ANS018.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  188.蓄电池电压低                                             $    $          $    $  ANS018.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  189.蓄电池电压高                                             $    $          $    $  ANS018.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  190.图像处理器温度过高                                       $    $          $    $  ANS018.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  191.DAS(驾驶辅助系统)内部故障                                $    $          $    $  ANS018.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  192.AHB(自动远光灯)功能因网络数据无效禁止                    $    $          $    $  ANS018.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  193.TSR(交通标志识别)功能因网络数据无效禁止                  $    $          $    $  ANS018.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  194.ACC(自适应巡航控制)功能因网络数据无效禁止                $    $          $    $  ANS018.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  195.AEB(自动制动系统)功能因网络数据无效禁止                  $    $          $    $  ANS018.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  196.FCW(正面碰撞警告)功能因网络数据无效禁止                  $    $          $    $  ANS018.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  197.LDW(车道偏离预警系统)功能因网络数据无效禁止              $    $          $    $  ANS018.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  198.LKA(车道保持辅助)功能因网络数据无效禁止                  $    $          $    $  ANS018.BYTE006  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  199.LDW(车道偏离预警系统)开关指示灯短路至地                  $    $          $    $  ANS018.BYTE006  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  200.LDW(车道偏离预警)开关按键粘滞                            $    $          $    $  ANS018.BYTE006  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  201.DAS(驾驶辅助系统)软件版本不匹配                          $    $          $    $  ANS018.BYTE006  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  202.DAS(驾驶辅助系统)标定异常                                $    $          $    $  ANS018.BYTE006  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  203.DAS(驾驶辅助系统)摄像头视野遮挡                          $    $          $    $  ANS018.BYTE006  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;

  $)  02.数据流3
  $  02.数据流3
  $  REQ000:74A 03 22 B0 27 00 00 00 00       $  ANS000:7CA 03 22 B0 27 00 00 00 00
  $  REQ001:74A 03 22 B0 28 00 00 00 00       $  ANS001:7CA 03 22 B0 28 00 00 00 00
  $  REQ002:74A 03 22 B0 26 00 00 00 00       $  ANS002:7CA 03 22 B0 26 00 00 00 00
  $  REQ003:74A 03 22 B0 29 00 00 00 00       $  ANS003:7CA 03 22 B0 29 00 00 00 00
  $  REQ004:74A 03 22 B0 2F 00 00 00 00       $  ANS004:7CA 03 22 B0 2F 00 00 00 00
  $  REQ005:74A 03 22 B0 75 00 00 00 00       $  ANS005:7CA 03 22 B0 75 00 00 00 00
  $  REQ006:74A 03 22 B0 77 00 00 00 00       $  ANS006:7CA 03 22 B0 77 00 00 00 00
  $  REQ007:74A 03 22 B0 94 00 00 00 00       $  ANS007:7CA 03 22 B0 94 00 00 00 00
  $  REQ008:74A 03 22 B0 74 00 00 00 00       $  ANS008:7CA 03 22 B0 74 00 00 00 00
  $  REQ009:74A 03 22 B0 76 00 00 00 00       $  ANS009:7CA 03 22 B0 76 00 00 00 00
  $  REQ010:74A 03 22 C0 04 00 00 00 00       $  ANS010:7CA 03 22 C0 04 00 00 00 00
  $  REQ011:74A 03 22 B0 7D 00 00 00 00       $  ANS011:7CA 03 22 B0 7D 00 00 00 00
  $  REQ012:74A 03 22 B0 7F 00 00 00 00       $  ANS012:7CA 03 22 B0 7F 00 00 00 00
  $  REQ013:74A 03 22 B0 96 00 00 00 00       $  ANS013:7CA 03 22 B0 96 00 00 00 00
  $  REQ014:74A 03 22 B0 7C 00 00 00 00       $  ANS014:7CA 03 22 B0 7C 00 00 00 00
  $  REQ015:74A 03 22 B0 7E 00 00 00 00       $  ANS015:7CA 03 22 B0 7E 00 00 00 00
  $  REQ016:74A 03 22 D0 01 00 00 00 00       $  ANS016:7CA 03 22 D0 01 00 00 00 00
  $  REQ017:74A 03 22 B0 31 00 00 00 00       $  ANS017:7CA 03 22 B0 31 00 00 00 00
  $  REQ018:74A 03 22 B0 02 00 00 00 00       $  ANS018:7CA 03 22 B0 02 00 00 00 00
  $  REQ019:74A 03 22 B0 01 00 00 00 00       $  ANS019:7CA 03 22 B0 01 00 00 00 00
  $  REQ020:74A 03 22 B0 71 00 00 00 00       $  ANS020:7CA 03 22 B0 71 00 00 00 00
  $  REQ021:74A 03 22 B0 73 00 00 00 00       $  ANS021:7CA 03 22 B0 73 00 00 00 00
  $  REQ022:74A 03 22 B0 93 00 00 00 00       $  ANS022:7CA 03 22 B0 93 00 00 00 00
  $  REQ023:74A 03 22 B0 70 00 00 00 00       $  ANS023:7CA 03 22 B0 70 00 00 00 00
  $  REQ024:74A 03 22 B0 72 00 00 00 00       $  ANS024:7CA 03 22 B0 72 00 00 00 00
  $  REQ025:74A 03 22 D0 03 00 00 00 00       $  ANS025:7CA 03 22 D0 03 00 00 00 00
  $  REQ026:74A 03 22 D0 02 00 00 00 00       $  ANS026:7CA 03 22 D0 02 00 00 00 00
  $  REQ027:74A 03 22 B0 A5 00 00 00 00       $  ANS027:7CA 03 22 B0 A5 00 00 00 00
  $  REQ028:74A 03 22 B0 A6 00 00 00 00       $  ANS028:7CA 03 22 B0 A6 00 00 00 00
  $  REQ029:74A 03 22 B0 A7 00 00 00 00       $  ANS029:7CA 03 22 B0 A7 00 00 00 00
  $  REQ030:74A 03 22 B0 A8 00 00 00 00       $  ANS030:7CA 03 22 B0 A8 00 00 00 00

  $  000.AHB(自动远光灯)功能开关                          $    $          $    $  ANS000.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  001.TSR(交通标志识别)功能开关                        $    $          $    $  ANS000.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  002.ACC(自适应巡航控制)功能开关                      $    $          $    $  ANS000.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  003.AEBP(行人自动紧急制动)功能开关                   $    $          $    $  ANS000.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  004.AEB(自动制动系统)功能开关                        $    $          $    $  ANS000.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  005.PCW(行人碰撞警告)功能开关                        $    $          $    $  ANS000.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  006.FCW(正面碰撞警告)功能开关                        $    $          $    $  ANS000.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  007.LDW(车道偏离预警系统)功能开关                    $    $          $    $  ANS000.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  008.LKA(车道保持辅助)功能开关                        $    $          $    $  ANS000.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  009.车辆的地区代码                                   $    $          $    $  ANS001.BYTE004  $  if(x==0x00) y=@0136;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0da8;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0103;
  $  010.FCW(正面碰撞警告)驾驶员选定的灵敏度级别          $    $          $    $  ANS002.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0ed7;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@0ed8;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  011.LDW(车道偏离预警系统)驱动选定的灵敏度等级        $    $          $    $  ANS002.BYTE004  $  if((x&0x0F)==0x00) y=@0ed7;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@0ed8;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  012.AEB(自动制动系统)驱动选择的灵敏度等级            $    $          $    $  ANS002.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0ed7;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@0ed8;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  013.ACC(自适应巡航控制)驱动选定的目标距离等级        $    $          $    $  ANS002.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0103;
  $  014.PCW(行人碰撞警告)驱动选定的灵敏度等级            $    $          $    $  ANS002.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0ed7;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@0ed8;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  015.AEBP(行人自动紧急制动)驱动选择的灵敏度等级       $    $          $    $  ANS002.BYTE006  $  if((x&0x0F)==0x00) y=@0ed7;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@0ed8;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  016.摄像头的目标速度要求                             $    $          $    $  ANS003.BYTE004  $  y=(x1*256+x2);
  $  017.ACC(自适应巡航控制)驾驶员选定的目标速度          $    $          $    $  ANS003.BYTE006  $  y=(x1*256+x2);
  $  018.摄像头到车轮外缘左侧的距离                       $    $  m       $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.01;
  $  019.摄像头到车轮外缘右侧的距离                       $    $  m       $    $  ANS004.BYTE006  $  y=(x1*256+x2)*0.01;
  $  020.从摄像头到目标的距离                             $    $  m       $    $  ANS004.BYTE008  $  y=(x1*256+x2)*0.001;
  $  021.摄像头高度                                       $    $  m       $    $  ANS004.BYTE010  $  y=(x1*256+x2)*0.01;
  $  022.目标中心距地面左侧高度                           $    $  m       $    $  ANS004.BYTE012  $  y=(x1*256+x2)*0.01;
  $  023.目标中心距地面右侧高度                           $    $  m       $    $  ANS004.BYTE014  $  y=(x1*256+x2)*0.01;
  $  024.目标中心距汽车中心左侧的距离                     $    $  m       $    $  ANS004.BYTE016  $  y=(x1*256+x2)*0.01;
  $  025.目标中心距汽车中心右侧的距离                     $    $  m       $    $  ANS004.BYTE018  $  y=(x1*256+x2)*0.01;
  $  026.单个矩形尺寸，而非整个目标                       $    $  rad     $    $  ANS004.BYTE020  $  y=(x1*256+x2)*0.001;
  $  027.黑白格排列方式                                   $    $          $    $  ANS004.BYTE022  $  y=x;
  $  028.摄像头焦距                                       $    $          $    $  ANS004.BYTE023  $  y=(x1*256+x2);
  $  029.目标顺序从最左边到最右边右下四分之一的颜色       $    $          $    $  ANS004.BYTE025  $  if(x==0x00) y=@0ed9;else if(x==0x01) y=@0997;else y=@0103;
  $  030.目标顺序从最左边到最右边左下四分之一的颜色       $    $          $    $  ANS004.BYTE026  $  if(x==0x00) y=@0ed9;else if(x==0x01) y=@0997;else y=@0103;
  $  031.目标板数量                                       $    $          $    $  ANS004.BYTE027  $  y=x;
  $  032.最大俯仰方向标定值                               $    $          $    $  ANS004.BYTE028  $  y=x;
  $  033.最大横摆方向标定值                               $    $          $    $  ANS004.BYTE029  $  y=x;
  $  034.最小俯仰方向标定值                               $    $          $    $  ANS004.BYTE030  $  y=((x&0x7F)-(x&0x80))-40;
  $  035.最小横摆方向标定值                               $    $          $    $  ANS004.BYTE031  $  y=((x&0x7F)-(x&0x80))-47;
  $  036.最大侧倾角                                       $    $          $    $  ANS004.BYTE032  $  y=x*0.001;
  $  037.底部有效图像坐标值                               $    $          $    $  ANS004.BYTE033  $  y=((x&0x7F)-(x&0x80))-120;
  $  038.顶部有效图像坐标值                               $    $          $    $  ANS004.BYTE034  $  y=x;
  $  039.摄像头到车辆前端的距离                           $    $          $    $  ANS004.BYTE035  $  y=x*0.01;
  $  040.摄像头到车辆中轴线的距离                         $    $          $    $  ANS004.BYTE036  $  y=x*0.01-1.28;
  $  041.FCW未准备好激活的原因0~7                         $    $          $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  042.FCW未准备好激活的原因8~15                        $    $          $    $  ANS005.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  043.FCW未准备好激活的年份                            $    $          $    $  ANS005.BYTE006  $  y=x+2000;
  $  044.FCW未准备好激活的月份                            $    $          $    $  ANS005.BYTE007  $  y=x;
  $  045.FCW未准备好激活的日                              $    $          $    $  ANS005.BYTE008  $  y=x;
  $  046.FCW未准备好激活的时                              $    $          $    $  ANS005.BYTE009  $  y=x;
  $  047.FCW未准备好激活的分                              $    $          $    $  ANS005.BYTE010  $  y=x;
  $  048.FCW未准备好激活的秒                              $    $          $    $  ANS005.BYTE011  $  y=x;
  $  049.FCW未准备好激活的里程                            $    $  km      $    $  ANS005.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  050.FCW未准备好激活的原因0~7                         $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  051.FCW未准备好激活的原因8~15                        $    $          $    $  ANS006.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  052.FCW退出激活状态的原因0~7(B094)                   $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  053.FCW退出激活状态的原因8~15(B094)                  $    $          $    $  ANS007.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  054.FCW退出激活状态的原因0~7                         $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  055.FCW退出激活状态的原因8~15                        $    $          $    $  ANS008.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  056.FCW退出事件年份                                  $    $          $    $  ANS008.BYTE006  $  y=x+2000;
  $  057.FCW退出事件月份                                  $    $          $    $  ANS008.BYTE007  $  y=x;
  $  058.FCW退出活动日                                    $    $          $    $  ANS008.BYTE008  $  y=x;
  $  059.FCW退出活动时                                    $    $          $    $  ANS008.BYTE009  $  y=x;
  $  060.FCW退出事件分                                    $    $          $    $  ANS008.BYTE010  $  y=x;
  $  061.FCW退出事件秒                                    $    $          $    $  ANS008.BYTE011  $  y=x;
  $  062.FCW退出事件里程                                  $    $  km      $    $  ANS008.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  063.FCW退出激活状态的原因0~7                         $    $          $    $  ANS009.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  064.FCW退出激活状态的原因8~15                        $    $          $    $  ANS009.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  065.AHB(自动远光灯)功能开关                          $    $          $    $  ANS010.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  066.TSR(交通标志识别)功能开关                        $    $          $    $  ANS010.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  067.ACC(自适应巡航控制)功能开关                      $    $          $    $  ANS010.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  068.AEBP(行人自动紧急制动)功能开关                   $    $          $    $  ANS010.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  069.AEB(自动制动系统)功能开关                        $    $          $    $  ANS010.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  070.PCW(行人碰撞警告)功能开关                        $    $          $    $  ANS010.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  071.FCW(正面碰撞警告)功能开关                        $    $          $    $  ANS010.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  072.LDW(车道偏离预警系统)功能开关                    $    $          $    $  ANS010.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  073.LKA(车道保持辅助)功能开关                        $    $          $    $  ANS010.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  074.IHC未准备好激活的原因0~7                         $    $          $    $  ANS011.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  075.IHC未准备好激活的年份                            $    $          $    $  ANS011.BYTE006  $  y=x+2000;
  $  076.IHC未准备好激活的月份                            $    $          $    $  ANS011.BYTE007  $  y=x;
  $  077.IHC未准备好激活的日                              $    $          $    $  ANS011.BYTE008  $  y=x;
  $  078.IHC未准备好激活的时                              $    $          $    $  ANS011.BYTE009  $  y=x;
  $  079.IHC未准备好激活的分                              $    $          $    $  ANS011.BYTE010  $  y=x;
  $  080.IHC未准备好激活的秒                              $    $          $    $  ANS011.BYTE011  $  y=x;
  $  081.IHC未准备好激活的里程                            $    $  km      $    $  ANS011.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  082.IHC未准备好激活的原因0~7                         $    $          $    $  ANS012.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  083.IHC未准备好激活的原因8~15                        $    $          $    $  ANS012.BYTE005  $  y=x;
  $  084.IHC退出激活状态的原因0~7(B096)                   $    $          $    $  ANS013.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  085.IHC退出激活状态的原因8~15                        $    $          $    $  ANS013.BYTE005  $  y=x;
  $  086.IHC退出激活状态的原因0~7                         $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  087.IHC退出事件年                                    $    $          $    $  ANS014.BYTE006  $  y=x+2000;
  $  088.IHC退出事件月份                                  $    $          $    $  ANS014.BYTE007  $  y=x;
  $  089.IHC退出活动日                                    $    $          $    $  ANS014.BYTE008  $  y=x;
  $  090.IHC退出活动时                                    $    $          $    $  ANS014.BYTE009  $  y=x;
  $  091.IHC退出事件分                                    $    $          $    $  ANS014.BYTE010  $  y=x;
  $  092.IHC退出事件秒                                    $    $          $    $  ANS014.BYTE011  $  y=x;
  $  093.IHC退出事件里程                                  $    $  km      $    $  ANS014.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  094.IHC退出激活状态的原因0~7                         $    $          $    $  ANS015.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  095.IHC退出激活状态的原因8~15                        $    $          $    $  ANS015.BYTE005  $  y=x;
  $  096.全局KL.50状态                                    $    $          $    $  ANS016.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  097.全局动力模块运行状态                             $    $          $    $  ANS016.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  098.全局 KL.15 状态                                  $    $          $    $  ANS016.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  099.全局KL.R状态                                     $    $          $    $  ANS016.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  100.系统KL.50状态                                    $    $          $    $  ANS016.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  101.全局发动机运行状态                               $    $          $    $  ANS016.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  102.系统KL.15状态                                    $    $          $    $  ANS016.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  103.系统KL.R状态                                     $    $          $    $  ANS016.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  104.图像处理器当前温度                               $    $          $    $  ANS017.BYTE004  $  y=(x1*256+x2)-40;
  $  105.图像处理单元供电模式                             $    $          $    $  ANS018.BYTE004  $  if(x==0x00) y=@0908;else if(x==0x01) y=@0dc3;else if(x==0x02) y=@0e2c;else if(x==0x03) y=@090b;else if(x==0x04) y=@0e2d;else if(x==0x05) y=@090d;else y=@0103;
  $  106.图像处理单元运行状态                             $    $          $    $  ANS019.BYTE004  $  if(x==0x00) y=@000f;else if(x==0x02) y=@0dc4;else if(x==0x03) y=@009e;else if(x==0x22) y=@0dc5;else if(x==0x82) y=@0dc6;else if(x==0x85) y=@0dc7;else if(x==0x92) y=@0e37;else if(x==0xAA) y=@0dc9;else if(x==0xAC) y=@0dca;else y=@0103;
  $  107.LDW未准备好激活的原因0~7                         $    $          $    $  ANS020.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  108.LDW未准备好激活的原因8~15                        $    $          $    $  ANS020.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  109.LDW未准备好激活的年份                            $    $          $    $  ANS020.BYTE006  $  y=x+2000;
  $  110.LDW未准备好激活的月份                            $    $          $    $  ANS020.BYTE007  $  y=x;
  $  111.LDW未准备好激活的日                              $    $          $    $  ANS020.BYTE008  $  y=x;
  $  112.LDW未准备好激活的时                              $    $          $    $  ANS020.BYTE009  $  y=x;
  $  113.LDW未准备好激活的分                              $    $          $    $  ANS020.BYTE010  $  y=x;
  $  114.LDW未准备好激活的秒                              $    $          $    $  ANS020.BYTE011  $  y=x;
  $  115.LDW未准备好激活的里程                            $    $  km      $    $  ANS020.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  116.LDW未准备好激活的原因0~7                         $    $          $    $  ANS021.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  117.LDW未准备好激活的原因8~15                        $    $          $    $  ANS021.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  118.LDW未准备好激活的原因0~7(B093)                   $    $          $    $  ANS022.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  119.LDW未准备好激活的原因0~78~15(B093)               $    $          $    $  ANS022.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  120.LDW退出激活状态的原因0~7                         $    $          $    $  ANS023.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  121.LDW退出激活状态的原因8~15                        $    $          $    $  ANS023.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  122.LDW退出事件年份                                  $    $          $    $  ANS023.BYTE006  $  y=x+2000;
  $  123.LDW退出事件月份                                  $    $          $    $  ANS023.BYTE007  $  y=x;
  $  124.LDW退出活动日                                    $    $          $    $  ANS023.BYTE008  $  y=x;
  $  125.LDW退出活动时                                    $    $          $    $  ANS023.BYTE009  $  y=x;
  $  126.LDW退出事件分                                    $    $          $    $  ANS023.BYTE010  $  y=x;
  $  127.LDW退出事件秒                                    $    $          $    $  ANS023.BYTE011  $  y=x;
  $  128.LDW退出事件里程                                  $    $  km      $    $  ANS023.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  129.LDW退出激活状态的原因0~7                         $    $          $    $  ANS024.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  130.LDW退出激活状态的原因8~15                        $    $          $    $  ANS024.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  131.LDW(车道偏离预警系统)开关                        $    $          $    $  ANS025.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  132.LDW(车道偏离预警系统)指示灯                      $    $          $    $  ANS026.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  133.LKA未准备好激活的原因0~7                         $    $          $    $  ANS027.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  134.LKA未准备好激活的原因8~15                        $    $          $    $  ANS027.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0103;
  $  135.LKA未准备好激活的原因16~23                       $    $          $    $  ANS027.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0ede;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0edf;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0ee0;else if(x==0x40) y=@0ee1;else if(x==0x80) y=@0ee2;else y=@0103;
  $  136.LKA未准备好激活的原因24~31                       $    $          $    $  ANS027.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  137.LKA未准备好激活的原因32~39                       $    $          $    $  ANS027.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  138.LKA未准备好激活的原因40~47                       $    $          $    $  ANS027.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  139.LKA未准备好激活的原因48_55                       $    $          $    $  ANS027.BYTE010  $  y=x;
  $  140.LKA未准备好激活的原因56_63                       $    $          $    $  ANS027.BYTE011  $  y=x;
  $  141.LKA未准备好激活的故障安全标志                    $    $          $    $  ANS027.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  142.LKA未准备好激活的年份                            $    $          $    $  ANS027.BYTE014  $  y=x+2000;
  $  143.LKA未准备好激活的月份                            $    $          $    $  ANS027.BYTE015  $  y=x;
  $  144.LKA未准备好激活的日                              $    $          $    $  ANS027.BYTE016  $  y=x;
  $  145.LKA未准备好激活的时                              $    $          $    $  ANS027.BYTE017  $  y=x;
  $  146.LKA未准备好激活的分                              $    $          $    $  ANS027.BYTE018  $  y=x;
  $  147.LKA未准备好激活的秒                              $    $          $    $  ANS027.BYTE019  $  y=x;
  $  148.LKA未准备好激活的里程                            $    $  km      $    $  ANS027.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  149.LKA未准备好激活的原因0~7                         $    $          $    $  ANS028.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  150.LKA未准备好激活的原因8~15                        $    $          $    $  ANS028.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0103;
  $  151.LKA未准备好激活的原因16~23                       $    $          $    $  ANS028.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0ede;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0edf;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0ee0;else if(x==0x40) y=@0ee1;else if(x==0x80) y=@0ee2;else y=@0103;
  $  152.LKA未准备好激活的原因24~31                       $    $          $    $  ANS028.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  153.LKA未准备好激活的原因32~39                       $    $          $    $  ANS028.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  154.LKA未准备好激活的原因40~47                       $    $          $    $  ANS028.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  155.LKA未准备好激活的原因48_55                       $    $          $    $  ANS028.BYTE010  $  y=x;
  $  156.LKA未准备好激活的原因56_63                       $    $          $    $  ANS028.BYTE011  $  y=x;
  $  157.LKA未准备好激活的故障安全标志                    $    $          $    $  ANS028.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  158.LKA未准备好激活的年份                            $    $          $    $  ANS028.BYTE014  $  y=x+2000;
  $  159.LKA未准备好激活的月份                            $    $          $    $  ANS028.BYTE015  $  y=x;
  $  160.LKA未准备好激活的日                              $    $          $    $  ANS028.BYTE016  $  y=x;
  $  161.LKA未准备好激活的时                              $    $          $    $  ANS028.BYTE017  $  y=x;
  $  162.LKA未准备好激活的分                              $    $          $    $  ANS028.BYTE018  $  y=x;
  $  163.LKA未准备好激活的秒                              $    $          $    $  ANS028.BYTE019  $  y=x;
  $  164.LKA未准备好激活的里程                            $    $  km      $    $  ANS028.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  165.LKA未准备好激活的原因0~7                         $    $          $    $  ANS029.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  166.LKA未准备好激活的原因8~15                        $    $          $    $  ANS029.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0103;
  $  167.LKA未准备好激活的原因16~23                       $    $          $    $  ANS029.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0ede;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0edf;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0ee0;else if(x==0x40) y=@0ee1;else if(x==0x80) y=@0ee2;else y=@0103;
  $  168.LKA未准备好激活的原因24~31                       $    $          $    $  ANS029.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  169.LKA未准备好激活的原因32~39                       $    $          $    $  ANS029.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  170.LKA未准备好激活的原因40~47                       $    $          $    $  ANS029.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  171.LKA未准备好激活的原因48_55                       $    $          $    $  ANS029.BYTE010  $  y=x;
  $  172.LKA未准备好激活的原因56_63                       $    $          $    $  ANS029.BYTE011  $  y=x;
  $  173.LKA未准备好激活的故障安全标志                    $    $          $    $  ANS029.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  174.LKA未准备好激活的年份                            $    $          $    $  ANS029.BYTE014  $  y=x+2000;
  $  175.LKA未准备好激活的月份                            $    $          $    $  ANS029.BYTE015  $  y=x;
  $  176.LKA未准备好激活的日                              $    $          $    $  ANS029.BYTE016  $  y=x;
  $  177.LKA未准备好激活的时                              $    $          $    $  ANS029.BYTE017  $  y=x;
  $  178.LKA未准备好激活的分                              $    $          $    $  ANS029.BYTE018  $  y=x;
  $  179.LKA未准备好激活的秒                              $    $          $    $  ANS029.BYTE019  $  y=x;
  $  180.LKA未准备好激活的里程                            $    $  km      $    $  ANS029.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  181.LKA未准备好激活的原因0~7                         $    $          $    $  ANS030.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  182.LKA未准备好激活的原因8~15                        $    $          $    $  ANS030.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0103;
  $  183.LKA未准备好激活的原因16~23                       $    $          $    $  ANS030.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0ede;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0edf;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0ee0;else if(x==0x40) y=@0ee1;else if(x==0x80) y=@0ee2;else y=@0103;
  $  184.LKA未准备好激活的原因24~31                       $    $          $    $  ANS030.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  185.LKA未准备好激活的原因32~39                       $    $          $    $  ANS030.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  186.LKA未准备好激活的原因40~47                       $    $          $    $  ANS030.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  187.LKA未准备好激活的原因48_55                       $    $          $    $  ANS030.BYTE010  $  y=x;
  $  188.LKA未准备好激活的原因56_63                       $    $          $    $  ANS030.BYTE011  $  y=x;
  $  189.LKA未准备好激活的故障安全标志                    $    $          $    $  ANS030.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  190.LKA未准备好激活的年份                            $    $          $    $  ANS030.BYTE014  $  y=x+2000;
  $  191.LKA未准备好激活的月份                            $    $          $    $  ANS030.BYTE015  $  y=x;
  $  192.LKA未准备好激活的日                              $    $          $    $  ANS030.BYTE016  $  y=x;
  $  193.LKA未准备好激活的时                              $    $          $    $  ANS030.BYTE017  $  y=x;
  $  194.LKA未准备好激活的分                              $    $          $    $  ANS030.BYTE018  $  y=x;
  $  195.LKA未准备好激活的秒                              $    $          $    $  ANS030.BYTE019  $  y=x;
  $  196.LKA未准备好激活的里程                            $    $  km      $    $  ANS030.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);

  $)  03.数据流4
  $  03.数据流4
  $  REQ000:74A 03 22 B0 A9 00 00 00 00       $  ANS000:7CA 03 22 B0 A9 00 00 00 00
  $  REQ001:74A 03 22 B0 AB 00 00 00 00       $  ANS001:7CA 03 22 B0 AB 00 00 00 00
  $  REQ002:74A 03 22 B0 97 00 00 00 00       $  ANS002:7CA 03 22 B0 97 00 00 00 00
  $  REQ003:74A 03 22 B0 A0 00 00 00 00       $  ANS003:7CA 03 22 B0 A0 00 00 00 00
  $  REQ004:74A 03 22 B0 A1 00 00 00 00       $  ANS004:7CA 03 22 B0 A1 00 00 00 00
  $  REQ005:74A 03 22 B0 A2 00 00 00 00       $  ANS005:7CA 03 22 B0 A2 00 00 00 00
  $  REQ006:74A 03 22 B0 A3 00 00 00 00       $  ANS006:7CA 03 22 B0 A3 00 00 00 00
  $  REQ007:74A 03 22 B0 A4 00 00 00 00       $  ANS007:7CA 03 22 B0 A4 00 00 00 00
  $  REQ008:74A 03 22 B0 AA 00 00 00 00       $  ANS008:7CA 03 22 B0 AA 00 00 00 00
  $  REQ009:74A 03 22 B0 30 00 00 00 00       $  ANS009:7CA 03 22 B0 30 00 00 00 00
  $  REQ010:74A 03 22 E1 01 00 00 00 00       $  ANS010:7CA 03 22 E1 01 00 00 00 00
  $  REQ011:74A 03 22 C0 05 00 00 00 00       $  ANS011:7CA 03 22 C0 05 00 00 00 00
  $  REQ012:74A 03 22 B0 90 00 00 00 00       $  ANS012:7CA 03 22 B0 90 00 00 00 00
  $  REQ013:74A 03 22 C0 08 00 00 00 00       $  ANS013:7CA 03 22 C0 08 00 00 00 00
  $  REQ014:74A 03 22 C0 03 00 00 00 00       $  ANS014:7CA 03 22 C0 03 00 00 00 00
  $  REQ015:74A 03 22 C0 06 00 00 00 00       $  ANS015:7CA 03 22 C0 06 00 00 00 00
  $  REQ016:74A 03 22 B0 47 00 00 00 00       $  ANS016:7CA 03 22 B0 47 00 00 00 00
  $  REQ017:74A 03 22 B0 79 00 00 00 00       $  ANS017:7CA 03 22 B0 79 00 00 00 00
  $  REQ018:74A 03 22 B0 7B 00 00 00 00       $  ANS018:7CA 03 22 B0 7B 00 00 00 00
  $  REQ019:74A 03 22 B0 95 00 00 00 00       $  ANS019:7CA 03 22 B0 95 00 00 00 00
  $  REQ020:74A 03 22 B0 78 00 00 00 00       $  ANS020:7CA 03 22 B0 78 00 00 00 00
  $  REQ021:74A 03 22 B0 7A 00 00 00 00       $  ANS021:7CA 03 22 B0 7A 00 00 00 00
  $  REQ022:74A 03 22 B0 00 00 00 00 00       $  ANS022:7CA 03 22 B0 00 00 00 00 00

  $  000.LKA未准备好激活的原因0~7                         $    $          $    $  ANS000.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  001.LKA未准备好激活的原因8~15                        $    $          $    $  ANS000.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0103;
  $  002.LKA未准备好激活的原因16~23                       $    $          $    $  ANS000.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0ede;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0edf;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0ee0;else if(x==0x40) y=@0ee1;else if(x==0x80) y=@0ee2;else y=@0103;
  $  003.LKA未准备好激活的原因24~31                       $    $          $    $  ANS000.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  004.LKA未准备好激活的原因32~39                       $    $          $    $  ANS000.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  005.LKA未准备好激活的原因40~47                       $    $          $    $  ANS000.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  006.LKA未准备好激活的原因48_55                       $    $          $    $  ANS000.BYTE010  $  y=x;
  $  007.LKA未准备好激活的原因56_63                       $    $          $    $  ANS000.BYTE011  $  y=x;
  $  008.LKA未准备好激活的故障安全标志                    $    $          $    $  ANS000.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  009.LKA未准备好激活的年份                            $    $          $    $  ANS000.BYTE014  $  y=x+2000;
  $  010.LKA未准备好激活的月份                            $    $          $    $  ANS000.BYTE015  $  y=x;
  $  011.LKA未准备好激活的日                              $    $          $    $  ANS000.BYTE016  $  y=x;
  $  012.LKA未准备好激活的时                              $    $          $    $  ANS000.BYTE017  $  y=x;
  $  013.LKA未准备好激活的分                              $    $          $    $  ANS000.BYTE018  $  y=x;
  $  014.LKA未准备好激活的秒                              $    $          $    $  ANS000.BYTE019  $  y=x;
  $  015.LKA未准备好激活的里程                            $    $  km      $    $  ANS000.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  016.LKA未准备好激活的原因0~7                         $    $          $    $  ANS001.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  017.LKA未准备好激活的原因8~15                        $    $          $    $  ANS001.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0103;
  $  018.LKA未准备好激活的原因16~23                       $    $          $    $  ANS001.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0ede;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0edf;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0ee0;else if(x==0x40) y=@0ee1;else if(x==0x80) y=@0ee2;else y=@0103;
  $  019.LKA未准备好激活的原因24~31                       $    $          $    $  ANS001.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  020.LKA未准备好激活的原因32~39                       $    $          $    $  ANS001.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  021.LKA未准备好激活的原因40~47                       $    $          $    $  ANS001.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  022.LKA未准备好激活的原因48_55                       $    $          $    $  ANS001.BYTE010  $  y=x;
  $  023.LKA未准备好激活的原因56_63                       $    $          $    $  ANS001.BYTE011  $  y=x;
  $  024.LKA退出激活状态的原因0~7                         $    $          $    $  ANS002.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  025.LKA退出激活状态的原因8~15                        $    $          $    $  ANS002.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  026.LKA退出激活状态的原因16~23                       $    $          $    $  ANS002.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  027.LKA退出激活状态的原因24~31                       $    $          $    $  ANS002.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  028.LKA退出激活状态的原因32~39                       $    $          $    $  ANS002.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  029.LKA退出激活状态的原因40~47                       $    $          $    $  ANS002.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  030.LKA退出激活状态的原因48_55                       $    $          $    $  ANS002.BYTE010  $  y=x;
  $  031.LKA退出激活状态的原因56_63                       $    $          $    $  ANS002.BYTE011  $  y=x;
  $  032.LKA退出激活状态的原因0~7                         $    $          $    $  ANS003.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  033.LKA退出激活状态的原因8~15                        $    $          $    $  ANS003.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  034.LKA退出激活状态的原因16~23                       $    $          $    $  ANS003.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  035.LKA退出激活状态的原因24~31                       $    $          $    $  ANS003.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  036.LKA退出激活状态的原因32~39                       $    $          $    $  ANS003.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  037.LKA退出激活状态的原因40~47                       $    $          $    $  ANS003.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  038.LKA退出激活状态的原因48_55                       $    $          $    $  ANS003.BYTE010  $  y=x;
  $  039.LKA退出激活状态的原因56_63                       $    $          $    $  ANS003.BYTE011  $  y=x;
  $  040.LKA退出激活状态的故障安全标志                    $    $          $    $  ANS003.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  041.LKA退出事件年份                                  $    $          $    $  ANS003.BYTE014  $  y=x+2000;
  $  042.LKA退出事件月份                                  $    $          $    $  ANS003.BYTE015  $  y=x;
  $  043.LKA退出活动日                                    $    $          $    $  ANS003.BYTE016  $  y=x;
  $  044.LKA退出活动时                                    $    $          $    $  ANS003.BYTE017  $  y=x;
  $  045.LKA退出事件分                                    $    $          $    $  ANS003.BYTE018  $  y=x;
  $  046.LKA退出事件秒                                    $    $          $    $  ANS003.BYTE019  $  y=x;
  $  047.LKA退出事件里程                                  $    $  km      $    $  ANS003.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  048.LKA退出激活状态的原因0~7                         $    $          $    $  ANS004.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  049.LKA退出激活状态的原因8~15                        $    $          $    $  ANS004.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  050.LKA退出激活状态的原因16~23                       $    $          $    $  ANS004.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  051.LKA退出激活状态的原因24~31                       $    $          $    $  ANS004.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  052.LKA退出激活状态的原因32~39                       $    $          $    $  ANS004.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  053.LKA退出激活状态的原因40~47                       $    $          $    $  ANS004.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  054.LKA退出激活状态的原因48_55                       $    $          $    $  ANS004.BYTE010  $  y=x;
  $  055.LKA退出激活状态的原因56_63                       $    $          $    $  ANS004.BYTE011  $  y=x;
  $  056.LKA退出激活状态的故障安全标志                    $    $          $    $  ANS004.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  057.LKA退出事件年份                                  $    $          $    $  ANS004.BYTE014  $  y=x+2000;
  $  058.LKA退出事件月份                                  $    $          $    $  ANS004.BYTE015  $  y=x;
  $  059.LKA退出活动日                                    $    $          $    $  ANS004.BYTE016  $  y=x;
  $  060.LKA退出活动时                                    $    $          $    $  ANS004.BYTE017  $  y=x;
  $  061.LKA退出事件分                                    $    $          $    $  ANS004.BYTE018  $  y=x;
  $  062.LKA退出事件秒                                    $    $          $    $  ANS004.BYTE019  $  y=x;
  $  063.LKA退出事件里程                                  $    $  km      $    $  ANS004.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  064.LKA退出激活状态的原因0~7                         $    $          $    $  ANS005.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  065.LKA退出激活状态的原因8~15                        $    $          $    $  ANS005.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  066.LKA退出激活状态的原因16~23                       $    $          $    $  ANS005.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  067.LKA退出激活状态的原因24~31                       $    $          $    $  ANS005.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  068.LKA退出激活状态的原因32~39                       $    $          $    $  ANS005.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  069.LKA退出激活状态的原因40~47                       $    $          $    $  ANS005.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  070.LKA退出激活状态的原因48_55                       $    $          $    $  ANS005.BYTE010  $  y=x;
  $  071.LKA退出激活状态的原因56_63                       $    $          $    $  ANS005.BYTE011  $  y=x;
  $  072.LKA退出激活状态的故障安全标志                    $    $          $    $  ANS005.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  073.LKA退出事件年份                                  $    $          $    $  ANS005.BYTE014  $  y=x+2000;
  $  074.LKA退出事件月份                                  $    $          $    $  ANS005.BYTE015  $  y=x;
  $  075.LKA退出活动日                                    $    $          $    $  ANS005.BYTE016  $  y=x;
  $  076.LKA退出活动时                                    $    $          $    $  ANS005.BYTE017  $  y=x;
  $  077.LKA退出事件分                                    $    $          $    $  ANS005.BYTE018  $  y=x;
  $  078.LKA退出事件秒                                    $    $          $    $  ANS005.BYTE019  $  y=x;
  $  079.LKA退出事件里程                                  $    $  km      $    $  ANS005.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  080.LKA退出激活状态的原因0~7                         $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  081.LKA退出激活状态的原因8~15                        $    $          $    $  ANS006.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  082.LKA退出激活状态的原因16~23                       $    $          $    $  ANS006.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  083.LKA退出激活状态的原因24~31                       $    $          $    $  ANS006.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  084.LKA退出激活状态的原因32~39                       $    $          $    $  ANS006.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  085.LKA退出激活状态的原因40~47                       $    $          $    $  ANS006.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  086.LKA退出激活状态的原因48_55                       $    $          $    $  ANS006.BYTE010  $  y=x;
  $  087.LKA退出激活状态的原因56_63                       $    $          $    $  ANS006.BYTE011  $  y=x;
  $  088.LKA退出激活状态的故障安全标志                    $    $          $    $  ANS006.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  089.LKA退出事件年份                                  $    $          $    $  ANS006.BYTE014  $  y=x+2000;
  $  090.LKA退出事件月份                                  $    $          $    $  ANS006.BYTE015  $  y=x;
  $  091.LKA退出活动日                                    $    $          $    $  ANS006.BYTE016  $  y=x;
  $  092.LKA退出活动时                                    $    $          $    $  ANS006.BYTE017  $  y=x;
  $  093.LKA退出事件分                                    $    $          $    $  ANS006.BYTE018  $  y=x;
  $  094.LKA退出事件秒                                    $    $          $    $  ANS006.BYTE019  $  y=x;
  $  095.LKA退出事件里程                                  $    $  km      $    $  ANS006.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  096.LKA退出激活状态的原因0~7                         $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  097.LKA退出激活状态的原因8~15                        $    $          $    $  ANS007.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  098.LKA退出激活状态的原因16~23                       $    $          $    $  ANS007.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  099.LKA退出激活状态的原因24~31                       $    $          $    $  ANS007.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  100.LKA退出激活状态的原因32~39                       $    $          $    $  ANS007.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  101.LKA退出激活状态的原因40~47                       $    $          $    $  ANS007.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  102.LKA退出激活状态的原因48_55                       $    $          $    $  ANS007.BYTE010  $  y=x;
  $  103.LKA退出激活状态的原因56_63                       $    $          $    $  ANS007.BYTE011  $  y=x;
  $  104.LKA退出激活状态的故障安全标志                    $    $          $    $  ANS007.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  105.LKA退出事件年份                                  $    $          $    $  ANS007.BYTE014  $  y=x+2000;
  $  106.LKA退出事件月份                                  $    $          $    $  ANS007.BYTE015  $  y=x;
  $  107.LKA退出活动日                                    $    $          $    $  ANS007.BYTE016  $  y=x;
  $  108.LKA退出活动时                                    $    $          $    $  ANS007.BYTE017  $  y=x;
  $  109.LKA退出事件分                                    $    $          $    $  ANS007.BYTE018  $  y=x;
  $  110.LKA退出事件秒                                    $    $          $    $  ANS007.BYTE019  $  y=x;
  $  111.LKA退出事件里程                                  $    $  km      $    $  ANS007.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  112.LKA退出激活状态的原因0~7                         $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  113.LKA退出激活状态的原因8~15                        $    $          $    $  ANS008.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  114.LKA退出激活状态的原因16~23                       $    $          $    $  ANS008.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  115.LKA退出激活状态的原因24~31                       $    $          $    $  ANS008.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  116.LKA退出激活状态的原因32~39                       $    $          $    $  ANS008.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  117.LKA退出激活状态的原因40~47                       $    $          $    $  ANS008.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  118.LKA退出激活状态的原因48_55                       $    $          $    $  ANS008.BYTE010  $  y=x;
  $  119.LKA退出激活状态的原因56_63                       $    $          $    $  ANS008.BYTE011  $  y=x;
  $  120.AHB(自动远光灯)启用                              $    $          $    $  ANS009.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0035;
  $  121.TSR(交通标志识别)启用                            $    $          $    $  ANS009.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0035;
  $  122.ACC(自适应巡航控制)启用                          $    $          $    $  ANS009.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0035;
  $  123.AEBP(行人自动紧急制动)启用                       $    $          $    $  ANS009.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0035;
  $  124.AEB(自动制动系统)启用                            $    $          $    $  ANS009.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0035;
  $  125.PCW(行人碰撞警告)启用                            $    $          $    $  ANS009.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0035;
  $  126.FCW(正面碰撞警告)启用                            $    $          $    $  ANS009.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0035;
  $  127.LDW(车道偏离预警系统)启用                        $    $          $    $  ANS009.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  128.LKA(车道保持辅助)启用                            $    $          $    $  ANS009.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  129.功能启用信号校验和                               $    $          $    $  ANS009.BYTE006  $  HEX(X1);
  $  130.里程读数                                         $    $  km      $    $  ANS010.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  131.车辆的地区代码                                   $    $          $    $  ANS011.BYTE004  $  if(x==0x00) y=@0136;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0da8;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0103;
  $  132.闪存校验错误                                     $    $          $    $  ANS012.BYTE006  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  133.PLL(锁相环)校验错误                              $    $          $    $  ANS012.BYTE007  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  134.内存校验错误                                     $    $          $    $  ANS012.BYTE008  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  135.栈校验错误                                       $    $          $    $  ANS012.BYTE009  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  136.未使用的存储区校验错误                           $    $          $    $  ANS012.BYTE010  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  137.ECC(错误检查和纠正)校验错误                      $    $          $    $  ANS012.BYTE011  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  138.常量寄存器校验错误                               $    $          $    $  ANS012.BYTE012  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  139.Spi超时                                          $    $          $    $  ANS012.BYTE013  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  140.ESR0的复位计数器                                 $    $          $    $  ANS012.BYTE014  $  y=x;
  $  141.ESR1的复位计数器                                 $    $          $    $  ANS012.BYTE015  $  y=x;
  $  142.SMU的复位计数器                                  $    $          $    $  ANS012.BYTE016  $  y=x;
  $  143.软件复位的复位计数器                             $    $          $    $  ANS012.BYTE017  $  y=x;
  $  144.STM0的复位计数器                                 $    $          $    $  ANS012.BYTE018  $  y=x;
  $  145.STM1的复位计数器                                 $    $          $    $  ANS012.BYTE019  $  y=x;
  $  146.STM2的复位计数器                                 $    $          $    $  ANS012.BYTE020  $  y=x;
  $  147.多次复位的复位计数器                             $    $          $    $  ANS012.BYTE021  $  y=x;
  $  148.CB0的复位计数器                                  $    $          $    $  ANS012.BYTE022  $  y=x;
  $  149.CB1的复位计数器                                  $    $          $    $  ANS012.BYTE023  $  y=x;
  $  150.CB3的复位计数器                                  $    $          $    $  ANS012.BYTE024  $  y=x;
  $  151.调优保护的复位计数器                             $    $          $    $  ANS012.BYTE025  $  y=x;
  $  152.EVR13的复位计数器                                $    $          $    $  ANS012.BYTE026  $  y=x;
  $  153.EVR33的复位计数器                                $    $          $    $  ANS012.BYTE027  $  y=x;
  $  154.电子看门狗的复位计数器                           $    $          $    $  ANS012.BYTE028  $  y=x;
  $  155.备用看门狗的复位计数器                           $    $          $    $  ANS012.BYTE029  $  y=x;
  $  156.可靠性数据年份                                   $    $          $    $  ANS012.BYTE030  $  y=x+2000;
  $  157.可靠性数据月份                                   $    $          $    $  ANS012.BYTE031  $  y=x;
  $  158.可靠性数据日                                     $    $          $    $  ANS012.BYTE032  $  y=x;
  $  159.可靠性数据时                                     $    $          $    $  ANS012.BYTE033  $  y=x;
  $  160.可靠性数据分                                     $    $          $    $  ANS012.BYTE034  $  y=x;
  $  161.可靠性数据秒                                     $    $          $    $  ANS012.BYTE035  $  y=x;
  $  162.可靠性数据里程                                   $    $  km      $    $  ANS012.BYTE036  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  163.FICM配置                                         $    $          $    $  ANS013.BYTE005  $  if(x==0x55) y=@0eda;else if(x==0xAA) y=@0edb;else y=@0103;
  $  164.英里每小时或者公里每小时方法                     $    $          $    $  ANS013.BYTE006  $  if(x==0x55) y=@0edc;else if(x==0xAA) y=@0edd;else y=@0103;
  $  165.FCW(正面碰撞警告)驱动选定的灵敏度等级            $    $          $    $  ANS014.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0ed7;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@0ed8;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  166.LDW(车道偏离预警系统)驱动选定的灵敏度等级        $    $          $    $  ANS014.BYTE004  $  if((x&0x0F)==0x00) y=@0ed7;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@0ed8;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  167.AEB(自动制动系统)驱动选择的灵敏度等级            $    $          $    $  ANS014.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0ed7;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@0ed8;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  168.ACC(自适应巡航控制)驱动选定的目标距离等级        $    $          $    $  ANS014.BYTE005  $  if((x&0x0F)==0x00) y=@0ed7;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0103;
  $  169.PCW(行人碰撞警告)驱动选定的灵敏度等级            $    $          $    $  ANS014.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0ed7;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@0ed8;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  170.AEBP(行人自动紧急制动)驱动选择的灵敏度等级       $    $          $    $  ANS014.BYTE006  $  if((x&0x0F)==0x00) y=@0ed7;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@0ed8;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  171.摄像头的目标速度要求                             $    $          $    $  ANS015.BYTE004  $  y=(x1*256+x2);
  $  172.ACC驱动选定的目标速度                            $    $          $    $  ANS015.BYTE006  $  y=(x1*256+x2);
  $  173.供应商芯片跟踪号                                 $    $          $    $  ANS016.BYTE004  $  y=UINT64(x1,x2,x3,x4,x5,x6,x7,x8);
  $  174.TSR未准备好激活的原因0~7                         $    $          $    $  ANS017.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  175.TSR未准备好激活的年份                            $    $          $    $  ANS017.BYTE006  $  y=x+2000;
  $  176.TSR未准备好激活的月份                            $    $          $    $  ANS017.BYTE007  $  y=x;
  $  177.TSR未准备好激活的日                              $    $          $    $  ANS017.BYTE008  $  y=x;
  $  178.TSR未准备好激活的时                              $    $          $    $  ANS017.BYTE009  $  y=x;
  $  179.TSR未准备好激活的分                              $    $          $    $  ANS017.BYTE010  $  y=x;
  $  180.TSR未准备好激活的秒                              $    $          $    $  ANS017.BYTE011  $  y=x;
  $  181.TSR未准备好激活的里程                            $    $  km      $    $  ANS017.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  182.TSR未准备好激活的原因0~7                         $    $          $    $  ANS018.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  183.TSR未准备好激活的原因8~15                        $    $          $    $  ANS018.BYTE005  $  if(x==0x00) y=@075a;else y=@01a9;
  $  184.TSR退出激活状态的原因0~7(B095)                   $    $          $    $  ANS019.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  185.TSR退出激活状态的原因8~15(B095)                  $    $          $    $  ANS019.BYTE005  $  if(x==0x00) y=@075a;else y=@01a9;
  $  186.TSR退出激活状态的原因0~7                         $    $          $    $  ANS020.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  187.TSR退出激活状态的原因8~15                        $    $          $    $  ANS020.BYTE005  $  y=x;
  $  188.TSR退出事件年份                                  $    $          $    $  ANS020.BYTE006  $  y=x+2000;
  $  189.TSR退出事件月份                                  $    $          $    $  ANS020.BYTE007  $  y=x;
  $  190.TSR退出活动日                                    $    $          $    $  ANS020.BYTE008  $  y=x;
  $  191.TSR退出活动时                                    $    $          $    $  ANS020.BYTE009  $  y=x;
  $  192.TSR退出事件分                                    $    $          $    $  ANS020.BYTE010  $  y=x;
  $  193.TSR退出事件秒                                    $    $          $    $  ANS020.BYTE011  $  y=x;
  $  194.TSR退出事件里程                                  $    $  km      $    $  ANS020.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  195.TSR退出激活状态的原因0~7                         $    $          $    $  ANS021.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  196.TSR退出激活状态的原因8~15                        $    $          $    $  ANS021.BYTE005  $  if(x==0x00) y=@075a;else y=@01a9;
  $  197.车辆速度                                         $    $  kph     $    $  ANS022.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:74A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
