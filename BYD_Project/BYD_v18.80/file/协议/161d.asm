
    ����ID��161d

    ģ�⣺Э��ģ��-->161d

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~75C

��������:

  $~  REQ000:754 02 10 01 00 00 00 00 00       $~  ANS000:75C 02 10 01 00 00 00 00 00

��������:

  $!  REQ000:754 02 3E 80 00 00 00 00 00       $!  ANS000:75C 02 3E 80 00 00 00 00 00

�˳�����:



;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:754 04 18 00 00 FF 00 00 00       $#  ANS000:75C 04 18 00 00 FF 00 00 00

		���ƹ�ʽ��
			y=(x1<<8)+x2;

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

  $%  000:�����汾:        $%    $%  ANS000.BYTE004  $%  y=x1/10.0;
  $%  001:Ӳ���汾:        $%    $%  ANS000.BYTE005  $%  y=x1/10.0;
  $%  002:��������:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);

;******************************************************************************************************************************************************

��������: 

  $  REQ000:754 03 22 00 04 00 00 00 00       $  ANS000:75C 03 22 00 04 00 00 00 00
  $  REQ001:754 03 22 00 05 00 00 00 00       $  ANS001:75C 03 22 00 05 00 00 00 00
  $  REQ002:754 03 22 00 06 00 00 00 00       $  ANS002:75C 03 22 00 06 00 00 00 00
  $  REQ003:754 03 22 00 07 00 00 00 00       $  ANS003:75C 03 22 00 07 00 00 00 00

  $  000.��ǰ��ID             $    $          $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4);
  $  001.��ǰ���ź�״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@0045;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  002.��ǰ��©��״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@010e;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  003.��ǰ��ѹ��״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@0045;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  004.��ǰ��ѹ��ֵ         $    $  kPa     $    $  ANS000.BYTE008  $  if(x1==0x00) y=(x4%16)*256+x3;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  005.��ǰ��ID             $    $          $    $  ANS001.BYTE004  $  HEX(x1,x2,x3,x4);
  $  006.��ǰ���ź�״̬       $    $          $    $  ANS001.BYTE008  $  if(x1==0x00)y=@0045;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  007.��ǰ��©��״̬       $    $          $    $  ANS001.BYTE008  $  if(x1==0x00)y=@010e;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  008.��ǰ��ѹ��״̬       $    $          $    $  ANS001.BYTE008  $  if(x1==0x00)y=@0045;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  009.��ǰ��ѹ��ֵ         $    $  kPa     $    $  ANS001.BYTE008  $  if(x1==0x00) y=(x4%16)*256+x3;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  010.�����ID             $    $          $    $  ANS002.BYTE004  $  HEX(x1,x2,x3,x4);
  $  011.������ź�״̬       $    $          $    $  ANS002.BYTE008  $  if(x1==0x00)y=@0045;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  012.�����©��״̬       $    $          $    $  ANS002.BYTE008  $  if(x1==0x00)y=@010e;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  013.�����ѹ��״̬       $    $          $    $  ANS002.BYTE008  $  if(x1==0x00)y=@0045;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  014.�����ѹ��ֵ         $    $  kPa     $    $  ANS002.BYTE008  $  if(x1==0x00) y=(x4%16)*256+x3;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  015.�Һ���ID             $    $          $    $  ANS003.BYTE004  $  HEX(x1,x2,x3,x4);
  $  016.�Һ����ź�״̬       $    $          $    $  ANS003.BYTE008  $  if(x1==0x00)y=@0045;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  017.�Һ���©��״̬       $    $          $    $  ANS003.BYTE008  $  if(x1==0x00)y=@010e;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  018.�Һ���ѹ��״̬       $    $          $    $  ANS003.BYTE008  $  if(x1==0x00)y=@0045;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;
  $  019.�Һ���ѹ��ֵ         $    $  kPa     $    $  ANS003.BYTE008  $  if(x1==0x00) y=(x4%16)*256+x3;else if(x1==0xff)y=@01d8;else if(x1==0x01)y=@01d9;else y=@007f;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:754 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
