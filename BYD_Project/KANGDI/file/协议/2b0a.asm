
    车型ID：2b0a

    模拟：协议模拟-->2b0a

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~250K$~18A606FF,18A608FF,18A610FF,18AA10FF,18AA13FF,10AA50A6,18A410FF

进入命令:


空闲命令:


退出命令:



;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:0       $%  ANS000:18A606FF

  $%  000:厂商码:            $%    $%  ANS000.BYTE0-4  $%  if(x==0x00) y=@009c;else if(x==0x01) y=@005f;else if(x==0x02) y=@0083;else if(x==0x03) y=@0084;else if(x==0x04) y=@0085;else if(x==0x05) y=@0086;else if(x==0x06) y=@0087;else if(x==0x07) y=@009d;else if(x==0x08) y=@009e;else if(x==0x0b) y=@009f;else if(x==0x0c) y=@00a0;else if(x==0x15) y=@00a1;else if(x==0x16) y=@00a2;else if(x==0x1F) y=@00a3;else if(x==0x29) y=@00a4;else if(x==0x2a) y=@00a5;else if(x==0x2b) y=@00a6;else if(x==0x33) y=@00a7;else if(x==0x37) y=@00a8;else if(x==0x3d) y=@00a9;else if(x==0x47) y=@00aa;else if(x==0x48) y=@00ab;else if(x==0x51) y=@00ac;else if(x==0x66) y=@00b0;else y=SPRINTF([%d],x);
  $%  001:硬件版本:          $%    $%  ANS000.BYTE0-2  $%  y=SPRINTF([V%02X.%02X],X1,X2);
  $%  002:软件版本:          $%    $%  ANS000.BYTE000  $%  y=SPRINTF([V%02X.%02X],X1,X2);
  $%  003:设备唯一码：       $%    $%  ANS000.BYTE000  $%  y=@011f;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:0       $  ANS000:18A606FF

  $  000.额定输出电压             $    $  V       $    $  ANS000.BYTE0-4  $  y=x2*0x100+x1;
  $  001.额定输出电流             $    $  A       $    $  ANS000.BYTE0-2  $  y=(x2*0x100+x1)*0.1;
  $  002.充电机输出电压           $    $  V       $    $  ANS000.BYTE0-4  $  y=(x2*0x100+x1)*0.1;
  $  003.充电机输出电流           $    $  A       $    $  ANS000.BYTE0-2  $  y=(x2*0x100+x1)*0.1;
  $  004.充电电量                 $    $  Kwh     $    $  ANS000.BYTE000  $  y=(x2*0x100+x1)*0.1;
  $  005.充电模式                 $    $          $    $  ANS000.BYTE002  $  if(((x1>>0)&1)) y=@0043;else y=@0044;
  $  006.充电机硬件故障           $    $          $    $  ANS000.BYTE003  $  if(((x1>>0)&1)) y=@0001;else y=@0000;
  $  007.充电机过温故障           $    $          $    $  ANS000.BYTE003  $  if(((x1>>1)&1)) y=@0001;else y=@0000;
  $  008.充电机输入电压故障       $    $          $    $  ANS000.BYTE003  $  if(((x1>>2)&1)) y=@0001;else y=@0000;
  $  009.充电机启动错误           $    $          $    $  ANS000.BYTE003  $  if(((x1>>3)&1)) y=@0001;else y=@0000;
  $  010.充电机通讯错误           $    $          $    $  ANS000.BYTE003  $  if(((x1>>4)&1)) y=@0001;else y=@0000;
  $  011.充电枪是否插入           $    $          $    $  ANS000.BYTE001  $  if(((x1>>1)&1)) y=@0057;else y=@0058;
  $  012.车辆是否在充电中         $    $          $    $  ANS000.BYTE001  $  if(((x1>>2)&1)) y=@005d;else y=@005e;
  $  013.充电锁状态               $    $          $    $  ANS000.BYTE002  $  if(((x1>>5)&1)) y=@000e;else y=@000f;

;******************************************************************************************************************************************************

