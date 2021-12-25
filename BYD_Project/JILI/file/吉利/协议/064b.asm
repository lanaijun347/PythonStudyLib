
    车型ID：064b

    模拟：协议模拟-->064b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E9

进入命令:

  $~  REQ000:7E1 02 10 01 00 00 00 00 00       $~  ANS000:7E9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E1 02 3E 00 00 00 00 00 00       $!  ANS000:7E9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E1 03 19 02 8F 00 00 00 00       $#  ANS000:7E9 03 19 02 8F 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/cb000000


  $#  01.读故障码库
  $#  REQ000:7E1 02 19 0A 00 00 00 00 00       $#  ANS000:7E9 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/cb000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E1 04 14 FF FF FF 00 00 00       $$  ANS000:7E9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E1 03 22 F1 12 00 00 00 00       $%  ANS000:7E9 03 22 F1 12 00 00 00 00
  $%  REQ001:7E1 03 22 F1 87 00 00 00 00       $%  ANS001:7E9 03 22 F1 87 00 00 00 00
  $%  REQ002:7E1 03 22 F1 8A 00 00 00 00       $%  ANS002:7E9 03 22 F1 8A 00 00 00 00
  $%  REQ003:7E1 03 22 F1 90 00 00 00 00       $%  ANS003:7E9 03 22 F1 90 00 00 00 00
  $%  REQ004:7E1 03 22 F1 93 00 00 00 00       $%  ANS004:7E9 03 22 F1 93 00 00 00 00
  $%  REQ005:7E1 03 22 F1 95 00 00 00 00       $%  ANS005:7E9 03 22 F1 95 00 00 00 00
  $%  REQ006:7E1 03 22 F1 98 00 00 00 00       $%  ANS006:7E9 03 22 F1 98 00 00 00 00
  $%  REQ007:7E1 03 22 F1 99 00 00 00 00       $%  ANS007:7E9 03 22 F1 99 00 00 00 00
  $%  REQ008:7E1 03 22 F1 9D 00 00 00 00       $%  ANS008:7E9 03 22 F1 9D 00 00 00 00
  $%  REQ009:7E1 03 22 F1 82 00 00 00 00       $%  ANS009:7E9 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                  $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:供应商代号:                                $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:车辆识别号(VIN码):                         $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:系统供应商ECU(电子控制器)硬件版本号:       $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:系统供应商ECU(电子控制器)软件版本号:       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:维修店代号:                                $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  007:编程日期:                                  $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  008:ECU(电子控制器)安装日期:                   $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  009:标定软件版本号:                            $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E1 03 22 0B 00 00 00 00 00       $  ANS000:7E9 03 22 0B 00 00 00 00 00
  $  REQ001:7E1 03 22 02 00 00 00 00 00       $  ANS001:7E9 03 22 02 00 00 00 00 00
  $  REQ002:7E1 03 22 02 01 00 00 00 00       $  ANS002:7E9 03 22 02 01 00 00 00 00
  $  REQ003:7E1 03 22 DF 00 00 00 00 00       $  ANS003:7E9 03 22 DF 00 00 00 00 00
  $  REQ004:7E1 03 22 0B 02 00 00 00 00       $  ANS004:7E9 03 22 0B 02 00 00 00 00
  $  REQ005:7E1 03 22 0B 05 00 00 00 00       $  ANS005:7E9 03 22 0B 05 00 00 00 00
  $  REQ006:7E1 03 22 DF 01 00 00 00 00       $  ANS006:7E9 03 22 DF 01 00 00 00 00
  $  REQ007:7E1 03 22 0B 07 00 00 00 00       $  ANS007:7E9 03 22 0B 07 00 00 00 00
  $  REQ008:7E1 03 22 0B 08 00 00 00 00       $  ANS008:7E9 03 22 0B 08 00 00 00 00
  $  REQ009:7E1 03 22 0B 09 00 00 00 00       $  ANS009:7E9 03 22 0B 09 00 00 00 00
  $  REQ010:7E1 03 22 0B 0A 00 00 00 00       $  ANS010:7E9 03 22 0B 0A 00 00 00 00
  $  REQ011:7E1 03 22 0B 11 00 00 00 00       $  ANS011:7E9 03 22 0B 11 00 00 00 00
  $  REQ012:7E1 03 22 0B 0B 00 00 00 00       $  ANS012:7E9 03 22 0B 0B 00 00 00 00
  $  REQ013:7E1 03 22 0B 17 00 00 00 00       $  ANS013:7E9 03 22 0B 17 00 00 00 00
  $  REQ014:7E1 03 22 0B 27 00 00 00 00       $  ANS014:7E9 03 22 0B 27 00 00 00 00
  $  REQ015:7E1 03 22 0B 20 00 00 00 00       $  ANS015:7E9 03 22 0B 20 00 00 00 00
  $  REQ016:7E1 03 22 0B 2D 00 00 00 00       $  ANS016:7E9 03 22 0B 2D 00 00 00 00
  $  REQ017:7E1 03 22 0B 2F 00 00 00 00       $  ANS017:7E9 03 22 0B 2F 00 00 00 00
  $  REQ018:7E1 03 22 0B 0C 00 00 00 00       $  ANS018:7E9 03 22 0B 0C 00 00 00 00
  $  REQ019:7E1 03 22 0B 0D 00 00 00 00       $  ANS019:7E9 03 22 0B 0D 00 00 00 00

  $  000.发动机扭矩                            $    $  Nm        $    $  ANS000.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.125;else y=(x1*0x100+x2-65536)*0.125;
  $  001.刷写次数                              $    $  /         $    $  ANS001.BYTE004  $  y=x;
  $  002.刷写尝试次数                          $    $  /         $    $  ANS002.BYTE004  $  y=x;
  $  003.电池电压                              $    $  V         $    $  ANS003.BYTE004  $  y=(x1*0X100+X2)*0.1;
  $  004.实际油门踏板位置                      $    $  %         $    $  ANS004.BYTE004  $  y=x;
  $  005.虚拟油门踏板位置                      $    $  %         $    $  ANS005.BYTE004  $  y=x;
  $  006.车速                                  $    $  km/h      $    $  ANS006.BYTE004  $  y=INT((x1*0x100+x2)*0.05625);
  $  007.启动认证                              $    $  /         $    $  ANS007.BYTE004  $  switxh(x) 0x00:y=@07dd;0x01:y=@07de;0x03:y=@01e5;default:y=@0168;
  $  008.齿轮箱油温                            $    $  degC      $    $  ANS008.BYTE004  $  y=x-40;
  $  009.档位状态                              $    $  /         $    $  ANS009.BYTE004  $  switxh(x) 0x01:y=P;0x02:y=R;0x03:y=N;0x04:y=D;0x05:y=M;default:y=@0168;
  $  010.强制换挡状态                          $    $  /         $    $  ANS010.BYTE004  $  switxh(x) 0x00:y=@07dc;0x01:y=@001c;default:y=@0168;
  $  011.多用换挡杆位置                        $    $  /         $    $  ANS011.BYTE004  $  switxh(x) 0x00:y=M;0x04:y=Tip-;0x08:y=Tip+;0x0C:y=PRND;default:y=@0168;
  $  012.目标档位                              $    $  /         $    $  ANS012.BYTE004  $  switxh(x) 0x01:y=1;0x02:y=2;0x03:y=3;0x04:y=4;0x05:y=5;0x06:y=6;0x07:y=R;0x07:y=@0132;default:y=@0168;
  $  013.TCU(自动变速器控制单元)内部温度       $    $  degC      $    $  ANS013.BYTE004  $  if(x1<0x80) y=x1*0x100+x2;else y=x1*0x100+x2-65536;
  $  014.ESP(电控稳定定统)状态                 $    $  /         $    $  ANS014.BYTE004  $  if(((x>>1)&1)) y=@001c;else y=@07dc;
  $  015.MIL(故障指示灯)灯                     $    $  /         $    $  ANS015.BYTE004  $  if(((x>>0)&1)) y=@001c;else y=@07dc;
  $  016.警告灯                                $    $  /         $    $  ANS015.BYTE004  $  if(((x>>1)&1)) y=@001c;else y=@07dc;
  $  017.温度警告灯                            $    $  /         $    $  ANS015.BYTE004  $  if(((x>>2)&1)) y=@001c;else y=@07dc;
  $  018.车辆加速度                            $    $  m/s^2     $    $  ANS016.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)/1024;else y=(x1*0x100+x2-65536)/1024;
  $  019.TCU(自动变速器控制单元)电压           $    $  V         $    $  ANS017.BYTE004  $  y=(x1*0x100+x2)/512;
  $  020.输入轴1转速                           $    $  rpm       $    $  ANS018.BYTE004  $  y=INT((x1*0x100+x2)*0.50);
  $  021.输入轴2转速                           $    $  rpm       $    $  ANS019.BYTE004  $  y=INT((x1*0x100+x2)*0.5);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
