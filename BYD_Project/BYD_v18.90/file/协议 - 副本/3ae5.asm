
    ����ID��3ae5

    ģ�⣺Э��ģ��-->3ae5

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k$~7BF

��������:

  $~  REQ000:7B7 02 10 01 00 00 00 00 00       $~  ANS000:7BF 02 10 01 00 00 00 00 00

��������:

  $!  REQ000:7B7 02 3E 80 00 00 00 00 00       $!  ANS000:7BF 02 3E 80 00 00 00 00 00

�˳�����:



;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:7B7 03 19 02 09 00 00 00 00       $#  ANS000:7BF 03 19 02 09 00 00 00 00

		���ƹ�ʽ��
			y=(x1<<16)+(x2<<8)+x3;

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/bb000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:7B7 04 14 FF FF FF 00 00 00       $$  ANS000:7BF 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:7B7 03 22 F1 93 00 00 00 00       $%  ANS000:7BF 03 22 F1 93 00 00 00 00
  $%  REQ001:7B7 03 22 F1 94 00 00 00 00       $%  ANS001:7BF 03 22 F1 94 00 00 00 00
  $%  REQ002:7B7 03 22 F1 95 00 00 00 00       $%  ANS002:7BF 03 22 F1 95 00 00 00 00

  $%  000:Ӳ���汾:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:Ӳ������:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:�������:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:�����汾:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:��������:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:�޸Ĵ���:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

��������: 

  $  REQ000:7B7 03 22 01 08 00 00 00 00       $  ANS000:7BF 03 22 01 08 00 00 00 00
  $  REQ001:7B7 03 22 01 20 00 00 00 00       $  ANS001:7BF 03 22 01 20 00 00 00 00
  $  REQ002:7B7 03 22 01 21 00 00 00 00       $  ANS002:7BF 03 22 01 21 00 00 00 00

  $  000.���ͯ������״̬               $    $       $    $  ANS000.BYTE004  $  if(x1&0x01) y=@000a;else y=@0009;
  $  001.�Ҷ�ͯ������״̬               $    $       $    $  ANS000.BYTE004  $  if(x1&0x02) y=@000a;else y=@0009;
  $  002.�������������״̬             $    $       $    $  ANS000.BYTE004  $  if(x1&0x10) y=@0002;else y=@0003;
  $  003.������״̬                     $    $       $    $  ANS000.BYTE004  $  if(x1&0x40) y=@001d;else y=@001e;
  $  004.�������״̬                   $    $       $    $  ANS000.BYTE004  $  if(x1&0x80) y=@001d;else y=@001e;
  $  005.����ڸ�״̬                   $    $       $    $  ANS000.BYTE005  $  if(x1&0x01) y=@001d;else y=@001e;
  $  006.����θ�λ�ź�                 $    $       $    $  ANS000.BYTE005  $  if(x1&0x02) y=@0002;else y=@0003;
  $  007.��С��״̬                     $    $       $    $  ANS000.BYTE005  $  if(x1&0x04) y=@001d;else y=@001e;
  $  008.������״̬                     $    $       $    $  ANS000.BYTE005  $  if(x1&0x08) y=@001d;else y=@001e;
  $  009.������״̬                     $    $       $    $  ANS000.BYTE005  $  if(x1&0x10) y=@001d;else y=@001e;
  $  010.������״̬                     $    $       $    $  ANS000.BYTE005  $  if(x1&0x20) y=@001d;else y=@001e;
  $  011.���˪״̬                     $    $       $    $  ANS000.BYTE005  $  if(x1&0x40) y=@001d;else y=@001e;
  $  012.���ACC��״̬                  $    $       $    $  ANS000.BYTE005  $  if(x1&0x80) y=@001d;else y=@001e;
  $  013.����ο���״̬                 $    $       $    $  ANS000.BYTE006  $  if(x1&0x01) y=@001d;else y=@001e;
  $  014.��ķ��״̬                   $    $       $    $  ANS000.BYTE006  $  if(x1&0x02) y=@001d;else y=@001e;
  $  015.�澯��״̬                     $    $       $    $  ANS000.BYTE007  $  switxh(x1&0x0C)0x00: y=@0003;0x04: y=@05ce;0x08: y=@05cf;0x0C: y=@05d0;default: y=@0001;
  $  016.��ת��ƿ���״̬               $    $       $    $  ANS000.BYTE007  $  switxh(x1&0x30)0x00: y=@0003;0x10: y=@05d1;0x20: y=@05d2;0x30: y=@007b;default: y=@0001;
  $  017.��ת��ƿ���״̬               $    $       $    $  ANS000.BYTE007  $  switxh(x1&0xC0)0x00: y=@0003;0x40: y=@05d1;0x80: y=@05d2;0xC0: y=@007b;default: y=@0001;
  $  018.���ת��ƹ���                 $    $       $    $  ANS000.BYTE008  $  if(x1&0x01) y=@0167;else y=@0078;
  $  019.�Һ�ת��ƹ���                 $    $       $    $  ANS000.BYTE008  $  if(x1&0x02) y=@0167;else y=@0078;
  $  020.�����Ű�ȫ��״̬             $    $       $    $  ANS000.BYTE008  $  if(x1&0x04) y=@05cb;else y=@05cc;
  $  021.���������γ˿�����״̬       $    $       $    $  ANS000.BYTE008  $  if(x1&0x08) y=@002e;else y=@05ca;
  $  022.�Һ���Ű�ȫ��״̬             $    $       $    $  ANS000.BYTE008  $  if(x1&0x10) y=@05cb;else y=@05cc;
  $  023.�Һ�������γ˿�����״̬       $    $       $    $  ANS000.BYTE008  $  if(x1&0x20) y=@002e;else y=@05ca;
  $  024.�к���Ű�ȫ��״̬             $    $       $    $  ANS000.BYTE008  $  if(x1&0x40) y=@05cb;else y=@05cc;
  $  025.�к�������γ˿�����״̬       $    $       $    $  ANS000.BYTE008  $  if(x1&0x80) y=@002e;else y=@05ca;
  $  026.������Ϣ                       $    $       $    $  ANS000.BYTE009  $  switxh(x1)0x2B: y=@05cd;0x2C: y=@0374;0x2F: y=@03e1;0x30: y=@0377;0x36: y=@037b;default: y=@0001;
  $  027.���ݱ�ʶ                       $    $       $    $  ANS001.BYTE004  $  switxh(x1)0x21: y=@0002;default: y=@0001;
  $  028.���մ������ͯ����������       $    $       $    $  ANS001.BYTE005  $  if(x1&0x01) y=@05d4;else y=@0003;
  $  029.���մ����Ҷ�ͯ����������       $    $       $    $  ANS001.BYTE005  $  if(x1&0x02) y=@05d4;else y=@0003;
  $  030.ͨ��IO�������ͯ������         $    $       $    $  ANS001.BYTE005  $  if(x1&0x04) y=@05d4;else y=@0003;
  $  031.ͨ��IO�����Ҷ�ͯ������         $    $       $    $  ANS001.BYTE005  $  if(x1&0x08) y=@05d4;else y=@0003;
  $  032.��������                       $    $       $    $  ANS001.BYTE007  $  y=x1;
  $  033.��ͯ����������ʱ���ʶ         $    $       $    $  ANS001.BYTE008  $  switxh(x1)0x11: y=@009e;default: y=@0001;
  $  034.��ͯ����������ʱ���ʶ         $    $       $    $  ANS001.BYTE008  $  switxh(x1)0x11: y=@009e;default: y=@0001;
  $  035.��                             $    $       $    $  ANS001.BYTE009  $  if(x1==0) y=@0003;else if((x1>=1)&&(x1<=12)) y=x1;else if((x1>=13)&&(x1<=255)) y=@0003;else y=@0001;
  $  036.��                             $    $       $    $  ANS001.BYTE010  $  if(x1==0) y=@0003;else if((x1>=1)&&(x1<=31)) y=x1;else if((x1>=32)&&(x1<=255)) y=@0003;else y=@0001;
  $  037.ʱ                             $    $       $    $  ANS001.BYTE011  $  if((x1>=0)&&(x1<=23)) y=x1;else if((x1>=24)&&(x1<=255)) y=@0003;else y=@0001;
  $  038.��                             $    $       $    $  ANS001.BYTE012  $  if((x1>=0)&&(x1<=59)) y=x1;else if((x1>=60)&&(x1<=255)) y=@0003;else y=@0001;
  $  039.��������                       $    $       $    $  ANS001.BYTE013  $  y=x1;
  $  040.���ݱ�ʶ                       $    $       $    $  ANS002.BYTE004  $  switxh(x1)0x21: y=@0002;default: y=@0001;
  $  041.���մ������ͯ����������       $    $       $    $  ANS002.BYTE005  $  if(x1&0x01) y=@05d3;else y=@0003;
  $  042.���մ����Ҷ�ͯ����������       $    $       $    $  ANS002.BYTE005  $  if(x1&0x02) y=@05d3;else y=@0003;
  $  043.ͨ��IO�������ͯ������         $    $       $    $  ANS002.BYTE005  $  if(x1&0x04) y=@05d3;else y=@0003;
  $  044.ͨ��IO�����Ҷ�ͯ������         $    $       $    $  ANS002.BYTE005  $  if(x1&0x08) y=@05d3;else y=@0003;
  $  045.��������                       $    $       $    $  ANS002.BYTE007  $  y=x1;
  $  046.��ͯ����������ʱ���ʶ         $    $       $    $  ANS002.BYTE008  $  switxh(x1)0x11: y=@009e;default: y=@0001;
  $  047.��ͯ����������ʱ���ʶ         $    $       $    $  ANS002.BYTE008  $  switxh(x1)0x11: y=@009e;default: y=@0001;
  $  048.��                             $    $       $    $  ANS002.BYTE009  $  if(x1==0) y=@0003;else if((x1>=1)&&(x1<=12)) y=x1;else if((x1>=13)&&(x1<=255)) y=@0003;else y=@0001;
  $  049.��                             $    $       $    $  ANS002.BYTE010  $  if(x1==0) y=@0003;else if((x1>=1)&&(x1<=31)) y=x1;else if((x1>=32)&&(x1<=255)) y=@0003;else y=@0001;
  $  050.ʱ                             $    $       $    $  ANS002.BYTE011  $  if((x1>=0)&&(x1<=23)) y=x1;else if((x1>=24)&&(x1<=255)) y=@0003;else y=@0001;
  $  051.��                             $    $       $    $  ANS002.BYTE012  $  if((x1>=0)&&(x1<=59)) y=x1;else if((x1>=60)&&(x1<=255)) y=@0003;else y=@0001;
  $  052.��������                       $    $       $    $  ANS002.BYTE013  $  y=x1;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:7B7 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
