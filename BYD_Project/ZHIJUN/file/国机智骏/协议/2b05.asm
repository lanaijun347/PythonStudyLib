
    ����ID��2b05

    ģ�⣺Э��ģ��-->2b05

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~78A

��������:

  $~  REQ000:782 02 10 03 00 00 00 00 00       $~  ANS000:78A 02 10 03 00 00 00 00 00

��������:

  $!  REQ000:782 02 3E 00 00 00 00 00 00       $!  ANS000:78A 02 3E 00 00 00 00 00 00

�˳�����:



;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:782 03 19 02 09 00 00 00 00       $#  ANS000:78A 03 19 02 09 00 00 00 00

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3; 

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/c6000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:782 04 14 FF FF FF 00 00 00       $$  ANS000:78A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:782 03 22 F0 89 00 00 00 00       $%  ANS000:78A 03 22 F0 89 00 00 00 00
  $%  REQ001:782 03 22 F1 84 00 00 00 00       $%  ANS001:78A 03 22 F1 84 00 00 00 00
  $%  REQ002:782 03 22 F1 89 00 00 00 00       $%  ANS002:78A 03 22 F1 89 00 00 00 00
  $%  REQ003:782 03 22 F1 87 00 00 00 00       $%  ANS003:78A 03 22 F1 87 00 00 00 00
  $%  REQ004:782 03 22 F1 8A 00 00 00 00       $%  ANS004:78A 03 22 F1 8A 00 00 00 00
  $%  REQ005:782 03 22 F1 8C 00 00 00 00       $%  ANS005:78A 03 22 F1 8C 00 00 00 00
  $%  REQ006:782 03 22 F1 90 00 00 00 00       $%  ANS006:78A 03 22 F1 90 00 00 00 00
  $%  REQ007:782 03 22 F1 A2 00 00 00 00       $%  ANS007:78A 03 22 F1 A2 00 00 00 00
  $%  REQ008:782 03 22 F0 84 00 00 00 00       $%  ANS008:78A 03 22 F0 84 00 00 00 00
  $%  REQ009:782 03 22 F0 85 00 00 00 00       $%  ANS009:78A 03 22 F0 85 00 00 00 00
  $%  REQ010:782 03 22 F1 93 00 00 00 00       $%  ANS010:78A 03 22 F1 93 00 00 00 00
  $%  REQ011:782 03 22 F1 95 00 00 00 00       $%  ANS011:78A 03 22 F1 95 00 00 00 00

  $%  000:�����ǿ�ECU(���ӿ�����)Ӳ���汾���:          $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,x9,x10,x11,x12);
  $%  001:Ӧ������ָ�����ݱ�ʶ:                         $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d%02d%02d-%s],x1+2000,x2,x3,ASCII(x4,x5,x6,x7));
  $%  002:�����ǿ�ECU(���ӿ�����)�����汾���:          $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,x9,x10,x11,x12);
  $%  003:ECU(���ӿ�����)�����:                        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21); 
  $%  004:ECU(���ӿ�����)��Ӧ��ID:                      $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ECU(���ӿ�����)����:                          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%u %s %02d-%02d-%02d],(x1*0x1000000+x2*0x10000+x3*0x100+x4),ASCII(x5,x6,x7,x8,x9,x10),0x7D0+x11,x12,x13);
  $%  006:������ʶ��(VIN):                              $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:�����ڳ�����������������:                     $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);
  $%  008:��Ӧ��ECU(���ӿ�����)�ײ������汾���:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  009:��Ӧ��ECU(���ӿ�����)�궨�����汾���:        $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  010:��Ӧ��ECU(���ӿ�����)Ӳ���汾���:            $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  011:��Ӧ��ECU(���ӿ�����)�����汾���:            $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);

;******************************************************************************************************************************************************

��������: 

  $)  00.�ƹ�����״̬
  $  00.�ƹ�����״̬
  $  REQ000:782 03 22 31 02 00 00 00 00       $  ANS000:78A 03 22 31 02 00 00 00 00

  $  000.��ת���             $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@003c;else y=@003d;
  $  001.��ת���             $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@003c;else y=@003d;
  $  002.ǰ����               $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@003c;else y=@003d;
  $  003.������               $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@003c;else y=@003d;
  $  004.λ�õ�               $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@003c;else y=@003d;
  $  005.�����               $    $       $    $  ANS000.BYTE004  $  if(((x>>5)&1)) y=@003c;else y=@003d;
  $  006.Զ���               $    $       $    $  ANS000.BYTE004  $  if(((x>>6)&1)) y=@003c;else y=@003d;
  $  007.Σ�յ�(Hazard)       $    $       $    $  ANS000.BYTE004  $  if(((x>>7)&1)) y=@003c;else y=@003d;
  $  008.�Զ���               $    $       $    $  ANS000.BYTE005  $  if(((x>>2)&1)) y=@003c;else y=@003d;

  $)  01.�������״̬
  $  01.�������״̬
  $  REQ000:782 03 22 31 03 00 00 00 00       $  ANS000:78A 03 22 31 03 00 00 00 00

  $  000.ǰ�����(����)            $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@003c;else y=@003d;
  $  001.ǰ�����(����/����)       $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@003c;else y=@003d;
  $  002.ǰ�����(�Զ�/���)       $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@003c;else y=@003d;
  $  003.�����                  $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@003c;else y=@003d;

  $)  02.��������״̬
  $  02.��������״̬
  $  REQ000:782 03 22 31 04 00 00 00 00       $  ANS000:78A 03 22 31 04 00 00 00 00

  $  000.��ʻԱ����ǰ������       $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@003c;else y=@003d;
  $  001.��ʻԱ����ǰ������       $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@003c;else y=@003d;
  $  002.��ʻԱ���������       $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@003c;else y=@003d;
  $  003.��ʻԱ���Һ�����       $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@003c;else y=@003d;
  $  004.��ʻԱ����ǰ���½�       $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@003c;else y=@003d;
  $  005.��ʻԱ����ǰ���½�       $    $       $    $  ANS000.BYTE004  $  if(((x>>5)&1)) y=@003c;else y=@003d;
  $  006.��ʻԱ������½�       $    $       $    $  ANS000.BYTE004  $  if(((x>>6)&1)) y=@003c;else y=@003d;
  $  007.��ʻԱ���Һ��½�       $    $       $    $  ANS000.BYTE004  $  if(((x>>7)&1)) y=@003c;else y=@003d;
  $  008.�˿Ͳ���ǰ������         $    $       $    $  ANS000.BYTE005  $  if(((x>>0)&1)) y=@003c;else y=@003d;
  $  009.�˿Ͳ��������         $    $       $    $  ANS000.BYTE005  $  if(((x>>1)&1)) y=@003c;else y=@003d;
  $  010.�˿Ͳ��Һ�����         $    $       $    $  ANS000.BYTE005  $  if(((x>>2)&1)) y=@003c;else y=@003d;
  $  011.�˿Ͳ���ǰ���½�         $    $       $    $  ANS000.BYTE005  $  if(((x>>3)&1)) y=@003c;else y=@003d;
  $  012.�˿Ͳ�����½�         $    $       $    $  ANS000.BYTE005  $  if(((x>>4)&1)) y=@003c;else y=@003d;
  $  013.�˿Ͳ��Һ��½�         $    $       $    $  ANS000.BYTE005  $  if(((x>>5)&1)) y=@003c;else y=@003d;
  $  014.��ֹSW                   $    $       $    $  ANS000.BYTE005  $  if(((x>>6)&1)) y=@003c;else y=@003d;

  $)  03.������״̬
  $  03.������״̬
  $  REQ000:782 03 22 31 05 00 00 00 00       $  ANS000:78A 03 22 31 05 00 00 00 00

  $  000.����פ��       $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@003c;else y=@003d;
  $  001.���Ľ���       $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@003c;else y=@003d;
  $  002.��оפ��       $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@003c;else y=@003d;

  $)  04.��/��������/����������״̬
  $  04.��/��������/����������״̬
  $  REQ000:782 03 22 31 06 00 00 00 00       $  ANS000:78A 03 22 31 06 00 00 00 00

  $  000.��ǰ�Ű뿪         $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@003c;else y=@003d;
  $  001.��ǰ�Ű뿪         $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@003c;else y=@003d;
  $  002.����Ű뿪         $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@003c;else y=@003d;
  $  003.�Һ��Ű뿪         $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@003c;else y=@003d;
  $  004.�����ͷ�SW       $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@003c;else y=@003d;
  $  005.����뿪         $    $       $    $  ANS000.BYTE004  $  if(((x>>5)&1)) y=@003c;else y=@003d;

  $)  05.Կ������״̬
  $  05.Կ������״̬
  $  REQ000:782 03 22 31 07 00 00 00 00       $  ANS000:78A 03 22 31 07 00 00 00 00

  $  000.Կ�ײ���(key in)       $    $       $    $  ANS000.BYTE004  $  if(x==0x00) y=@0101;else if(x==0x01)y=@003d;else y=@003c;
  $  001.ACC(����)              $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@003c;else y=@003d;
  $  002.IGN(���)              $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@003c;else y=@003d;

  $)  06.����������״̬
  $  06.����������״̬
  $  REQ000:782 03 22 31 08 00 00 00 00       $  ANS000:78A 03 22 31 08 00 00 00 00

  $  000.�������ļ���       $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@003c;else y=@003d;

  $)  07.ϴ��������״̬
  $  07.ϴ��������״̬
  $  REQ000:782 03 22 31 0A 00 00 00 00       $  ANS000:78A 03 22 31 0A 00 00 00 00

  $  000.ǰϴ����       $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@003c;else y=@003d;
  $  001.��ϴ����       $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@003c;else y=@003d;

  $)  08.���ֹͣ����״̬
  $  08.���ֹͣ����״̬
  $  REQ000:782 03 22 31 0C 00 00 00 00       $  ANS000:78A 03 22 31 0C 00 00 00 00

  $  000.ǰ���ֹͣ       $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@003c;else y=@003d;
  $  001.�����ֹͣ       $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@003c;else y=@003d;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:782 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
