
    ����ID��1c33

    ģ�⣺Э��ģ��-->1c33

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~75C

��������:

  $~  REQ000:754 02 10 01 00 00 00 00 00       $~  ANS000:75C 02 10 01 00 00 00 00 00
  $~  REQ001:754 03 22 F1 94 00 00 00 00       $~  ANS001:75C 03 22 F1 94 00 00 00 00

��������:

  $!  REQ000:754 02 3E 80 00 00 00 00 00       $!  ANS000:75C 02 3E 80 00 00 00 00 00

�˳�����:



;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:754 03 19 02 09 00 00 00 00       $#  ANS000:75C 03 19 02 09 00 00 00 00

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:754 04 14 FF FF FF 00 00 00       $$  ANS000:75C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:754 03 22 F1 93 00 00 00 00       $%  ANS000:75C 03 22 F1 93 00 00 00 00
  $%  REQ001:754 03 22 F1 94 00 00 00 00       $%  ANS001:75C 03 22 F1 94 00 00 00 00
  $%  REQ002:754 03 22 F1 95 00 00 00 00       $%  ANS002:75C 03 22 F1 95 00 00 00 00

  $%  000:Ӳ���汾:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:Ӳ������:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $%  002:�������:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:�����汾:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:��������:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $%  005:�޸Ĵ���:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

��������: 

  $  REQ000:754 03 22 00 04 00 00 00 00       $  ANS000:75C 03 22 00 04 00 00 00 00
  $  REQ001:754 03 22 00 05 00 00 00 00       $  ANS001:75C 03 22 00 05 00 00 00 00
  $  REQ002:754 03 22 00 06 00 00 00 00       $  ANS002:75C 03 22 00 06 00 00 00 00
  $  REQ003:754 03 22 00 07 00 00 00 00       $  ANS003:75C 03 22 00 07 00 00 00 00

  $  000.��ǰ��ID             $    $          $    $  ANS000.BYTE004  $  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $  001.��ǰ���ź�״̬       $    $          $    $  ANS000.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0x00)y=@0045;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else y=@007f;
  $  002.��ǰ��©��״̬       $    $          $    $  ANS000.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else if((x5==0x00)&&((x6&0x03)==0x00)) y=@0045;else if((x5==0x00)&&((x6&0x03)==0x01)) y=@02c9;else if((x5==0x00)&&((x6&0x03)==0x02)) y=@02ca;else if((x5==0x00)&&((x6&0x03)==0x03)) y=@0002;else y=@007f;
  $  003.��ǰ��ѹ��״̬       $    $          $    $  ANS000.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else if((x5==0x00)&&((x6&0x0C)==0x00)) y=@0045;else if((x5==0x00)&&((x6&0x0C)==0x04)) y=@02cb;else if((x5==0x00)&&((x6&0x0C)==0x08)) y=@02cc;else if((x5==0x00)&&((x6&0x0C)==0x0C)) y=@0002;else y=@007f;
  $  004.��ǰ��ѹ��ֵ         $    $  kPa     $    $  ANS000.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0x00)y=(x8%16)*256+x7;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else y=@007f;
  $  005.��ǰ��ID             $    $          $    $  ANS001.BYTE004  $  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $  006.��ǰ���ź�״̬       $    $          $    $  ANS001.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0x00)y=@0045;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else y=@007f;
  $  007.��ǰ��©��״̬       $    $          $    $  ANS001.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else if((x5==0x00)&&((x6&0x03)==0x00)) y=@0045;else if((x5==0x00)&&((x6&0x03)==0x01)) y=@02c9;else if((x5==0x00)&&((x6&0x03)==0x02)) y=@02ca;else if((x5==0x00)&&((x6&0x03)==0x03)) y=@0002;else y=@007f;
  $  008.��ǰ��ѹ��״̬       $    $          $    $  ANS001.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else if((x5==0x00)&&((x6&0x0C)==0x00)) y=@0045;else if((x5==0x00)&&((x6&0x0C)==0x04)) y=@02cb;else if((x5==0x00)&&((x6&0x0C)==0x08)) y=@02cc;else if((x5==0x00)&&((x6&0x0C)==0x0C)) y=@0002;else y=@007f;
  $  009.��ǰ��ѹ��ֵ         $    $  kPa     $    $  ANS001.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0x00)y=(x8%16)*256+x7;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else y=@007f;
  $  010.�����ID             $    $          $    $  ANS002.BYTE004  $  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $  011.������ź�״̬       $    $          $    $  ANS002.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0x00)y=@0045;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else y=@007f;
  $  012.�����©��״̬       $    $          $    $  ANS002.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else if((x5==0x00)&&((x6&0x03)==0x00)) y=@0045;else if((x5==0x00)&&((x6&0x03)==0x01)) y=@02c9;else if((x5==0x00)&&((x6&0x03)==0x02)) y=@02ca;else if((x5==0x00)&&((x6&0x03)==0x03)) y=@0002;else y=@007f;
  $  013.�����ѹ��״̬       $    $          $    $  ANS002.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else if((x5==0x00)&&((x6&0x0C)==0x00)) y=@0045;else if((x5==0x00)&&((x6&0x0C)==0x04)) y=@02cb;else if((x5==0x00)&&((x6&0x0C)==0x08)) y=@02cc;else if((x5==0x00)&&((x6&0x0C)==0x0C)) y=@0002;else y=@007f;
  $  014.�����ѹ��ֵ         $    $  kPa     $    $  ANS002.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0x00)y=(x8%16)*256+x7;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else y=@007f;
  $  015.�Һ���ID             $    $          $    $  ANS003.BYTE004  $  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $  016.�Һ����ź�״̬       $    $          $    $  ANS003.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0x00)y=@0045;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else y=@007f;
  $  017.�Һ���©��״̬       $    $          $    $  ANS003.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else if((x5==0x00)&&((x6&0x03)==0x00)) y=@0045;else if((x5==0x00)&&((x6&0x03)==0x01)) y=@02c9;else if((x5==0x00)&&((x6&0x03)==0x02)) y=@02ca;else if((x5==0x00)&&((x6&0x03)==0x03)) y=@0002;else y=@007f;
  $  018.�Һ���ѹ��״̬       $    $          $    $  ANS003.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else if((x5==0x00)&&((x6&0x0C)==0x00)) y=@0045;else if((x5==0x00)&&((x6&0x0C)==0x04)) y=@02cb;else if((x5==0x00)&&((x6&0x0C)==0x08)) y=@02cc;else if((x5==0x00)&&((x6&0x0C)==0x0C)) y=@0002;else y=@007f;
  $  019.�Һ���ѹ��ֵ         $    $  kPa     $    $  ANS003.BYTE004  $  if((x1==0xFF)&&(x2==0xFF)&&(x3==0xFF)&&(x4==0xFF)&&(x5!=0x00)) y=@02c8;else if(x5==0x00)y=(x8%16)*256+x7;else if(x5==0xFF)y=@01d8;else if(x5==0x01)y=@01d9;else y=@007f;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:754 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
