
    车型ID：110b

    模拟：协议模拟-->110b

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:749 02 10 01 00 00 00 00 00       $~  ANS000:7C9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:749 02 3E 80 00 00 00 00 00       $!  ANS000:7C9 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:749 03 19 02 09 00 00 00 00       $#  ANS000:7C9 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/09000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:749 04 14 FF FF FF 00 00 00       $$  ANS000:7C9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:749 03 22 F1 A0 00 00 00 00       $%  ANS000:7C9 03 22 F1 A0 00 00 00 00
  $%  REQ001:749 03 22 F1 83 00 00 00 00       $%  ANS001:7C9 03 22 F1 83 00 00 00 00
  $%  REQ002:749 03 22 F1 A1 00 00 00 00       $%  ANS002:7C9 03 22 F1 A1 00 00 00 00
  $%  REQ003:749 03 22 F1 91 00 00 00 00       $%  ANS003:7C9 03 22 F1 91 00 00 00 00
  $%  REQ004:749 03 22 F1 8B 00 00 00 00       $%  ANS004:7C9 03 22 F1 8B 00 00 00 00
  $%  REQ005:749 03 22 F1 A2 00 00 00 00       $%  ANS005:7C9 03 22 F1 A2 00 00 00 00
  $%  REQ006:749 03 22 F1 87 00 00 00 00       $%  ANS006:7C9 03 22 F1 87 00 00 00 00
  $%  REQ007:749 03 22 F1 10 00 00 00 00       $%  ANS007:7C9 03 22 F1 10 00 00 00 00
  $%  REQ008:749 03 22 F1 92 00 00 00 00       $%  ANS008:7C9 03 22 F1 92 00 00 00 00
  $%  REQ009:749 03 22 F1 8C 00 00 00 00       $%  ANS009:7C9 03 22 F1 8C 00 00 00 00
  $%  REQ010:749 03 22 F1 94 00 00 00 00       $%  ANS010:7C9 03 22 F1 94 00 00 00 00
  $%  REQ011:749 03 22 F1 8A 00 00 00 00       $%  ANS011:7C9 03 22 F1 8A 00 00 00 00
  $%  REQ012:749 03 22 F1 90 00 00 00 00       $%  ANS012:7C9 03 22 F1 90 00 00 00 00
  $%  REQ013:749 03 22 F1 A8 00 00 00 00       $%  ANS013:7C9 03 22 F1 A8 00 00 00 00

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
  $%  011:零部件标识码:                    $%    $%  ANS009.BYTE004  $%  y=UINT40(x1,x2,x3,x4,x5);
  $%  012:生产线编号:                      $%    $%  ANS009.BYTE009  $%  ASCII(X1,X2);
  $%  013:年/月/日:                        $%    $%  ANS009.BYTE011  $%  HEX(X1,X2,X3);
  $%  014:供应商电控单元软件参考号:        $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  015:系统供应商标识号:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  016:车辆识别代码:                    $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  017:车辆特征信息:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:749 03 22 C0 00 00 00 00 00       $  ANS000:7C9 03 22 C0 00 00 00 00 00
  $  REQ001:749 03 22 B0 00 00 00 00 00       $  ANS001:7C9 03 22 B0 00 00 00 00 00
  $  REQ002:749 03 22 B0 11 00 00 00 00       $  ANS002:7C9 03 22 B0 11 00 00 00 00
  $  REQ003:749 03 22 B0 1B 00 00 00 00       $  ANS003:7C9 03 22 B0 1B 00 00 00 00
  $  REQ004:749 03 22 B0 23 00 00 00 00       $  ANS004:7C9 03 22 B0 23 00 00 00 00
  $  REQ005:749 03 22 B0 27 00 00 00 00       $  ANS005:7C9 03 22 B0 27 00 00 00 00
  $  REQ006:749 03 22 B0 24 00 00 00 00       $  ANS006:7C9 03 22 B0 24 00 00 00 00
  $  REQ007:749 03 22 B0 28 00 00 00 00       $  ANS007:7C9 03 22 B0 28 00 00 00 00
  $  REQ008:749 03 22 B0 2D 00 00 00 00       $  ANS008:7C9 03 22 B0 2D 00 00 00 00
  $  REQ009:749 03 22 B0 2E 00 00 00 00       $  ANS009:7C9 03 22 B0 2E 00 00 00 00
  $  REQ010:749 03 22 B0 2F 00 00 00 00       $  ANS010:7C9 03 22 B0 2F 00 00 00 00
  $  REQ011:749 03 22 B0 2C 00 00 00 00       $  ANS011:7C9 03 22 B0 2C 00 00 00 00
  $  REQ012:749 03 22 B0 19 00 00 00 00       $  ANS012:7C9 03 22 B0 19 00 00 00 00
  $  REQ013:749 03 22 B0 21 00 00 00 00       $  ANS013:7C9 03 22 B0 21 00 00 00 00
  $  REQ014:749 03 22 B0 22 00 00 00 00       $  ANS014:7C9 03 22 B0 22 00 00 00 00
  $  REQ015:749 03 22 B0 1F 00 00 00 00       $  ANS015:7C9 03 22 B0 1F 00 00 00 00
  $  REQ016:749 03 22 B0 07 00 00 00 00       $  ANS016:7C9 03 22 B0 07 00 00 00 00
  $  REQ017:749 03 22 B0 20 00 00 00 00       $  ANS017:7C9 03 22 B0 20 00 00 00 00
  $  REQ018:749 03 22 B0 0A 00 00 00 00       $  ANS018:7C9 03 22 B0 0A 00 00 00 00
  $  REQ019:749 03 22 B0 0B 00 00 00 00       $  ANS019:7C9 03 22 B0 0B 00 00 00 00
  $  REQ020:749 03 22 B0 0C 00 00 00 00       $  ANS020:7C9 03 22 B0 0C 00 00 00 00
  $  REQ021:749 03 22 B0 0D 00 00 00 00       $  ANS021:7C9 03 22 B0 0D 00 00 00 00
  $  REQ022:749 03 22 B0 02 00 00 00 00       $  ANS022:7C9 03 22 B0 02 00 00 00 00
  $  REQ023:749 03 22 B0 03 00 00 00 00       $  ANS023:7C9 03 22 B0 03 00 00 00 00
  $  REQ024:749 03 22 B0 0E 00 00 00 00       $  ANS024:7C9 03 22 B0 0E 00 00 00 00
  $  REQ025:749 03 22 B0 0F 00 00 00 00       $  ANS025:7C9 03 22 B0 0F 00 00 00 00
  $  REQ026:749 03 22 B0 10 00 00 00 00       $  ANS026:7C9 03 22 B0 10 00 00 00 00
  $  REQ027:749 03 22 B0 16 00 00 00 00       $  ANS027:7C9 03 22 B0 16 00 00 00 00
  $  REQ028:749 03 22 B0 15 00 00 00 00       $  ANS028:7C9 03 22 B0 15 00 00 00 00
  $  REQ029:749 03 22 B0 12 00 00 00 00       $  ANS029:7C9 03 22 B0 12 00 00 00 00
  $  REQ030:749 03 22 B0 1A 00 00 00 00       $  ANS030:7C9 03 22 B0 1A 00 00 00 00
  $  REQ031:749 03 22 B0 17 00 00 00 00       $  ANS031:7C9 03 22 B0 17 00 00 00 00
  $  REQ032:749 03 22 B0 18 00 00 00 00       $  ANS032:7C9 03 22 B0 18 00 00 00 00
  $  REQ033:749 03 22 B0 14 00 00 00 00       $  ANS033:7C9 03 22 B0 14 00 00 00 00
  $  REQ034:749 03 22 B0 13 00 00 00 00       $  ANS034:7C9 03 22 B0 13 00 00 00 00
  $  REQ035:749 03 22 B0 2B 00 00 00 00       $  ANS035:7C9 03 22 B0 2B 00 00 00 00
  $  REQ036:749 03 22 B0 08 00 00 00 00       $  ANS036:7C9 03 22 B0 08 00 00 00 00
  $  REQ037:749 03 22 B0 1E 00 00 00 00       $  ANS037:7C9 03 22 B0 1E 00 00 00 00
  $  REQ038:749 03 22 B0 1D 00 00 00 00       $  ANS038:7C9 03 22 B0 1D 00 00 00 00
  $  REQ039:749 03 22 B0 06 00 00 00 00       $  ANS039:7C9 03 22 B0 06 00 00 00 00
  $  REQ040:749 03 22 B0 05 00 00 00 00       $  ANS040:7C9 03 22 B0 05 00 00 00 00
  $  REQ041:749 03 22 B0 25 00 00 00 00       $  ANS041:7C9 03 22 B0 25 00 00 00 00
  $  REQ042:749 03 22 B0 1C 00 00 00 00       $  ANS042:7C9 03 22 B0 1C 00 00 00 00
  $  REQ043:749 03 22 B0 26 00 00 00 00       $  ANS043:7C9 03 22 B0 26 00 00 00 00
  $  REQ044:749 03 22 B0 04 00 00 00 00       $  ANS044:7C9 03 22 B0 04 00 00 00 00
  $  REQ045:749 03 22 B0 29 00 00 00 00       $  ANS045:7C9 03 22 B0 29 00 00 00 00
  $  REQ046:749 03 22 B0 2A 00 00 00 00       $  ANS046:7C9 03 22 B0 2A 00 00 00 00
  $  REQ047:749 03 22 B0 01 00 00 00 00       $  ANS047:7C9 03 22 B0 01 00 00 00 00
  $  REQ048:749 03 22 B0 09 00 00 00 00       $  ANS048:7C9 03 22 B0 09 00 00 00 00

  $  000.防盗配置字                         $    $       $    $  ANS000.BYTE004  $  if((x&0x01)==0) y=@00db;else if((x&0x01)==1) y=@00dc;else y=@0035;
  $  001.vb_FlgRotLock(堵转标志)            $    $       $    $  ANS001.BYTE004  $  if(((x&0x10)>>4)==0) y=@0121;else if(((x&0x10)>>4)==1) y=@0122;else y=@0035;
  $  002.vb_DchaReq(主动放电使能标志)       $    $       $    $  ANS001.BYTE004  $  if(((x&0x08)>>3)==0) y=@0123;else if(((x&0x08)>>3)==1) y=@000c;else y=@0035;
  $  003.vb_CrashDet(碰撞标志)              $    $       $    $  ANS001.BYTE004  $  if(((x&0x04)>>2)==0) y=@0124;else if(((x&0x04)>>2)==1) y=@0125;else y=@0035;
  $  004.vb_PWM(开管指令)                   $    $       $    $  ANS001.BYTE004  $  if(((x&0x02)>>1)==0) y=@0126;else if(((x&0x02)>>1)==1) y=@0127;else y=@0035;
  $  005.vb_StateIgk(KL15标志位)            $    $       $    $  ANS001.BYTE004  $  if((x&0x01)==0) y=@0128;else if((x&0x01)==1) y=@0129;else y=@0035;
  $  006.旋变电角度值                       $    $       $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.0001;
  $  007.直流母线电流                       $    $       $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  008.ID实际值                           $    $       $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  009.id电流指令                         $    $       $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  010.IQ实际值                           $    $       $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  011.iq电流指令                         $    $       $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  012.U相占空比                          $    $       $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.001;
  $  013.V相占空比                          $    $       $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.001;
  $  014.W相占空比                          $    $       $    $  ANS010.BYTE004  $  y=(x1*256+x2)*0.001;
  $  015.PWM开关频率                        $    $       $    $  ANS011.BYTE004  $  y=(x1*256+x2);
  $  016.直流母线电压                       $    $       $    $  ANS012.BYTE004  $  y=(x1*256+x2)*0.1;
  $  017.调制度                             $    $       $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.001;
  $  018.电机实际转速                       $    $       $    $  ANS014.BYTE004  $  y=(x1*256+x2)-20000;
  $  019.当前的转速指令                     $    $       $    $  ANS015.BYTE004  $  y=(x1*256+x2)-20000;
  $  020.转速需求值                         $    $       $    $  ANS016.BYTE004  $  y=(x1*256+x2)-20000;
  $  021.电机定子频率                       $    $       $    $  ANS017.BYTE004  $  y=(x1*256+x2)-10000;
  $  022.U相电流采样值                      $    $       $    $  ANS018.BYTE004  $  y=(x1*256+x2);
  $  023.V相电流采样值                      $    $       $    $  ANS019.BYTE004  $  y=(x1*256+x2);
  $  024.W相电流采样值                      $    $       $    $  ANS020.BYTE004  $  y=(x1*256+x2);
  $  025.母线电压采样值                     $    $       $    $  ANS021.BYTE004  $  y=(x1*256+x2);
  $  026.电机定子温度采样值1                $    $       $    $  ANS022.BYTE004  $  y=(x1*256+x2);
  $  027.电机定子温度采样值2                $    $       $    $  ANS023.BYTE004  $  y=(x1*256+x2);
  $  028.U相温度采样值                      $    $       $    $  ANS024.BYTE004  $  y=(x1*256+x2);
  $  029.V相温度采样值                      $    $       $    $  ANS025.BYTE004  $  y=(x1*256+x2);
  $  030.W相温度采样值                      $    $       $    $  ANS026.BYTE004  $  y=(x1*256+x2);
  $  031.控制器状态机状态                   $    $       $    $  ANS027.BYTE004  $  y=x;
  $  032.控制器开管驱动信号                 $    $       $    $  ANS028.BYTE004  $  y=x;
  $  033.冷却液温度                         $    $       $    $  ANS029.BYTE004  $  y=(x1*256+x2)*0.1;
  $  034.电机温度                           $    $       $    $  ANS030.BYTE004  $  y=(x1*256+x2)*0.1-50;
  $  035.电机转子估算温度                   $    $       $    $  ANS031.BYTE004  $  y=(x1*256+x2)*0.1-50;
  $  036.电机定子估算温度                   $    $       $    $  ANS032.BYTE004  $  y=(x1*256+x2)*0.1-50;
  $  037.控制器温度                         $    $       $    $  ANS033.BYTE004  $  y=(x1*256+x2)*0.1-50;
  $  038.逆变器结温                         $    $       $    $  ANS034.BYTE004  $  y=(x1*256+x2)*0.1-50;
  $  039.反馈扭矩值                         $    $       $    $  ANS035.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  040.转矩需求值                         $    $       $    $  ANS036.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  041.扭矩需求下限值                     $    $       $    $  ANS037.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  042.扭矩需求上限值                     $    $       $    $  ANS038.BYTE004  $  y=(x1*256+x2)*0.1;
  $  043.最小转矩限值                       $    $       $    $  ANS039.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  044.最大转矩限值                       $    $       $    $  ANS040.BYTE004  $  y=(x1*256+x2)*0.1;
  $  045.合成扭矩                           $    $       $    $  ANS041.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  046.扭矩指令                           $    $       $    $  ANS042.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  047.slope前的扭矩指令                  $    $       $    $  ANS043.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  048.电池电压                           $    $       $    $  ANS044.BYTE004  $  y=(x1*256+x2)*0.1;
  $  049.ud电压指令值                       $    $       $    $  ANS045.BYTE004  $  y=(x1*256+x2)*0.1-800;
  $  050.uq电压指令值                       $    $       $    $  ANS046.BYTE004  $  y=(x1*256+x2)*0.1-800;
  $  051.主接触器状态                       $    $       $    $  ANS047.BYTE004  $  y=x;
  $  052.运行请求模式                       $    $       $    $  ANS048.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:749 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
