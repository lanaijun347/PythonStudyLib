
    车型ID：7222

    模拟：协议模拟-->7222

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K$~18DAFA21

进入命令:

  $~  REQ000:18DA21FA 02 10 01 00 00 00 00 00       $~  ANS000:18DAFA21 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:18DA21FA 02 3E 00 00 00 00 00 00       $!  ANS000:18DAFA21 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:18DA21FA 03 19 02 09 00 00 00 00       $#  ANS000:18DAFA21 03 19 02 09 00 00 00 00

		控制公式：
			y=x1*0x10000+x2*0x100+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/a6000000


;******************************************************************************************************************************************************

清除故障码:

		$$$$ 1.点火开关打开（ON（给车内所有电器供电）挡），发动机不启动（电动车为非Ready（随时可以启程）状态）。

  $$  REQ000:18DA21FA 04 14 FF FF FF 00 00 00       $$  ANS000:18DAFA21 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:18DA21FA 03 22 F1 80 00 00 00 00       $%  ANS000:18DAFA21 03 22 F1 80 00 00 00 00
  $%  REQ001:18DA21FA 03 22 F1 87 00 00 00 00       $%  ANS001:18DAFA21 03 22 F1 87 00 00 00 00
  $%  REQ002:18DA21FA 03 22 F1 8A 00 00 00 00       $%  ANS002:18DAFA21 03 22 F1 8A 00 00 00 00
  $%  REQ003:18DA21FA 03 22 F1 91 00 00 00 00       $%  ANS003:18DAFA21 03 22 F1 91 00 00 00 00
  $%  REQ004:18DA21FA 03 22 F1 94 00 00 00 00       $%  ANS004:18DAFA21 03 22 F1 94 00 00 00 00

  $%  000:启动软件识别:                             $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $%  001:汽车制造商备用零件号:                     $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  002:系统供应商标识符:                         $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  003:车辆编号制造商ECU(电子控制器)硬件:        $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:系统供应商ECU(电子控制器)软件号:          $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:18DA21FA 03 22 60 00 00 00 00 00       $  ANS000:18DAFA21 03 22 60 00 00 00 00 00
  $  REQ001:18DA21FA 03 22 60 01 00 00 00 00       $  ANS001:18DAFA21 03 22 60 01 00 00 00 00
  $  REQ002:18DA21FA 03 22 60 02 00 00 00 00       $  ANS002:18DAFA21 03 22 60 02 00 00 00 00
  $  REQ003:18DA21FA 03 22 60 04 00 00 00 00       $  ANS003:18DAFA21 03 22 60 04 00 00 00 00
  $  REQ004:18DA21FA 03 22 60 05 00 00 00 00       $  ANS004:18DAFA21 03 22 60 05 00 00 00 00
  $  REQ005:18DA21FA 03 22 60 06 00 00 00 00       $  ANS005:18DAFA21 03 22 60 06 00 00 00 00
  $  REQ006:18DA21FA 03 22 60 07 00 00 00 00       $  ANS006:18DAFA21 03 22 60 07 00 00 00 00

  $  000.RF(射频)钥匙数量        $    $       $    $  ANS000.BYTE004  $  y=x1;
  $  001.车辆运行模式            $    $       $    $  ANS001.BYTE004  $  if(x1==1)y=@005c;else if(x1==2)y=@005d;else y=@0015;
  $  002.左侧转向灯              $    $       $    $  ANS002.BYTE004  $  if(((x>>0)&1))y=@0053;else y=@0054;
  $  003.右侧转向灯              $    $       $    $  ANS002.BYTE004  $  if(((x>>1)&1))y=@0053;else y=@0054;
  $  004.危险灯                  $    $       $    $  ANS002.BYTE004  $  if(((x>>7)&1))y=@0053;else y=@0054;
  $  005.左前车窗升高            $    $       $    $  ANS003.BYTE004  $  if(((x>>0)&1))y=@0053;else y=@0054;
  $  006.右前车窗升高            $    $       $    $  ANS003.BYTE004  $  if(((x>>1)&1))y=@0053;else y=@0054;
  $  007.左前车窗降低            $    $       $    $  ANS003.BYTE004  $  if(((x>>4)&1))y=@0053;else y=@0054;
  $  008.右前车窗降低            $    $       $    $  ANS003.BYTE004  $  if(((x>>5)&1))y=@0053;else y=@0054;
  $  009.中控锁                  $    $       $    $  ANS004.BYTE004  $  if(((x>>0)&1))y=@006a;else y=@006b;
  $  010.输入状态（车门）        $    $       $    $  ANS005.BYTE004  $  if(x1)y=@0065;else y=@0066;
  $  011.IGN(钥匙点火开关)       $    $       $    $  ANS006.BYTE004  $  if(((x>>3)&1))y=@0053;else y=@0054;

;******************************************************************************************************************************************************

