
    ����ID��3c47

    ģ�⣺Э��ģ��-->3c47

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~767,707

��������:

  $~  REQ000:767 02 10 03 00 00 00 00 00       $~  ANS000:767 02 10 03 00 00 00 00 00

��������:

  $!  REQ000:767 02 3E 00 00 00 00 00 00       $!  ANS000:767 02 3E 00 00 00 00 00 00

�˳�����:



;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:767 03 19 02 09 00 00 00 00       $#  ANS000:767 03 19 02 09 00 00 00 00

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/10000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:767 04 14 FF FF FF 00 00 00       $$  ANS000:767 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:767 03 22 F1 87 00 00 00 00       $%  ANS000:767 03 22 F1 87 00 00 00 00
  $%  REQ001:767 03 22 F1 97 00 00 00 00       $%  ANS001:767 03 22 F1 97 00 00 00 00
  $%  REQ002:767 03 22 F1 8A 00 00 00 00       $%  ANS002:767 03 22 F1 8A 00 00 00 00
  $%  REQ003:767 03 22 F1 93 00 00 00 00       $%  ANS003:767 03 22 F1 93 00 00 00 00
  $%  REQ004:767 03 22 F1 95 00 00 00 00       $%  ANS004:767 03 22 F1 95 00 00 00 00
  $%  REQ005:767 03 22 F1 8C 00 00 00 00       $%  ANS005:767 03 22 F1 8C 00 00 00 00
  $%  REQ006:767 03 22 F1 00 00 00 00 00       $%  ANS006:767 03 22 F1 00 00 00 00 00
  $%  REQ007:767 03 22 F1 99 00 00 00 00       $%  ANS007:767 03 22 F1 99 00 00 00 00
  $%  REQ008:767 03 22 F1 90 00 00 00 00       $%  ANS008:767 03 22 F1 90 00 00 00 00

  $%  000:�������ĸ���:                 $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  001:ϵͳ����:                       $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  002:ϵͳ��Ӧ�̱�ʶ:                 $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:��ص�Ԫ(ECU)Ӳ���汾��:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  004:��ص�Ԫ(ECU)�����汾��:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  005:��ص�Ԫ(ECU)���к�:            $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:���������Ϣ:                   $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3);
  $%  007:�������:                       $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  008:����ʶ�����:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

��������: 

  $)  00.�����ǰ��̥״̬
  $  00.�����ǰ��̥״̬
  $  REQ000:767 03 22 55 01 00 00 00 00       $  ANS000:767 03 22 55 01 00 00 00 00

  $  000.��ǰ��̥ѹ��               $    $  bar      $    $  ANS000.BYTE004  $  y=x/36.0;
  $  001.��ǰ��̥�¶�               $    $  degC     $    $  ANS000.BYTE005  $  y=x-60.0;
  $  002.��ǰ��̥ѹ������           $    $           $    $  ANS000.BYTE006  $  if(((x>>5)&1)) y=@0046;else if(((x>>6)&1)) y=@0007;else if(((x>>7)&1)) y=@0047;else y=@0048;
  $  003.��ǰ��̥�¶Ⱦ���           $    $           $    $  ANS000.BYTE006  $  if(((x>>1)&1)) y=@0006;else y=@004b;
  $  004.��ǰ��̥ϵͳ����״̬       $    $           $    $  ANS000.BYTE006  $  if(((x>>0)&1)) y=@0049;else y=@004a;

  $)  01.�����ǰ��̥״̬
  $  01.�����ǰ��̥״̬
  $  REQ000:767 03 22 55 F0 00 00 00 00       $  ANS000:767 03 22 55 F0 00 00 00 00

  $  000.��ǰ��̥ѹ��               $    $  bar      $    $  ANS000.BYTE004  $  y=x/36.0;
  $  001.��ǰ��̥�¶�               $    $  degC     $    $  ANS000.BYTE005  $  y=x-60.0;
  $  002.��ǰ��̥ѹ������           $    $           $    $  ANS000.BYTE006  $  if(((x>>2)&1)) y=@0046;else if(((x>>3)&1)) y=@0007;else if(((x>>4)&1)) y=@0047;else y=@0048;
  $  003.��ǰ��̥�¶Ⱦ���           $    $           $    $  ANS000.BYTE006  $  if(((x>>1)&1)) y=@0006;else y=@004b;
  $  004.��ǰ��̥ϵͳ����״̬       $    $           $    $  ANS000.BYTE006  $  if(((x>>0)&1)) y=@0049;else y=@004a;

  $)  02.����Һ���̥״̬
  $  02.����Һ���̥״̬
  $  REQ000:767 03 22 55 02 00 00 00 00       $  ANS000:767 03 22 55 02 00 00 00 00

  $  000.�Һ���̥ѹ��               $    $  bar      $    $  ANS000.BYTE004  $  y=x/36.0;
  $  001.�Һ���̥�¶�               $    $  degC     $    $  ANS000.BYTE005  $  y=x-60.0;
  $  002.�Һ���̥ѹ������           $    $           $    $  ANS000.BYTE007  $  if(((x>>5)&1)) y=@0046;else if(((x>>6)&1)) y=@0007;else if(((x>>7)&1)) y=@0047;else y=@0048;
  $  003.�Һ���̥�¶Ⱦ���           $    $           $    $  ANS000.BYTE007  $  if(((x>>1)&1)) y=@0006;else y=@004b;
  $  004.�Һ���̥ϵͳ����״̬       $    $           $    $  ANS000.BYTE007  $  if(((x>>0)&1)) y=@0049;else y=@004a;

  $)  03.��������̥״̬
  $  03.��������̥״̬
  $  REQ000:767 03 22 55 03 00 00 00 00       $  ANS000:767 03 22 55 03 00 00 00 00

  $  000.�����̥ѹ��               $    $  bar      $    $  ANS000.BYTE004  $  y=x/36.0;
  $  001.�����̥�¶�               $    $  degC     $    $  ANS000.BYTE005  $  y=x-60.0;
  $  002.�����̥ѹ������           $    $           $    $  ANS000.BYTE007  $  if(((x>>2)&1)) y=@0046;else if(((x>>3)&1)) y=@0007;else if(((x>>4)&1)) y=@0047;else y=@0048;
  $  003.�����̥�¶Ⱦ���           $    $           $    $  ANS000.BYTE007  $  if(((x>>1)&1)) y=@0006;else y=@004b;
  $  004.�����̥ϵͳ����״̬       $    $           $    $  ANS000.BYTE007  $  if(((x>>0)&1)) y=@0049;else y=@004a;

  $)  04.��ص�ѹ
  $  04.��ص�ѹ
  $  REQ000:767 03 22 55 09 00 00 00 00       $  ANS000:767 03 22 55 09 00 00 00 00

  $  000.��ص�ѹ       $    $  V     $    $  ANS000.BYTE004  $  y=x/10.0;

  $)  05.��̥������ID
  $  05.��̥������ID
  $  REQ000:767 03 22 55 05 00 00 00 00       $  ANS000:767 03 22 55 05 00 00 00 00
  $  REQ001:767 03 22 55 06 00 00 00 00       $  ANS001:767 03 22 55 06 00 00 00 00
  $  REQ002:767 03 22 55 07 00 00 00 00       $  ANS002:767 03 22 55 07 00 00 00 00
  $  REQ003:767 03 22 55 08 00 00 00 00       $  ANS003:767 03 22 55 08 00 00 00 00

  $  000.��ǰ��̥������ID       $    $       $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4);
  $  001.��ǰ��̥������ID       $    $       $    $  ANS001.BYTE004  $  HEX(x1,x2,x3,x4);
  $  002.�����̥������ID       $    $       $    $  ANS002.BYTE004  $  HEX(x1,x2,x3,x4);
  $  003.�Һ���̥������ID       $    $       $    $  ANS003.BYTE004  $  HEX(x1,x2,x3,x4);

  $)  06.��׼��̥״̬
  $  06.��׼��̥״̬
  $  REQ000:767 03 22 55 04 00 00 00 00       $  ANS000:767 03 22 55 04 00 00 00 00

  $  000.ǰ����̥ѹ��       $    $  bar     $    $  ANS000.BYTE004  $  y=x/36.0;
  $  001.������̥ѹ��       $    $  bar     $    $  ANS000.BYTE005  $  y=x/36.0;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:767 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:767 30 00 14 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
