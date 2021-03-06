
    车型ID：10fb

    模拟：协议模拟-->10fb

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:700 02 10 01 00 00 00 00 00       $~  ANS000:780 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:700 02 3E 80 00 00 00 00 00       $!  ANS000:780 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:700 03 19 02 09 00 00 00 00       $#  ANS000:780 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/f8000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:700 04 14 FF FF FF 00 00 00       $$  ANS000:780 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:700 03 22 F1 A1 00 00 00 00       $%  ANS000:780 03 22 F1 A1 00 00 00 00
  $%  REQ001:700 03 22 F1 83 00 00 00 00       $%  ANS001:780 03 22 F1 83 00 00 00 00
  $%  REQ002:700 03 22 F1 91 00 00 00 00       $%  ANS002:780 03 22 F1 91 00 00 00 00
  $%  REQ003:700 03 22 F1 8B 00 00 00 00       $%  ANS003:780 03 22 F1 8B 00 00 00 00
  $%  REQ004:700 03 22 F1 A2 00 00 00 00       $%  ANS004:780 03 22 F1 A2 00 00 00 00
  $%  REQ005:700 03 22 F1 87 00 00 00 00       $%  ANS005:780 03 22 F1 87 00 00 00 00
  $%  REQ006:700 03 22 F1 10 00 00 00 00       $%  ANS006:780 03 22 F1 10 00 00 00 00
  $%  REQ007:700 03 22 F1 A0 00 00 00 00       $%  ANS007:780 03 22 F1 A0 00 00 00 00
  $%  REQ008:700 03 22 F1 92 00 00 00 00       $%  ANS008:780 03 22 F1 92 00 00 00 00
  $%  REQ009:700 03 22 F1 8C 00 00 00 00       $%  ANS009:780 03 22 F1 8C 00 00 00 00
  $%  REQ010:700 03 22 F1 94 00 00 00 00       $%  ANS010:780 03 22 F1 94 00 00 00 00
  $%  REQ011:700 03 22 F1 8A 00 00 00 00       $%  ANS011:780 03 22 F1 8A 00 00 00 00
  $%  REQ012:700 03 22 F1 90 00 00 00 00       $%  ANS012:780 03 22 F1 90 00 00 00 00
  $%  REQ013:700 03 22 F1 A8 00 00 00 00       $%  ANS013:780 03 22 F1 A8 00 00 00 00

  $%  000:电控单元标定软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元硬件号:                  $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元生产日期:                $%    $%  ANS003.BYTE004  $%  HEX(X1,X2,X3);
  $%  004:电控单元网络文件参考号:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号（上次）:          $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  007:测试工具参考号（上次）:          $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  008:里程读数（上次）:                $%    $%  ANS006.BYTE015  $%  HEX(X1,X2,X3);
  $%  009:电控单元应用软件号:              $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  010:供应商电控单元硬件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:零部件标识码:                    $%    $%  ANS009.BYTE004  $%  y=UINT40(x1,x2,x3,x4,x5);
  $%  012:生产线编号:                      $%    $%  ANS009.BYTE009  $%  ASCII(X1,X2);
  $%  013:年/月/日:                        $%    $%  ANS009.BYTE011  $%  HEX(X1,X2,X3);
  $%  014:电控单元内部软件编号:            $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  015:系统供应商标识号:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  016:车辆识别代码:                    $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  017:车辆特征信息:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:700 03 22 C1 12 00 00 00 00       $  ANS000:780 03 22 C1 12 00 00 00 00
  $  REQ001:700 03 22 C1 55 00 00 00 00       $  ANS001:780 03 22 C1 55 00 00 00 00
  $  REQ002:700 03 22 E9 A1 00 00 00 00       $  ANS002:780 03 22 E9 A1 00 00 00 00
  $  REQ003:700 03 22 C1 50 00 00 00 00       $  ANS003:780 03 22 C1 50 00 00 00 00
  $  REQ004:700 03 22 C1 51 00 00 00 00       $  ANS004:780 03 22 C1 51 00 00 00 00
  $  REQ005:700 03 22 D1 21 00 00 00 00       $  ANS005:780 03 22 D1 21 00 00 00 00
  $  REQ006:700 03 22 D1 31 00 00 00 00       $  ANS006:780 03 22 D1 31 00 00 00 00
  $  REQ007:700 03 22 D1 41 00 00 00 00       $  ANS007:780 03 22 D1 41 00 00 00 00
  $  REQ008:700 03 22 D1 11 00 00 00 00       $  ANS008:780 03 22 D1 11 00 00 00 00
  $  REQ009:700 03 22 C1 57 00 00 00 00       $  ANS009:780 03 22 C1 57 00 00 00 00
  $  REQ010:700 03 22 C1 56 00 00 00 00       $  ANS010:780 03 22 C1 56 00 00 00 00
  $  REQ011:700 03 22 E9 15 00 00 00 00       $  ANS011:780 03 22 E9 15 00 00 00 00
  $  REQ012:700 03 22 E9 18 00 00 00 00       $  ANS012:780 03 22 E9 18 00 00 00 00
  $  REQ013:700 03 22 E9 A4 00 00 00 00       $  ANS013:780 03 22 E9 A4 00 00 00 00
  $  REQ014:700 03 22 D4 11 00 00 00 00       $  ANS014:780 03 22 D4 11 00 00 00 00
  $  REQ015:700 03 22 D4 12 00 00 00 00       $  ANS015:780 03 22 D4 12 00 00 00 00
  $  REQ016:700 03 22 E9 16 00 00 00 00       $  ANS016:780 03 22 E9 16 00 00 00 00
  $  REQ017:700 03 22 E9 17 00 00 00 00       $  ANS017:780 03 22 E9 17 00 00 00 00
  $  REQ018:700 03 22 C1 58 00 00 00 00       $  ANS018:780 03 22 C1 58 00 00 00 00
  $  REQ019:700 03 22 C1 13 00 00 00 00       $  ANS019:780 03 22 C1 13 00 00 00 00
  $  REQ020:700 03 22 E9 11 00 00 00 00       $  ANS020:780 03 22 E9 11 00 00 00 00
  $  REQ021:700 03 22 C1 09 00 00 00 00       $  ANS021:780 03 22 C1 09 00 00 00 00
  $  REQ022:700 03 22 E9 A0 00 00 00 00       $  ANS022:780 03 22 E9 A0 00 00 00 00
  $  REQ023:700 03 22 E9 12 00 00 00 00       $  ANS023:780 03 22 E9 12 00 00 00 00

  $  000.平均电耗最大值                                    $    $           $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.1;
  $  001.大指针背光                                        $    $           $    $  ANS001.BYTE004  $  y=x*0.3922;
  $  002.小指针背光                                        $    $           $    $  ANS001.BYTE005  $  y=x*0.3922;
  $  003.车速表及转速表背光                                $    $           $    $  ANS001.BYTE006  $  y=x*0.3922;
  $  004.燃油表及水温表背光                                $    $           $    $  ANS001.BYTE007  $  y=x*0.3922;
  $  005.液晶背光                                          $    $           $    $  ANS001.BYTE008  $  y=x*0.3922;
  $  006.模拟功率                                          $    $  rpm      $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.25;
  $  007.胎压监测系统                                      $    $           $    $  ANS003.BYTE004  $  if(((x&0xC0)>>6)==0) y=@000f;else if(((x&0xC0)>>6)==1) y=@109b;else if(((x&0xC0)>>6)==2) y=@109c;else if(((x&0xC0)>>6)==3) y=@0035;else y=@0035;
  $  008.定速巡航系统                                      $    $           $    $  ANS003.BYTE004  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  009.前雾灯                                            $    $           $    $  ANS003.BYTE004  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  010.远光灯                                            $    $           $    $  ANS003.BYTE004  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  011.档位显示                                          $    $           $    $  ANS003.BYTE004  $  if((x&0x03)==0) y=@109d;else if((x&0x03)==1) y=@01de;else if((x&0x03)==2) y=@0d34;else if((x&0x03)==3) y=@0035;else y=@0035;
  $  012.超速报警                                          $    $           $    $  ANS003.BYTE005  $  if(((x&0xC0)>>6)==0) y=@109e;else if(((x&0xC0)>>6)==1) y=@109f;else if(((x&0xC0)>>6)==2) y=@10a0;else if(((x&0xC0)>>6)==3) y=@10a1;else y=@0035;
  $  013.DPF模块                                           $    $           $    $  ANS003.BYTE005  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@0028;else y=@0035;
  $  014.PEPS                                              $    $           $    $  ANS003.BYTE005  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  015.电动踏步                                          $    $           $    $  ANS003.BYTE005  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  016.安全气囊                                          $    $           $    $  ANS003.BYTE005  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  017.EPS                                               $    $           $    $  ANS003.BYTE005  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  018.ESP                                               $    $           $    $  ANS003.BYTE005  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  019.安全带                                            $    $           $    $  ANS003.BYTE006  $  if(((x&0xC0)>>6)==0) y=@10a2;else if(((x&0xC0)>>6)==1) y=@10a3;else if(((x&0xC0)>>6)==2) y=@10a4;else if(((x&0xC0)>>6)==3) y=@0035;else y=@0035;
  $  020.倒车雷达                                          $    $           $    $  ANS003.BYTE006  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  021.LCD报警音                                         $    $           $    $  ANS003.BYTE006  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  022.驾驶模式                                          $    $           $    $  ANS003.BYTE006  $  if((x&0x01)==0) y=@10a5;else if((x&0x01)==1) y=@10a6;else y=@0035;
  $  023.超速设置                                          $    $  km/h     $    $  ANS003.BYTE007  $  y=x;
  $  024.雨滴传感器                                        $    $           $    $  ANS003.BYTE008  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  025.eCall                                             $    $           $    $  ANS003.BYTE008  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  026.TBOX                                              $    $           $    $  ANS003.BYTE008  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  027.交通标志识别                                      $    $           $    $  ANS004.BYTE004  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@0028;else y=@0035;
  $  028.车道保持辅助                                      $    $           $    $  ANS004.BYTE004  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@0028;else y=@0035;
  $  029.车道偏离预警                                      $    $           $    $  ANS004.BYTE004  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@0028;else y=@0035;
  $  030.自动紧急制动                                      $    $           $    $  ANS004.BYTE004  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  031.前方碰撞预防辅助制动系统                          $    $           $    $  ANS004.BYTE004  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  032.自适应巡航系统                                    $    $           $    $  ANS004.BYTE004  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  033.查看后台报警                                      $    $           $    $  ANS004.BYTE004  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  034.娱乐系统                                          $    $           $    $  ANS004.BYTE004  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  035.ESP故障模拟输入                                   $    $           $    $  ANS005.BYTE004  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  036.ESP关闭指示模拟输入                               $    $           $    $  ANS005.BYTE004  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  037.ESP工作模拟输入                                   $    $           $    $  ANS005.BYTE004  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  038.EBD故障模拟输入                                   $    $           $    $  ANS005.BYTE004  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  039.ABS故障模拟输入                                   $    $           $    $  ANS005.BYTE004  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  040.尾门模拟输入                                      $    $           $    $  ANS006.BYTE004  $  if(((x&0x10)>>4)==0) y=@0264;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  041.左后车门模拟输入                                  $    $           $    $  ANS006.BYTE004  $  if(((x&0x08)>>3)==0) y=@0264;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  042.右后车门模拟输入                                  $    $           $    $  ANS006.BYTE004  $  if(((x&0x04)>>2)==0) y=@0264;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  043.乘客车门模拟输入                                  $    $           $    $  ANS006.BYTE004  $  if(((x&0x02)>>1)==0) y=@0264;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  044.司机车门模拟输入                                  $    $           $    $  ANS006.BYTE004  $  if((x&0x01)==0) y=@0264;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  045.发动机防盗报警灯模拟输入                          $    $           $    $  ANS007.BYTE004  $  if(((x&0x0C)>>2)==0) y=@000f;else if(((x&0x0C)>>2)==1) y=@0fb2;else if(((x&0x0C)>>2)==2) y=@1098;else if(((x&0x0C)>>2)==3) y=@0028;else y=@0035;
  $  046.右转向灯模拟输入                                  $    $           $    $  ANS007.BYTE004  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  047.左转向灯模拟输入                                  $    $           $    $  ANS007.BYTE004  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  048.后雾灯模拟输入                                    $    $           $    $  ANS007.BYTE005  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  049.前雾灯模拟输入                                    $    $           $    $  ANS007.BYTE005  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  050.远光灯模拟输入                                    $    $           $    $  ANS007.BYTE005  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  051.近光灯模拟输入                                    $    $           $    $  ANS007.BYTE005  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  052.位置灯模拟输入                                    $    $           $    $  ANS007.BYTE005  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  053.充放电指示灯模拟输入                              $    $           $    $  ANS008.BYTE004  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  054.司机安全带模拟输入                                $    $           $    $  ANS008.BYTE005  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@0028;else y=@0035;
  $  055.乘客安全带模拟输入                                $    $           $    $  ANS008.BYTE005  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@0028;else y=@0035;
  $  056.安全气囊故障模拟输入                              $    $           $    $  ANS008.BYTE005  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  057.巡航系统工作模拟输入                              $    $           $    $  ANS008.BYTE005  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  058.电机温度过高(模拟CAN输入动力状态)                 $    $           $    $  ANS008.BYTE006  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@0028;else y=@0035;
  $  059.限功率提示灯(模拟CAN输入动力状态)                 $    $           $    $  ANS008.BYTE006  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@0028;else y=@0035;
  $  060.运行就绪指示灯(模拟CAN输入动力状态)               $    $           $    $  ANS008.BYTE006  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@0028;else y=@0035;
  $  061.绝缘故障灯(模拟CAN输入动力状态)                   $    $           $    $  ANS008.BYTE006  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  062.动力电池充电状态指示灯(模拟CAN输入动力状态)       $    $           $    $  ANS008.BYTE006  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  063.动力电池故障警告灯(模拟CAN输入动力状态)           $    $           $    $  ANS008.BYTE006  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  064.充电线连接指示灯(模拟CAN输入动力状态)             $    $           $    $  ANS008.BYTE006  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  065.动力系统故障(模拟CAN输入动力状态)                 $    $           $    $  ANS008.BYTE006  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  066.里程值                                            $    $  km       $    $  ANS009.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  067.保养里程初始值                                    $    $  km       $    $  ANS010.BYTE004  $  y=(x1*256+x2);
  $  068.模拟左前轮胎压                                    $    $  kPa      $    $  ANS011.BYTE004  $  y=x*2.75;
  $  069.模拟左后轮胎压                                    $    $  kPa      $    $  ANS012.BYTE004  $  y=x*2.75;
  $  070.模拟里程                                          $    $  km       $    $  ANS013.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  071.胎压报警灯模拟输出                                $    $           $    $  ANS014.BYTE004  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@0028;else y=@0035;
  $  072.发动机防盗报警灯模拟输出                          $    $           $    $  ANS014.BYTE004  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@0028;else y=@0035;
  $  073.位置灯模拟输出                                    $    $           $    $  ANS014.BYTE004  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@0028;else y=@0035;
  $  074.后雾灯模拟输出                                    $    $           $    $  ANS014.BYTE004  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  075.前雾灯模拟输出                                    $    $           $    $  ANS014.BYTE004  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  076.远光灯模拟输出                                    $    $           $    $  ANS014.BYTE004  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  077.右转向灯模拟输出                                  $    $           $    $  ANS014.BYTE004  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  078.左转向灯模拟输出                                  $    $           $    $  ANS014.BYTE004  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  079.ESP关闭指示灯模拟输出                             $    $           $    $  ANS014.BYTE005  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@0028;else y=@0035;
  $  080.ESP工作指示灯模拟输出                             $    $           $    $  ANS014.BYTE005  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@0028;else y=@0035;
  $  081.ABS指示灯模拟输出                                 $    $           $    $  ANS014.BYTE005  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@0028;else y=@0035;
  $  082.充放电指示灯模拟输出                              $    $           $    $  ANS014.BYTE005  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  083.安全带未系报警灯模拟输出                          $    $           $    $  ANS015.BYTE004  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  084.安全气囊灯模拟输出                                $    $           $    $  ANS015.BYTE004  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  085.助力转向指示灯模拟输出                            $    $           $    $  ANS015.BYTE004  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  086.EBD指示灯模拟输出                                 $    $           $    $  ANS015.BYTE004  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  087.DPF指示灯(黄)模拟输出                             $    $           $    $  ANS015.BYTE005  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  088.DPF指示灯(红)模拟输出                             $    $           $    $  ANS015.BYTE005  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  089.电动踏步灯模拟输出                                $    $           $    $  ANS015.BYTE005  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  090.电机温度过高(模拟高低电平输出2)                   $    $           $    $  ANS015.BYTE006  $  if(((x&0x80)>>7)==0) y=@000f;else if(((x&0x80)>>7)==1) y=@0028;else y=@0035;
  $  091.限功率提示灯(模拟高低电平输出2)                   $    $           $    $  ANS015.BYTE006  $  if(((x&0x40)>>6)==0) y=@000f;else if(((x&0x40)>>6)==1) y=@0028;else y=@0035;
  $  092.运行就绪指示灯(模拟高低电平输出2)                 $    $           $    $  ANS015.BYTE006  $  if(((x&0x20)>>5)==0) y=@000f;else if(((x&0x20)>>5)==1) y=@0028;else y=@0035;
  $  093.绝缘故障灯(模拟高低电平输出2)                     $    $           $    $  ANS015.BYTE006  $  if(((x&0x10)>>4)==0) y=@000f;else if(((x&0x10)>>4)==1) y=@0028;else y=@0035;
  $  094.动力电池充电状态指示灯(模拟高低电平输出2)         $    $           $    $  ANS015.BYTE006  $  if(((x&0x08)>>3)==0) y=@000f;else if(((x&0x08)>>3)==1) y=@0028;else y=@0035;
  $  095.动力电池故障警告灯(模拟高低电平输出2)             $    $           $    $  ANS015.BYTE006  $  if(((x&0x04)>>2)==0) y=@000f;else if(((x&0x04)>>2)==1) y=@0028;else y=@0035;
  $  096.充电线连接指示灯(模拟高低电平输出2)               $    $           $    $  ANS015.BYTE006  $  if(((x&0x02)>>1)==0) y=@000f;else if(((x&0x02)>>1)==1) y=@0028;else y=@0035;
  $  097.动力系统故障(模拟高低电平输出2)                   $    $           $    $  ANS015.BYTE006  $  if((x&0x01)==0) y=@000f;else if((x&0x01)==1) y=@0028;else y=@0035;
  $  098.模拟右前轮胎压                                    $    $  kPa      $    $  ANS016.BYTE004  $  y=x*2.75;
  $  099.模拟右后轮胎压                                    $    $  kPa      $    $  ANS017.BYTE004  $  y=x*2.75;
  $  100.上一次保养里程复位时的里程值                      $    $  km       $    $  ANS018.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  101.剩余电量报警点                                    $    $           $    $  ANS019.BYTE004  $  y=x;
  $  102.剩余电量解报点                                    $    $           $    $  ANS019.BYTE005  $  y=x;
  $  103.控制功率表指针转动角度                            $    $           $    $  ANS020.BYTE004  $  y=x;
  $  104.公英制配置(仅高配)                                $    $           $    $  ANS021.BYTE004  $  if(x==0x00) y=@1099;else if(x==0x01) y=@109a;else y=@0035;
  $  105.车辆速度                                          $    $  km/h     $    $  ANS022.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  106.控制车速表指针转动角度                            $    $           $    $  ANS023.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:700 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
