
    ����ID��1d29

    ģ�⣺Э��ģ��-->1d29

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k

��������:

  $~  REQ000:754 02 10 01 00 00 00 00 00       $~  ANS000:75C 02 10 01 00 00 00 00 00

��������:

  $!  REQ000:754 02 3E 80 00 00 00 00 00       $!  ANS000:75C 02 3E 80 00 00 00 00 00

�˳�����:



;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:754 04 18 00 00 FF 00 00 00       $#  ANS000:75C 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 ���ƹ������������$#ANS000.BYTE3$#��ʼÿ$#3$#���ֽڱ�ʾһ�������룬ǰ$#2$#��ʾ��š�

  ���:

  $*$*DTC/feff0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

���������:

  $$  REQ000:754 03 14 00 FF 00 00 00 00       $$  ANS000:75C 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:754 03 22 00 01 00 00 00 00       $%  ANS000:75C 03 22 00 01 00 00 00 00

  $%  000:�����汾:        $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:Ӳ���汾:        $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:��������:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

��������: 

  $  REQ000:754 03 22 00 04 00 00 00 00       $  ANS000:75C 03 22 00 04 00 00 00 00
  $  REQ001:754 03 22 00 05 00 00 00 00       $  ANS001:75C 03 22 00 05 00 00 00 00
  $  REQ002:754 03 22 00 06 00 00 00 00       $  ANS002:75C 03 22 00 06 00 00 00 00
  $  REQ003:754 03 22 00 07 00 00 00 00       $  ANS003:75C 03 22 00 07 00 00 00 00

  $  000:��ǰ��ID             $    $          $    $  ANS000.BYTE004  $  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $  001:��ǰ���ź�״̬       $    $          $    $  ANS000.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0x00)y=@0022;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else y=@0076;
  $  002:��ǰ��©��״̬       $    $          $    $  ANS000.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else if((x5==0x00)&&((x6&0x03)==0x00)) y=@0022;else if((x5==0x00)&&((x6&0x03)==0x01)) y=@03a3;else if((x5==0x00)&&((x6&0x03)==0x02)) y=@03a4;else if((x5==0x00)&&((x6&0x03)==0x03)) y=@001c;else y=@0076;
  $  003:��ǰ��ѹ��״̬       $    $          $    $  ANS000.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else if((x5==0x00)&&((x6&0x0C)==0x00)) y=@0022;else if((x5==0x00)&&((x6&0x0C)==0x04)) y=@03a1;else if((x5==0x00)&&((x6&0x0C)==0x08)) y=@03a2;else if((x5==0x00)&&((x6&0x0C)==0x0C)) y=@001c;else y=@0076;
  $  004:��ǰ��ѹ��ֵ         $    $  kPa     $    $  ANS000.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0x00)y=(x8%16)*256+x7;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else y=@0076;
  $  005:��ǰ��ID             $    $          $    $  ANS001.BYTE004  $  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $  006:��ǰ���ź�״̬       $    $          $    $  ANS001.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0x00)y=@0022;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else y=@0076;
  $  007:��ǰ��©��״̬       $    $          $    $  ANS001.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else if((x5==0x00)&&((x6&0x03)==0x00)) y=@0022;else if((x5==0x00)&&((x6&0x03)==0x01)) y=@03a3;else if((x5==0x00)&&((x6&0x03)==0x02)) y=@03a4;else if((x5==0x00)&&((x6&0x03)==0x03)) y=@001c;else y=@0076;
  $  008:��ǰ��ѹ��״̬       $    $          $    $  ANS001.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else if((x5==0x00)&&((x6&0x0C)==0x00)) y=@0022;else if((x5==0x00)&&((x6&0x0C)==0x04)) y=@03a1;else if((x5==0x00)&&((x6&0x0C)==0x08)) y=@03a2;else if((x5==0x00)&&((x6&0x0C)==0x0C)) y=@001c;else y=@0076;
  $  009:��ǰ��ѹ��ֵ         $    $  kPa     $    $  ANS001.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0x00)y=(x8%16)*256+x7;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else y=@0076;
  $  010:�����ID             $    $          $    $  ANS002.BYTE004  $  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $  011:������ź�״̬       $    $          $    $  ANS002.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0x00)y=@0022;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else y=@0076;
  $  012:�����©��״̬       $    $          $    $  ANS002.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else if((x5==0x00)&&((x6&0x03)==0x00)) y=@0022;else if((x5==0x00)&&((x6&0x03)==0x01)) y=@03a3;else if((x5==0x00)&&((x6&0x03)==0x02)) y=@03a4;else if((x5==0x00)&&((x6&0x03)==0x03)) y=@001c;else y=@0076;
  $  013:�����ѹ��״̬       $    $          $    $  ANS002.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else if((x5==0x00)&&((x6&0x0C)==0x00)) y=@0022;else if((x5==0x00)&&((x6&0x0C)==0x04)) y=@03a1;else if((x5==0x00)&&((x6&0x0C)==0x08)) y=@03a2;else if((x5==0x00)&&((x6&0x0C)==0x0C)) y=@001c;else y=@0076;
  $  014:�����ѹ��ֵ         $    $  kPa     $    $  ANS002.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0x00)y=(x8%16)*256+x7;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else y=@0076;
  $  015:�Һ���ID             $    $          $    $  ANS003.BYTE004  $  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $  016:�Һ����ź�״̬       $    $          $    $  ANS003.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0x00)y=@0022;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else y=@0076;
  $  017:�Һ���©��״̬       $    $          $    $  ANS003.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else if((x5==0x00)&&((x6&0x03)==0x00)) y=@0022;else if((x5==0x00)&&((x6&0x03)==0x01)) y=@03a3;else if((x5==0x00)&&((x6&0x03)==0x02)) y=@03a4;else if((x5==0x00)&&((x6&0x03)==0x03)) y=@001c;else y=@0076;
  $  018:�Һ���ѹ��״̬       $    $          $    $  ANS003.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else if((x5==0x00)&&((x6&0x0C)==0x00)) y=@0022;else if((x5==0x00)&&((x6&0x0C)==0x04)) y=@03a1;else if((x5==0x00)&&((x6&0x0C)==0x08)) y=@03a2;else if((x5==0x00)&&((x6&0x0C)==0x0C)) y=@001c;else y=@0076;
  $  019:�Һ���ѹ��ֵ         $    $  kPa     $    $  ANS003.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@0647;else if(x5==0x00)y=(x8%16)*256+x7;else if(x5==0xFF)y=@0098;else if(x5==0x01)y=@0099;else y=@0076;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:754 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
