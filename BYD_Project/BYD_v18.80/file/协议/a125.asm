
    车型ID：a125

    模拟：协议模拟-->a125

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~798

进入命令:

  $~  REQ000:790 02 10 01 00 00 00 00 00       $~  ANS000:798 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:790 02 3E 80 00 00 00 00 00       $!  ANS000:798 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:790 05 18 00 FF FF FF 00 00       $#  ANS000:798 05 18 00 FF FF FF 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/12000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:790 04 14 FF FF FF 00 00 00       $$  ANS000:798 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:790 03 22 00 01 00 00 00 00       $%  ANS000:798 03 22 00 01 00 00 00 00
  $%  REQ001:790 03 22 00 03 00 00 00 00       $%  ANS001:798 03 22 00 03 00 00 00 00

  $%  000:硬件日期:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  002:软件日期:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);
  $%  003:软件版本:        $%    $%  ANS001.BYTE007  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:790 03 22 00 04 00 00 00 00       $  ANS000:798 03 22 00 04 00 00 00 00
  $  REQ001:790 03 22 00 05 00 00 00 00       $  ANS001:798 03 22 00 05 00 00 00 00
  $  REQ002:790 03 22 00 06 00 00 00 00       $  ANS002:798 03 22 00 06 00 00 00 00
  $  REQ003:790 03 22 00 07 00 00 00 00       $  ANS003:798 03 22 00 07 00 00 00 00
  $  REQ004:790 03 22 00 08 00 00 00 00       $  ANS004:798 03 22 00 08 00 00 00 00
  $  REQ005:790 03 22 00 09 00 00 00 00       $  ANS005:798 03 22 00 09 00 00 00 00
  $  REQ006:790 03 22 00 0A 00 00 00 00       $  ANS006:798 03 22 00 0A 00 00 00 00
  $  REQ007:790 03 22 00 10 00 00 00 00       $  ANS007:798 03 22 00 10 00 00 00 00
  $  REQ008:790 03 22 00 11 00 00 00 00       $  ANS008:798 03 22 00 11 00 00 00 00
  $  REQ009:790 03 22 00 0C 00 00 00 00       $  ANS009:798 03 22 00 0C 00 00 00 00
  $  REQ010:790 03 22 00 0D 00 00 00 00       $  ANS010:798 03 22 00 0D 00 00 00 00
  $  REQ011:790 03 22 00 0E 00 00 00 00       $  ANS011:798 03 22 00 0E 00 00 00 00
  $  REQ012:790 03 22 00 0F 00 00 00 00       $  ANS012:798 03 22 00 0F 00 00 00 00

  $  000.P档锁定状态                         $    $        $    $  ANS000.BYTE004  $  if(x1==0x00)y=@002e;else if(x1==0x01)y=@017c;else if(x1==0x02)y=@017d;else if(x1==0x03)y=@017e;else if(x1==0x04)y=@017f;else y=@0108;
  $  001.驱动管或电机故障                    $    $        $    $  ANS001.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@011d;else y=@0108;
  $  002.备用霍尔信号                        $    $        $    $  ANS002.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@00cf;else y=@0108;
  $  003.位置霍尔信号                        $    $        $    $  ANS003.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@0687;else if(x1==0x02)y=@036a;else y=@0108;
  $  004.EEPROM存储状态                      $    $        $    $  ANS004.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@00b4;else y=@0108;
  $  005.缺相故障                            $    $        $    $  ANS005.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@0688;else if(x1==0x02)y=@0689;else if(x1==0x03)y=@068a;else if(x1==0x04)y=@068b;else if(x1==0x05)y=@068c;else if(x1==0x06)y=@068d;else if(x1==0x07)y=@068e;else y=@0108;
  $  006.与ABS(防抱死刹车系统)通讯故障       $    $        $    $  ANS006.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@00b4;else y=@0108;
  $  007.控制状态                            $    $        $    $  ANS007.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@0372;else if(x1==0x02)y=@0373;else y=@0108;
  $  008.与MG通讯故障                        $    $        $    $  ANS008.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@00b4;else y=@0108;
  $  009.驱动电压                            $    $  V     $    $  ANS009.BYTE004  $  if(x1<0x11) y=x1;else y=@010e;
  $  010.控制器电流                          $    $  A     $    $  ANS010.BYTE004  $  if(x1<0xFB) y=x1*0.1;else y=@010e;
  $  011.霍尔脉冲个数                        $    $        $    $  ANS011.BYTE004  $  if(x1<0x5B) y=x1;else y=@010e;
  $  012.反弹霍尔个数                        $    $        $    $  ANS012.BYTE004  $  if(x1<0x5B) y=x1;else y=@010e;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:790 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
