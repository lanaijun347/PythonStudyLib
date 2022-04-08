
    车型ID：0a01

    模拟：协议模拟-->0a01

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~789

进入命令:

  $~  REQ000:781 02 10 01 00 00 00 00 00       $~  ANS000:789 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:781 02 3E 80 00 00 00 00 00       $!  ANS000:789 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:781 05 18 00 FF FF FF 00 00       $#  ANS000:789 05 18 00 FF FF FF 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/80000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:781 04 14 FF FF FF 00 00 00       $$  ANS000:789 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:781 03 22 15 86 00 00 00 00       $%  ANS000:789 03 22 15 86 00 00 00 00
  $%  REQ001:781 03 22 15 87 00 00 00 00       $%  ANS001:789 03 22 15 87 00 00 00 00
  $%  REQ002:781 03 22 15 88 00 00 00 00       $%  ANS002:789 03 22 15 88 00 00 00 00
  $%  REQ003:781 03 22 15 8A 00 00 00 00       $%  ANS003:789 03 22 15 8A 00 00 00 00

  $%  000:VIN:                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:电池箱数:                $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d],x1);
  $%  002:电池串联数:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%02d],x1);
  $%  003:电池温度采集点数:        $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02d],x1);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.常规数据流
  $  00.常规数据流
  $  REQ000:781 03 22 00 1D 00 00 00 00       $  ANS000:789 03 22 00 1D 00 00 00 00
  $  REQ001:781 03 22 00 1E 00 00 00 00       $  ANS001:789 03 22 00 1E 00 00 00 00
  $  REQ002:781 03 22 00 1F 00 00 00 00       $  ANS002:789 03 22 00 1F 00 00 00 00
  $  REQ003:781 03 22 00 20 00 00 00 00       $  ANS003:789 03 22 00 20 00 00 00 00
  $  REQ004:781 03 22 00 23 00 00 00 00       $  ANS004:789 03 22 00 23 00 00 00 00
  $  REQ005:781 03 22 00 24 00 00 00 00       $  ANS005:789 03 22 00 24 00 00 00 00
  $  REQ006:781 03 22 00 25 00 00 00 00       $  ANS006:789 03 22 00 25 00 00 00 00
  $  REQ007:781 03 22 00 26 00 00 00 00       $  ANS007:789 03 22 00 26 00 00 00 00
  $  REQ008:781 03 22 00 27 00 00 00 00       $  ANS008:789 03 22 00 27 00 00 00 00
  $  REQ009:781 03 22 00 28 00 00 00 00       $  ANS009:789 03 22 00 28 00 00 00 00
  $  REQ010:781 03 22 00 29 00 00 00 00       $  ANS010:789 03 22 00 29 00 00 00 00
  $  REQ011:781 03 22 00 2A 00 00 00 00       $  ANS011:789 03 22 00 2A 00 00 00 00
  $  REQ012:781 03 22 00 21 00 00 00 00       $  ANS012:789 03 22 00 21 00 00 00 00
  $  REQ013:781 03 22 00 2C 00 00 00 00       $  ANS013:789 03 22 00 2C 00 00 00 00
  $  REQ014:781 03 22 00 2D 00 00 00 00       $  ANS014:789 03 22 00 2D 00 00 00 00
  $  REQ015:781 03 22 00 2E 00 00 00 00       $  ANS015:789 03 22 00 2E 00 00 00 00
  $  REQ016:781 03 22 00 2F 00 00 00 00       $  ANS016:789 03 22 00 2F 00 00 00 00
  $  REQ017:781 03 22 00 30 00 00 00 00       $  ANS017:789 03 22 00 30 00 00 00 00
  $  REQ018:781 03 22 00 31 00 00 00 00       $  ANS018:789 03 22 00 31 00 00 00 00
  $  REQ019:781 03 22 00 32 00 00 00 00       $  ANS019:789 03 22 00 32 00 00 00 00
  $  REQ020:781 03 22 00 33 00 00 00 00       $  ANS020:789 03 22 00 33 00 00 00 00
  $  REQ021:781 03 22 00 34 00 00 00 00       $  ANS021:789 03 22 00 34 00 00 00 00
  $  REQ022:781 03 22 00 35 00 00 00 00       $  ANS022:789 03 22 00 35 00 00 00 00
  $  REQ023:781 03 22 00 36 00 00 00 00       $  ANS023:789 03 22 00 36 00 00 00 00
  $  REQ024:781 03 22 00 04 00 00 00 00       $  ANS024:789 03 22 00 04 00 00 00 00
  $  REQ025:781 03 22 00 08 00 00 00 00       $  ANS025:789 03 22 00 08 00 00 00 00
  $  REQ026:781 03 22 00 05 00 00 00 00       $  ANS026:789 03 22 00 05 00 00 00 00
  $  REQ027:781 03 22 00 06 00 00 00 00       $  ANS027:789 03 22 00 06 00 00 00 00
  $  REQ028:781 03 22 00 07 00 00 00 00       $  ANS028:789 03 22 00 07 00 00 00 00
  $  REQ029:781 03 22 00 09 00 00 00 00       $  ANS029:789 03 22 00 09 00 00 00 00
  $  REQ030:781 03 22 00 0A 00 00 00 00       $  ANS030:789 03 22 00 0A 00 00 00 00
  $  REQ031:781 03 22 00 0B 00 00 00 00       $  ANS031:789 03 22 00 0B 00 00 00 00
  $  REQ032:781 03 22 00 0C 00 00 00 00       $  ANS032:789 03 22 00 0C 00 00 00 00
  $  REQ033:781 03 22 00 0D 00 00 00 00       $  ANS033:789 03 22 00 0D 00 00 00 00
  $  REQ034:781 03 22 00 0E 00 00 00 00       $  ANS034:789 03 22 00 0E 00 00 00 00
  $  REQ035:781 03 22 00 0F 00 00 00 00       $  ANS035:789 03 22 00 0F 00 00 00 00
  $  REQ036:781 03 22 00 10 00 00 00 00       $  ANS036:789 03 22 00 10 00 00 00 00
  $  REQ037:781 03 22 00 11 00 00 00 00       $  ANS037:789 03 22 00 11 00 00 00 00
  $  REQ038:781 03 22 00 12 00 00 00 00       $  ANS038:789 03 22 00 12 00 00 00 00
  $  REQ039:781 03 22 00 13 00 00 00 00       $  ANS039:789 03 22 00 13 00 00 00 00
  $  REQ040:781 03 22 00 14 00 00 00 00       $  ANS040:789 03 22 00 14 00 00 00 00
  $  REQ041:781 03 22 00 15 00 00 00 00       $  ANS041:789 03 22 00 15 00 00 00 00
  $  REQ042:781 03 22 00 16 00 00 00 00       $  ANS042:789 03 22 00 16 00 00 00 00
  $  REQ043:781 03 22 00 17 00 00 00 00       $  ANS043:789 03 22 00 17 00 00 00 00
  $  REQ044:781 03 22 00 18 00 00 00 00       $  ANS044:789 03 22 00 18 00 00 00 00
  $  REQ045:781 03 22 00 19 00 00 00 00       $  ANS045:789 03 22 00 19 00 00 00 00
  $  REQ046:781 03 22 00 1A 00 00 00 00       $  ANS046:789 03 22 00 1A 00 00 00 00
  $  REQ047:781 03 22 00 1B 00 00 00 00       $  ANS047:789 03 22 00 1B 00 00 00 00
  $  REQ048:781 03 22 00 1C 00 00 00 00       $  ANS048:789 03 22 00 1C 00 00 00 00

  $  000.当前总电压           $    $  V            $    $  ANS000.BYTE004  $  if((x2>0x02)||((x2==0x02)&&(x1>0xEE)))y=@0108;else y=x2*256+x1;
  $  001.当前总电流           $    $  A            $    $  ANS001.BYTE004  $  if((x2>0x27)||((x2==0x27)&&(x1>0x10)))y=@0108;else y=0.1*(x2*256+x1)-500;
  $  002.健康指数             $    $  %            $    $  ANS002.BYTE004  $  if(x>0x64) y=@0108;else y=x;
  $  003.SOC                  $    $  %            $    $  ANS003.BYTE004  $  if(x>0x64) y=@0108;else y=x;
  $  004.低压电池             $    $               $    $  ANS004.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  005.最低电压             $    $  V            $    $  ANS005.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  006.高压电池             $    $               $    $  ANS006.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  007.最高电压             $    $  V            $    $  ANS007.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  008.低温电池             $    $               $    $  ANS008.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  009.最低温度             $    $               $    $  ANS009.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  010.高温电池             $    $               $    $  ANS010.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  011.最高温度             $    $               $    $  ANS011.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  012.平均温度             $    $  degree C     $    $  ANS012.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  013.充电次数             $    $               $    $  ANS013.BYTE004  $  y=x;
  $  014.单次充电容量         $    $               $    $  ANS014.BYTE004  $  if(x>0x32) y=@0108;else y=x;
  $  015.累计充电容量         $    $               $    $  ANS015.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  016.累计放电容量         $    $               $    $  ANS016.BYTE004  $  y=x3*256*256+x2*256+x1;
  $  017.充电容量修正         $    $               $    $  ANS017.BYTE004  $  y=x2*256+x1;
  $  018.放电容量修正         $    $               $    $  ANS018.BYTE004  $  y=x2*256+x1;
  $  019.最大放电功率         $    $  kW           $    $  ANS019.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.1*(x2*256+x1);
  $  020.最大充电功率         $    $               $    $  ANS020.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.1*(x2*256+x1);
  $  021.BIC12V电源电压       $    $               $    $  ANS021.BYTE004  $  if(x>0xC8) y=@0108;else y=0.1*x;
  $  022.正15V电压            $    $               $    $  ANS022.BYTE004  $  if(x>0xC8) y=@0108;else y=0.1*x;
  $  023.负15V电压            $    $               $    $  ANS023.BYTE004  $  if(x>0xC8) y=@0108;else y=0.1*x;
  $  024.充电允许             $    $               $    $  ANS024.BYTE004  $  if(x==0x00)y=@004e;else if(x==0x01)y=@004d;else y=@0108;
  $  025.放电允许             $    $               $    $  ANS025.BYTE004  $  if(x==0x00)y=@004e;else if(x==0x01)y=@004d;else y=@0108;
  $  026.充电信号             $    $               $    $  ANS026.BYTE004  $  if(x==0x00)y=@0146;else if(x==0x01)y=@0147;else y=@0108;
  $  027.充电状态             $    $               $    $  ANS027.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0318;else if(x==0x02)y=@00d1;else y=@0108;
  $  028.预充状态             $    $               $    $  ANS028.BYTE004  $  if(x==0x00)y=@0142;else if(x==0x01)y=@0319;else if(x==0x02)y=@013e;else if(x==0x03)y=@0020;else y=@0108;
  $  029.主接触器             $    $               $    $  ANS029.BYTE004  $  if(x==0x00)y=@0047;else if(x==0x01)y=@0048;else y=@0108;
  $  030.预充接触器           $    $               $    $  ANS030.BYTE004  $  if(x==0x00)y=@0047;else if(x==0x01)y=@0048;else y=@0108;
  $  031.充电接触器           $    $               $    $  ANS031.BYTE004  $  if(x==0x00)y=@0047;else if(x==0x01)y=@0048;else y=@0108;
  $  032.负极接触器           $    $               $    $  ANS032.BYTE004  $  if(x==0x00)y=@0047;else if(x==0x01)y=@0048;else y=@0108;
  $  033.分压接触器1          $    $               $    $  ANS033.BYTE004  $  if(x==0x01)y=@0047;else if(x==0x02)y=@0048;else y=@0108;
  $  034.分压接触器2          $    $               $    $  ANS034.BYTE004  $  if(x==0x01)y=@0047;else if(x==0x02)y=@0048;else y=@0108;
  $  035.分压接触器3          $    $               $    $  ANS035.BYTE004  $  if(x==0x01)y=@0047;else if(x==0x02)y=@0048;else y=@0108;
  $  036.分压接触器4          $    $               $    $  ANS036.BYTE004  $  if(x==0x01)y=@0047;else if(x==0x02)y=@0048;else y=@0108;
  $  037.高压互锁             $    $               $    $  ANS037.BYTE004  $  if(x==0x00)y=@00eb;else if(x==0x01)y=@014a;else y=@0108;
  $  038.主接触器故障         $    $               $    $  ANS038.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0315;else y=@0108;
  $  039.负极接触器故障       $    $               $    $  ANS039.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0315;else y=@0108;
  $  040.漏电状态             $    $               $    $  ANS040.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0318;else if(x==0x02)y=@00d1;else y=@0108;
  $  041.电量状态             $    $               $    $  ANS041.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0317;else y=@0108;
  $  042.湿度状态             $    $               $    $  ANS042.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0316;else y=@0108;
  $  043.过流状态             $    $               $    $  ANS043.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@02e0;else y=@0108;
  $  044.温度状态             $    $               $    $  ANS044.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0318;else if(x==0x02)y=@00d1;else y=@0108;
  $  045.电压过低报警         $    $               $    $  ANS045.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0318;else if(x==0x02)y=@00d1;else y=@0108;
  $  046.电压过高报警         $    $               $    $  ANS046.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0318;else if(x==0x02)y=@00d1;else y=@0108;
  $  047.碰撞信号报警         $    $               $    $  ANS047.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0318;else y=@0108;
  $  048.碰撞报警仪表         $    $               $    $  ANS048.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0318;else y=@0108;

  $)  01.模组电池信息
  $  01.模组电池信息
  $  REQ000:781 03 22 00 E1 00 00 00 00       $  ANS000:789 03 22 00 E1 00 00 00 00
  $  REQ001:781 03 22 00 E2 00 00 00 00       $  ANS001:789 03 22 00 E2 00 00 00 00
  $  REQ002:781 03 22 00 E3 00 00 00 00       $  ANS002:789 03 22 00 E3 00 00 00 00
  $  REQ003:781 03 22 00 E4 00 00 00 00       $  ANS003:789 03 22 00 E4 00 00 00 00
  $  REQ004:781 03 22 00 E5 00 00 00 00       $  ANS004:789 03 22 00 E5 00 00 00 00
  $  REQ005:781 03 22 00 E6 00 00 00 00       $  ANS005:789 03 22 00 E6 00 00 00 00
  $  REQ006:781 03 22 00 E7 00 00 00 00       $  ANS006:789 03 22 00 E7 00 00 00 00
  $  REQ007:781 03 22 00 E8 00 00 00 00       $  ANS007:789 03 22 00 E8 00 00 00 00
  $  REQ008:781 03 22 00 E9 00 00 00 00       $  ANS008:789 03 22 00 E9 00 00 00 00
  $  REQ009:781 03 22 00 EA 00 00 00 00       $  ANS009:789 03 22 00 EA 00 00 00 00
  $  REQ010:781 03 22 00 EB 00 00 00 00       $  ANS010:789 03 22 00 EB 00 00 00 00
  $  REQ011:781 03 22 00 EC 00 00 00 00       $  ANS011:789 03 22 00 EC 00 00 00 00
  $  REQ012:781 03 22 00 ED 00 00 00 00       $  ANS012:789 03 22 00 ED 00 00 00 00
  $  REQ013:781 03 22 00 EE 00 00 00 00       $  ANS013:789 03 22 00 EE 00 00 00 00
  $  REQ014:781 03 22 00 EF 00 00 00 00       $  ANS014:789 03 22 00 EF 00 00 00 00
  $  REQ015:781 03 22 00 F0 00 00 00 00       $  ANS015:789 03 22 00 F0 00 00 00 00
  $  REQ016:781 03 22 00 F1 00 00 00 00       $  ANS016:789 03 22 00 F1 00 00 00 00
  $  REQ017:781 03 22 00 F2 00 00 00 00       $  ANS017:789 03 22 00 F2 00 00 00 00
  $  REQ018:781 03 22 00 F3 00 00 00 00       $  ANS018:789 03 22 00 F3 00 00 00 00
  $  REQ019:781 03 22 00 F4 00 00 00 00       $  ANS019:789 03 22 00 F4 00 00 00 00
  $  REQ020:781 03 22 00 F5 00 00 00 00       $  ANS020:789 03 22 00 F5 00 00 00 00
  $  REQ021:781 03 22 00 F6 00 00 00 00       $  ANS021:789 03 22 00 F6 00 00 00 00
  $  REQ022:781 03 22 00 F7 00 00 00 00       $  ANS022:789 03 22 00 F7 00 00 00 00
  $  REQ023:781 03 22 00 F8 00 00 00 00       $  ANS023:789 03 22 00 F8 00 00 00 00
  $  REQ024:781 03 22 00 F9 00 00 00 00       $  ANS024:789 03 22 00 F9 00 00 00 00
  $  REQ025:781 03 22 00 FA 00 00 00 00       $  ANS025:789 03 22 00 FA 00 00 00 00
  $  REQ026:781 03 22 00 FB 00 00 00 00       $  ANS026:789 03 22 00 FB 00 00 00 00
  $  REQ027:781 03 22 00 FC 00 00 00 00       $  ANS027:789 03 22 00 FC 00 00 00 00
  $  REQ028:781 03 22 00 FD 00 00 00 00       $  ANS028:789 03 22 00 FD 00 00 00 00
  $  REQ029:781 03 22 00 FE 00 00 00 00       $  ANS029:789 03 22 00 FE 00 00 00 00
  $  REQ030:781 03 22 00 FF 00 00 00 00       $  ANS030:789 03 22 00 FF 00 00 00 00
  $  REQ031:781 03 22 01 00 00 00 00 00       $  ANS031:789 03 22 01 00 00 00 00 00
  $  REQ032:781 03 22 01 01 00 00 00 00       $  ANS032:789 03 22 01 01 00 00 00 00
  $  REQ033:781 03 22 01 02 00 00 00 00       $  ANS033:789 03 22 01 02 00 00 00 00
  $  REQ034:781 03 22 01 03 00 00 00 00       $  ANS034:789 03 22 01 03 00 00 00 00
  $  REQ035:781 03 22 01 04 00 00 00 00       $  ANS035:789 03 22 01 04 00 00 00 00
  $  REQ036:781 03 22 01 05 00 00 00 00       $  ANS036:789 03 22 01 05 00 00 00 00
  $  REQ037:781 03 22 01 06 00 00 00 00       $  ANS037:789 03 22 01 06 00 00 00 00
  $  REQ038:781 03 22 01 07 00 00 00 00       $  ANS038:789 03 22 01 07 00 00 00 00
  $  REQ039:781 03 22 01 08 00 00 00 00       $  ANS039:789 03 22 01 08 00 00 00 00
  $  REQ040:781 03 22 01 09 00 00 00 00       $  ANS040:789 03 22 01 09 00 00 00 00
  $  REQ041:781 03 22 01 0A 00 00 00 00       $  ANS041:789 03 22 01 0A 00 00 00 00
  $  REQ042:781 03 22 01 0B 00 00 00 00       $  ANS042:789 03 22 01 0B 00 00 00 00
  $  REQ043:781 03 22 01 0C 00 00 00 00       $  ANS043:789 03 22 01 0C 00 00 00 00
  $  REQ044:781 03 22 01 0D 00 00 00 00       $  ANS044:789 03 22 01 0D 00 00 00 00
  $  REQ045:781 03 22 01 0E 00 00 00 00       $  ANS045:789 03 22 01 0E 00 00 00 00
  $  REQ046:781 03 22 01 0F 00 00 00 00       $  ANS046:789 03 22 01 0F 00 00 00 00
  $  REQ047:781 03 22 01 10 00 00 00 00       $  ANS047:789 03 22 01 10 00 00 00 00
  $  REQ048:781 03 22 01 11 00 00 00 00       $  ANS048:789 03 22 01 11 00 00 00 00
  $  REQ049:781 03 22 01 12 00 00 00 00       $  ANS049:789 03 22 01 12 00 00 00 00
  $  REQ050:781 03 22 01 13 00 00 00 00       $  ANS050:789 03 22 01 13 00 00 00 00
  $  REQ051:781 03 22 01 14 00 00 00 00       $  ANS051:789 03 22 01 14 00 00 00 00
  $  REQ052:781 03 22 01 15 00 00 00 00       $  ANS052:789 03 22 01 15 00 00 00 00
  $  REQ053:781 03 22 01 16 00 00 00 00       $  ANS053:789 03 22 01 16 00 00 00 00
  $  REQ054:781 03 22 01 17 00 00 00 00       $  ANS054:789 03 22 01 17 00 00 00 00
  $  REQ055:781 03 22 01 18 00 00 00 00       $  ANS055:789 03 22 01 18 00 00 00 00
  $  REQ056:781 03 22 01 19 00 00 00 00       $  ANS056:789 03 22 01 19 00 00 00 00
  $  REQ057:781 03 22 01 1A 00 00 00 00       $  ANS057:789 03 22 01 1A 00 00 00 00
  $  REQ058:781 03 22 01 1B 00 00 00 00       $  ANS058:789 03 22 01 1B 00 00 00 00
  $  REQ059:781 03 22 01 1C 00 00 00 00       $  ANS059:789 03 22 01 1C 00 00 00 00
  $  REQ060:781 03 22 01 1D 00 00 00 00       $  ANS060:789 03 22 01 1D 00 00 00 00
  $  REQ061:781 03 22 01 1E 00 00 00 00       $  ANS061:789 03 22 01 1E 00 00 00 00
  $  REQ062:781 03 22 01 1F 00 00 00 00       $  ANS062:789 03 22 01 1F 00 00 00 00
  $  REQ063:781 03 22 01 20 00 00 00 00       $  ANS063:789 03 22 01 20 00 00 00 00
  $  REQ064:781 03 22 01 21 00 00 00 00       $  ANS064:789 03 22 01 21 00 00 00 00
  $  REQ065:781 03 22 01 22 00 00 00 00       $  ANS065:789 03 22 01 22 00 00 00 00
  $  REQ066:781 03 22 01 23 00 00 00 00       $  ANS066:789 03 22 01 23 00 00 00 00
  $  REQ067:781 03 22 01 24 00 00 00 00       $  ANS067:789 03 22 01 24 00 00 00 00
  $  REQ068:781 03 22 01 25 00 00 00 00       $  ANS068:789 03 22 01 25 00 00 00 00
  $  REQ069:781 03 22 01 26 00 00 00 00       $  ANS069:789 03 22 01 26 00 00 00 00
  $  REQ070:781 03 22 01 27 00 00 00 00       $  ANS070:789 03 22 01 27 00 00 00 00
  $  REQ071:781 03 22 01 28 00 00 00 00       $  ANS071:789 03 22 01 28 00 00 00 00
  $  REQ072:781 03 22 01 29 00 00 00 00       $  ANS072:789 03 22 01 29 00 00 00 00
  $  REQ073:781 03 22 01 2A 00 00 00 00       $  ANS073:789 03 22 01 2A 00 00 00 00
  $  REQ074:781 03 22 01 2B 00 00 00 00       $  ANS074:789 03 22 01 2B 00 00 00 00
  $  REQ075:781 03 22 01 2C 00 00 00 00       $  ANS075:789 03 22 01 2C 00 00 00 00
  $  REQ076:781 03 22 01 2D 00 00 00 00       $  ANS076:789 03 22 01 2D 00 00 00 00
  $  REQ077:781 03 22 01 2E 00 00 00 00       $  ANS077:789 03 22 01 2E 00 00 00 00
  $  REQ078:781 03 22 01 30 00 00 00 00       $  ANS078:789 03 22 01 30 00 00 00 00

  $  000.模组1最低电压电池编号          $    $               $    $  ANS000.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  001.模组1最低单节电池电压          $    $  V            $    $  ANS001.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  002.模组1最高电压电池号编号        $    $               $    $  ANS002.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  003.模组1最高单节电池电压          $    $  V            $    $  ANS003.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  004.模组1最低温度电池号            $    $               $    $  ANS004.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  005.模组1最低单节电池温度          $    $  degree C     $    $  ANS005.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  006.模组1最高温度电池号            $    $               $    $  ANS006.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  007.模组1最高单节电池温度          $    $  degree C     $    $  ANS007.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  008.模组2最低电压电池编号          $    $               $    $  ANS008.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  009.模组2最低单节电池电压          $    $  V            $    $  ANS009.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  010.模组2最高电压电池号编号        $    $               $    $  ANS010.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  011.模组2最高单节电池电压          $    $  V            $    $  ANS011.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  012.模组2最低温度电池号            $    $               $    $  ANS012.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  013.模组2最低单节电池温度          $    $  degree C     $    $  ANS013.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  014.模组2最高温度电池号            $    $               $    $  ANS014.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  015.模组2最高单节电池温度          $    $  degree C     $    $  ANS015.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  016.模组3最低电压电池编号          $    $               $    $  ANS016.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  017.模组3最低单节电池电压          $    $  V            $    $  ANS017.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  018.模组3最高电压电池号编号        $    $               $    $  ANS018.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  019.模组3最高单节电池电压          $    $  V            $    $  ANS019.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  020.模组3最低温度电池号            $    $               $    $  ANS020.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  021.模组3最低单节电池温度          $    $  degree C     $    $  ANS021.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  022.模组3最高温度电池号            $    $               $    $  ANS022.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  023.模组3最高单节电池温度          $    $  degree C     $    $  ANS023.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  024.模组4最低电压电池编号          $    $               $    $  ANS024.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  025.模组4最低单节电池电压          $    $  V            $    $  ANS025.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  026.模组4最高电压电池号编号        $    $               $    $  ANS026.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  027.模组4最高单节电池电压          $    $  V            $    $  ANS027.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  028.模组4最低温度电池号            $    $               $    $  ANS028.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  029.模组4最低单节电池温度          $    $  degree C     $    $  ANS029.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  030.模组4最高温度电池号            $    $               $    $  ANS030.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  031.模组4最高单节电池温度          $    $  degree C     $    $  ANS031.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  032.模组5最低电压电池编号          $    $               $    $  ANS032.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  033.模组5最低单节电池电压          $    $  V            $    $  ANS033.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  034.模组5最高电压电池号编号        $    $               $    $  ANS034.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  035.模组5最高单节电池电压          $    $  V            $    $  ANS035.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  036.模组5最低温度电池号            $    $               $    $  ANS036.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  037.模组5最低单节电池温度          $    $  degree C     $    $  ANS037.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  038.模组5最高温度电池号            $    $               $    $  ANS038.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  039.模组5最高单节电池温度          $    $  degree C     $    $  ANS039.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  040.模组6最低电压电池编号          $    $               $    $  ANS040.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  041.模组6最低单节电池电压          $    $  V            $    $  ANS041.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  042.模组6最高电压电池号编号        $    $               $    $  ANS042.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  043.模组6最高单节电池电压          $    $  V            $    $  ANS043.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  044.模组6最低温度电池号            $    $               $    $  ANS044.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  045.模组6最低单节电池温度          $    $  degree C     $    $  ANS045.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  046.模组6最高温度电池号            $    $               $    $  ANS046.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  047.模组6最高单节电池温度          $    $  degree C     $    $  ANS047.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  048.模组7最低电压电池编号          $    $               $    $  ANS048.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  049.模组7最低单节电池电压          $    $  V            $    $  ANS049.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  050.模组7最高电压电池号编号        $    $               $    $  ANS050.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  051.模组7最高单节电池电压          $    $  V            $    $  ANS051.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  052.模组7最低温度电池号            $    $               $    $  ANS052.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  053.模组7最低单节电池温度          $    $  degree C     $    $  ANS053.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  054.模组7最高温度电池号            $    $               $    $  ANS054.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  055.模组7最高单节电池温度          $    $  degree C     $    $  ANS055.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  056.模组8最低电压电池编号          $    $               $    $  ANS056.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  057.模组8最低单节电池电压          $    $  V            $    $  ANS057.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  058.模组8最高电压电池号编号        $    $               $    $  ANS058.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  059.模组8最高单节电池电压          $    $  V            $    $  ANS059.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  060.模组8最低温度电池号            $    $               $    $  ANS060.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  061.模组8最低单节电池温度          $    $  degree C     $    $  ANS061.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  062.模组8最高温度电池号            $    $               $    $  ANS062.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  063.模组8最高单节电池温度          $    $  degree C     $    $  ANS063.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  064.模组9最低电压电池编号          $    $               $    $  ANS064.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  065.模组9最低单节电池电压          $    $  V            $    $  ANS065.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  066.模组9最高电压电池号编号        $    $               $    $  ANS066.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  067.模组9最高单节电池电压          $    $  V            $    $  ANS067.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  068.模组9最低温度电池号            $    $               $    $  ANS068.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  069.模组9最低单节电池温度          $    $  degree C     $    $  ANS069.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  070.模组9最高温度电池号            $    $               $    $  ANS070.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  071.模组9最高单节电池温度          $    $  degree C     $    $  ANS071.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  072.模组10最低电压电池编号         $    $               $    $  ANS072.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  073.模组10最低单节电池电压         $    $  V            $    $  ANS073.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  074.模组10最高电压电池号编号       $    $               $    $  ANS074.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  075.模组10最高单节电池电压         $    $  V            $    $  ANS075.BYTE004  $  if((x2>0x13)||((x2==0x13)&&(x1>0x88)))y=@0108;else y=0.001*(x2*256+x1);
  $  076.模组10最低温度电池号           $    $               $    $  ANS076.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  077.模组10最低单节电池温度         $    $  degree C     $    $  ANS077.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;
  $  078.模组10最高温度电池号           $    $               $    $  ANS077.BYTE004  $  if(x>0x97) y=@0108;else y=x+1;
  $  079.模组10最高单节电池温度         $    $  degree C     $    $  ANS078.BYTE004  $  if(x>0xC8) y=@0108;else y=x-40;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:781 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
