
    车型ID：08be

    模拟：协议模拟-->08be

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7ED

进入命令:

  $~  REQ000:7E5 02 10 01 00 00 00 00 00       $~  ANS000:7ED 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E5 02 3E 00 00 00 00 00 00       $!  ANS000:7ED 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E5 03 19 02 09 00 00 00 00       $#  ANS000:7ED 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ae000000


  $#  01.读故障码库
  $#  REQ000:7E5 02 19 0A 00 00 00 00 00       $#  ANS000:7ED 02 19 0A 00 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ae000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="0"/>
   </FUNCTION>
  <FUNCTION type="0" num="1">
     <param type="string" value="0"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E5 04 14 FF FF FF 00 00 00       $$  ANS000:7ED 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E5 03 22 F1 12 00 00 00 00       $%  ANS000:7ED 03 22 F1 12 00 00 00 00
  $%  REQ001:7E5 03 22 F1 87 00 00 00 00       $%  ANS001:7ED 03 22 F1 87 00 00 00 00
  $%  REQ002:7E5 03 22 F1 8A 00 00 00 00       $%  ANS002:7ED 03 22 F1 8A 00 00 00 00
  $%  REQ003:7E5 03 22 F1 8B 00 00 00 00       $%  ANS003:7ED 03 22 F1 8B 00 00 00 00
  $%  REQ004:7E5 03 22 F1 8C 00 00 00 00       $%  ANS004:7ED 03 22 F1 8C 00 00 00 00
  $%  REQ005:7E5 03 22 F1 90 00 00 00 00       $%  ANS005:7ED 03 22 F1 90 00 00 00 00
  $%  REQ006:7E5 03 22 F1 93 00 00 00 00       $%  ANS006:7ED 03 22 F1 93 00 00 00 00
  $%  REQ007:7E5 03 22 F1 95 00 00 00 00       $%  ANS007:7ED 03 22 F1 95 00 00 00 00
  $%  REQ008:7E5 03 22 F1 9D 00 00 00 00       $%  ANS008:7ED 03 22 F1 9D 00 00 00 00
  $%  REQ009:7E5 03 22 F1 82 00 00 00 00       $%  ANS009:7ED 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                         $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                           $%    $%  ANS001.BYTE004  $%  0 ASCII
  $%  002:供应商代码:                       $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU(电子控制器)生产日期:          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:ECU(电子控制器)序列号:            $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  005:车辆识别号（VIN码）:              $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:ECU(电子控制器)硬件版本号:        $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:ECU(电子控制器)软件版本号:        $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)安装日期:          $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  009:标定软件版本号:                   $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E5 03 22 DF 00 00 00 00 00       $  ANS000:7ED 03 22 DF 00 00 00 00 00
  $  REQ001:7E5 03 22 DF 01 00 00 00 00       $  ANS001:7ED 03 22 DF 01 00 00 00 00
  $  REQ002:7E5 03 22 64 00 00 00 00 00       $  ANS002:7ED 03 22 64 00 00 00 00 00
  $  REQ003:7E5 03 22 64 01 00 00 00 00       $  ANS003:7ED 03 22 64 01 00 00 00 00
  $  REQ004:7E5 03 22 64 02 00 00 00 00       $  ANS004:7ED 03 22 64 02 00 00 00 00
  $  REQ005:7E5 03 22 64 03 00 00 00 00       $  ANS005:7ED 03 22 64 03 00 00 00 00
  $  REQ006:7E5 03 22 64 04 00 00 00 00       $  ANS006:7ED 03 22 64 04 00 00 00 00
  $  REQ007:7E5 03 22 64 05 00 00 00 00       $  ANS007:7ED 03 22 64 05 00 00 00 00
  $  REQ008:7E5 03 22 64 06 00 00 00 00       $  ANS008:7ED 03 22 64 06 00 00 00 00
  $  REQ009:7E5 03 22 64 07 00 00 00 00       $  ANS009:7ED 03 22 64 07 00 00 00 00
  $  REQ010:7E5 03 22 64 08 00 00 00 00       $  ANS010:7ED 03 22 64 08 00 00 00 00
  $  REQ011:7E5 03 22 64 09 00 00 00 00       $  ANS011:7ED 03 22 64 09 00 00 00 00
  $  REQ012:7E5 03 22 64 0A 00 00 00 00       $  ANS012:7ED 03 22 64 0A 00 00 00 00
  $  REQ013:7E5 03 22 64 1B 00 00 00 00       $  ANS013:7ED 03 22 64 1B 00 00 00 00
  $  REQ014:7E5 03 22 64 10 00 00 00 00       $  ANS014:7ED 03 22 64 10 00 00 00 00
  $  REQ015:7E5 03 22 64 11 00 00 00 00       $  ANS015:7ED 03 22 64 11 00 00 00 00
  $  REQ016:7E5 03 22 64 12 00 00 00 00       $  ANS016:7ED 03 22 64 12 00 00 00 00
  $  REQ017:7E5 03 22 64 13 00 00 00 00       $  ANS017:7ED 03 22 64 13 00 00 00 00
  $  REQ018:7E5 03 22 64 14 00 00 00 00       $  ANS018:7ED 03 22 64 14 00 00 00 00
  $  REQ019:7E5 03 22 64 15 00 00 00 00       $  ANS019:7ED 03 22 64 15 00 00 00 00
  $  REQ020:7E5 03 22 64 18 00 00 00 00       $  ANS020:7ED 03 22 64 18 00 00 00 00
  $  REQ021:7E5 03 22 64 19 00 00 00 00       $  ANS021:7ED 03 22 64 19 00 00 00 00
  $  REQ022:7E5 03 22 64 1A 00 00 00 00       $  ANS022:7ED 03 22 64 1A 00 00 00 00
  $  REQ023:7E5 03 22 64 1C 00 00 00 00       $  ANS023:7ED 03 22 64 1C 00 00 00 00

  $  000.供电电压                            $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车速                                $    $  km/h     $    $  ANS001.BYTE004  $  y=INT(((x1<<8)+x2)*0.05625);
  $  002.驾驶员侧气囊电阻                    $    $  ohm      $    $  ANS002.BYTE004  $  y=((x1<<8)+x2)*0.001;
  $  003.副驾驶员侧气囊电阻                  $    $  ohm      $    $  ANS003.BYTE004  $  y=((x1<<8)+x2)*0.001;
  $  004.第一排左侧安全带预紧电阻            $    $  ohm      $    $  ANS004.BYTE004  $  y=((x1<<8)+x2)*0.001;
  $  005.第一排右侧安全带预紧电阻            $    $  ohm      $    $  ANS005.BYTE004  $  y=((x1<<8)+x2)*0.001;
  $  006.第一排左侧侧气囊电阻                $    $  ohm      $    $  ANS006.BYTE004  $  y=((x1<<8)+x2)*0.001;
  $  007.第一排右侧侧气囊电阻                $    $  ohm      $    $  ANS007.BYTE004  $  y=((x1<<8)+x2)*0.001;
  $  008.左侧气帘电阻                        $    $  ohm      $    $  ANS008.BYTE004  $  y=((x1<<8)+x2)*0.001;
  $  009.右侧气帘电阻                        $    $  ohm      $    $  ANS009.BYTE004  $  y=((x1<<8)+x2)*0.001;
  $  010.第二排左侧安全带预紧电阻            $    $  ohm      $    $  ANS010.BYTE004  $  y=((x1<<8)+x2)*0.001;
  $  011.第二排右侧安全带预紧电阻            $    $  ohm      $    $  ANS011.BYTE004  $  y=((x1<<8)+x2)*0.001;
  $  012.驾驶员膝部气囊电阻                  $    $  ohm      $    $  ANS012.BYTE004  $  y=((x1<<8)+x2)*0.001;
  $  013.第二排中间位置安全带锁扣状态        $    $  /        $    $  ANS013.BYTE004  $  if(((x>>0)&1))y=@0306;else y=@0307;
  $  014.乘员安全带锁扣状态                  $    $  /        $    $  ANS014.BYTE004  $  if(((x>>0)&1))y=@0306;else y=@0307;
  $  015.乘员安全带锁扣故障状态              $    $  /        $    $  ANS014.BYTE004  $  if(((x>>1)&1))y=@051a;else y=@01ac;
  $  016.驾驶员安全带锁扣状态                $    $  /        $    $  ANS015.BYTE004  $  if(((x>>0)&1))y=@0306;else y=@0307;
  $  017.驾驶员安全带锁扣故障状态            $    $  /        $    $  ANS015.BYTE004  $  if(((x>>1)&1))y=@051a;else y=@01ac;
  $  018.副气囊禁止开关状态                  $    $  /        $    $  ANS016.BYTE004  $  if(((x>>0)&1)) y=@0170;else y=@010e;
  $  019.副气囊禁止开关故障状态              $    $  /        $    $  ANS016.BYTE004  $  if(((x>>1)&1))y=@051a;else y=@01ac;
  $  020.乘员座椅检测开关状态                $    $  /        $    $  ANS017.BYTE004  $  if(((x>>0)&1))y=@0306;else y=@0307;
  $  021.乘员座椅检测开关故障状态            $    $  /        $    $  ANS017.BYTE004  $  if(((x>>1)&1))y=@051a;else y=@01ac;
  $  022.IMU(组合传感器)标定状态             $    $  /        $    $  ANS018.BYTE004  $  if(x==0x00)y=@0312;else if(x==0x01)y=@0c49;else if(x==0x02)y=@0313;else y=@0209;
  $  023.EOL(下线)配置模式                   $    $  /        $    $  ANS019.BYTE004  $  if(x==0x00)y=@030d;else if(x==0x01)y=@036b;else y=@0162;
  $  024.ACU(安全气囊控制单元)点火次数       $    $  /        $    $  ANS020.BYTE004  $  y=x1*256*256*256+x2*256*256+x3*256+x4;
  $  025.ACU(安全气囊控制单元)上电时间       $    $  s        $    $  ANS021.BYTE004  $  y=x1*256*256*256+x2*256*256+x3*256+x4;
  $  026.第二排左侧安全带锁扣状态            $    $  /        $    $  ANS022.BYTE004  $  if(((x>>0)&1))y=@0307;else y=@0306;
  $  027.第二排左侧安全带锁扣故障状态        $    $  /        $    $  ANS022.BYTE004  $  if(((x>>1)&1))y=@051a;else y=@01ac;
  $  028.第二排右侧安全带锁扣状态            $    $  /        $    $  ANS023.BYTE004  $  if(((x>>0)&1))y=@0306;else y=@0307;
  $  029.第二排右侧安全带锁扣故障状态        $    $  /        $    $  ANS023.BYTE004  $  if(((x>>1)&1))y=@051a;else y=@01ac;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E5 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
