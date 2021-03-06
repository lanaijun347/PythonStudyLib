
    车型ID：7354

    模拟：协议模拟-->7354

;******************************************************************************************************************************************************

    通讯线: $~07$~07$~10400

<VCI>
	<ACTIVE_ADDNODE type="0" num="0">
	<param type="string" value="1"/>
	<param type="string" value="6,14,11,12,3,8"/>
	</ACTIVE_ADDNODE>
</VCI>

进入命令:

  $~  REQ000:81 58 F1 81 4B       $~  ANS000:81 58 F1 81 4B
  $~  REQ001:80 58 F1 02 10 81 5C       $~  ANS001:80 58 F1 02 10 81 5C

空闲命令:

  $!  REQ000:80 58 F1 01 3E 08       $!  ANS000:80 58 F1 01 3E 08

退出命令:

  $@  REQ000:81 58 F1 82 4C       $@  ANS000:81 58 F1 82 4C


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:80 58 F1 04 18 02 FF 00 E6       $#  ANS000:80 58 F1 04 18 02 FF 00 E6

		控制公式：
			y=x1*0x100+x2; 

  ANS000.BYTE05 控制故障码个数，从$#ANS000.BYTE6$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/f9310000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:80 58 F1 03 14 FF 00 DF       $$  ANS000:80 58 F1 03 14 FF 00 DF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:80 58 F1 02 1A 8A 6F       $%  ANS000:80 58 F1 02 1A 8A 6F
  $%  REQ001:80 58 F1 02 1A 8B 70       $%  ANS001:80 58 F1 02 1A 8B 70
  $%  REQ002:80 58 F1 02 1A 8C 71       $%  ANS002:80 58 F1 02 1A 8C 71
  $%  REQ003:80 58 F1 02 1A 90 75       $%  ANS003:80 58 F1 02 1A 90 75
  $%  REQ004:80 58 F1 02 1A 91 76       $%  ANS004:80 58 F1 02 1A 91 76
  $%  REQ005:80 58 F1 02 1A 99 7E       $%  ANS005:80 58 F1 02 1A 99 7E

  $%  000:客户组件ID:             $%    $%  ANS000.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  001:内部零件号:             $%    $%  ANS001.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:系统供应商零件号:       $%    $%  ANS002.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:VIN:                    $%    $%  ANS003.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:OEM 零件号:             $%    $%  ANS004.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:生产日期:               $%    $%  ANS005.BYTE006  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff)||(x1==0&&x2==0&&x3==0&&x4==0))y=@0425;else y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:80 58 F1 02 21 01 ED       $  ANS000:80 58 F1 02 21 01 ED
  $  REQ001:80 58 F1 02 21 02 EE       $  ANS001:80 58 F1 02 21 02 EE
  $  REQ002:80 58 F1 02 21 98 84       $  ANS002:80 58 F1 02 21 98 84
  $  REQ003:80 58 F1 02 21 C0 AC       $  ANS003:80 58 F1 02 21 C0 AC

  $  000.回路1                          $    $          $    $  ANS000.BYTE006  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  001.回路1阻值                      $    $  ohm     $    $  ANS000.BYTE007  $  y=x1*0.256;
  $  002.回路2                          $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  003.回路2阻值                      $    $  ohm     $    $  ANS000.BYTE009  $  y=x1*0.256;
  $  004.回路3                          $    $          $    $  ANS000.BYTE010  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  005.回路3阻值                      $    $  ohm     $    $  ANS000.BYTE011  $  y=x1*0.256;
  $  006.回路4                          $    $          $    $  ANS000.BYTE012  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  007.回路4阻值                      $    $  ohm     $    $  ANS000.BYTE013  $  y=x1*0.256;
  $  008.回路5                          $    $          $    $  ANS000.BYTE014  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  009.回路5阻值                      $    $  ohm     $    $  ANS000.BYTE015  $  y=x1*0.256;
  $  010.回路6                          $    $          $    $  ANS000.BYTE016  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  011.回路6阻值                      $    $  ohm     $    $  ANS000.BYTE017  $  y=x1*0.256;
  $  012.回路7                          $    $          $    $  ANS000.BYTE018  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  013.回路7阻值                      $    $  ohm     $    $  ANS000.BYTE019  $  y=x1*0.256;
  $  014.回路8                          $    $          $    $  ANS000.BYTE020  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  015.回路8阻值                      $    $  ohm     $    $  ANS000.BYTE021  $  y=x1*0.256;
  $  016.回路9                          $    $          $    $  ANS000.BYTE022  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  017.回路9阻值                      $    $  ohm     $    $  ANS000.BYTE023  $  y=x1*0.256;
  $  018.回路10                         $    $          $    $  ANS000.BYTE024  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  019.回路10阻值                     $    $  ohm     $    $  ANS000.BYTE025  $  y=x1*0.256;
  $  020.回路11                         $    $          $    $  ANS000.BYTE026  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  021.回路11阻值                     $    $  ohm     $    $  ANS000.BYTE027  $  y=x1*0.256;
  $  022.回路12                         $    $          $    $  ANS000.BYTE028  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  023.回路12阻值                     $    $  ohm     $    $  ANS000.BYTE029  $  y=x1*0.256;
  $  024.回路13                         $    $          $    $  ANS000.BYTE030  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  025.回路13阻值                     $    $  ohm     $    $  ANS000.BYTE031  $  y=x1*0.256;
  $  026.回路14                         $    $          $    $  ANS000.BYTE032  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  027.回路14阻值                     $    $  ohm     $    $  ANS000.BYTE033  $  y=x1*0.256;
  $  028.回路15                         $    $          $    $  ANS000.BYTE034  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  029.回路15阻值                     $    $  ohm     $    $  ANS000.BYTE035  $  y=x1*0.256;
  $  030.回路16                         $    $          $    $  ANS000.BYTE036  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  031.回路16阻值                     $    $  ohm     $    $  ANS000.BYTE037  $  y=x1*0.256;
  $  032.回路17                         $    $          $    $  ANS000.BYTE038  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  033.回路17阻值                     $    $  ohm     $    $  ANS000.BYTE039  $  y=x1*0.256;
  $  034.回路18                         $    $          $    $  ANS000.BYTE040  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  035.回路18阻值                     $    $  ohm     $    $  ANS000.BYTE041  $  y=x1*0.256;
  $  036.回路19                         $    $          $    $  ANS000.BYTE042  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  037.回路19阻值                     $    $  ohm     $    $  ANS000.BYTE043  $  y=x1*0.256;
  $  038.回路20                         $    $          $    $  ANS000.BYTE044  $  if(x1==0x00)y=@01dd;else if(x1==0x02)y=@0447;else if(x1==0x0D)y=@0448;else if(x1==0x0E)y=@0449;else if(x1==0x0F)y=@01e1;else if(x1==0x10)y=@044a;else if(x1==0x15)y=@044b;else if(x1==0x16)y=@044c;else if(x1==0x13)y=@044d;else if(x1==0x14)y=@044e;else y=@0027;
  $  039.回路20阻值                     $    $  ohm     $    $  ANS000.BYTE045  $  y=x1*0.256;
  $  040.乘客侧带扣开关实时状态         $    $          $    $  ANS001.BYTE007  $  if((x&0x07)==0x00)y=@044f;else if((x&0x07)==0x01)y=@0450;else if((x&0x07)==0x02)y=@0451;else if((x&0x07)==0x03)y=@0452;else if((x&0x07)==0x04)y=@0453;else y=@0454;
  $  041.驾驶侧带扣开关实时状态         $    $          $    $  ANS001.BYTE007  $  if((x&0x70)==0x00)y=@044f;else if((x&0x70)==0x10)y=@0450;else if((x&0x70)==0x20)y=@0451;else if((x&0x70)==0x30)y=@0452;else if((x&0x70)==0x40)y=@0453;else y=@0454;
  $  042.乘客存在检测状态               $    $          $    $  ANS001.BYTE008  $  if((x&0x03)==0x00)y=@00c3;else if((x&0x03)==0x01)y=@00c3;else if((x&0x03)==0x02)y=@00c2;else y=@00c2;
  $  043.乘客安全气囊停用开关状态       $    $          $    $  ANS001.BYTE009  $  if((x&0x07)==0x00)y=@0455;else if((x&0x07)==0x01)y=@0456;else if((x&0x07)==0x02)y=@0457;else if((x&0x07)==0x03)y=@0458;else if((x&0x07)==0x04)y=@0459;else y=@045a;
  $  044.电池电压                       $    $  mV      $    $  ANS001.BYTE010  $  y=x;
  $  045.储能电压                       $    $  mV      $    $  ANS001.BYTE011  $  y=x;
  $  046.点火循环计数器                 $    $          $    $  ANS001.BYTE012  $  y=(x<<24)+(x2<<16)+(x3<<8)+x4;
  $  047.序列号                         $    $          $    $  ANS002.BYTE007  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  048.最后一次服务日期               $    $          $    $  ANS003.BYTE007  $  ASCII(x1,x2,x3,x4);

;******************************************************************************************************************************************************

