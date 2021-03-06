
    车型ID：2c90

    模拟：协议模拟-->2c90

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~730

进入命令:

  $~  REQ000:720 02 10 01 00 00 00 00 00       $~  ANS000:730 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:720 02 3E 00 00 00 00 00 00       $!  ANS000:730 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:720 03 19 02 FF 00 00 00 00       $#  ANS000:730 03 19 02 FF 00 00 00 00

		控制公式：
			if((x4&0x09)==0x09)y=(x1<<16)+(x2<<8)+x3;else y=0; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/7b000000


  $#  01.读历史故障码
  $#  REQ000:720 03 19 02 FF 00 00 00 00       $#  ANS000:730 03 19 02 FF 00 00 00 00

		控制公式：
			if((x4&0x09)==0x08)y=(x1<<16)+(x2<<8)+x3;else y=0; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/7b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:720 04 14 FF FF FF 00 00 00       $$  ANS000:730 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:720 03 22 F1 87 00 00 00 00       $%  ANS000:730 03 22 F1 87 00 00 00 00
  $%  REQ001:720 03 22 F1 8A 00 00 00 00       $%  ANS001:730 03 22 F1 8A 00 00 00 00
  $%  REQ002:720 03 22 F1 91 00 00 00 00       $%  ANS002:730 03 22 F1 91 00 00 00 00
  $%  REQ003:720 03 22 F1 94 00 00 00 00       $%  ANS003:730 03 22 F1 94 00 00 00 00

  $%  000:客户零件号:                                 $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  001:系统供应商代码:                             $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3);
  $%  002:主机厂ECU(电子控制器)硬件号:                $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:系统供应商ECU(电子控制器)软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.基本数据流
  $  00.基本数据流
  $  REQ000:720 03 22 30 03 00 00 00 00       $  ANS000:730 03 22 30 03 00 00 00 00
  $  REQ001:720 03 22 30 04 00 00 00 00       $  ANS001:730 03 22 30 04 00 00 00 00
  $  REQ002:720 03 22 30 05 00 00 00 00       $  ANS002:730 03 22 30 05 00 00 00 00
  $  REQ003:720 03 22 30 06 00 00 00 00       $  ANS003:730 03 22 30 06 00 00 00 00
  $  REQ004:720 03 22 30 07 00 00 00 00       $  ANS004:730 03 22 30 07 00 00 00 00
  $  REQ005:720 03 22 30 0B 00 00 00 00       $  ANS005:730 03 22 30 0B 00 00 00 00
  $  REQ006:720 03 22 D0 00 00 00 00 00       $  ANS006:730 03 22 D0 00 00 00 00 00
  $  REQ007:720 03 22 D0 01 00 00 00 00       $  ANS007:730 03 22 D0 01 00 00 00 00
  $  REQ008:720 03 22 30 01 00 00 00 00       $  ANS008:730 03 22 30 01 00 00 00 00
  $  REQ009:720 03 22 30 02 00 00 00 00       $  ANS009:730 03 22 30 02 00 00 00 00
  $  REQ010:720 03 22 30 09 00 00 00 00       $  ANS010:730 03 22 30 09 00 00 00 00
  $  REQ011:720 03 22 30 0A 00 00 00 00       $  ANS011:730 03 22 30 0A 00 00 00 00

  $  000.左前轮速传感器              $    $  km/h     $    $  ANS000.BYTE004  $  y=(x1*0x100+x2)*0.0563;
  $  001.右前轮速传感器              $    $  km/h     $    $  ANS001.BYTE004  $  y=(x1*0x100+x2)*0.0563;
  $  002.左后轮速传感器              $    $  km/h     $    $  ANS002.BYTE004  $  y=(x1*0x100+x2)*0.0563;
  $  003.右后轮速传感器              $    $  km/h     $    $  ANS003.BYTE004  $  y=(x1*0x100+x2)*0.0563;
  $  004.左前输入阀                  $    $           $    $  ANS004.BYTE004  $  if(((x>>0)&1)) y=@0053;else y=@0054;
  $  005.左前输出阀                  $    $           $    $  ANS004.BYTE004  $  if(((x>>1)&1)) y=@0053;else y=@0054;
  $  006.右前输入阀                  $    $           $    $  ANS004.BYTE004  $  if(((x>>2)&1)) y=@0053;else y=@0054;
  $  007.右前输出阀                  $    $           $    $  ANS004.BYTE004  $  if(((x>>3)&1)) y=@0053;else y=@0054;
  $  008.左后输入阀                  $    $           $    $  ANS004.BYTE004  $  if(((x>>4)&1)) y=@0053;else y=@0054;
  $  009.左后输出阀                  $    $           $    $  ANS004.BYTE004  $  if(((x>>5)&1)) y=@0053;else y=@0054;
  $  010.右后输入阀                  $    $           $    $  ANS004.BYTE004  $  if(((x>>6)&1)) y=@0053;else y=@0054;
  $  011.右后输出阀                  $    $           $    $  ANS004.BYTE004  $  if(((x>>7)&1)) y=@0053;else y=@0054;
  $  012.制动踏板开关                $    $           $    $  ANS005.BYTE004  $  if(0x01==x)y=@0053;else if(0==x)y=@0054;else y=@0015;
  $  013.电池电压                    $    $  V        $    $  ANS006.BYTE004  $  y=x*0.1;
  $  014.车速                        $    $  km/h     $    $  ANS007.BYTE004  $  y=(x1*0x100+x2)/16;
  $  015.液压模块加注状态            $    $           $    $  ANS008.BYTE004  $  if(0x00==x)y=@00d2;else if(0x01==x)y=@01f7;else if(0x02==x)y=@01f8;else if(0xff==x)y=@0631;else y=@0015;
  $  016.EOL(整车下线)测试状态       $    $           $    $  ANS009.BYTE004  $  if(0x00==x)y=@062e;else if(0x01==x)y=@062f;else if(0x02==x)y=@0630;else if(0xff==x)y=@0631;else y=@0015;
  $  017.阀继电器状态                $    $           $    $  ANS010.BYTE004  $  if(0x01==x)y=@0053;else if(0==x)y=@0054;else y=@0015;
  $  018.泵电机状态                  $    $           $    $  ANS011.BYTE004  $  if(0x01==x)y=@0053;else if(0==x)y=@0054;else y=@0015;

  $)  01.软件配置信息
  $  01.软件配置信息
  $  REQ000:720 03 22 30 11 00 00 00 00       $  ANS000:730 03 22 30 11 00 00 00 00

  $  000.软件配置条码       $    $       $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  001.车型               $    $       $    $  ANS000.BYTE010  $  if(0x00==(x&0x18))y=@0629;else if(0x08==(x&0x18))y=@0632;else y=@0015;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:720 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
