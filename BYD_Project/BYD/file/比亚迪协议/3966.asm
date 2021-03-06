
    车型ID：3966

    模拟：协议模拟-->3966

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K

进入命令:

  $~  REQ000:781 02 10 01 00 00 00 00 00       $~  ANS000:781 02 10 01 00 00 00 00 00
  $~  REQ001:781 02 10 03 00 00 00 00 00       $~  ANS001:781 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:781 02 3E 00 00 00 00 00 00       $!  ANS000:781 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K

进入命令:

  $~  REQ000:781 02 10 01 00 00 00 00 00       $~  ANS000:789 02 10 01 00 00 00 00 00
  $~  REQ001:781 02 10 03 00 00 00 00 00       $~  ANS001:789 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:781 02 3E 00 00 00 00 00 00       $!  ANS000:789 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:781 04 18 00 00 00 00 00 00       $#  ANS000:781 04 18 00 00 00 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/10050000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:781 03 14 00 00 00 00 00 00       $$  ANS000:781 03 14 00 00 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:781 03 22 00 01 00 00 00 00       $%  ANS000:781 03 22 00 01 00 00 00 00
  $%  REQ001:781 03 22 00 03 00 00 00 00       $%  ANS001:781 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%02d.%02d.%02d],X1,X2,X3);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d.%02d.%02d],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:781 03 22 00 04 00 00 00 00       $  ANS000:781 03 22 00 04 00 00 00 00
  $  REQ001:781 03 22 00 05 00 00 00 00       $  ANS001:781 03 22 00 05 00 00 00 00
  $  REQ002:781 03 22 00 06 00 00 00 00       $  ANS002:781 03 22 00 06 00 00 00 00
  $  REQ003:781 03 22 00 07 00 00 00 00       $  ANS003:781 03 22 00 07 00 00 00 00
  $  REQ004:781 03 22 00 08 00 00 00 00       $  ANS004:781 03 22 00 08 00 00 00 00
  $  REQ005:781 03 22 00 09 00 00 00 00       $  ANS005:781 03 22 00 09 00 00 00 00
  $  REQ006:781 03 22 00 0A 00 00 00 00       $  ANS006:781 03 22 00 0A 00 00 00 00
  $  REQ007:781 03 22 00 0B 00 00 00 00       $  ANS007:781 03 22 00 0B 00 00 00 00
  $  REQ008:781 03 22 00 0C 00 00 00 00       $  ANS008:781 03 22 00 0C 00 00 00 00
  $  REQ009:781 03 22 00 0D 00 00 00 00       $  ANS009:781 03 22 00 0D 00 00 00 00
  $  REQ010:781 03 22 00 0E 00 00 00 00       $  ANS010:781 03 22 00 0E 00 00 00 00
  $  REQ011:781 03 22 00 0F 00 00 00 00       $  ANS011:781 03 22 00 0F 00 00 00 00
  $  REQ012:781 03 22 00 10 00 00 00 00       $  ANS012:781 03 22 00 10 00 00 00 00
  $  REQ013:781 03 22 00 11 00 00 00 00       $  ANS013:781 03 22 00 11 00 00 00 00
  $  REQ014:781 03 22 00 12 00 00 00 00       $  ANS014:781 03 22 00 12 00 00 00 00
  $  REQ015:781 03 22 00 13 00 00 00 00       $  ANS015:781 03 22 00 13 00 00 00 00
  $  REQ016:781 03 22 00 14 00 00 00 00       $  ANS016:781 03 22 00 14 00 00 00 00
  $  REQ017:781 03 22 00 15 00 00 00 00       $  ANS017:781 03 22 00 15 00 00 00 00
  $  REQ018:781 03 22 00 16 00 00 00 00       $  ANS018:781 03 22 00 16 00 00 00 00
  $  REQ019:781 03 22 00 17 00 00 00 00       $  ANS019:781 03 22 00 17 00 00 00 00
  $  REQ020:781 03 22 00 18 00 00 00 00       $  ANS020:781 03 22 00 18 00 00 00 00
  $  REQ021:781 03 22 00 2A 00 00 00 00       $  ANS021:781 03 22 00 2A 00 00 00 00
  $  REQ022:781 03 22 00 2B 00 00 00 00       $  ANS022:781 03 22 00 2B 00 00 00 00
  $  REQ023:781 03 22 00 2C 00 00 00 00       $  ANS023:781 03 22 00 2C 00 00 00 00
  $  REQ024:781 03 22 00 2D 00 00 00 00       $  ANS024:781 03 22 00 2D 00 00 00 00
  $  REQ025:781 03 22 00 2E 00 00 00 00       $  ANS025:781 03 22 00 2E 00 00 00 00
  $  REQ026:781 03 22 00 2F 00 00 00 00       $  ANS026:781 03 22 00 2F 00 00 00 00
  $  REQ027:781 03 22 00 30 00 00 00 00       $  ANS027:781 03 22 00 30 00 00 00 00

  $  000:电池组当前总电压       $    $  V            $    $  ANS000.BYTE004  $  if((x1>0x03)||((x1==0x03)&&(x2>0xE8)))y=@00d6;else y=x1*256+x2;
  $  001:电池组当前总电流       $    $  A            $    $  ANS001.BYTE004  $  if((x1>0x03)||((x1==0x03)&&(x2>0xE8)))y=@00d6;else y=x1*256+x2-500;
  $  002:电池的健康指数         $    $  %            $    $  ANS002.BYTE004  $  y=x;
  $  003:剩余电池容量           $    $  %            $    $  ANS003.BYTE004  $  y=x;
  $  004:电池组最高温度         $    $  degree C     $    $  ANS004.BYTE004  $  y=x-40;
  $  005:电池组品检代号         $    $               $    $  ANS005.BYTE004  $  if(x<0x0A)y=x;else if(x<0x14)y=SPRINTF([b%d],x-0x0A);else if(x<0x1E)y=SPRINTF([c%d],x-0x14);else if(x<0x28)y=SPRINTF([d%d],x-0x1E);else if(x<0x32)y=SPRINTF([e%d],x-0x28);else if(x<0x3C)y=SPRINTF([f%d],x-0x32);else if(x<0x46)y=SPRINTF([g%d],x-0x3C);else if(x<0x50)y=SPRINTF([h%d],x-0x46);else if(x<0x5A)y=SPRINTF([i%d],x-0x50);else if(x<0x64)y=SPRINTF([j%d],x-0x5A);else if(x<0x6E)y=SPRINTF([Ba%d],x-0x64);else if(x<0x78)y=SPRINTF([Bb%d],x-0x6E);else if(x<0x82)y=SPRINTF([Bc%d],x-0x78);else if(x<0x8C)y=SPRINTF([Bd%d],x-0x82);else if(x<0x96)y=SPRINTF([Be%d],x-0x8C);else if(x<0xA0)y=SPRINTF([Bf%d],x-0x96);else if(x<0xAA)y=SPRINTF([Bg%d],x-0xA0);else if(x<0xB4)y=SPRINTF([Bh%d],x-0xAA);else if(x<0xBE)y=SPRINTF([Bi%d],x-0xB4);else if(x<0xC8)y=SPRINTF([Bj%d],x-0xBE);else if(x<0xD2)y=SPRINTF([Ca%d],x-0xC8);else if(x<0xDC)y=SPRINTF([Cb%d],x-0xD2);else if(x<0xE6)y=SPRINTF([Cc%d],x-0xDC);else if(x<0xF0)y=SPRINTF([Cd%d],x-0xE6);else if(x<0xFA)y=SPRINTF([Ce%d],x-0xF0);else if(x<0xFB)y=SPRINTF([Cf%d],x-0xFA);else y=@00d6;
  $  006:充电是否允许           $    $               $    $  ANS006.BYTE004  $  if((x&0x03)==0x01)y=@002c;else if((x&0x03)==0x02)y=@002d;else y=@00d6;
  $  007:预充状态               $    $               $    $  ANS007.BYTE004  $  if((x&0x07)==0x01)y=@0112;else if((x&0x07)==0x02)y=@0113;else if((x&0x07)==0x03)y=@0114;else if((x&0x07)==0x04)y=@0115;else y=@00d6;
  $  008:放电主接触器状态       $    $               $    $  ANS008.BYTE004  $  if((x&0x03)==0x01)y=@002e;else if((x&0x03)==0x02)y=@002f;else y=@00d6;
  $  009:预充接触器状态         $    $               $    $  ANS009.BYTE004  $  if((x&0x03)==0x01)y=@002e;else if((x&0x03)==0x02)y=@002f;else y=@00d6;
  $  010:充电接触器状态         $    $               $    $  ANS010.BYTE004  $  if((x&0x03)==0x01)y=@002e;else if((x&0x03)==0x02)y=@002f;else y=@00d6;
  $  011:放电是否允许           $    $               $    $  ANS011.BYTE004  $  if((x&0x03)==0x01)y=@002c;else if((x&0x03)==0x02)y=@002d;else y=@00d6;
  $  012:最低电压电池号         $    $               $    $  ANS012.BYTE004  $  if((x1>0x01)||((x1==0x01)&&(x2>0xF7)))y=@00d6;else y=(x1*256+x2)+1;
  $  013:最低单节电池电压       $    $  V            $    $  ANS013.BYTE004  $  if((x1>0x01)||((x1==0x01)&&(x2>0xF4)))y=@00d6;else y=0.01*(x1*256+x2);
  $  014:最高电压电池号         $    $               $    $  ANS014.BYTE004  $  if((x1>0x01)||((x1==0x01)&&(x2>0xF7)))y=@00d6;else y=(x1*256+x2)+1;
  $  015:最高单节电池电压       $    $  V            $    $  ANS015.BYTE004  $  if((x1>0x01)||((x1==0x01)&&(x2>0xF4)))y=@00d6;else y=0.01*(x1*256+x2);
  $  016:最低温度电池号         $    $               $    $  ANS016.BYTE004  $  if((x1>0x01)||((x1==0x01)&&(x2>0xF7)))y=@00d6;else y=(x1*256+x2)+1;
  $  017:最低单节电池温度       $    $  degree C     $    $  ANS017.BYTE004  $  if(x>0xC8)y=@00d6;else y=x-40;
  $  018:最高温度电池号         $    $               $    $  ANS018.BYTE004  $  if((x1>0x01)||((x1==0x01)&&(x2>0xF7)))y=@00d6;else y=(x1*256+x2)+1;
  $  019:最高单节电池温度       $    $  degree C     $    $  ANS019.BYTE004  $  if(x>0xC8)y=@00d6;else y=x-40;
  $  020:电池组充电状态         $    $               $    $  ANS020.BYTE004  $  if((x&0x03)==0x01)y=@0022;else if((x&0x03)==0x02)y=@010d;else if((x&0x03)==0x03)y=@010e;else y=@00d6;
  $  021:电池组温度状态         $    $               $    $  ANS021.BYTE004  $  if((x&0x03)==0x01)y=@0022;else if((x&0x03)==0x02)y=@0680;else if((x&0x03)==0x03)y=@0681;else y=@00d6;
  $  022:电池组漏电状态         $    $               $    $  ANS022.BYTE004  $  if((x&0x03)==0x01)y=@0022;else if((x&0x03)==0x02)y=@0110;else if((x&0x03)==0x03)y=@06af;else y=@00d6;
  $  023:电池组电量状态         $    $               $    $  ANS023.BYTE004  $  if((x&0x03)==0x01)y=@0022;else if((x&0x03)==0x02)y=@010f;else y=@00d6;
  $  024:湿度状态               $    $               $    $  ANS024.BYTE004  $  if((x&0x03)==0x01)y=@0022;else if((x&0x03)==0x02)y=@010a;else y=@00d6;
  $  025:过流状态               $    $               $    $  ANS025.BYTE004  $  if((x&0x03)==0x01)y=@0022;else if((x&0x03)==0x02)y=@0118;else y=@00d6;
  $  026:电压过低报警           $    $               $    $  ANS026.BYTE004  $  if((x&0x03)==0x01)y=@0022;else if((x&0x03)==0x02)y=@010d;else if((x&0x03)==0x03)y=@010e;else y=@00d6;
  $  027:电压过高报警           $    $               $    $  ANS027.BYTE004  $  if((x&0x03)==0x01)y=@0022;else if((x&0x03)==0x02)y=@010d;else if((x&0x03)==0x03)y=@010e;else y=@00d6;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:781 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
