
    ����ID��2710

    ģ�⣺Э��ģ��-->2710

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k

��������:

  $~  REQ000:7B7 02 10 01 00 00 00 00 00       $~  ANS000:7BF 02 10 01 00 00 00 00 00

��������:

  $!  REQ000:7B7 02 3E 80 00 00 00 00 00       $!  ANS000:7BF 02 3E 80 00 00 00 00 00

�˳�����:



;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:7B7 03 19 02 09 00 00 00 00       $#  ANS000:7BF 03 19 02 09 00 00 00 00

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/4c000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:7B7 04 14 FF FF FF 00 00 00       $$  ANS000:7BF 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:7B7 03 22 F1 93 00 00 00 00       $%  ANS000:7BF 03 22 F1 93 00 00 00 00
  $%  REQ001:7B7 03 22 F1 94 00 00 00 00       $%  ANS001:7BF 03 22 F1 94 00 00 00 00
  $%  REQ002:7B7 03 22 F1 95 00 00 00 00       $%  ANS002:7BF 03 22 F1 95 00 00 00 00

  $%  000:Ӳ���汾:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:Ӳ������:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:�������:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:�����汾:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:��������:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:�޸Ĵ���:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

��������: 

  $  REQ000:7B7 03 22 01 08 00 00 00 00       $  ANS000:7BF 03 22 01 08 00 00 00 00
  $  REQ001:7B7 03 22 01 20 00 00 00 00       $  ANS001:7BF 03 22 01 20 00 00 00 00
  $  REQ002:7B7 03 22 01 21 00 00 00 00       $  ANS002:7BF 03 22 01 21 00 00 00 00

  $  000:���ͯ������״̬               $    $       $    $  ANS000.BYTE007  $  if(x1&0x01) y=@0064;else y=@026f;
  $  001:�Ҷ�ͯ������״̬               $    $       $    $  ANS000.BYTE007  $  if(x1&0x02) y=@0064;else y=@026f;
  $  002:��������״̬                 $    $       $    $  ANS000.BYTE007  $  if(x1&0x04) y=@0004;else y=@0005;
  $  003:��������������״̬           $    $       $    $  ANS000.BYTE007  $  if(x1&0x08) y=@0004;else y=@0005;
  $  004:�������������״̬             $    $       $    $  ANS000.BYTE007  $  if(x1&0x10) y=@00e6;else y=@0048;
  $  005:������ƿ���״̬               $    $       $    $  ANS000.BYTE007  $  if(x1&0x20) y=@0004;else y=@0005;
  $  006:������״̬                     $    $       $    $  ANS000.BYTE007  $  if(x1&0x40) y=@0004;else y=@0005;
  $  007:�������״̬                   $    $       $    $  ANS000.BYTE007  $  if(x1&0x80) y=@0004;else y=@0005;
  $  008:����ڸ�״̬                   $    $       $    $  ANS000.BYTE008  $  if(x1&0x01) y=@0004;else y=@0005;
  $  009:����θ�λ�ź�                 $    $       $    $  ANS000.BYTE008  $  if(x1&0x02) y=@00e6;else y=@0048;
  $  010:��С��״̬                     $    $       $    $  ANS000.BYTE008  $  if(x1&0x04) y=@0004;else y=@0005;
  $  011:������״̬                     $    $       $    $  ANS000.BYTE008  $  if(x1&0x08) y=@0004;else y=@0005;
  $  012:������״̬                     $    $       $    $  ANS000.BYTE008  $  if(x1&0x10) y=@0004;else y=@0005;
  $  013:������״̬                     $    $       $    $  ANS000.BYTE008  $  if(x1&0x20) y=@0004;else y=@0005;
  $  014:���˪״̬                     $    $       $    $  ANS000.BYTE008  $  if(x1&0x40) y=@0004;else y=@0005;
  $  015:���ACC��״̬                  $    $       $    $  ANS000.BYTE008  $  if(x1&0x80) y=@0004;else y=@0005;
  $  016:����ο���״̬                 $    $       $    $  ANS000.BYTE009  $  if(x1&0x01) y=@0004;else y=@0005;
  $  017:��ķ��״̬                   $    $       $    $  ANS000.BYTE009  $  if(x1&0x02) y=@0004;else y=@0005;
  $  018:��ϴ��״̬                     $    $       $    $  ANS000.BYTE009  $  if(x1&0x04) y=@0004;else y=@0005;
  $  019:ǰϴ��״̬                     $    $       $    $  ANS000.BYTE009  $  if(x1&0x08) y=@0004;else y=@0005;
  $  020:ֱ�����ڸ�״̬               $    $       $    $  ANS000.BYTE009  $  if(x1&0x10) y=@0004;else y=@0005;
  $  021:ֱ����������״̬             $    $       $    $  ANS000.BYTE009  $  if(x1&0x20) y=@0004;else y=@0005;
  $  022:�������ǹ����״̬             $    $       $    $  ANS000.BYTE009  $  if(x1&0x40) y=@0426;else y=@015e;
  $  023:ֱ�����ǹ����״̬             $    $       $    $  ANS000.BYTE009  $  if(x1&0x80) y=@0426;else y=@015e;
  $  024:�������ǹ����λ��             $    $       $    $  ANS000.BYTE010  $  if(x1&0x01) y=@0064;else y=@026f;
  $  025:ֱ�����ǹ����λ��             $    $       $    $  ANS000.BYTE010  $  if(x1&0x02) y=@0064;else y=@026f;
  $  026:�澯��״̬                     $    $       $    $  ANS000.BYTE010  $  switxh(x1&0x0C)0x00: y=@0048;0x04: y=@0480;0x08: y=@0481;0x0C: y=@05d9;default: y=@001c;
  $  027:��ת��ƿ���״̬               $    $       $    $  ANS000.BYTE010  $  switxh(x1&0x30)0x00: y=@0048;0x10: y=@0483;0x20: y=@0484;0x30: y=@009e;default: y=@001c;
  $  028:��ת��ƿ���״̬               $    $       $    $  ANS000.BYTE010  $  switxh(x1&0xC0)0x00: y=@0048;0x40: y=@0483;0x80: y=@0484;0xC0: y=@009e;default: y=@001c;
  $  029:���ת��ƹ���                 $    $       $    $  ANS000.BYTE011  $  if(x1&0x01) y=@0059;else y=@0022;
  $  030:�Һ�ת��ƹ���                 $    $       $    $  ANS000.BYTE011  $  if(x1&0x02) y=@0059;else y=@0022;
  $  031:�����Ű�ȫ��״̬             $    $       $    $  ANS000.BYTE011  $  if(x1&0x04) y=@0487;else y=@0488;
  $  032:���������γ˿�����״̬       $    $       $    $  ANS000.BYTE011  $  if(x1&0x08) y=@0485;else y=@0486;
  $  033:�Һ���Ű�ȫ��״̬             $    $       $    $  ANS000.BYTE011  $  if(x1&0x10) y=@0487;else y=@0488;
  $  034:�Һ�������γ˿�����״̬       $    $       $    $  ANS000.BYTE011  $  if(x1&0x20) y=@0485;else y=@0486;
  $  035:�к���Ű�ȫ��״̬             $    $       $    $  ANS000.BYTE011  $  if(x1&0x40) y=@0487;else y=@0488;
  $  036:�к�������γ˿�����״̬       $    $       $    $  ANS000.BYTE011  $  if(x1&0x80) y=@0485;else y=@0486;
  $  037:��¼��Ч��                     $    $       $    $  ANS001.BYTE004  $  switxh(x1)0x21: y=@035a;default: y=@035b;
  $  038:�������ͯ������ָ��           $    $       $    $  ANS001.BYTE005  $  if(x1&0x01) y=@00e6;else y=@0048;
  $  039:�����Ҷ�ͯ������ָ��           $    $       $    $  ANS001.BYTE005  $  if(x1&0x02) y=@00e6;else y=@0048;
  $  040:IO�������ͯ������ָ��         $    $       $    $  ANS001.BYTE005  $  if(x1&0x04) y=@00e6;else y=@0048;
  $  041:IO�����Ҷ�ͯ������ָ��         $    $       $    $  ANS001.BYTE005  $  if(x1&0x08) y=@00e6;else y=@0048;
  $  042:��������                       $    $       $    $  ANS001.BYTE006  $  switxh(x1)0x00: y=@0048;0x01: y=@00e6;default: y=@0048;
  $  043:��ͯ����������ʱ���ʶ         $    $       $    $  ANS001.BYTE007  $  switxh(x1)0x00: y=@0048;0x01: y=@00e6;default: y=@001c;
  $  044:����ʱ��                       $    $       $    $  ANS001.BYTE008  $  y=SPRINTF([%02d%s%02d%s%02d%s%02d%s],x1,@001e,x2,@001f,x3,@05da,x4,@059e);
  $  045:��������_1                     $    $       $    $  ANS001.BYTE012  $  y=x1;
  $  046:��¼��Ч��_1                   $    $       $    $  ANS002.BYTE004  $  switxh(x1)0x21: y=@035a;default: y=@035b;
  $  047:�������ͯ������ָ��           $    $       $    $  ANS002.BYTE005  $  if(x1&0x01) y=@00e6;else y=@0048;
  $  048:�����Ҷ�ͯ������ָ��           $    $       $    $  ANS002.BYTE005  $  if(x1&0x02) y=@00e6;else y=@0048;
  $  049:IO�������ͯ������ָ��         $    $       $    $  ANS002.BYTE005  $  if(x1&0x04) y=@00e6;else y=@0048;
  $  050:IO�����Ҷ�ͯ������ָ��         $    $       $    $  ANS002.BYTE005  $  if(x1&0x08) y=@00e6;else y=@0048;
  $  051:��������_2                     $    $       $    $  ANS002.BYTE006  $  switxh(x1)0x00: y=@0048;0x01: y=@00e6;default: y=@0048;
  $  052:��ͯ����������ʱ���ʶ         $    $       $    $  ANS002.BYTE007  $  switxh(x1)0x00: y=@0048;0x01: y=@00e6;default: y=@001c;
  $  053:����ʱ��_1                     $    $       $    $  ANS002.BYTE008  $  y=SPRINTF([%02d%s%02d%s%02d%s%02d%s],x1,@001e,x2,@001f,x3,@05da,x4,@059e);
  $  054:��������_3                     $    $       $    $  ANS002.BYTE012  $  y=x1;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:7B7 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
