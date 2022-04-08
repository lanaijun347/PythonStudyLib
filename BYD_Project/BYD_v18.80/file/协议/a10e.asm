
    车型ID：a10e

    模拟：协议模拟-->a10e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A9

进入命令:

  $~  REQ000:7A1 02 10 01 00 00 00 00 00       $~  ANS000:7A9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A1 02 3E 01 00 00 00 00 00       $!  ANS000:7A9 02 3E 01 00 00 00 00 00

退出命令:

  $@  REQ000:7A1 01 20 00 00 00 00 00 00       $@  ANS000:7A9 01 20 00 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7A1 05 18 00 FF FF FF 00 00       $#  ANS000:7A9 05 18 00 FF FF FF 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A1 04 14 FF FF FF 00 00 00       $$  ANS000:7A9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A1 03 22 00 01 00 00 00 00       $%  ANS000:7A9 03 22 00 01 00 00 00 00
  $%  REQ001:7A1 03 22 00 03 00 00 00 00       $%  ANS001:7A9 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A1 03 22 00 04 00 00 00 00       $  ANS000:7A9 03 22 00 04 00 00 00 00
  $  REQ001:7A1 03 22 00 05 00 00 00 00       $  ANS001:7A9 03 22 00 05 00 00 00 00
  $  REQ002:7A1 03 22 00 06 00 00 00 00       $  ANS002:7A9 03 22 00 06 00 00 00 00
  $  REQ003:7A1 03 22 00 07 00 00 00 00       $  ANS003:7A9 03 22 00 07 00 00 00 00
  $  REQ004:7A1 03 22 00 08 00 00 00 00       $  ANS004:7A9 03 22 00 08 00 00 00 00
  $  REQ005:7A1 03 22 00 09 00 00 00 00       $  ANS005:7A9 03 22 00 09 00 00 00 00
  $  REQ006:7A1 03 22 00 0A 00 00 00 00       $  ANS006:7A9 03 22 00 0A 00 00 00 00
  $  REQ007:7A1 03 22 00 0B 00 00 00 00       $  ANS007:7A9 03 22 00 0B 00 00 00 00
  $  REQ008:7A1 03 22 00 0C 00 00 00 00       $  ANS008:7A9 03 22 00 0C 00 00 00 00
  $  REQ009:7A1 03 22 00 0D 00 00 00 00       $  ANS009:7A9 03 22 00 0D 00 00 00 00
  $  REQ010:7A1 03 22 00 0E 00 00 00 00       $  ANS010:7A9 03 22 00 0E 00 00 00 00
  $  REQ011:7A1 03 22 00 0F 00 00 00 00       $  ANS011:7A9 03 22 00 0F 00 00 00 00
  $  REQ012:7A1 03 22 00 10 00 00 00 00       $  ANS012:7A9 03 22 00 10 00 00 00 00
  $  REQ013:7A1 03 22 00 11 00 00 00 00       $  ANS013:7A9 03 22 00 11 00 00 00 00
  $  REQ014:7A1 03 22 00 12 00 00 00 00       $  ANS014:7A9 03 22 00 12 00 00 00 00
  $  REQ015:7A1 03 22 00 13 00 00 00 00       $  ANS015:7A9 03 22 00 13 00 00 00 00
  $  REQ016:7A1 03 22 00 14 00 00 00 00       $  ANS016:7A9 03 22 00 14 00 00 00 00
  $  REQ017:7A1 03 22 00 15 00 00 00 00       $  ANS017:7A9 03 22 00 15 00 00 00 00
  $  REQ018:7A1 03 22 00 16 00 00 00 00       $  ANS018:7A9 03 22 00 16 00 00 00 00
  $  REQ019:7A1 03 22 00 17 00 00 00 00       $  ANS019:7A9 03 22 00 17 00 00 00 00
  $  REQ020:7A1 03 22 00 18 00 00 00 00       $  ANS020:7A9 03 22 00 18 00 00 00 00
  $  REQ021:7A1 03 22 00 19 00 00 00 00       $  ANS021:7A9 03 22 00 19 00 00 00 00
  $  REQ022:7A1 03 22 00 1A 00 00 00 00       $  ANS022:7A9 03 22 00 1A 00 00 00 00
  $  REQ023:7A1 03 22 00 1B 00 00 00 00       $  ANS023:7A9 03 22 00 1B 00 00 00 00
  $  REQ024:7A1 03 22 00 1C 00 00 00 00       $  ANS024:7A9 03 22 00 1C 00 00 00 00
  $  REQ025:7A1 03 22 00 1D 00 00 00 00       $  ANS025:7A9 03 22 00 1D 00 00 00 00
  $  REQ026:7A1 03 22 00 1E 00 00 00 00       $  ANS026:7A9 03 22 00 1E 00 00 00 00
  $  REQ027:7A1 03 22 00 1F 00 00 00 00       $  ANS027:7A9 03 22 00 1F 00 00 00 00
  $  REQ028:7A1 03 22 00 20 00 00 00 00       $  ANS028:7A9 03 22 00 20 00 00 00 00
  $  REQ029:7A1 03 22 00 21 00 00 00 00       $  ANS029:7A9 03 22 00 21 00 00 00 00
  $  REQ030:7A1 03 22 00 22 00 00 00 00       $  ANS030:7A9 03 22 00 22 00 00 00 00
  $  REQ031:7A1 03 22 00 23 00 00 00 00       $  ANS031:7A9 03 22 00 23 00 00 00 00
  $  REQ032:7A1 03 22 00 24 00 00 00 00       $  ANS032:7A9 03 22 00 24 00 00 00 00

  $  000.通讯监测信号                       $    $          $    $  ANS000.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@00cf; else y=@0108;
  $  001.电机零转速故障                     $    $          $    $  ANS001.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@00cf; else y=@0108;
  $  002.直流输入过压                       $    $          $    $  ANS002.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  003.直流输入低电压                     $    $          $    $  ANS003.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  004.交流输出过电流                     $    $          $    $  ANS004.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  005.失步检出                           $    $          $    $  ANS005.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  006.缺相err0(速度判断)                 $    $          $    $  ANS006.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  007.缺相err1(速度判断)                 $    $          $    $  ANS007.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  008.参数设定err                        $    $          $    $  ANS008.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  009.逆变器IPM故障(边沿)                $    $          $    $  ANS009.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  010.逆变器IPM故障(电平)                $    $          $    $  ANS010.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  011.直流电压检出异常                   $    $          $    $  ANS011.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  012.AD OFFset异常检                    $    $          $    $  ANS012.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  013.逆变器PWM(脉宽调制)逻辑设定        $    $          $    $  ANS013.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  014.逆变器PWM(脉宽调制)初始化          $    $          $    $  ANS014.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  015.温度异常                           $    $          $    $  ANS015.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  016.Shunt电阻不平衡                    $    $          $    $  ANS016.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  017.通讯断流                           $    $          $    $  ANS017.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  018.空调电机故障报警                   $    $          $    $  ANS018.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  019.PTC故障报警                        $    $          $    $  ANS019.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@069e; else if(x1==0x02) y=@069f; else y=@0108;
  $  020.电机控制状态                       $    $          $    $  ANS020.BYTE004  $  if(x1==0x00) y=@003e; else if(x1==0x01) y=@004a; else y=@0108;
  $  021.电机真实状态                       $    $          $    $  ANS021.BYTE004  $  if(x1==0x00) y=@003e; else if(x1==0x01) y=@004a; else y=@0108;
  $  022.PTC控制状态                        $    $          $    $  ANS022.BYTE004  $  if(x1==0x00) y=@003e; else if(x1==0x01) y=@004a; else y=@0108;
  $  023.过负载标志                         $    $          $    $  ANS023.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@069d; else y=@0108;
  $  024.空调电机发送转速                   $    $  rpm     $    $  ANS024.BYTE004  $  if(x1<0xFB) y=x1*20; else y=@0108;
  $  025.压缩机反馈转速                     $    $  rpm     $    $  ANS025.BYTE004  $  if(x1<0xFB) y=x1*20; else y=@0108;
  $  026.加热器占空比                       $    $  %       $    $  ANS026.BYTE004  $  if(x1<0x65) y=x1; else y=@0108;
  $  027.直流电压(压缩机)                   $    $  V       $    $  ANS027.BYTE004  $  if(x1<0xFB) y=x1*2; else y=@0108;
  $  028.交流电压(压缩机)                   $    $  V       $    $  ANS028.BYTE004  $  if(x1<0xC9) y=x1/10.0; else y=@0108;
  $  029.压缩机消耗功率                     $    $  W       $    $  ANS029.BYTE004  $  if(x1<0x97) y=x1*20; else y=@0108;
  $  030.BLDC驱动板通讯故障                 $    $          $    $  ANS030.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@0046; else y=@0108;
  $  031.316故障                            $    $          $    $  ANS031.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@00cf; else y=@0108;
  $  032.IGBT(绝缘栅双极型晶体管)故障       $    $          $    $  ANS032.BYTE004  $  if(x1==0x00) y=@0045; else if(x1==0x01) y=@00cf; else y=@0108;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
