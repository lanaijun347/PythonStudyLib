
    车型ID：3c03

    模拟：协议模拟-->3c03

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~724

进入命令:

  $~  REQ000:784 02 10 03 00 00 00 00 00       $~  ANS000:724 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:784 02 3E 00 00 00 00 00 00       $!  ANS000:724 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:784 03 19 02 09 00 00 00 00       $#  ANS000:724 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+(x3<<0); 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/03000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:784 04 14 FF FF FF 00 00 00       $$  ANS000:724 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:784 03 22 F1 87 00 00 00 00       $%  ANS000:724 03 22 F1 87 00 00 00 00
  $%  REQ001:784 03 22 F1 8A 00 00 00 00       $%  ANS001:724 03 22 F1 8A 00 00 00 00
  $%  REQ002:784 03 22 F1 91 00 00 00 00       $%  ANS002:724 03 22 F1 91 00 00 00 00
  $%  REQ003:784 03 22 F1 94 00 00 00 00       $%  ANS003:724 03 22 F1 94 00 00 00 00

  $%  000:产品零件号:           $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  001:系统供应商代码:       $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3);
  $%  002:硬件版本号:           $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  003:软件版本号:           $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:784 03 22 60 01 00 00 00 00       $  ANS000:724 03 22 60 01 00 00 00 00
  $  REQ001:784 03 22 60 07 00 00 00 00       $  ANS001:724 03 22 60 07 00 00 00 00
  $  REQ002:784 03 22 60 26 00 00 00 00       $  ANS002:724 03 22 60 26 00 00 00 00
  $  REQ003:784 03 22 60 27 00 00 00 00       $  ANS003:724 03 22 60 27 00 00 00 00
  $  REQ004:784 03 22 60 28 00 00 00 00       $  ANS004:724 03 22 60 28 00 00 00 00
  $  REQ005:784 03 22 60 29 00 00 00 00       $  ANS005:724 03 22 60 29 00 00 00 00
  $  REQ006:784 03 22 60 16 00 00 00 00       $  ANS006:724 03 22 60 16 00 00 00 00
  $  REQ007:784 03 22 60 30 00 00 00 00       $  ANS007:724 03 22 60 30 00 00 00 00
  $  REQ008:784 03 22 60 31 00 00 00 00       $  ANS008:724 03 22 60 31 00 00 00 00
  $  REQ009:784 03 22 60 32 00 00 00 00       $  ANS009:724 03 22 60 32 00 00 00 00
  $  REQ010:784 03 22 60 33 00 00 00 00       $  ANS010:724 03 22 60 33 00 00 00 00

  $  000.车辆模式                        $    $       $    $  ANS000.BYTE004  $  if(x==0x01) y=@007c;else if(x==0x02) y=@007d;else y=@0003;
  $  001.插入钥匙                        $    $       $    $  ANS001.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  002.ACC(弱电)打开                   $    $       $    $  ANS001.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  003.点火开关打开                    $    $       $    $  ANS001.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  004.后视镜记忆 1                    $    $       $    $  ANS002.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  005.后视镜记忆 2                    $    $       $    $  ANS002.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  006.后视镜记忆 3                    $    $       $    $  ANS002.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  007.后视镜记忆 set                  $    $       $    $  ANS002.BYTE004  $  if(((x>>3)&1))y=@002d;else y=@002c;
  $  008.左侧后视镜调节位置(上/下)       $    $       $    $  ANS002.BYTE005  $  y=x;
  $  009.左侧后视镜调节位置(左/右)       $    $       $    $  ANS002.BYTE006  $  y=x;
  $  010.右侧后视镜调节位置(上/下)       $    $       $    $  ANS002.BYTE007  $  y=x;
  $  011.右侧后视镜调节位置(左/右)       $    $       $    $  ANS002.BYTE008  $  y=x;
  $  012.后视镜向上调节                  $    $       $    $  ANS003.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  013.后视镜向下调节                  $    $       $    $  ANS003.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  014.后视镜向左调节                  $    $       $    $  ANS003.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  015.后视镜向右调节                  $    $       $    $  ANS003.BYTE004  $  if(((x>>3)&1))y=@002d;else y=@002c;
  $  016.选择左侧后视镜                  $    $       $    $  ANS003.BYTE004  $  if(((x>>4)&1))y=@002d;else y=@002c;
  $  017.选择右侧后视镜                  $    $       $    $  ANS003.BYTE004  $  if(((x>>5)&1))y=@002d;else y=@002c;
  $  018.中控锁闭锁                      $    $       $    $  ANS004.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  019.中控锁解锁                      $    $       $    $  ANS004.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  020.机械钥匙闭锁                    $    $       $    $  ANS004.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  021.机械钥匙解锁                    $    $       $    $  ANS004.BYTE004  $  if(((x>>3)&1))y=@002d;else y=@002c;
  $  022.篡改                            $    $       $    $  ANS004.BYTE004  $  if(((x>>4)&1))y=@002d;else y=@002c;
  $  023.方向盘加热                      $    $       $    $  ANS005.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  024.碰撞                            $    $       $    $  ANS006.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  025.后遮阳帘                        $    $       $    $  ANS007.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  026.后视镜折叠                      $    $       $    $  ANS008.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  027.后视镜展开                      $    $       $    $  ANS008.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  028.左前车窗升起                    $    $       $    $  ANS009.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  029.左前车窗降下                    $    $       $    $  ANS009.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  030.右前车窗升起                    $    $       $    $  ANS009.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  031.右前车窗降下                    $    $       $    $  ANS009.BYTE004  $  if(((x>>3)&1))y=@002d;else y=@002c;
  $  032.左后车窗升起                    $    $       $    $  ANS009.BYTE004  $  if(((x>>4)&1))y=@002d;else y=@002c;
  $  033.左后车窗降下                    $    $       $    $  ANS009.BYTE004  $  if(((x>>5)&1))y=@002d;else y=@002c;
  $  034.右后车窗升起                    $    $       $    $  ANS009.BYTE004  $  if(((x>>6)&1))y=@002d;else y=@002c;
  $  035.右后车窗降下                    $    $       $    $  ANS009.BYTE004  $  if(((x>>7)&1))y=@002d;else y=@002c;
  $  036.右前车窗升起                    $    $       $    $  ANS009.BYTE005  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  037.右前车窗降下                    $    $       $    $  ANS009.BYTE005  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  038.左后车窗升起                    $    $       $    $  ANS009.BYTE005  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  039.左后车窗降下                    $    $       $    $  ANS009.BYTE005  $  if(((x>>3)&1))y=@002d;else y=@002c;
  $  040.右后车窗升起                    $    $       $    $  ANS009.BYTE005  $  if(((x>>4)&1))y=@002d;else y=@002c;
  $  041.右后车窗降下                    $    $       $    $  ANS009.BYTE005  $  if(((x>>5)&1))y=@002d;else y=@002c;
  $  042.车窗禁止                        $    $       $    $  ANS009.BYTE005  $  if(((x>>6)&1))y=@002d;else y=@002c;
  $  043.左前车门微开                    $    $       $    $  ANS010.BYTE004  $  if(((x>>0)&1))y=@002d;else y=@002c;
  $  044.右前车门微开                    $    $       $    $  ANS010.BYTE004  $  if(((x>>1)&1))y=@002d;else y=@002c;
  $  045.左后车门微开                    $    $       $    $  ANS010.BYTE004  $  if(((x>>2)&1))y=@002d;else y=@002c;
  $  046.右后车门微开                    $    $       $    $  ANS010.BYTE004  $  if(((x>>3)&1))y=@002d;else y=@002c;
  $  047.发动机罩微开                    $    $       $    $  ANS010.BYTE004  $  if(((x>>4)&1))y=@002d;else y=@002c;
  $  048.行李箱微开                      $    $       $    $  ANS010.BYTE004  $  if(((x>>5)&1))y=@002d;else y=@002c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:784 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
