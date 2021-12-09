
    车型ID：722a

    模拟：协议模拟-->722a

;******************************************************************************************************************************************************

    通讯线: $~07$~07$~10400

进入命令:

  $~  REQ000:81 28 F1 81 1B       $~  ANS000:81 28 F1 81 1B
  $~  REQ001:82 28 F1 10 81 2C       $~  ANS001:82 28 F1 10 81 2C

空闲命令:

  $!  REQ000:81 28 F1 3E D8       $!  ANS000:81 28 F1 3E D8

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:84 28 F1 18 02 FF FF B5       $#  ANS000:84 28 F1 18 02 FF FF B5

		控制公式：
			y=x1*0x100+(x2&0x0f); 

  ANS000.BYTE04 控制故障码个数，从$#ANS000.BYTE5$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/ae2a0000_1BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="15"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

		$$$$ 1.点火开关打开（ON（给车内所有电器供电）挡），发动机不启动（电动车为非Ready（随时可以启程）状态）。

  $$  REQ000:83 28 F1 14 FF FF AE       $$  ANS000:83 28 F1 14 FF FF AE

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:82 28 F1 1A 8A 3F       $%  ANS000:82 28 F1 1A 8A 3F
  $%  REQ001:82 28 F1 1A 8C 41       $%  ANS001:82 28 F1 1A 8C 41
  $%  REQ002:82 28 F1 1A 94 49       $%  ANS002:82 28 F1 1A 94 49
  $%  REQ003:82 28 F1 1A 98 4D       $%  ANS003:82 28 F1 1A 98 4D

  $%  000:工厂代码:                        $%    $%  ANS000.BYTE005  $%  y=HEX(x1,x2);
  $%  001:产品编号:                        $%    $%  ANS000.BYTE007  $%  y=HEX(x1,x2,x3,x4);
  $%  002:版本:                            $%    $%  ANS000.BYTE012  $%  y=HEX(x1);
  $%  003:条形码:                          $%    $%  ANS000.BYTE013  $%  y=HEX(x1,x2,x3,x4,x5,x6);
  $%  004:生产日期:                        $%    $%  ANS000.BYTE019  $%  y=HEX(x1,x2,x3,x4);
  $%  005:参数版本:                        $%    $%  ANS000.BYTE023  $%  y=HEX(x1,x2,x3,x4,x5);
  $%  006:生产代码:                        $%    $%  ANS000.BYTE029  $%  y=HEX(x1,x2);
  $%  007:系统变体:                        $%    $%  ANS001.BYTE006  $%  if(x1==1) y=@0046; else if(x1==2) y=@0047; else if(x1==3) y=@0048; else if(x1==4) y=@0049; else if(x1==5) y=@004a; else if(x1==6) y=@004b; else if(x1==7) y=@004c; else if(x1==8) y=@004d; else if(x1==9) y=@004e;else y=@0015;
  $%  008:诊断子版本:                      $%    $%  ANS001.BYTE007  $%  y=HEX(x1);
  $%  009:诊断主版本:                      $%    $%  ANS001.BYTE008  $%  if(x1<2) y=@004f; else y=@0050;
  $%  010:ECU(电子控制器)软件号:           $%    $%  ANS002.BYTE005  $%  y=ASCII(x1,x2,x3,x4);
  $%  011:维修店代码或测试仪序列号:        $%    $%  ANS003.BYTE005  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:82 28 F1 21 FA B6       $  ANS000:82 28 F1 21 FA B6

  $  000.左桥1轮速(A1l)                  $    $  km/h     $    $  ANS000.BYTE005  $  y=(x1+x2*0x100)/94;
  $  001.右桥1轮速(A1r)                  $    $  km/h     $    $  ANS000.BYTE007  $  y=(x1+x2*0x100)/94;
  $  002.左桥2轮速(A2l)                  $    $  km/h     $    $  ANS000.BYTE009  $  y=(x1+x2*0x100)/94;
  $  003.右桥2轮速(A2r)                  $    $  km/h     $    $  ANS000.BYTE011  $  y=(x1+x2*0x100)/94;
  $  004.左桥1最大传感器电压(A1l)        $    $  V        $    $  ANS000.BYTE017  $  y=x1*0.02;
  $  005.左桥1最小传感器电压(A1l)        $    $  V        $    $  ANS000.BYTE018  $  y=x1*0.02;
  $  006.右桥1最大传感器电压(A1r)        $    $  V        $    $  ANS000.BYTE019  $  y=x1*0.02;
  $  007.右桥1最小传感器电压(A1r)        $    $  V        $    $  ANS000.BYTE020  $  y=x1*0.02;
  $  008.左桥2最大传感器电压(A2l)        $    $  V        $    $  ANS000.BYTE021  $  y=x1*0.02;
  $  009.左桥2最小传感器电压(A2l)        $    $  V        $    $  ANS000.BYTE022  $  y=x1*0.02;
  $  010.右桥2最大传感器电压(A2r)        $    $  V        $    $  ANS000.BYTE023  $  y=x1*0.02;
  $  011.右桥2最小传感器电压(A2r)        $    $  V        $    $  ANS000.BYTE024  $  y=x1*0.02;
  $  012.电源电压1 (Uvent)               $    $  V        $    $  ANS000.BYTE029  $  y=x1*0.141;
  $  013.电源电压2 (Ues)                 $    $  V        $    $  ANS000.BYTE030  $  y=x1*0.07;
  $  014.ASR(牵引力控制系统)灯状态       $    $           $    $  ANS000.BYTE031  $  if(((x1>>6)&1)==1) y=@0001;else y=@0000;
  $  015.警告灯状态                      $    $           $    $  ANS000.BYTE031  $  if(((x1>>5)&1)==1) y=@0001;else y=@0000;

;******************************************************************************************************************************************************

