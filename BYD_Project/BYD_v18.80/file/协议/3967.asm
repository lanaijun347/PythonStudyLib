
    车型ID：3967

    模拟：协议模拟-->3967

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K$~7AF

进入命令:

  $~  REQ000:7A7 02 10 01 00 00 00 00 00       $~  ANS000:7AF 02 10 01 00 00 00 00 00
  $~  REQ001:7A7 02 10 03 00 00 00 00 00       $~  ANS001:7AF 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:7A7 02 3E 00 00 00 00 00 00       $!  ANS000:7AF 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A7 04 18 00 00 00 00 00 00       $#  ANS000:7AF 04 18 00 00 00 00 00 00

		控制公式：
			y=((x1<<8)+x2);

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/10050000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A7 03 14 00 00 00 00 00 00       $$  ANS000:7AF 03 14 00 00 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A7 03 22 00 01 00 00 00 00       $%  ANS000:7AF 03 22 00 01 00 00 00 00
  $%  REQ001:7A7 03 22 00 03 00 00 00 00       $%  ANS001:7AF 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%02d.%02d.%02d],X1,X2,X3);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d.%02d.%02d],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A7 03 22 00 04 00 00 00 00       $  ANS000:7AF 03 22 00 04 00 00 00 00
  $  REQ001:7A7 03 22 00 05 00 00 00 00       $  ANS001:7AF 03 22 00 05 00 00 00 00
  $  REQ002:7A7 03 22 00 06 00 00 00 00       $  ANS002:7AF 03 22 00 06 00 00 00 00
  $  REQ003:7A7 03 22 00 07 00 00 00 00       $  ANS003:7AF 03 22 00 07 00 00 00 00
  $  REQ004:7A7 03 22 00 08 00 00 00 00       $  ANS004:7AF 03 22 00 08 00 00 00 00
  $  REQ005:7A7 03 22 00 09 00 00 00 00       $  ANS005:7AF 03 22 00 09 00 00 00 00
  $  REQ006:7A7 03 22 00 0A 00 00 00 00       $  ANS006:7AF 03 22 00 0A 00 00 00 00
  $  REQ007:7A7 03 22 00 0B 00 00 00 00       $  ANS007:7AF 03 22 00 0B 00 00 00 00

  $  000.前制动回路气压信号       $    $  Mpa     $    $  ANS000.BYTE004  $  if((x>0x64)||(x==0x00))y=@0108;else y=0.01*x;
  $  001.前制动回路气压           $    $          $    $  ANS001.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@06c9;else if(x==0x02)y=@067b;else y=@0108;
  $  002.后制动回路气压信号       $    $  Mpa     $    $  ANS002.BYTE004  $  if((x>0x64)||(x==0x00))y=@0108;else y=0.01*x;
  $  003.后制动回路气压           $    $          $    $  ANS003.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@06c9;else if(x==0x02)y=@067b;else y=@0108;
  $  004.制动踏板状态             $    $          $    $  ANS004.BYTE004  $  if(x==0x00)y=@0004;else if(x==0x01)y=@0667;else y=@0108;
  $  005.驻车信号                 $    $          $    $  ANS005.BYTE004  $  if(x==0x00)y=@0004;else if(x==0x01)y=@0187;else y=@0108;
  $  006.故障检测标志位           $    $          $    $  ANS006.BYTE004  $  if(x==0x01)y=@06ca;else if(x==0x02)y=@06cb;else if(x==0x03)y=@06cc;else y=@0108;
  $  007.请求档位                 $    $          $    $  ANS007.BYTE004  $  if(x==0x01)y=@00d7;else if(x==0x02)y=@0071;else if(x==0x03)y=@0072;else if(x==0x04)y=@00d8;else if(x==0x05)y=@06c8;else y=@0108;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A7 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
