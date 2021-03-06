
    车型ID：10de

    模拟：协议模拟-->10de

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:710 02 10 01 00 00 00 00 00       $~  ANS000:790 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:710 02 3E 80 00 00 00 00 00       $!  ANS000:790 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:710 03 19 02 09 00 00 00 00       $#  ANS000:790 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/db000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:710 04 14 FF FF FF 00 00 00       $$  ANS000:790 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:710 03 22 F1 A0 00 00 00 00       $%  ANS000:790 03 22 F1 A0 00 00 00 00
  $%  REQ001:710 03 22 F1 83 00 00 00 00       $%  ANS001:790 03 22 F1 83 00 00 00 00
  $%  REQ002:710 03 22 F1 91 00 00 00 00       $%  ANS002:790 03 22 F1 91 00 00 00 00
  $%  REQ003:710 03 22 F1 8B 00 00 00 00       $%  ANS003:790 03 22 F1 8B 00 00 00 00
  $%  REQ004:710 03 22 F1 A2 00 00 00 00       $%  ANS004:790 03 22 F1 A2 00 00 00 00
  $%  REQ005:710 03 22 F1 87 00 00 00 00       $%  ANS005:790 03 22 F1 87 00 00 00 00
  $%  REQ006:710 03 22 F1 10 00 00 00 00       $%  ANS006:790 03 22 F1 10 00 00 00 00
  $%  REQ007:710 03 22 F1 92 00 00 00 00       $%  ANS007:790 03 22 F1 92 00 00 00 00
  $%  REQ008:710 03 22 F1 8C 00 00 00 00       $%  ANS008:790 03 22 F1 8C 00 00 00 00
  $%  REQ009:710 03 22 F1 94 00 00 00 00       $%  ANS009:790 03 22 F1 94 00 00 00 00
  $%  REQ010:710 03 22 F1 8A 00 00 00 00       $%  ANS010:790 03 22 F1 8A 00 00 00 00
  $%  REQ011:710 03 22 B2 00 00 00 00 00       $%  ANS011:790 03 22 B2 00 00 00 00 00
  $%  REQ012:710 03 22 F1 90 00 00 00 00       $%  ANS012:790 03 22 F1 90 00 00 00 00
  $%  REQ013:710 03 22 F1 A8 00 00 00 00       $%  ANS013:790 03 22 F1 A8 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE011  $%  ASCII(X1,X2,X3);
  $%  002:电控单元硬件号:                  $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元生产日期:                $%    $%  ANS003.BYTE004  $%  HEX(X1,X2,X3);
  $%  004:电控单元网络文件参考号:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号:                  $%    $%  ANS005.BYTE005  $%  HEX(X1,X2,X3,X4,X5);
  $%  007:电控单元零件号（上次）:          $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  008:测试工具参考号（上次）:          $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:里程读数（上次）:                $%    $%  ANS006.BYTE015  $%  y=x1*256*256+x2*256+x3;
  $%  010:供应商电控单元硬件参考号:        $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:供应商电控单元序列号:            $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  012:供应商电控单元软件参考号:        $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  013:系统供应商标识号:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  014:UAES电子标签1:                   $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3);
  $%  015:UAES电子标签2:                   $%    $%  ANS011.BYTE007  $%  HEX(X1,X2,X3,X4,X5);
  $%  016:UAES电子标签3:                   $%    $%  ANS011.BYTE012  $%  ASCII(X1,X2,X3,X4,X5);
  $%  017:UAES电子标签4:                   $%    $%  ANS011.BYTE017  $%  HEX(X1,X2,X3,X4);
  $%  018:车辆识别代码:                    $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  019:车辆特征信息:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:710 03 22 01 00 00 00 00 00       $  ANS000:790 03 22 01 00 00 00 00 00
  $  REQ001:710 03 22 D1 00 00 00 00 00       $  ANS001:790 03 22 D1 00 00 00 00 00
  $  REQ002:710 03 22 B1 66 00 00 00 00       $  ANS002:790 03 22 B1 66 00 00 00 00
  $  REQ003:710 03 22 B1 50 00 00 00 00       $  ANS003:790 03 22 B1 50 00 00 00 00

  $  000.电池电压太高                            $    $        $    $  ANS000.BYTE004  $  if(((x&0x80)>>7)==0) y=@11d9;else if(((x&0x80)>>7)==1) y=@11da;else y=@0035;
  $  001.电池电压太低                            $    $        $    $  ANS000.BYTE004  $  if(((x&0x40)>>6)==0) y=@11d9;else if(((x&0x40)>>6)==1) y=@11da;else y=@0035;
  $  002.PT CAN总线关闭                          $    $        $    $  ANS000.BYTE004  $  if(((x&0x20)>>5)==0) y=@11d9;else if(((x&0x20)>>5)==1) y=@11da;else y=@0035;
  $  003.CH CAN总线关闭                          $    $        $    $  ANS000.BYTE004  $  if(((x&0x10)>>4)==0) y=@11d9;else if(((x&0x10)>>4)==1) y=@11da;else y=@0035;
  $  004.BD CAN总线关闭                          $    $        $    $  ANS000.BYTE004  $  if(((x&0x08)>>3)==0) y=@11d9;else if(((x&0x08)>>3)==1) y=@11da;else y=@0035;
  $  005.AD CAN总线关闭                          $    $        $    $  ANS000.BYTE004  $  if(((x&0x04)>>2)==0) y=@11d9;else if(((x&0x04)>>2)==1) y=@11da;else y=@0035;
  $  006.诊断 CAN总线关闭                        $    $        $    $  ANS000.BYTE004  $  if(((x&0x02)>>1)==0) y=@11d9;else if(((x&0x02)>>1)==1) y=@11da;else y=@0035;
  $  007.与HVAC失去通讯                          $    $        $    $  ANS000.BYTE004  $  if((x&0x01)==0) y=@11d9;else if((x&0x01)==1) y=@11da;else y=@0035;
  $  008.与VCU失去通讯                           $    $        $    $  ANS000.BYTE005  $  if(((x&0x80)>>7)==0) y=@11d9;else if(((x&0x80)>>7)==1) y=@11da;else y=@0035;
  $  009.与SRS失去通讯                           $    $        $    $  ANS000.BYTE005  $  if(((x&0x40)>>6)==0) y=@11d9;else if(((x&0x40)>>6)==1) y=@11da;else y=@0035;
  $  010.与BMS失去通讯                           $    $        $    $  ANS000.BYTE005  $  if(((x&0x20)>>5)==0) y=@11d9;else if(((x&0x20)>>5)==1) y=@11da;else y=@0035;
  $  011.与PEU失去通讯                           $    $        $    $  ANS000.BYTE005  $  if(((x&0x10)>>4)==0) y=@11d9;else if(((x&0x10)>>4)==1) y=@11da;else y=@0035;
  $  012.与ESP/ABS失去通讯                       $    $        $    $  ANS000.BYTE005  $  if(((x&0x08)>>3)==0) y=@11d9;else if(((x&0x08)>>3)==1) y=@11da;else y=@0035;
  $  013.与EPS失去通讯                           $    $        $    $  ANS000.BYTE005  $  if(((x&0x04)>>2)==0) y=@11d9;else if(((x&0x04)>>2)==1) y=@11da;else y=@0035;
  $  014.与BCM失去通讯                           $    $        $    $  ANS000.BYTE005  $  if((x&0x01)==0) y=@11d9;else if((x&0x01)==1) y=@11da;else y=@0035;
  $  015.ECU EEPROM校验错误                      $    $        $    $  ANS000.BYTE009  $  if(((x&0x80)>>7)==0) y=@11d9;else if(((x&0x80)>>7)==1) y=@11da;else y=@0035;
  $  016.ECU RAM错误                             $    $        $    $  ANS000.BYTE009  $  if(((x&0x40)>>6)==0) y=@11d9;else if(((x&0x40)>>6)==1) y=@11da;else y=@0035;
  $  017.EEPROM错误                              $    $        $    $  ANS000.BYTE009  $  if(((x&0x20)>>5)==0) y=@11d9;else if(((x&0x20)>>5)==1) y=@11da;else y=@0035;
  $  018.硬线输入信号HDI1（KL.15 RUN）状态       $    $        $    $  ANS001.BYTE004  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@0028;else y=@0035;
  $  019.硬线输入信号HDI2（KL.R ACC）状态        $    $        $    $  ANS001.BYTE004  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@0028;else y=@0035;
  $  020.硬线输入信号HDI3（预留）状态            $    $        $    $  ANS001.BYTE004  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@0028;else y=@0035;
  $  021.硬线输入信号HDI4（预留）状态            $    $        $    $  ANS001.BYTE004  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  022.EEPROM校验检查状态                      $    $        $    $  ANS002.BYTE004  $  if(x==0) y=@040c;else if(x==1) y=@040d;else y=@0103;
  $  023.电源KL.30模拟采集值                     $    $  V     $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.0276+0.42;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:710 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
