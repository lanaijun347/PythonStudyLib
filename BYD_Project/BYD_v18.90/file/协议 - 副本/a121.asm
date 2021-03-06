
    车型ID：a121

    模拟：协议模拟-->a121

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~76A

进入命令:

  $~  REQ000:762 02 10 01 00 00 00 00 00       $~  ANS000:76A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:762 02 3E 80 00 00 00 00 00       $!  ANS000:76A 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:762 05 18 00 FF FF FF 00 00       $#  ANS000:76A 05 18 00 FF FF FF 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0e000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:762 04 14 FF FF FF 00 00 00       $$  ANS000:76A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:762 03 22 00 01 00 00 00 00       $%  ANS000:76A 03 22 00 01 00 00 00 00
  $%  REQ001:762 03 22 00 03 00 00 00 00       $%  ANS001:76A 03 22 00 03 00 00 00 00

  $%  000:硬件日期:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%02d.%02d.%02d],x1,x2,x3);
  $%  002:软件日期:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);
  $%  003:软件版本:        $%    $%  ANS001.BYTE007  $%  y=SPRINTF([%02d.%02d.%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:762 03 22 00 0C 00 00 00 00       $  ANS000:76A 03 22 00 0C 00 00 00 00
  $  REQ001:762 03 22 00 0D 00 00 00 00       $  ANS001:76A 03 22 00 0D 00 00 00 00
  $  REQ002:762 03 22 00 0E 00 00 00 00       $  ANS002:76A 03 22 00 0E 00 00 00 00
  $  REQ003:762 03 22 00 0F 00 00 00 00       $  ANS003:76A 03 22 00 0F 00 00 00 00
  $  REQ004:762 03 22 00 10 00 00 00 00       $  ANS004:76A 03 22 00 10 00 00 00 00
  $  REQ005:762 03 22 00 12 00 00 00 00       $  ANS005:76A 03 22 00 12 00 00 00 00
  $  REQ006:762 03 22 00 13 00 00 00 00       $  ANS006:76A 03 22 00 13 00 00 00 00
  $  REQ007:762 03 22 00 14 00 00 00 00       $  ANS007:76A 03 22 00 14 00 00 00 00
  $  REQ008:762 03 22 00 04 00 00 00 00       $  ANS008:76A 03 22 00 04 00 00 00 00
  $  REQ009:762 03 22 00 05 00 00 00 00       $  ANS009:76A 03 22 00 05 00 00 00 00
  $  REQ010:762 03 22 00 06 00 00 00 00       $  ANS010:76A 03 22 00 06 00 00 00 00
  $  REQ011:762 03 22 00 07 00 00 00 00       $  ANS011:76A 03 22 00 07 00 00 00 00
  $  REQ012:762 03 22 00 08 00 00 00 00       $  ANS012:76A 03 22 00 08 00 00 00 00
  $  REQ013:762 03 22 00 09 00 00 00 00       $  ANS013:76A 03 22 00 09 00 00 00 00
  $  REQ014:762 03 22 00 0A 00 00 00 00       $  ANS014:76A 03 22 00 0A 00 00 00 00
  $  REQ015:762 03 22 00 15 00 00 00 00       $  ANS015:76A 03 22 00 15 00 00 00 00
  $  REQ016:762 03 22 00 16 00 00 00 00       $  ANS016:76A 03 22 00 16 00 00 00 00
  $  REQ017:762 03 22 00 17 00 00 00 00       $  ANS017:76A 03 22 00 17 00 00 00 00
  $  REQ018:762 03 22 00 18 00 00 00 00       $  ANS018:76A 03 22 00 18 00 00 00 00
  $  REQ019:762 03 22 00 19 00 00 00 00       $  ANS019:76A 03 22 00 19 00 00 00 00
  $  REQ020:762 03 22 00 1A 00 00 00 00       $  ANS020:76A 03 22 00 1A 00 00 00 00
  $  REQ021:762 03 22 00 1B 00 00 00 00       $  ANS021:76A 03 22 00 1B 00 00 00 00
  $  REQ022:762 03 22 00 1C 00 00 00 00       $  ANS022:76A 03 22 00 1C 00 00 00 00
  $  REQ023:762 03 22 00 1D 00 00 00 00       $  ANS023:76A 03 22 00 1D 00 00 00 00
  $  REQ024:762 03 22 00 1E 00 00 00 00       $  ANS024:76A 03 22 00 1E 00 00 00 00
  $  REQ025:762 03 22 00 1F 00 00 00 00       $  ANS025:76A 03 22 00 1F 00 00 00 00
  $  REQ026:762 03 22 00 20 00 00 00 00       $  ANS026:76A 03 22 00 20 00 00 00 00

  $  000.电压                              $    $  V            $    $  ANS000.BYTE004  $  y=x1;
  $  001.1号单体电压                       $    $  V            $    $  ANS001.BYTE004  $  y=x1*0.1;
  $  002.2号单体电压                       $    $  V            $    $  ANS002.BYTE004  $  y=x1*0.1;
  $  003.3号单体电压                       $    $  V            $    $  ANS003.BYTE004  $  y=x1*0.1;
  $  004.4号单体电压                       $    $  V            $    $  ANS004.BYTE004  $  y=x1*0.1;
  $  005.平均温度                          $    $  degree C     $    $  ANS005.BYTE004  $  if(x1<0xDD) y=x1-60;else y=@0494;
  $  006.极柱温度                          $    $  degree C     $    $  ANS006.BYTE004  $  if(x1<0xDD) y=x1-60;else y=@0494;
  $  007.MOS(金属—绝缘体半导体)温度       $    $  degree C     $    $  ANS007.BYTE004  $  if(x1<0xDD) y=x1-60;else y=@0494;
  $  008.充电允许                          $    $               $    $  ANS008.BYTE004  $  if(x1==0x00)y=@0196;else if(x1==0x01)y=@0195;else y=@00d8;
  $  009.放电允许                          $    $               $    $  ANS009.BYTE004  $  if(x1==0x00)y=@0196;else if(x1==0x01)y=@0195;else y=@00d8;
  $  010.铁电池故障                        $    $               $    $  ANS010.BYTE004  $  if(x1==0x00)y=@0078;else if(x1==0x01)y=@047c;else y=@00d8;
  $  011.SOC(荷电状态)请求充电             $    $               $    $  ANS011.BYTE004  $  if(x1==0x00)y=@0078;else if(x1==0x01)y=@0145;else y=@00d8;
  $  012.充电接触器请求                    $    $               $    $  ANS012.BYTE004  $  if(x1==0x00)y=@0003;else if(x1==0x01)y=@0498;else y=@00d8;
  $  013.起停限制                          $    $               $    $  ANS013.BYTE004  $  if(x1==0x00)y=@0003;else if(x1==0x01)y=@0497;else y=@00d8;
  $  014.充放电状态                        $    $               $    $  ANS014.BYTE004  $  if(x1==0x00)y=@0495;else if(x1==0x01)y=@0496;else y=@00d8;
  $  015.1号电池均衡电路状态               $    $               $    $  ANS015.BYTE004  $  if(x1==0x00)y=@0078;else if(x1==0x01)y=@0087;else y=@00d8;
  $  016.2号电池均衡电路状态               $    $               $    $  ANS016.BYTE004  $  if(x1==0x00)y=@0078;else if(x1==0x01)y=@0087;else y=@00d8;
  $  017.3号电池均衡电路状态               $    $               $    $  ANS017.BYTE004  $  if(x1==0x00)y=@0078;else if(x1==0x01)y=@0087;else y=@00d8;
  $  018.4号电池均衡电路状态               $    $               $    $  ANS018.BYTE004  $  if(x1==0x00)y=@0078;else if(x1==0x01)y=@0087;else y=@00d8;
  $  019.1号电池均衡状态                   $    $               $    $  ANS019.BYTE004  $  if(x1==0x00)y=@001e;else if(x1==0x01)y=@00d9;else y=@00d8;
  $  020.2号电池均衡状态                   $    $               $    $  ANS020.BYTE004  $  if(x1==0x00)y=@001e;else if(x1==0x01)y=@00d9;else y=@00d8;
  $  021.3号电池均衡状态                   $    $               $    $  ANS021.BYTE004  $  if(x1==0x00)y=@001e;else if(x1==0x01)y=@00d9;else y=@00d8;
  $  022.4号电池均衡状态                   $    $               $    $  ANS022.BYTE004  $  if(x1==0x00)y=@001e;else if(x1==0x01)y=@00d9;else y=@00d8;
  $  023.1号电池均衡累积时间               $    $  分钟         $    $  ANS023.BYTE004  $  y=x1+x2*256;
  $  024.2号电池均衡累积时间               $    $  分钟         $    $  ANS024.BYTE004  $  y=x1+x2*256;
  $  025.3号电池均衡累积时间               $    $  分钟         $    $  ANS025.BYTE004  $  y=x1+x2*256;
  $  026.4号电池均衡累积时间               $    $  分钟         $    $  ANS026.BYTE004  $  y=x1+x2*256;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:762 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
