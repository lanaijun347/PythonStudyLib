
    车型ID：7227

    模拟：协议模拟-->7227

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K$~18DAFAD6

进入命令:

  $~  REQ000:18DAD6FA 02 10 01 00 00 00 00 00       $~  ANS000:18DAFAD6 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:18DAD6FA 02 3E 00 00 00 00 00 00       $!  ANS000:18DAFAD6 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:18DAD6FA 03 19 02 09 00 00 00 00       $#  ANS000:18DAFAD6 03 19 02 09 00 00 00 00

		控制公式：
			y=x1*0x10000+x2*0x100+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ab000000


;******************************************************************************************************************************************************

清除故障码:

		$$$$ 1.点火开关打开（ON（给车内所有电器供电）挡），发动机不启动（电动车为非Ready（随时可以启程）状态）。

  $$  REQ000:18DAD6FA 04 14 FF FF FF 00 00 00       $$  ANS000:18DAFAD6 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:18DAD6FA 03 22 F1 87 00 00 00 00       $%  ANS000:18DAFAD6 03 22 F1 87 00 00 00 00
  $%  REQ001:18DAD6FA 03 22 F1 8A 00 00 00 00       $%  ANS001:18DAFAD6 03 22 F1 8A 00 00 00 00
  $%  REQ002:18DAD6FA 03 22 F1 91 00 00 00 00       $%  ANS002:18DAFAD6 03 22 F1 91 00 00 00 00
  $%  REQ003:18DAD6FA 03 22 F1 94 00 00 00 00       $%  ANS003:18DAFAD6 03 22 F1 94 00 00 00 00
  $%  REQ004:18DAD6FA 03 22 F1 80 00 00 00 00       $%  ANS004:18DAFAD6 03 22 F1 80 00 00 00 00

  $%  000:零件号:              $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  001:供应商代码:          $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  002:硬件版本号:          $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:软件版本号:          $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:Boot软件标识:        $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:18DAD6FA 03 22 07 00 00 00 00 00       $  ANS000:18DAFAD6 03 22 07 00 00 00 00 00
  $  REQ001:18DAD6FA 03 22 07 01 00 00 00 00       $  ANS001:18DAFAD6 03 22 07 01 00 00 00 00
  $  REQ002:18DAD6FA 03 22 07 02 00 00 00 00       $  ANS002:18DAFAD6 03 22 07 02 00 00 00 00
  $  REQ003:18DAD6FA 03 22 07 03 00 00 00 00       $  ANS003:18DAFAD6 03 22 07 03 00 00 00 00
  $  REQ004:18DAD6FA 03 22 07 04 00 00 00 00       $  ANS004:18DAFAD6 03 22 07 04 00 00 00 00
  $  REQ005:18DAD6FA 03 22 07 05 00 00 00 00       $  ANS005:18DAFAD6 03 22 07 05 00 00 00 00
  $  REQ006:18DAD6FA 03 22 07 06 00 00 00 00       $  ANS006:18DAFAD6 03 22 07 06 00 00 00 00
  $  REQ007:18DAD6FA 03 22 07 07 00 00 00 00       $  ANS007:18DAFAD6 03 22 07 07 00 00 00 00
  $  REQ008:18DAD6FA 03 22 07 08 00 00 00 00       $  ANS008:18DAFAD6 03 22 07 08 00 00 00 00

  $  000.PDU(配电单元)故障等级             $    $       $    $  ANS000.BYTE004  $  y=x;
  $  001.PDU(配电单元)故障代码             $    $       $    $  ANS001.BYTE004  $  y=x;
  $  002.主回路主接触器状态                $    $       $    $  ANS002.BYTE004  $  y=x;
  $  003.辅助回路主接触器状态              $    $       $    $  ANS003.BYTE004  $  y=x;
  $  004.上装接触器状态                    $    $       $    $  ANS004.BYTE004  $  y=x;
  $  005.快充接触器状态                    $    $       $    $  ANS005.BYTE004  $  y=x;
  $  006.PTC(电加热器模块)接触器状态       $    $       $    $  ANS006.BYTE004  $  y=x;
  $  007.主驱高压回路上电状态              $    $       $    $  ANS007.BYTE004  $  y=x;
  $  008.辅驱高压回路上电状态              $    $       $    $  ANS008.BYTE004  $  y=x;

;******************************************************************************************************************************************************

