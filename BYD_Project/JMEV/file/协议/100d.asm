
    车型ID：100d

    模拟：协议模拟-->100d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E4

进入命令:

  $~  REQ000:754 02 10 01 00 00 00 00 00       $~  ANS000:7E4 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:754 02 3E 00 00 00 00 00 00       $!  ANS000:7E4 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:754 03 19 02 FF 00 00 00 00       $#  ANS000:7E4 03 19 02 FF 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0d000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:754 04 14 FF FF FF 00 00 00       $$  ANS000:7E4 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:754 03 22 F1 95 00 00 00 00       $%  ANS000:7E4 03 22 F1 95 00 00 00 00

  $%  000:软件版本号:        $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:754 03 22 19 00 00 00 00 00       $  ANS000:7E4 03 22 19 00 00 00 00 00
  $  REQ001:754 03 22 19 01 00 00 00 00       $  ANS001:7E4 03 22 19 01 00 00 00 00
  $  REQ002:754 03 22 19 02 00 00 00 00       $  ANS002:7E4 03 22 19 02 00 00 00 00
  $  REQ003:754 03 22 19 03 00 00 00 00       $  ANS003:7E4 03 22 19 03 00 00 00 00
  $  REQ004:754 03 22 19 04 00 00 00 00       $  ANS004:7E4 03 22 19 04 00 00 00 00
  $  REQ005:754 03 22 19 05 00 00 00 00       $  ANS005:7E4 03 22 19 05 00 00 00 00
  $  REQ006:754 03 22 19 06 00 00 00 00       $  ANS006:7E4 03 22 19 06 00 00 00 00
  $  REQ007:754 03 22 19 07 00 00 00 00       $  ANS007:7E4 03 22 19 07 00 00 00 00
  $  REQ008:754 03 22 19 08 00 00 00 00       $  ANS008:7E4 03 22 19 08 00 00 00 00

  $  000.左电机位置                        $    $  1        $    $  ANS000.BYTE004  $  y=(x1*256+x2)*1;
  $  001.右电机位置                        $    $  1        $    $  ANS001.BYTE004  $  y=(x1*256+x2)*1;
  $  002.电池电压                          $    $  0.1V     $    $  ANS002.BYTE004  $  y=x*0.1;
  $  003.拥有设定状态                      $    $  1        $    $  ANS003.BYTE004  $  y=(x1*256+x2)*1;
  $  004.键状态                            $    $  1        $    $  ANS004.BYTE004  $  y=x*1;
  $  005.锁柜位置                          $    $  1        $    $  ANS005.BYTE004  $  y=x*1;
  $  006.左电机电流                        $    $  0.1A     $    $  ANS006.BYTE004  $  y=x*0.1;
  $  007.右电机电流                        $    $  0.1A     $    $  ANS007.BYTE004  $  y=x*0.1;
  $  008.PLG(电动后背门模块)位置状态       $    $  1        $    $  ANS008.BYTE004  $  y=x*1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:754 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
