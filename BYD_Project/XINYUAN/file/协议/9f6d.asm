
    车型ID：9f6d

    模拟：协议模拟-->9f6d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~250K$~18FC0017

进入命令:

  $~  REQ000:0       $~  ANS000:18FC0017

空闲命令:


退出命令:



;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:010220002400001c7e000b8       $  ANS000:18FC001710220002400001c7e000b8

  $  000.累计里程           $    $  千米     $    $  ANS000.BYTE001  $  y=(x1+x2*256+x3*256*256+x4*256*256*256)*0.125;
  $  001.前左车门状态       $    $           $    $  ANS000.BYTE005  $  if((x&0x01)==0x01) y=@0014;else y=@0015;
  $  002.前右车门状态       $    $           $    $  ANS000.BYTE005  $  if((x&0x02)==0x02) y=@0014;else y=@0015;
  $  003.后左车门状态       $    $           $    $  ANS000.BYTE005  $  if((x&0x04)==0x04) y=@0014;else y=@0015;
  $  004.后右车门状态       $    $           $    $  ANS000.BYTE005  $  if((x&0x08)==0x08) y=@0014;else y=@0015;
  $  005.前仓盖状态         $    $           $    $  ANS000.BYTE005  $  if((x&0x10)==0x10) y=@0014;else y=@0015;
  $  006.后仓门状态         $    $           $    $  ANS000.BYTE005  $  if((x&0x20)==0x20) y=@0014;else y=@0015;
  $  007.安全带状态         $    $           $    $  ANS000.BYTE005  $  if((x&0x40)==0x40) y=@0001;else y=@0002;

;******************************************************************************************************************************************************

