
    ����ID��a208

    ģ�⣺Э��ģ��-->a208

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

  $*$*DTC/a20c0000_2BYTE


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

  $%  000:������:          $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  001:Ӳ����:          $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  002:��������:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

��������: 

  $)  00.��ǰ��
  $  00.��ǰ��
  $  REQ000:754 03 22 00 04 00 00 00 00       $  ANS000:75C 03 22 00 04 00 00 00 00

  $  000:��ǰ��ID             $    $          $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4);
  $  001:��ǰ���ź�״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  002:��ǰ��©��״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@009e;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  003:��ǰ��ѹ��״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  004:��ǰ��ѹ��ֵ         $    $  kPa     $    $  ANS000.BYTE008  $  if(x1==0x00) y=(x4%16)*256+x3;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;

  $)  01.��ǰ��
  $  01.��ǰ��
  $  REQ000:754 03 22 00 05 00 00 00 00       $  ANS000:75C 03 22 00 05 00 00 00 00

  $  000:��ǰ��ID             $    $          $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4);
  $  001:��ǰ���ź�״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  002:��ǰ��©��״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@009e;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  003:��ǰ��ѹ��״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  004:��ǰ��ѹ��ֵ         $    $  kPa     $    $  ANS000.BYTE008  $  if(x1==0x00) y=(x4%16)*256+x3;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;

  $)  02.�����
  $  02.�����
  $  REQ000:754 03 22 00 06 00 00 00 00       $  ANS000:75C 03 22 00 06 00 00 00 00

  $  000:�����ID             $    $          $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4);
  $  001:������ź�״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  002:�����©��״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@009e;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  003:�����ѹ��״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  004:�����ѹ��ֵ         $    $  kPa     $    $  ANS000.BYTE008  $  if(x1==0x00) y=(x4%16)*256+x3;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;

  $)  03.�Һ���
  $  03.�Һ���
  $  REQ000:754 03 22 00 07 00 00 00 00       $  ANS000:75C 03 22 00 07 00 00 00 00

  $  000:�Һ���ID             $    $          $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4);
  $  001:�Һ����ź�״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  002:�Һ���©��״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@009e;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  003:�Һ���ѹ��״̬       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  004:�Һ���ѹ��ֵ         $    $  kPa     $    $  ANS000.BYTE008  $  if(x1==0x00) y=(x4%16)*256+x3;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:754 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
