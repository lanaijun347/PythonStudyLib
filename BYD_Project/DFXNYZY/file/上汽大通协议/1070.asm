
    车型ID：1070

    模拟：协议模拟-->1070

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k

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

  $*$*DTC/2a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:710 04 14 FF FF FF 00 00 00       $$  ANS000:790 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:710 03 22 F1 A0 00 00 00 00       $%  ANS000:790 03 22 F1 A0 00 00 00 00
  $%  REQ001:710 03 22 F1 83 00 00 00 00       $%  ANS001:790 03 22 F1 83 00 00 00 00
  $%  REQ002:710 03 22 F1 91 00 00 00 00       $%  ANS002:790 03 22 F1 91 00 00 00 00
  $%  REQ003:710 03 22 F1 A2 00 00 00 00       $%  ANS003:790 03 22 F1 A2 00 00 00 00
  $%  REQ004:710 03 22 F1 87 00 00 00 00       $%  ANS004:790 03 22 F1 87 00 00 00 00
  $%  REQ005:710 03 22 F1 10 00 00 00 00       $%  ANS005:790 03 22 F1 10 00 00 00 00
  $%  REQ006:710 03 22 F1 92 00 00 00 00       $%  ANS006:790 03 22 F1 92 00 00 00 00
  $%  REQ007:710 03 22 F1 8C 00 00 00 00       $%  ANS007:790 03 22 F1 8C 00 00 00 00
  $%  REQ008:710 03 22 F1 94 00 00 00 00       $%  ANS008:790 03 22 F1 94 00 00 00 00
  $%  REQ009:710 03 22 F1 8A 00 00 00 00       $%  ANS009:790 03 22 F1 8A 00 00 00 00
  $%  REQ010:710 03 22 B2 00 00 00 00 00       $%  ANS010:790 03 22 B2 00 00 00 00 00
  $%  REQ011:710 03 22 F1 90 00 00 00 00       $%  ANS011:790 03 22 F1 90 00 00 00 00
  $%  REQ012:710 03 22 F1 A8 00 00 00 00       $%  ANS012:790 03 22 F1 A8 00 00 00 00
  $%  REQ013:710 03 22 F1 8B 00 00 00 00       $%  ANS013:790 03 22 F1 8B 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元硬件号:                  $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元网络文件参考号:          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元零件号:                  $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号(上次):            $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  006:测试工具参考号(上次):            $%    $%  ANS005.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  007:里程读数(上次)KM:                $%    $%  ANS005.BYTE015  $%  y=(x1*256*256+x2*256+x3);
  $%  008:供应商电控单元硬件参考号:        $%    $%  ANS006.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  009:供应商电控单元序列号:            $%    $%  ANS007.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:供应商电控单元软件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:系统供应商识别码:                $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  012:UAES电子标签:                    $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%c%c%02X%02X%02X%02X%02X%c%c%c%c%c%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  013:VIN码:                           $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  014:车辆特征信息:                    $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  015:电控单元制造日期:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:710 03 22 C1 00 00 00 00 00       $  ANS000:790 03 22 C1 00 00 00 00 00
  $  REQ001:710 03 22 C1 10 00 00 00 00       $  ANS001:790 03 22 C1 10 00 00 00 00
  $  REQ002:710 03 22 D1 00 00 00 00 00       $  ANS002:790 03 22 D1 00 00 00 00 00
  $  REQ003:710 03 22 B1 66 00 00 00 00       $  ANS003:790 03 22 B1 66 00 00 00 00
  $  REQ004:710 03 22 D1 E0 00 00 00 00       $  ANS004:790 03 22 D1 E0 00 00 00 00
  $  REQ005:710 03 22 B1 50 00 00 00 00       $  ANS005:790 03 22 B1 50 00 00 00 00

  $  000.TCU节点的通讯配置                      $    $        $    $  ANS000.BYTE004  $  if((x&0x80)==0x80)y=@00dc;else y=@00db;
  $  001.SAS节点的通讯配置                      $    $        $    $  ANS000.BYTE004  $  if((x&0x40)==0x40)y=@00dc;else y=@00db;
  $  002.PEPS节点的通讯配置                     $    $        $    $  ANS000.BYTE004  $  if((x&0x20)==0x20)y=@00dc;else y=@00db;
  $  003.LCA节点的通讯配置                      $    $        $    $  ANS000.BYTE004  $  if((x&0x10)==0x10)y=@00dc;else y=@00db;
  $  004.BVS节点的通讯配置                      $    $        $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@00dc;else y=@00db;
  $  005.PTG节点的通讯配置                      $    $        $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@00dc;else y=@00db;
  $  006.LPSD左侧滑移门节点的通讯配置           $    $        $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@00dc;else y=@00db;
  $  007.RPSD右侧滑移门节点的通讯配置           $    $        $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  008.PD CAN信息传递给诊断CAN配置            $    $        $    $  ANS001.BYTE004  $  if((x&0x80)==0x80)y=@00dc;else y=@00db;
  $  009.AD CAN信息传递给诊断CAN配置            $    $        $    $  ANS001.BYTE004  $  if((x&0x40)==0x40)y=@00dc;else y=@00db;
  $  010.硬线输入信号HDI1(KL.15 RUN)状态        $    $        $    $  ANS002.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  011.硬线输入信号HDI2(KL.R ACC)状态         $    $        $    $  ANS002.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  012.硬线输入信号HDI3(KL.15 预留)状态       $    $        $    $  ANS002.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  013.EEPROM校验检查状态                     $    $        $    $  ANS003.BYTE004  $  if(x==0x00)y=@00c9;else if(x==0x01)y=@00ca;else y=@0004;
  $  014.内部VCC(电源电压)上拉信号状态          $    $        $    $  ANS004.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  015.电源KL.30模拟采集值                    $    $  V     $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.0276+0.42;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:710 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
