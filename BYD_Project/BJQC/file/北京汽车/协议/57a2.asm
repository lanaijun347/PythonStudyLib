
    车型ID：57a2

    模拟：协议模拟-->57a2

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~7A5

进入命令:

  $~  REQ000:725 02 10 01 00 00 00 00 00       $~  ANS000:7A5 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:725 02 3E 00 00 00 00 00 00       $!  ANS000:7A5 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读取当前故障码
  $#  REQ000:725 03 19 02 01 00 00 00 00       $#  ANS000:7A5 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/4c000000


  $#  01.读取历史故障码
  $#  REQ000:725 03 19 02 28 00 00 00 00       $#  ANS000:7A5 03 19 02 28 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/4c000000


  $#  02.读冻结帧
  $#  REQ000:725 03 19 02 39 00 00 00 00       $#  ANS000:7A5 03 19 02 39 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/4c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:725 04 14 FF FF FF 00 00 00       $$  ANS000:7A5 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:725 03 22 F1 90 00 00 00 00       $%  ANS000:7A5 03 22 F1 90 00 00 00 00
  $%  REQ001:725 03 22 F1 87 00 00 00 00       $%  ANS001:7A5 03 22 F1 87 00 00 00 00
  $%  REQ002:725 03 22 F1 97 00 00 00 00       $%  ANS002:7A5 03 22 F1 97 00 00 00 00
  $%  REQ003:725 03 22 F1 8A 00 00 00 00       $%  ANS003:7A5 03 22 F1 8A 00 00 00 00
  $%  REQ004:725 03 22 F1 93 00 00 00 00       $%  ANS004:7A5 03 22 F1 93 00 00 00 00
  $%  REQ005:725 03 22 F1 95 00 00 00 00       $%  ANS005:7A5 03 22 F1 95 00 00 00 00
  $%  REQ006:725 03 22 F1 8C 00 00 00 00       $%  ANS006:7A5 03 22 F1 8C 00 00 00 00
  $%  REQ007:725 03 22 F1 00 00 00 00 00       $%  ANS007:7A5 03 22 F1 00 00 00 00 00
  $%  REQ008:725 03 22 F1 99 00 00 00 00       $%  ANS008:7A5 03 22 F1 99 00 00 00 00
  $%  REQ009:725 03 22 F1 A8 00 00 00 00       $%  ANS009:7A5 03 22 F1 A8 00 00 00 00
  $%  REQ010:725 03 22 F1 84 00 00 00 00       $%  ANS010:7A5 03 22 F1 84 00 00 00 00
  $%  REQ011:725 03 22 F1 8B 00 00 00 00       $%  ANS011:7A5 03 22 F1 8B 00 00 00 00

  $%  000:VIN:                           $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:零件号:                        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  002:系统名称:                      $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:系统供应商标识:                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:ECU硬件版本号:                 $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  005:ECU软件版本号:                 $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  006:ECU序列号:                     $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:诊断版本:                      $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  008:编程日期:                      $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  009:整车配置编码:                  $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  010:应用软件指纹数据识别器:        $%    $%  ANS010.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  011:ECU生产日期:                   $%    $%  ANS011.BYTE004  $%  HEX(x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:725 03 22 58 01 00 00 00 00       $  ANS000:7A5 03 22 58 01 00 00 00 00
  $  REQ001:725 03 22 58 02 00 00 00 00       $  ANS001:7A5 03 22 58 02 00 00 00 00
  $  REQ002:725 03 22 58 03 00 00 00 00       $  ANS002:7A5 03 22 58 03 00 00 00 00
  $  REQ003:725 03 22 58 04 00 00 00 00       $  ANS003:7A5 03 22 58 04 00 00 00 00
  $  REQ004:725 03 22 58 05 00 00 00 00       $  ANS004:7A5 03 22 58 05 00 00 00 00
  $  REQ005:725 03 22 58 06 00 00 00 00       $  ANS005:7A5 03 22 58 06 00 00 00 00
  $  REQ006:725 03 22 58 07 00 00 00 00       $  ANS006:7A5 03 22 58 07 00 00 00 00
  $  REQ007:725 03 22 58 09 00 00 00 00       $  ANS007:7A5 03 22 58 09 00 00 00 00
  $  REQ008:725 03 22 58 52 00 00 00 00       $  ANS008:7A5 03 22 58 52 00 00 00 00
  $  REQ009:725 03 22 58 0C 00 00 00 00       $  ANS009:7A5 03 22 58 0C 00 00 00 00
  $  REQ010:725 03 22 D1 35 00 00 00 00       $  ANS010:7A5 03 22 D1 35 00 00 00 00
  $  REQ011:725 03 22 58 0D 00 00 00 00       $  ANS011:7A5 03 22 58 0D 00 00 00 00
  $  REQ012:725 03 22 58 E7 00 00 00 00       $  ANS012:7A5 03 22 58 E7 00 00 00 00
  $  REQ013:725 03 22 58 E8 00 00 00 00       $  ANS013:7A5 03 22 58 E8 00 00 00 00

  $  000.蓄电池电压                   $    $  V      $    $  ANS000.BYTE004  $  y=x1/10;
  $  001.里程表                       $    $  KM     $    $  ANS001.BYTE004  $  y=0.01*(((x1*256+x2)*256+x3)*256+x4);
  $  002.KL.R状态                     $    $         $    $  ANS002.BYTE004  $  switxh(x1&0x01)0:y=@0002;1:y=@0003;
  $  003.KL.15状态                    $    $         $    $  ANS002.BYTE004  $  switxh((x1>>1)&0x01)0:y=@0002;1:y=@0003;
  $  004.发动机运行状态               $    $         $    $  ANS002.BYTE004  $  switxh((x1>>2)&0x01)0:y=@0329;1:y=@0261;
  $  005.KL.50状态                    $    $         $    $  ANS002.BYTE004  $  switxh((x1>>3)&0x01)0:y=@0002;1:y=@0003;
  $  006.点火开关ACC状态              $    $         $    $  ANS003.BYTE004  $  switxh(x1&0x01)0:y=@0002;1:y=@0003;
  $  007.点火开关ON状态               $    $         $    $  ANS003.BYTE004  $  switxh((x1>>1)&0x01)0:y=@0002;1:y=@0003;
  $  008.点火开关Start状态            $    $         $    $  ANS003.BYTE004  $  switxh((x1>>2)&0x01)0:y=@0002;1:y=@0003;
  $  009.发动机盖开关状态             $    $         $    $  ANS004.BYTE004  $  switxh((x1>>5)&0x01)0:y=@0002;1:y=@0003;
  $  010.驾驶侧车门解锁状态           $    $         $    $  ANS004.BYTE004  $  switxh((x1>>6)&0x01)0:y=@035c;1:y=@0206;
  $  011.行李箱释放开关状态           $    $         $    $  ANS004.BYTE004  $  switxh((x1>>7)&0x01)0:y=@0002;1:y=@0003;
  $  012.行李箱开关状态               $    $         $    $  ANS004.BYTE005  $  switxh((x1>>2)&0x01)0:y=@0002;1:y=@0003;
  $  013.左前车门开关状态             $    $         $    $  ANS004.BYTE005  $  switxh((x1>>3)&0x01)0:y=@0002;1:y=@0003;
  $  014.右前车门开关状态             $    $         $    $  ANS004.BYTE005  $  switxh((x1>>4)&0x01)0:y=@0002;1:y=@0003;
  $  015.左后车门开关状态             $    $         $    $  ANS004.BYTE005  $  switxh((x1>>5)&0x01)0:y=@0002;1:y=@0003;
  $  016.右后车门开关状态             $    $         $    $  ANS004.BYTE005  $  switxh((x1>>6)&0x01)0:y=@0002;1:y=@0003;
  $  017.前清洗开关状态               $    $         $    $  ANS005.BYTE004  $  switxh((x1>>3)&0x01)0:y=@0002;1:y=@0003;
  $  018.后清洗开关状态               $    $         $    $  ANS005.BYTE004  $  switxh((x1>>4)&0x01)0:y=@0002;1:y=@0003;
  $  019.前雨刷Park位状态             $    $         $    $  ANS005.BYTE004  $  switxh((x1>>6)&0x01)0:y=@0002;1:y=@0003;
  $  020.后雨刷Park位状态             $    $         $    $  ANS005.BYTE004  $  switxh((x1>>7)&0x01)0:y=@0002;1:y=@0003;
  $  021.前雨刷开关状态               $    $         $    $  ANS005.BYTE005  $  switxh(x1&0x03)0:y=@0002;1:y=@028f;2:y=@0290;3:y=@032d;default:y=@01e5;
  $  022.前雨刷间歇状态               $    $         $    $  ANS005.BYTE005  $  switxh((x1>>3)&0x03)0:y=@0292;1:y=@0293;2:y=@0294;3:y=@0295;
  $  023.后雨刷开关状态               $    $         $    $  ANS005.BYTE005  $  switxh((x1>>6)&0x01)0:y=@0002;1:y=@0003;
  $  024.远光灯开关状态               $    $         $    $  ANS006.BYTE004  $  switxh(x1&0x03)0:y=@000b;1:y=@0694;2:y=@000e;3:y=@01e5;
  $  025.转向灯开关状态               $    $         $    $  ANS006.BYTE004  $  switxh((x1>>2)&0x03)0:y=@0002;1:y=@0adf;2:y=@0ae0;3:y=@01e5;
  $  026.危险警告灯开关状态           $    $         $    $  ANS006.BYTE004  $  switxh((x1>>4)&0x01)0:y=@01fa;1:y=@01fb;
  $  027.前雾灯开关状态               $    $         $    $  ANS006.BYTE004  $  switxh((x1>>5)&0x01)0:y=@0002;1:y=@0003;
  $  028.后雾灯开关状态               $    $         $    $  ANS006.BYTE004  $  switxh((x1>>6)&0x01)0:y=@0002;1:y=@0003;
  $  029.倒挡开关状态                 $    $         $    $  ANS006.BYTE004  $  switxh((x1>>7)&0x01)0:y=@0002;1:y=@0003;
  $  030.制动灯开关状态               $    $         $    $  ANS006.BYTE005  $  switxh(x1&0x01)0:y=@0002;1:y=@0003;
  $  031.灯光开关状态                 $    $         $    $  ANS006.BYTE005  $  switxh((x1>>1)&0x03)0:y=@0002;1:y=@0291;2:y=@013f;3:y=@0299;
  $  032.P档开关状态                  $    $         $    $  ANS007.BYTE004  $  switxh(x1&0x01)0:y=@035c;1:y=@0206;
  $  033.经济模式开关                 $    $         $    $  ANS007.BYTE004  $  switxh((x1>>1)&0x01)0:y=@0002;1:y=@0003;
  $  034.后除霜开关状态               $    $         $    $  ANS007.BYTE004  $  switxh((x1>>5)&0x01)0:y=@0002;1:y=@0003;
  $  035.后视镜折叠展开开关状态       $    $         $    $  ANS007.BYTE004  $  switxh((x1>>6)&0x01)0:y=@0360;1:y=@035d;
  $  036.喇叭开关状态                 $    $         $    $  ANS007.BYTE004  $  switxh((x1>>7)&0x01)0:y=@0002;1:y=@0003;
  $  037.右前LED转向灯反馈电平        $    $         $    $  ANS007.BYTE005  $  switxh((x1>>4)&0x01)0:y=@076b;1:y=@076c;
  $  038.左前LED转向灯反馈电平        $    $         $    $  ANS007.BYTE005  $  switxh((x1>>5)&0x01)0:y=@076b;1:y=@076c;
  $  039.右后LED转向灯反馈电平        $    $         $    $  ANS007.BYTE005  $  switxh((x1>>6)&0x01)0:y=@076b;1:y=@076c;
  $  040.左后LED转向灯反馈电平        $    $         $    $  ANS007.BYTE005  $  switxh((x1>>7)&0x01)0:y=@076b;1:y=@076c;
  $  041.钥匙数量                     $    $         $    $  ANS008.BYTE004  $  y=(x1&0x0F);
  $  042.运输模式                     $    $         $    $  ANS009.BYTE004  $  switxh(x1)0:y=@0089;1:y=@008b;default:y=@01e5;
  $  043.BCM匹配状态                  $    $         $    $  ANS010.BYTE004  $  switxh(x1&0x01)0:y=@0270;1:y=@026f;
  $  044.碰撞记录                     $    $         $    $  ANS011.BYTE004  $  switxh(x1)0:y=@029a;1:y=@029b;default:y=@01e5;
  $  045.ODO备份计数                  $    $         $    $  ANS012.BYTE004  $  y=x1;
  $  046.ODO备份#1前里程(最新)        $    $  KM     $    $  ANS013.BYTE004  $  y=(((x1*256+x2)*256+x3)*256+x4);
  $  047.ODO备份#1后里程(最新)        $    $  KM     $    $  ANS013.BYTE008  $  y=(((x1*256+x2)*256+x3)*256+x4);
  $  048.ODO备份#2前里程              $    $  KM     $    $  ANS013.BYTE012  $  y=(((x1*256+x2)*256+x3)*256+x4);
  $  049.ODO备份#2后里程              $    $  KM     $    $  ANS013.BYTE016  $  y=(((x1*256+x2)*256+x3)*256+x4);
  $  050.ODO备份#3前里程              $    $  KM     $    $  ANS013.BYTE020  $  y=(((x1*256+x2)*256+x3)*256+x4);
  $  051.ODO备份#3后里程              $    $  KM     $    $  ANS013.BYTE024  $  y=(((x1*256+x2)*256+x3)*256+x4);
  $  052.ODO备份#4前里程              $    $  KM     $    $  ANS013.BYTE028  $  y=(((x1*256+x2)*256+x3)*256+x4);
  $  053.ODO备份#4后里程              $    $  KM     $    $  ANS013.BYTE032  $  y=(((x1*256+x2)*256+x3)*256+x4);
  $  054.ODO备份#5前里程              $    $  KM     $    $  ANS013.BYTE036  $  y=(((x1*256+x2)*256+x3)*256+x4);
  $  055.ODO备份#5后里程              $    $  KM     $    $  ANS013.BYTE040  $  y=(((x1*256+x2)*256+x3)*256+x4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:725 30 00 10 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
