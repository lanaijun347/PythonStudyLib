
    车型ID：578c

    模拟：协议模拟-->578c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~782

进入命令:

  $~  REQ000:702 02 10 03 00 00 00 00 00       $~  ANS000:782 02 10 03 00 00 00 00 00
  $~~ REQ001:702 02 27 01 00 00 00 00 00       $~~ ANS001:782 02 27 01 00 00 00 00 00
  $~~ REQ002:702 06 27 02 30 FB 82 38 00       $~~ ANS002:782 06 27 02 30 FB 82 38 00

空闲命令:

  $!  REQ000:702 02 3E 00 00 00 00 00 00       $!  ANS000:782 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:702 02 10 01 00 00 00 00 00       $@  ANS000:782 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:702 03 19 02 09 00 00 00 00       $#  ANS000:782 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/5f000000


;******************************************************************************************************************************************************

<RDTC>
	<FUNCTION type="0" num="0">
		<param type="string" value="0"/><!--方式0-->
	</FUNCTION>
</RDTC>

清除故障码:

  $$  REQ000:702 04 14 FF FF FF 00 00 00       $$  ANS000:782 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:702 03 22 F1 87 00 00 00 00       $%  ANS000:782 03 22 F1 87 00 00 00 00
  $%  REQ001:702 03 22 F1 88 00 00 00 00       $%  ANS001:782 03 22 F1 88 00 00 00 00
  $%  REQ002:702 03 22 F1 8A 00 00 00 00       $%  ANS002:782 03 22 F1 8A 00 00 00 00
  $%  REQ003:702 03 22 F1 97 00 00 00 00       $%  ANS003:782 03 22 F1 97 00 00 00 00
  $%  REQ004:702 03 22 F1 91 00 00 00 00       $%  ANS004:782 03 22 F1 91 00 00 00 00
  $%  REQ005:702 03 22 F1 8C 00 00 00 00       $%  ANS005:782 03 22 F1 8C 00 00 00 00
  $%  REQ006:702 03 22 F1 90 00 00 00 00       $%  ANS006:782 03 22 F1 90 00 00 00 00
  $%  REQ007:702 03 22 F1 5E 00 00 00 00       $%  ANS007:782 03 22 F1 5E 00 00 00 00
  $%  REQ008:702 03 22 F1 60 00 00 00 00       $%  ANS008:782 03 22 F1 60 00 00 00 00
  $%  REQ009:702 03 22 F1 63 00 00 00 00       $%  ANS009:782 03 22 F1 63 00 00 00 00
  $%  REQ010:702 03 22 F1 9E 00 00 00 00       $%  ANS010:782 03 22 F1 9E 00 00 00 00
  $%  REQ011:702 03 22 F1 5B 00 00 00 00       $%  ANS011:782 03 22 F1 5B 00 00 00 00

  $%  000:控制器总零件号:           $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:主芯片(MCU)软件号:        $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商识别号:             $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  003:系统识别号:               $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:硬件号:                   $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:序列号:                   $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $%  006:车辆识别编码(VIN):        $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:网络数据库标识符:         $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:配置文件号:               $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:驱动软件号:               $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:ODX文件号:                $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:读软件指纹:               $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:702 03 22 CF 00 00 00 00 00       $  ANS000:782 03 22 CF 00 00 00 00 00
  $  REQ001:702 03 22 CF 01 00 00 00 00       $  ANS001:782 03 22 CF 01 00 00 00 00
  $  REQ002:702 03 22 CF 02 00 00 00 00       $  ANS002:782 03 22 CF 02 00 00 00 00
  $  REQ003:702 03 22 CF 03 00 00 00 00       $  ANS003:782 03 22 CF 03 00 00 00 00
  $  REQ004:702 03 22 CF 04 00 00 00 00       $  ANS004:782 03 22 CF 04 00 00 00 00
  $  REQ005:702 03 22 CF 80 00 00 00 00       $  ANS005:782 03 22 CF 80 00 00 00 00
  $  REQ006:702 03 22 02 00 00 00 00 00       $  ANS006:782 03 22 02 00 00 00 00 00
  $  REQ007:702 03 22 02 01 00 00 00 00       $  ANS007:782 03 22 02 01 00 00 00 00
  $  REQ008:702 03 22 02 02 00 00 00 00       $  ANS008:782 03 22 02 02 00 00 00 00
  $  REQ009:702 03 22 02 03 00 00 00 00       $  ANS009:782 03 22 02 03 00 00 00 00
  $  REQ010:702 03 22 02 04 00 00 00 00       $  ANS010:782 03 22 02 04 00 00 00 00
  $  REQ011:702 03 22 02 05 00 00 00 00       $  ANS011:782 03 22 02 05 00 00 00 00
  $  REQ012:702 03 22 02 06 00 00 00 00       $  ANS012:782 03 22 02 06 00 00 00 00
  $  REQ013:702 03 22 02 07 00 00 00 00       $  ANS013:782 03 22 02 07 00 00 00 00
  $  REQ014:702 03 22 02 08 00 00 00 00       $  ANS014:782 03 22 02 08 00 00 00 00
  $  REQ015:702 03 22 02 09 00 00 00 00       $  ANS015:782 03 22 02 09 00 00 00 00
  $  REQ016:702 03 22 02 10 00 00 00 00       $  ANS016:782 03 22 02 10 00 00 00 00
  $  REQ017:702 03 22 02 11 00 00 00 00       $  ANS017:782 03 22 02 11 00 00 00 00
  $  REQ018:702 03 22 02 12 00 00 00 00       $  ANS018:782 03 22 02 12 00 00 00 00
  $  REQ019:702 03 22 02 13 00 00 00 00       $  ANS019:782 03 22 02 13 00 00 00 00
  $  REQ020:702 03 22 02 14 00 00 00 00       $  ANS020:782 03 22 02 14 00 00 00 00
  $  REQ021:702 03 22 02 15 00 00 00 00       $  ANS021:782 03 22 02 15 00 00 00 00
  $  REQ022:702 03 22 02 16 00 00 00 00       $  ANS022:782 03 22 02 16 00 00 00 00
  $  REQ023:702 03 22 02 17 00 00 00 00       $  ANS023:782 03 22 02 17 00 00 00 00
  $  REQ024:702 03 22 02 18 00 00 00 00       $  ANS024:782 03 22 02 18 00 00 00 00
  $  REQ025:702 03 22 02 19 00 00 00 00       $  ANS025:782 03 22 02 19 00 00 00 00
  $  REQ026:702 03 22 02 20 00 00 00 00       $  ANS026:782 03 22 02 20 00 00 00 00
  $  REQ027:702 03 22 02 21 00 00 00 00       $  ANS027:782 03 22 02 21 00 00 00 00
  $  REQ028:702 03 22 02 22 00 00 00 00       $  ANS028:782 03 22 02 22 00 00 00 00
  $  REQ029:702 03 22 02 23 00 00 00 00       $  ANS029:782 03 22 02 23 00 00 00 00
  $  REQ030:702 03 22 02 24 00 00 00 00       $  ANS030:782 03 22 02 24 00 00 00 00
  $  REQ031:702 03 22 02 25 00 00 00 00       $  ANS031:782 03 22 02 25 00 00 00 00
  $  REQ032:702 03 22 02 26 00 00 00 00       $  ANS032:782 03 22 02 26 00 00 00 00
  $  REQ033:702 03 22 02 27 00 00 00 00       $  ANS033:782 03 22 02 27 00 00 00 00
  $  REQ034:702 03 22 02 28 00 00 00 00       $  ANS034:782 03 22 02 28 00 00 00 00
  $  REQ035:702 03 22 02 29 00 00 00 00       $  ANS035:782 03 22 02 29 00 00 00 00
  $  REQ036:702 03 22 02 30 00 00 00 00       $  ANS036:782 03 22 02 30 00 00 00 00
  $  REQ037:702 03 22 02 31 00 00 00 00       $  ANS037:782 03 22 02 31 00 00 00 00
  $  REQ038:702 03 22 02 32 00 00 00 00       $  ANS038:782 03 22 02 32 00 00 00 00
  $  REQ039:702 03 22 02 33 00 00 00 00       $  ANS039:782 03 22 02 33 00 00 00 00
  $  REQ040:702 03 22 02 34 00 00 00 00       $  ANS040:782 03 22 02 34 00 00 00 00
  $  REQ041:702 03 22 02 35 00 00 00 00       $  ANS041:782 03 22 02 35 00 00 00 00
  $  REQ042:702 03 22 02 36 00 00 00 00       $  ANS042:782 03 22 02 36 00 00 00 00
  $  REQ043:702 03 22 02 37 00 00 00 00       $  ANS043:782 03 22 02 37 00 00 00 00
  $  REQ044:702 03 22 02 38 00 00 00 00       $  ANS044:782 03 22 02 38 00 00 00 00
  $  REQ045:702 03 22 F1 58 00 00 00 00       $  ANS045:782 03 22 F1 58 00 00 00 00
  $  REQ046:702 03 22 F1 57 00 00 00 00       $  ANS046:782 03 22 F1 57 00 00 00 00
  $  REQ047:702 03 22 02 40 00 00 00 00       $  ANS047:782 03 22 02 40 00 00 00 00

  $  000.控制器电源模式                     $    $            $    $  ANS000.BYTE004  $  switxh(x&0x03) 0x00:y=@00000076;0x01:y=@00000035;0x02:y=@00000060;0x03:y=@00000077;default: y=@00000037;
  $  001.车速                               $    $  Km/h      $    $  ANS001.BYTE004  $  y=((x1*256+x2)&0x1FFF)*0.05625;
  $  002.控制器电源电压                     $    $  V         $    $  ANS002.BYTE004  $  y=x*0.1;
  $  003.第一次故障的里程值                 $    $  km        $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0x100+x3;
  $  004.最后一次故障的里程值               $    $  km        $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0x100+x3;
  $  005.电机转速                           $    $  rpm       $    $  ANS005.BYTE004  $  y=x1*256+x2-16384;
  $  006.车辆当前档位                       $    $            $    $  ANS006.BYTE004  $  switxh(x&0x03) 0x00:y=@00000090;0x01:y=@00000088;0x02:y=@00000089;0x03:y=@00000091;default: y=@00000037;
  $  007.电池总电压                         $    $  V         $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.1;
  $  008.电池当前电量                       $    $  %         $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.1;
  $  009.当前轮轴扭矩                       $    $            $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.5-1000;
  $  010.驾驶员请求扭矩                     $    $            $    $  ANS010.BYTE004  $  y=(x1*256+x2)*0.5-1000;
  $  011.当前轴向电机转速                   $    $  r/min     $    $  ANS011.BYTE004  $  y=x1*256+x2;
  $  012.制动力回收最大可接受轮轴扭矩       $    $            $    $  ANS012.BYTE004  $  y=x1*256+x2-32768;
  $  013.制动力回收实际轮轴扭矩             $    $            $    $  ANS013.BYTE004  $  y=x1*256+x2-32768;
  $  014.电池当前放电电流                   $    $  A         $    $  ANS014.BYTE004  $  y=(x1*256+x2)*0.1;
  $  015.大气压力绝对值                     $    $  bar       $    $  ANS015.BYTE004  $  y=x*5;
  $  016.真空压力相对值                     $    $  bar       $    $  ANS016.BYTE004  $  y=x*5;
  $  017.加速踏板位置                       $    $  %         $    $  ANS017.BYTE004  $  y=x*0.4;
  $  018.电机温度                           $    $  ℃        $    $  ANS018.BYTE004  $  y=(x1*256+x2)*01-40;
  $  019.驱动电机控制单元温度               $    $  ℃        $    $  ANS019.BYTE004  $  y=(x1*256+x2)*1-40;
  $  020.行车控制器唤醒源                   $    $            $    $  ANS020.BYTE004  $  switxh(x) 0x01:y=@00000296;0x02:y=@00000297;0x04:y=@00000298;0x08:y=@00000299;0x10:y=@00000300;default: y=@00000037;
  $  021.制动踏板位置传感器信号1            $    $            $    $  ANS021.BYTE004  $  switxh(x&0x01) 0x00:y=@00000294;0x01:y=@00000295;default: y=@00000037;
  $  022.制动踏板位置传感器信号2            $    $            $    $  ANS022.BYTE004  $  switxh(x&0x01) 0x00:y=@00000294;0x01:y=@00000295;default: y=@00000037;
  $  023.车速                               $    $            $    $  ANS023.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  024.加速踏板位置传感器1电压            $    $  V         $    $  ANS024.BYTE004  $  y=((x1*256+x2)*65535+x3*256+x4)*0.001;
  $  025.加速踏板位置传感器2电压            $    $  V         $    $  ANS025.BYTE004  $  y=((x1*256+x2)*65535+x3*256+x4)*0.001;
  $  026.12V蓄电池电压                      $    $  V         $    $  ANS026.BYTE004  $  y=((x1*256+x2)*65535+x3*256+x4)*0.1;
  $  027.高压互锁信号测量电压               $    $  V         $    $  ANS027.BYTE004  $  y=((x1*256+x2)*65535+x3*256+x4)*0.001;
  $  028.5伏参考电压1                       $    $  V         $    $  ANS028.BYTE004  $  y=((x1*256+x2)*65535+x3*256+x4)*0.001;
  $  029.5伏参考电压2                       $    $  V         $    $  ANS029.BYTE004  $  y=((x1*256+x2)*65535+x3*256+x4)*0.001;
  $  030.水温传感器1测量电压                $    $  V         $    $  ANS030.BYTE004  $  y=((x1*256+x2)*65535+x3*256+x4)*0.001;
  $  031.水温传感器2测量电压                $    $  V         $    $  ANS031.BYTE004  $  y=((x1*256+x2)*65535+x3*256+x4)*0.001;
  $  032.真空压力传感器电压测量值           $    $  V         $    $  ANS032.BYTE004  $  y=((x1*256+x2)*65535+x3*256+x4)*0.001;
  $  033.大气压力传感器电压测量值           $    $  V         $    $  ANS033.BYTE004  $  y=((x1*256+x2)*65535+x3*256+x4)*0.001;
  $  034.制动踏板位置传感器电压             $    $  V         $    $  ANS034.BYTE004  $  y=((x1*256+x2)*65535+x3*256+x4)*0.001;
  $  035.空调压缩机系统控制状态/错误        $    $            $    $  ANS035.BYTE004  $  switxh(x&0x03) 0x00:y=@00000192;0x01:y=@00000291;0x02:y=@00000292;0x03:y=@00000293;default: y=@00000037;
  $  036.交流充电系统控制状态/错误          $    $            $    $  ANS036.BYTE004  $  switxh(x&0x03) 0x00:y=@00000192;0x01:y=@00000291;0x02:y=@00000292;0x03:y=@00000293;default: y=@00000037;
  $  037.电池管理系统控制状态/错误          $    $            $    $  ANS037.BYTE004  $  switxh(x&0x03) 0x00:y=@00000192;0x01:y=@00000291;0x02:y=@00000292;0x03:y=@00000293;default: y=@00000037;
  $  038.DC/DC控制状态/错误                 $    $            $    $  ANS038.BYTE004  $  switxh(x&0x03) 0x00:y=@00000192;0x01:y=@00000291;0x02:y=@00000292;0x03:y=@00000293;default: y=@00000037;
  $  039.直流充电系统控制状态/错误          $    $            $    $  ANS039.BYTE004  $  switxh(x&0x03) 0x00:y=@00000192;0x01:y=@00000291;0x02:y=@00000292;0x03:y=@00000293;default: y=@00000037;
  $  040.驱动控制状态/错误                  $    $            $    $  ANS040.BYTE004  $  switxh(x&0x03) 0x00:y=@00000192;0x01:y=@00000291;0x02:y=@00000292;0x03:y=@00000293;default: y=@00000037;
  $  041.LIN线通信状态/错误                 $    $            $    $  ANS041.BYTE004  $  switxh(x&0x03) 0x00:y=@00000192;0x01:y=@00000291;0x02:y=@00000292;0x03:y=@00000293;default: y=@00000037;
  $  042.防盗控制状态/错误                  $    $            $    $  ANS042.BYTE004  $  switxh(x&0x03) 0x00:y=@00000192;0x01:y=@00000291;0x02:y=@00000292;0x03:y=@00000293;default: y=@00000037;
  $  043.水泵状态/错误                      $    $            $    $  ANS043.BYTE004  $  switxh(x&0x03) 0x00:y=@00000192;0x01:y=@00000291;0x02:y=@00000292;0x03:y=@00000293;default: y=@00000037;
  $  044.输入输出控制子系统状态/错误        $    $            $    $  ANS044.BYTE004  $  switxh(x&0x03) 0x00:y=@00000192;0x01:y=@00000291;0x02:y=@00000292;0x03:y=@00000293;default: y=@00000037;
  $  045.远程通信控制器公共密钥有效性       $    $            $    $  ANS045.BYTE004  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  046.安全密钥                           $    $            $    $  ANS046.BYTE004  $  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  047.动力总成系统当前运行模式           $    $            $    $  ANS006.BYTE004  $  switxh(x&0x0C) 0x00:y=@00000076;0x04:y=@00000135;0x08:y=@00000290;0x0C:y=@00000140;default: y=@00000037;
  $  048.车辆跛行状态                       $    $            $    $  ANS006.BYTE004  $  switxh(x&0x10) 0x00:y=@00000026;0x10:y=@00000139;default: y=@00000037;
  $  049.车辆当前驾驶模式                   $    $            $    $  ANS006.BYTE004  $  switxh(x&0x60) 0x00:y=@00000026;0x20:y=@00000159;0x40:y=@00000204;0x60:y=@00000303;default: y=@00000037;
  $  050.蓄电池电流传感器标定状态           $    $            $    $  ANS047.BYTE004  $  switxh(x) 0x02:y=@00000301;default: y=@00000302;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:702 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
