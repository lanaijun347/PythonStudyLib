
    ����ID��10bb

    ģ�⣺Э��ģ��-->10bb

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k

��������:

  $~  REQ000:74A 02 10 01 00 00 00 00 00       $~  ANS000:7CA 02 10 01 00 00 00 00 00

��������:

  $!  REQ000:74A 02 3E 80 00 00 00 00 00       $!  ANS000:7CA 02 3E 80 00 00 00 00 00

�˳�����:



;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:74A 03 19 02 09 00 00 00 00       $#  ANS000:7CA 03 19 02 09 00 00 00 00

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�

  ���:

  $*$*DTC/b8000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:74A 04 14 FF FF FF 00 00 00       $$  ANS000:7CA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:74A 03 22 F1 A0 00 00 00 00       $%  ANS000:7CA 03 22 F1 A0 00 00 00 00
  $%  REQ001:74A 03 22 F1 83 00 00 00 00       $%  ANS001:7CA 03 22 F1 83 00 00 00 00
  $%  REQ002:74A 03 22 F1 A1 00 00 00 00       $%  ANS002:7CA 03 22 F1 A1 00 00 00 00
  $%  REQ003:74A 03 22 F1 91 00 00 00 00       $%  ANS003:7CA 03 22 F1 91 00 00 00 00
  $%  REQ004:74A 03 22 F1 A2 00 00 00 00       $%  ANS004:7CA 03 22 F1 A2 00 00 00 00
  $%  REQ005:74A 03 22 F1 87 00 00 00 00       $%  ANS005:7CA 03 22 F1 87 00 00 00 00
  $%  REQ006:74A 03 22 F1 10 00 00 00 00       $%  ANS006:7CA 03 22 F1 10 00 00 00 00
  $%  REQ007:74A 03 22 F1 92 00 00 00 00       $%  ANS007:7CA 03 22 F1 92 00 00 00 00
  $%  REQ008:74A 03 22 F1 8C 00 00 00 00       $%  ANS008:7CA 03 22 F1 8C 00 00 00 00
  $%  REQ009:74A 03 22 F1 94 00 00 00 00       $%  ANS009:7CA 03 22 F1 94 00 00 00 00
  $%  REQ010:74A 03 22 F1 8A 00 00 00 00       $%  ANS010:7CA 03 22 F1 8A 00 00 00 00
  $%  REQ011:74A 03 22 F1 90 00 00 00 00       $%  ANS011:7CA 03 22 F1 90 00 00 00 00
  $%  REQ012:74A 03 22 F1 A8 00 00 00 00       $%  ANS012:7CA 03 22 F1 A8 00 00 00 00
  $%  REQ013:74A 03 22 F1 8B 00 00 00 00       $%  ANS013:7CA 03 22 F1 8B 00 00 00 00

  $%  000:��ص�ԪӦ�������:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:��ص�Ԫˢд����ο���:          $%    $%  ANS001.BYTE011  $%  ASCII(X1,X2,X3);
  $%  002:��ص�Ԫ�궨�����:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:��ص�ԪӲ����:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:��ص�Ԫ�����ļ��ο���:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:��ص�Ԫ�����:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:��ص�Ԫ�����(�ϴ�):            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  007:���Թ��߲ο���(�ϴ�):            $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  008:��̶���(�ϴ�):                  $%    $%  ANS006.BYTE015  $%  y=x1*256*256+x2*256+x3;
  $%  009:��Ӧ�̵�ص�ԪӲ���ο���:        $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:�����㲿����ʶ��:                $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2);
  $%  011:�㲿�����루������ֽڣ�:        $%    $%  ANS008.BYTE006  $%  ASCII(X1,X2,X3,X4);
  $%  012:��Ӧ��ʶ���:                    $%    $%  ANS008.BYTE010  $%  ASCII(X1,X2,X3,X4,X5,X6);
  $%  013:��:                              $%    $%  ANS008.BYTE016  $%  ASCII(X1);
  $%  014:��:                              $%    $%  ANS008.BYTE017  $%  ASCII(X1);
  $%  015:��:                              $%    $%  ANS008.BYTE018  $%  ASCII(X1,X2);
  $%  016:��Ʒ���к�:                      $%    $%  ANS008.BYTE020  $%  ASCII(X1,X2,X3,X4);
  $%  017:��Ӧ�̵�ص�Ԫ����ο���:        $%    $%  ANS009.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  018:ϵͳ��Ӧ�̱�ʶ��:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  019:����ʶ�����:                    $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  020:����������Ϣ:                    $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  021:��ص�Ԫ��������:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

��������: 

  $)  00.������1
  $  00.������1
  $  REQ000:74A 03 22 B0 55 00 00 00 00       $  ANS000:7CA 03 22 B0 55 00 00 00 00
  $  REQ001:74A 03 22 B0 56 00 00 00 00       $  ANS001:7CA 03 22 B0 56 00 00 00 00
  $  REQ002:74A 03 22 B0 57 00 00 00 00       $  ANS002:7CA 03 22 B0 57 00 00 00 00
  $  REQ003:74A 03 22 B0 58 00 00 00 00       $  ANS003:7CA 03 22 B0 58 00 00 00 00
  $  REQ004:74A 03 22 B0 59 00 00 00 00       $  ANS004:7CA 03 22 B0 59 00 00 00 00
  $  REQ005:74A 03 22 B0 5B 00 00 00 00       $  ANS005:7CA 03 22 B0 5B 00 00 00 00
  $  REQ006:74A 03 22 B0 91 00 00 00 00       $  ANS006:7CA 03 22 B0 91 00 00 00 00
  $  REQ007:74A 03 22 B0 50 00 00 00 00       $  ANS007:7CA 03 22 B0 50 00 00 00 00
  $  REQ008:74A 03 22 B0 51 00 00 00 00       $  ANS008:7CA 03 22 B0 51 00 00 00 00
  $  REQ009:74A 03 22 B0 52 00 00 00 00       $  ANS009:7CA 03 22 B0 52 00 00 00 00
  $  REQ010:74A 03 22 B0 53 00 00 00 00       $  ANS010:7CA 03 22 B0 53 00 00 00 00
  $  REQ011:74A 03 22 B0 54 00 00 00 00       $  ANS011:7CA 03 22 B0 54 00 00 00 00
  $  REQ012:74A 03 22 B0 5A 00 00 00 00       $  ANS012:7CA 03 22 B0 5A 00 00 00 00
  $  REQ013:74A 03 22 B0 80 00 00 00 00       $  ANS013:7CA 03 22 B0 80 00 00 00 00
  $  REQ014:74A 03 22 B0 81 00 00 00 00       $  ANS014:7CA 03 22 B0 81 00 00 00 00

  $  000.ACC�޷�����ԭ��0~7                        $    $           $    $  ANS000.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  001.ACC�޷�����ԭ��8~15                       $    $           $    $  ANS000.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  002.ACC�޷�����ԭ��16~23                      $    $           $    $  ANS000.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  003.ACC�޷�����ԭ��24~31                      $    $           $    $  ANS000.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  004.ACC�޷�����ԭ��32~39                      $    $           $    $  ANS000.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  005.ACC�޷�����ԭ��40~47                      $    $           $    $  ANS000.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  006.ACC�޷�����ʱ�Ĺ��ϱ���״̬               $    $           $    $  ANS000.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  007.Acc�쳣�˳�ʱ�����                       $    $           $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.Acc�쳣�˳�ʱ���·�                       $    $           $    $  ANS000.BYTE013  $  y=x;
  $  009.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS000.BYTE014  $  y=x;
  $  010.Acc�쳣�˳�ʱ��ʱ��                       $    $           $    $  ANS000.BYTE015  $  y=x;
  $  011.Acc�쳣�˳�ʱ�ķ���                       $    $           $    $  ANS000.BYTE016  $  y=x;
  $  012.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS000.BYTE017  $  y=x;
  $  013.Acc�쳣�˳�ʱ�����                       $    $  km       $    $  ANS000.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  014.ACC�޷�����ԭ��0~7                        $    $           $    $  ANS001.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  015.ACC�޷�����ԭ��8~15                       $    $           $    $  ANS001.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  016.ACC�޷�����ԭ��16~23                      $    $           $    $  ANS001.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  017.ACC�޷�����ԭ��24~31                      $    $           $    $  ANS001.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  018.ACC�޷�����ԭ��32~39                      $    $           $    $  ANS001.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  019.ACC�޷�����ԭ��40~47                      $    $           $    $  ANS001.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  020.ACC�޷�����ʱ�Ĺ��ϱ���״̬               $    $           $    $  ANS001.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  021.Acc�쳣�˳�ʱ�����                       $    $           $    $  ANS001.BYTE012  $  y=x+2000;
  $  022.Acc�쳣�˳�ʱ���·�                       $    $           $    $  ANS001.BYTE013  $  y=x;
  $  023.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS001.BYTE014  $  y=x;
  $  024.Acc�쳣�˳�ʱ��ʱ��                       $    $           $    $  ANS001.BYTE015  $  y=x;
  $  025.Acc�쳣�˳�ʱ�ķ���                       $    $           $    $  ANS001.BYTE016  $  y=x;
  $  026.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS001.BYTE017  $  y=x;
  $  027.Acc�쳣�˳�ʱ�����                       $    $  km       $    $  ANS001.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  028.ACC�޷�����ԭ��0~7                        $    $           $    $  ANS002.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  029.ACC�޷�����ԭ��8~15                       $    $           $    $  ANS002.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  030.ACC�޷�����ԭ��16~23                      $    $           $    $  ANS002.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  031.ACC�޷�����ԭ��24~31                      $    $           $    $  ANS002.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  032.ACC�޷�����ԭ��32~39                      $    $           $    $  ANS002.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  033.ACC�޷�����ԭ��40~47                      $    $           $    $  ANS002.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  034.ACC�޷�����ʱ�Ĺ��ϱ���״̬               $    $           $    $  ANS002.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  035.Acc�쳣�˳�ʱ�����                       $    $           $    $  ANS002.BYTE012  $  y=x+2000;
  $  036.Acc�쳣�˳�ʱ���·�                       $    $           $    $  ANS002.BYTE013  $  y=x;
  $  037.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS002.BYTE014  $  y=x;
  $  038.Acc�쳣�˳�ʱ��ʱ��                       $    $           $    $  ANS002.BYTE015  $  y=x;
  $  039.Acc�쳣�˳�ʱ�ķ���                       $    $           $    $  ANS002.BYTE016  $  y=x;
  $  040.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS002.BYTE017  $  y=x;
  $  041.Acc�쳣�˳�ʱ�����                       $    $  km       $    $  ANS002.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  042.ACC�޷�����ԭ��0~7                        $    $           $    $  ANS003.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  043.ACC�޷�����ԭ��8~15                       $    $           $    $  ANS003.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  044.ACC�޷�����ԭ��16~23                      $    $           $    $  ANS003.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  045.ACC�޷�����ԭ��24~31                      $    $           $    $  ANS003.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  046.ACC�޷�����ԭ��32~39                      $    $           $    $  ANS003.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  047.ACC�޷�����ԭ��40~47                      $    $           $    $  ANS003.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  048.ACC�޷�����ʱ�Ĺ��ϱ���״̬               $    $           $    $  ANS003.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  049.Acc�쳣�˳�ʱ�����                       $    $           $    $  ANS003.BYTE012  $  y=x+2000;
  $  050.Acc�쳣�˳�ʱ���·�                       $    $           $    $  ANS003.BYTE013  $  y=x;
  $  051.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS003.BYTE014  $  y=x;
  $  052.Acc�쳣�˳�ʱ��ʱ��                       $    $           $    $  ANS003.BYTE015  $  y=x;
  $  053.Acc�쳣�˳�ʱ�ķ���                       $    $           $    $  ANS003.BYTE016  $  y=x;
  $  054.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS003.BYTE017  $  y=x;
  $  055.Acc�쳣�˳�ʱ�����                       $    $  km       $    $  ANS003.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  056.ACC�޷�����ԭ��0~7                        $    $           $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  057.ACC�޷�����ԭ��8~15                       $    $           $    $  ANS004.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  058.ACC�޷�����ԭ��16~23                      $    $           $    $  ANS004.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  059.ACC�޷�����ԭ��24~31                      $    $           $    $  ANS004.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  060.ACC�޷�����ԭ��32~39                      $    $           $    $  ANS004.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  061.ACC�޷�����ԭ��40~47                      $    $           $    $  ANS004.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  062.ACC�޷�����ʱ�Ĺ��ϱ���״̬               $    $           $    $  ANS004.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  063.Acc�쳣�˳�ʱ�����                       $    $           $    $  ANS004.BYTE012  $  y=x+2000;
  $  064.Acc�쳣�˳�ʱ���·�                       $    $           $    $  ANS004.BYTE013  $  y=x;
  $  065.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS004.BYTE014  $  y=x;
  $  066.Acc�쳣�˳�ʱ��ʱ��                       $    $           $    $  ANS004.BYTE015  $  y=x;
  $  067.Acc�쳣�˳�ʱ�ķ���                       $    $           $    $  ANS004.BYTE016  $  y=x;
  $  068.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS004.BYTE017  $  y=x;
  $  069.Acc�쳣�˳�ʱ�����                       $    $  km       $    $  ANS004.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  070.ACC�޷�����ʱΪԭ��0~7ʱ��״̬            $    $           $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  071.ACC�޷�����ʱΪԭ��8~15ʱ��״̬           $    $           $    $  ANS005.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  072.ACC�޷�����ʱΪԭ��16~23ʱ��״̬          $    $           $    $  ANS005.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  073.ACC�޷�����ʱΪԭ��24~31ʱ��״̬          $    $           $    $  ANS005.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  074.ACC�޷�����ʱΪԭ��32~39ʱ��״̬          $    $           $    $  ANS005.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  075.ACC�޷�����ʱΪԭ��40~47ʱ��״̬          $    $           $    $  ANS005.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  076.ACC �쳣�˳�Ϊԭ��0~7ʱ��״̬             $    $           $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  077.ACC �쳣�˳�Ϊԭ��8~15ʱ��״̬            $    $           $    $  ANS006.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  078.ACC �쳣�˳�Ϊԭ��16~23ʱ��״̬           $    $           $    $  ANS006.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  079.ACC �쳣�˳�Ϊԭ��24~31ʱ��״̬           $    $           $    $  ANS006.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  080.ACC �쳣�˳�Ϊԭ��32~39ʱ��״̬           $    $           $    $  ANS006.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  081.ACC �쳣�˳�Ϊԭ��40~47ʱ��״̬           $    $           $    $  ANS006.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  082.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7              $    $           $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  083.ACC�Ӽ���״̬�쳣�˳�ԭ��8~15             $    $           $    $  ANS007.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  084.ACC�Ӽ���״̬�쳣�˳�ԭ��16~23            $    $           $    $  ANS007.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  085.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31            $    $           $    $  ANS007.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  086.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39            $    $           $    $  ANS007.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  087.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47            $    $           $    $  ANS007.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  088.ACC�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬       $    $           $    $  ANS007.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  089.Acc�쳣�˳�ʱ�����                       $    $           $    $  ANS007.BYTE012  $  y=x+2000;
  $  090.Acc�쳣�˳�ʱ���·�                       $    $           $    $  ANS007.BYTE013  $  y=x;
  $  091.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS007.BYTE014  $  y=x;
  $  092.Acc�쳣�˳�ʱ��ʱ��                       $    $           $    $  ANS007.BYTE015  $  y=x;
  $  093.Acc�쳣�˳�ʱ�ķ���                       $    $           $    $  ANS007.BYTE016  $  y=x;
  $  094.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS007.BYTE017  $  y=x;
  $  095.Acc�쳣�˳�ʱ�����                       $    $  km       $    $  ANS007.BYTE020  $  y=x;
  $  096.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7              $    $           $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  097.ACC�Ӽ���״̬�쳣�˳�ԭ��8~15             $    $           $    $  ANS008.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  098.ACC�Ӽ���״̬�쳣�˳�ԭ��16~23            $    $           $    $  ANS008.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  099.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31            $    $           $    $  ANS008.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  100.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39            $    $           $    $  ANS008.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  101.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47            $    $           $    $  ANS008.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  102.ACC�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬       $    $           $    $  ANS008.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  103.Acc�쳣�˳�ʱ�����                       $    $           $    $  ANS008.BYTE012  $  y=x+2000;
  $  104.Acc�쳣�˳�ʱ���·�                       $    $           $    $  ANS008.BYTE013  $  y=x;
  $  105.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS008.BYTE014  $  y=x;
  $  106.Acc�쳣�˳�ʱ��ʱ��                       $    $           $    $  ANS008.BYTE015  $  y=x;
  $  107.Acc�쳣�˳�ʱ�ķ���                       $    $           $    $  ANS008.BYTE016  $  y=x;
  $  108.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS008.BYTE017  $  y=x;
  $  109.Acc�쳣�˳�ʱ�����                       $    $  km       $    $  ANS008.BYTE020  $  y=x;
  $  110.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7              $    $           $    $  ANS009.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  111.ACC�Ӽ���״̬�쳣�˳�ԭ��8~15             $    $           $    $  ANS009.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  112.ACC�Ӽ���״̬�쳣�˳�ԭ��16~23            $    $           $    $  ANS009.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  113.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31            $    $           $    $  ANS009.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  114.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39            $    $           $    $  ANS009.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  115.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47            $    $           $    $  ANS009.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  116.ACC�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬       $    $           $    $  ANS009.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  117.Acc�쳣�˳�ʱ�����                       $    $           $    $  ANS009.BYTE012  $  y=x+2000;
  $  118.Acc�쳣�˳�ʱ���·�                       $    $           $    $  ANS009.BYTE013  $  y=x;
  $  119.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS009.BYTE014  $  y=x;
  $  120.Acc�쳣�˳�ʱ��ʱ��                       $    $           $    $  ANS009.BYTE015  $  y=x;
  $  121.Acc�쳣�˳�ʱ�ķ���                       $    $           $    $  ANS009.BYTE016  $  y=x;
  $  122.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS009.BYTE017  $  y=x;
  $  123.Acc�쳣�˳�ʱ�����                       $    $  km       $    $  ANS009.BYTE020  $  y=x;
  $  124.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7              $    $           $    $  ANS010.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  125.ACC�Ӽ���״̬�쳣�˳�ԭ��8~15             $    $           $    $  ANS010.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  126.ACC�Ӽ���״̬�쳣�˳�ԭ��16~23            $    $           $    $  ANS010.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  127.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31            $    $           $    $  ANS010.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  128.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39            $    $           $    $  ANS010.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  129.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47            $    $           $    $  ANS010.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  130.ACC�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬       $    $           $    $  ANS010.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  131.Acc�쳣�˳�ʱ�����                       $    $           $    $  ANS010.BYTE012  $  y=x+2000;
  $  132.Acc�쳣�˳�ʱ���·�                       $    $           $    $  ANS010.BYTE013  $  y=x;
  $  133.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS010.BYTE014  $  y=x;
  $  134.Acc�쳣�˳�ʱ��ʱ��                       $    $           $    $  ANS010.BYTE015  $  y=x;
  $  135.Acc�쳣�˳�ʱ�ķ���                       $    $           $    $  ANS010.BYTE016  $  y=x;
  $  136.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS010.BYTE017  $  y=x;
  $  137.Acc�쳣�˳�ʱ�����                       $    $  km       $    $  ANS010.BYTE020  $  y=x;
  $  138.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7              $    $           $    $  ANS011.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  139.ACC�Ӽ���״̬�쳣�˳�ԭ��8~15             $    $           $    $  ANS011.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  140.ACC�Ӽ���״̬�쳣�˳�ԭ��16~23            $    $           $    $  ANS011.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  141.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31            $    $           $    $  ANS011.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  142.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39            $    $           $    $  ANS011.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  143.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47            $    $           $    $  ANS011.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  144.ACC�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬       $    $           $    $  ANS011.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  145.Acc�쳣�˳�ʱ�����                       $    $           $    $  ANS011.BYTE012  $  y=x+2000;
  $  146.Acc�쳣�˳�ʱ���·�                       $    $           $    $  ANS011.BYTE013  $  y=x;
  $  147.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS011.BYTE014  $  y=x;
  $  148.Acc�쳣�˳�ʱ��ʱ��                       $    $           $    $  ANS011.BYTE015  $  y=x;
  $  149.Acc�쳣�˳�ʱ�ķ���                       $    $           $    $  ANS011.BYTE016  $  y=x;
  $  150.Acc�쳣�˳�ʱ������                       $    $           $    $  ANS011.BYTE017  $  y=x;
  $  151.Acc�쳣�˳�ʱ�����                       $    $  km       $    $  ANS011.BYTE020  $  y=x;
  $  152.ACC �쳣�˳�Ϊԭ��0~7ʱ��״̬             $    $           $    $  ANS012.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dad;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0035;
  $  153.ACC �쳣�˳�Ϊԭ��8~15ʱ��״̬            $    $           $    $  ANS012.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0035;
  $  154.ACC �쳣�˳�Ϊԭ��16~23ʱ��״̬           $    $           $    $  ANS012.BYTE006  $  if(x==0x01) y=@0e7a;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0035;
  $  155.ACC �쳣�˳�Ϊԭ��24~31ʱ��״̬           $    $           $    $  ANS012.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  156.ACC �쳣�˳�Ϊԭ��32~39ʱ��״̬           $    $           $    $  ANS012.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0035;
  $  157.ACC �쳣�˳�Ϊԭ��40~47ʱ��״̬           $    $           $    $  ANS012.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  158.�¼�����                                  $    $           $    $  ANS013.BYTE004  $  if(((x&0xC0)>>6)==0x00) y=@023f;else if(((x&0xC0)>>6)==0x01) y=@0e6f;else if(((x&0xC0)>>6)==0x02) y=@0e70;else if(((x&0xC0)>>6)==0x03) y=@0035;else y=@0035;
  $  159.AEBˮ׼                                   $    $           $    $  ANS013.BYTE004  $  if(((x&0x30)>>4)==0x00) y=@0e71;else if(((x&0x30)>>4)==0x01) y=@0e72;else if(((x&0x30)>>4)==0x02) y=@0e73;else if(((x&0x30)>>4)==0x03) y=@0035;else y=@0035;
  $  160.FCW��ʻԱ���ж�                           $    $           $    $  ANS013.BYTE004  $  if((x&0x0F)==0x00) y=@0d9c;else if((x&0x0F)==0x01) y=@0e74;else if((x&0x0F)==0x02) y=@0e75;else if((x&0x0F)==0x03) y=@0e76;else y=@0035;
  $  161.�¼���������                              $    $  kPa      $    $  ANS013.BYTE005  $  y=(x1*256+x2)*0.5625;
  $  162.AEB_EventAccelActuPos                     $    $  %        $    $  ANS013.BYTE007  $  y=x*0.392157;
  $  163.AEB_EventBrkPdlPos                        $    $  %        $    $  ANS013.BYTE008  $  y=x*0.392157;
  $  164.AEB_EventLongitudeAcc                     $    $  m/s2     $    $  ANS013.BYTE009  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  165.�¼�����ƴ�                            $    $           $    $  ANS013.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  166.�¼�����ƴ�                            $    $           $    $  ANS013.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  167.AEB_EventVSELatAcc                        $    $  m/s2     $    $  ANS013.BYTE010  $  y=((x1*256+x2)&0xFFF)*0.027127-21.592;
  $  168.AEB_EventObjLongDist                      $    $  m        $    $  ANS013.BYTE012  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  169.AEB_EventObjLatDist                       $    $  m        $    $  ANS013.BYTE014  $  y=(((x1*256+x2)&0x7FFC)>>2)*0.05-102.4;
  $  170.AEB_EventYawRate                          $    $  rad      $    $  ANS013.BYTE015  $  y=((x1*256+x2)&0x3FF)*0.0021326-2.094;
  $  171.�¼��������                              $    $           $    $  ANS013.BYTE017  $  y=x+2000;
  $  172.�¼������·�                              $    $           $    $  ANS013.BYTE018  $  y=x;
  $  173.�¼���������                              $    $           $    $  ANS013.BYTE019  $  y=x;
  $  174.�¼�����ʱ��                              $    $           $    $  ANS013.BYTE020  $  y=x;
  $  175.�¼���������                              $    $           $    $  ANS013.BYTE021  $  y=x;
  $  176.�¼���������                              $    $           $    $  ANS013.BYTE022  $  y=x;
  $  177.�¼����������                            $    $  km       $    $  ANS013.BYTE023  $  y=(x1*256*256+x2*256+x3);
  $  178.�¼�����                                  $    $           $    $  ANS014.BYTE004  $  if(((x&0xC0)>>6)==0x00) y=@023f;else if(((x&0xC0)>>6)==0x01) y=@0e6f;else if(((x&0xC0)>>6)==0x02) y=@0e70;else if(((x&0xC0)>>6)==0x03) y=@0035;else y=@0035;
  $  179.AEBˮ׼                                   $    $           $    $  ANS014.BYTE004  $  if(((x&0x30)>>4)==0x00) y=@0e71;else if(((x&0x30)>>4)==0x01) y=@0e72;else if(((x&0x30)>>4)==0x02) y=@0e73;else if(((x&0x30)>>4)==0x03) y=@0035;else y=@0035;
  $  180.FCW��ʻԱ���ж�                           $    $           $    $  ANS014.BYTE004  $  if((x&0x0F)==0x00) y=@0d9c;else if((x&0x0F)==0x01) y=@0e74;else if((x&0x0F)==0x02) y=@0e75;else if((x&0x0F)==0x03) y=@0e76;else y=@0035;
  $  181.�¼���������                              $    $  kPa      $    $  ANS014.BYTE005  $  y=(x1*256+x2)*0.5625;
  $  182.AEB_EventAccelActuPos                     $    $  %        $    $  ANS014.BYTE007  $  y=x*0.392157;
  $  183.AEB_EventBrkPdlPos                        $    $  %        $    $  ANS014.BYTE008  $  y=x*0.392157;
  $  184.AEB_EventLongitudeAcc                     $    $  m/s2     $    $  ANS014.BYTE009  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  185.�¼�����ƴ�                            $    $           $    $  ANS014.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  186.�¼�����ƴ�                            $    $           $    $  ANS014.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  187.AEB_EventVSELatAcc                        $    $  m/s2     $    $  ANS014.BYTE010  $  y=((x1*256+x2)&0xFFF)*0.027127-21.592;
  $  188.AEB_EventObjLongDist                      $    $  m        $    $  ANS014.BYTE012  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  189.AEB_EventObjLatDist                       $    $  m        $    $  ANS014.BYTE014  $  y=(((x1*256+x2)&0x7FFC)>>2)*0.05-102.4;
  $  190.AEB_EventYawRate                          $    $  rad      $    $  ANS014.BYTE015  $  y=((x1*256+x2)&0x3FF)*0.0021326-2.094;
  $  191.�¼��������                              $    $           $    $  ANS014.BYTE017  $  y=x+2000;
  $  192.�¼������·�                              $    $           $    $  ANS014.BYTE018  $  y=x;
  $  193.�¼���������                              $    $           $    $  ANS014.BYTE019  $  y=x;
  $  194.�¼�����ʱ��                              $    $           $    $  ANS014.BYTE020  $  y=x;
  $  195.�¼���������                              $    $           $    $  ANS014.BYTE021  $  y=x;
  $  196.�¼���������                              $    $           $    $  ANS014.BYTE022  $  y=x;
  $  197.�¼����������                            $    $  km       $    $  ANS014.BYTE023  $  y=(x1*256*256+x2*256+x3);

  $)  01.������2
  $  01.������2
  $  REQ000:74A 03 22 B0 82 00 00 00 00       $  ANS000:7CA 03 22 B0 82 00 00 00 00
  $  REQ001:74A 03 22 B0 83 00 00 00 00       $  ANS001:7CA 03 22 B0 83 00 00 00 00
  $  REQ002:74A 03 22 B0 84 00 00 00 00       $  ANS002:7CA 03 22 B0 84 00 00 00 00
  $  REQ003:74A 03 22 B0 65 00 00 00 00       $  ANS003:7CA 03 22 B0 65 00 00 00 00
  $  REQ004:74A 03 22 B0 66 00 00 00 00       $  ANS004:7CA 03 22 B0 66 00 00 00 00
  $  REQ005:74A 03 22 B0 67 00 00 00 00       $  ANS005:7CA 03 22 B0 67 00 00 00 00
  $  REQ006:74A 03 22 B0 68 00 00 00 00       $  ANS006:7CA 03 22 B0 68 00 00 00 00
  $  REQ007:74A 03 22 B0 69 00 00 00 00       $  ANS007:7CA 03 22 B0 69 00 00 00 00
  $  REQ008:74A 03 22 B0 6B 00 00 00 00       $  ANS008:7CA 03 22 B0 6B 00 00 00 00
  $  REQ009:74A 03 22 B0 92 00 00 00 00       $  ANS009:7CA 03 22 B0 92 00 00 00 00
  $  REQ010:74A 03 22 B0 60 00 00 00 00       $  ANS010:7CA 03 22 B0 60 00 00 00 00
  $  REQ011:74A 03 22 B0 61 00 00 00 00       $  ANS011:7CA 03 22 B0 61 00 00 00 00
  $  REQ012:74A 03 22 B0 62 00 00 00 00       $  ANS012:7CA 03 22 B0 62 00 00 00 00
  $  REQ013:74A 03 22 B0 63 00 00 00 00       $  ANS013:7CA 03 22 B0 63 00 00 00 00
  $  REQ014:74A 03 22 B0 64 00 00 00 00       $  ANS014:7CA 03 22 B0 64 00 00 00 00
  $  REQ015:74A 03 22 B0 6A 00 00 00 00       $  ANS015:7CA 03 22 B0 6A 00 00 00 00
  $  REQ016:74A 03 22 C0 07 00 00 00 00       $  ANS016:7CA 03 22 C0 07 00 00 00 00
  $  REQ017:74A 03 22 01 12 00 00 00 00       $  ANS017:7CA 03 22 01 12 00 00 00 00
  $  REQ018:74A 03 22 B0 3D 00 00 00 00       $  ANS018:7CA 03 22 B0 3D 00 00 00 00

  $  000.�¼�����                                   $    $           $    $  ANS000.BYTE004  $  if(((x&0xC0)>>6)==0x00) y=@023f;else if(((x&0xC0)>>6)==0x01) y=@0e6f;else if(((x&0xC0)>>6)==0x02) y=@0e70;else if(((x&0xC0)>>6)==0x03) y=@0035;else y=@0035;
  $  001.AEBˮ׼                                    $    $           $    $  ANS000.BYTE004  $  if(((x&0x30)>>4)==0x00) y=@0e71;else if(((x&0x30)>>4)==0x01) y=@0e72;else if(((x&0x30)>>4)==0x02) y=@0e73;else if(((x&0x30)>>4)==0x03) y=@0035;else y=@0035;
  $  002.FCW��ʻԱ���ж�                            $    $           $    $  ANS000.BYTE004  $  if((x&0x0F)==0x00) y=@0d9c;else if((x&0x0F)==0x01) y=@0e74;else if((x&0x0F)==0x02) y=@0e75;else if((x&0x0F)==0x03) y=@0e76;else y=@0035;
  $  003.�¼���������                               $    $  kPa      $    $  ANS000.BYTE005  $  y=(x1*256+x2)*0.5625;
  $  004.AEB_EventAccelActuPos                      $    $  %        $    $  ANS000.BYTE007  $  y=x*0.392157;
  $  005.AEB_EventBrkPdlPos                         $    $  %        $    $  ANS000.BYTE008  $  y=x*0.392157;
  $  006.AEB_EventLongitudeAcc                      $    $  m/s2     $    $  ANS000.BYTE009  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  007.�¼�����ƴ�                             $    $           $    $  ANS000.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  008.�¼�����ƴ�                             $    $           $    $  ANS000.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  009.AEB_EventVSELatAcc                         $    $  m/s2     $    $  ANS000.BYTE010  $  y=((x1*256+x2)&0xFFF)*0.027127-21.592;
  $  010.AEB_EventObjLongDist                       $    $  m        $    $  ANS000.BYTE012  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  011.AEB_EventObjLatDist                        $    $  m        $    $  ANS000.BYTE014  $  y=(((x1*256+x2)&0x7FFC)>>2)*0.05-102.4;
  $  012.AEB_EventYawRate                           $    $  rad      $    $  ANS000.BYTE015  $  y=((x1*256+x2)&0x3FF)*0.0021326-2.094;
  $  013.�¼��������                               $    $           $    $  ANS000.BYTE017  $  y=x+2000;
  $  014.�¼������·�                               $    $           $    $  ANS000.BYTE018  $  y=x;
  $  015.�¼���������                               $    $           $    $  ANS000.BYTE019  $  y=x;
  $  016.�¼�����ʱ��                               $    $           $    $  ANS000.BYTE020  $  y=x;
  $  017.�¼���������                               $    $           $    $  ANS000.BYTE021  $  y=x;
  $  018.�¼���������                               $    $           $    $  ANS000.BYTE022  $  y=x;
  $  019.�¼����������                             $    $  km       $    $  ANS000.BYTE023  $  y=(x1*256*256+x2*256+x3);
  $  020.�¼�����                                   $    $           $    $  ANS001.BYTE004  $  if(((x&0xC0)>>6)==0x00) y=@023f;else if(((x&0xC0)>>6)==0x01) y=@0e6f;else if(((x&0xC0)>>6)==0x02) y=@0e70;else if(((x&0xC0)>>6)==0x03) y=@0035;else y=@0035;
  $  021.AEBˮ׼                                    $    $           $    $  ANS001.BYTE004  $  if(((x&0x30)>>4)==0x00) y=@0e71;else if(((x&0x30)>>4)==0x01) y=@0e72;else if(((x&0x30)>>4)==0x02) y=@0e73;else if(((x&0x30)>>4)==0x03) y=@0035;else y=@0035;
  $  022.FCW��ʻԱ���ж�                            $    $           $    $  ANS001.BYTE004  $  if((x&0x0F)==0x00) y=@0d9c;else if((x&0x0F)==0x01) y=@0e74;else if((x&0x0F)==0x02) y=@0e75;else if((x&0x0F)==0x03) y=@0e76;else y=@0035;
  $  023.�¼���������                               $    $  kPa      $    $  ANS001.BYTE005  $  y=(x1*256+x2)*0.5625;
  $  024.AEB_EventAccelActuPos                      $    $  %        $    $  ANS001.BYTE007  $  y=x*0.392157;
  $  025.AEB_EventBrkPdlPos                         $    $  %        $    $  ANS001.BYTE008  $  y=x*0.392157;
  $  026.AEB_EventLongitudeAcc                      $    $  m/s2     $    $  ANS001.BYTE009  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  027.�¼�����ƴ�                             $    $           $    $  ANS001.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  028.�¼�����ƴ�                             $    $           $    $  ANS001.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  029.AEB_EventVSELatAcc                         $    $  m/s2     $    $  ANS001.BYTE010  $  y=((x1*256+x2)&0xFFF)*0.027127-21.592;
  $  030.AEB_EventObjLongDist                       $    $  m        $    $  ANS001.BYTE012  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  031.AEB_EventObjLatDist                        $    $  m        $    $  ANS001.BYTE014  $  y=(((x1*256+x2)&0x7FFC)>>2)*0.05-102.4;
  $  032.AEB_EventYawRate                           $    $  rad      $    $  ANS001.BYTE015  $  y=((x1*256+x2)&0x3FF)*0.0021326-2.094;
  $  033.�¼��������                               $    $           $    $  ANS001.BYTE017  $  y=x+2000;
  $  034.�¼������·�                               $    $           $    $  ANS001.BYTE018  $  y=x;
  $  035.�¼���������                               $    $           $    $  ANS001.BYTE019  $  y=x;
  $  036.�¼�����ʱ��                               $    $           $    $  ANS001.BYTE020  $  y=x;
  $  037.�¼���������                               $    $           $    $  ANS001.BYTE021  $  y=x;
  $  038.�¼���������                               $    $           $    $  ANS001.BYTE022  $  y=x;
  $  039.�¼����������                             $    $  km       $    $  ANS001.BYTE023  $  y=(x1*256*256+x2*256+x3);
  $  040.�¼�����                                   $    $           $    $  ANS002.BYTE004  $  if(((x&0xC0)>>6)==0x00) y=@023f;else if(((x&0xC0)>>6)==0x01) y=@0e6f;else if(((x&0xC0)>>6)==0x02) y=@0e70;else if(((x&0xC0)>>6)==0x03) y=@0035;else y=@0035;
  $  041.AEBˮ׼                                    $    $           $    $  ANS002.BYTE004  $  if(((x&0x30)>>4)==0x00) y=@0e71;else if(((x&0x30)>>4)==0x01) y=@0e72;else if(((x&0x30)>>4)==0x02) y=@0e73;else if(((x&0x30)>>4)==0x03) y=@0035;else y=@0035;
  $  042.FCW��ʻԱ���ж�                            $    $           $    $  ANS002.BYTE004  $  if((x&0x0F)==0x00) y=@0d9c;else if((x&0x0F)==0x01) y=@0e74;else if((x&0x0F)==0x02) y=@0e75;else if((x&0x0F)==0x03) y=@0e76;else y=@0035;
  $  043.�¼���������                               $    $  kPa      $    $  ANS002.BYTE005  $  y=(x1*256+x2)*0.5625;
  $  044.AEB_EventAccelActuPos                      $    $  %        $    $  ANS002.BYTE007  $  y=x*0.392157;
  $  045.AEB_EventBrkPdlPos                         $    $  %        $    $  ANS002.BYTE008  $  y=x*0.392157;
  $  046.AEB_EventLongitudeAcc                      $    $  m/s2     $    $  ANS002.BYTE009  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  047.�¼�����ƴ�                             $    $           $    $  ANS002.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  048.�¼�����ƴ�                             $    $           $    $  ANS002.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  049.AEB_EventVSELatAcc                         $    $  m/s2     $    $  ANS002.BYTE010  $  y=((x1*256+x2)&0xFFF)*0.027127-21.592;
  $  050.AEB_EventObjLongDist                       $    $  m        $    $  ANS002.BYTE012  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  051.AEB_EventObjLatDist                        $    $  m        $    $  ANS002.BYTE014  $  y=(((x1*256+x2)&0x7FFC)>>2)*0.05-102.4;
  $  052.AEB_EventYawRate                           $    $  rad      $    $  ANS002.BYTE015  $  y=((x1*256+x2)&0x3FF)*0.0021326-2.094;
  $  053.�¼��������                               $    $           $    $  ANS002.BYTE017  $  y=x+2000;
  $  054.�¼������·�                               $    $           $    $  ANS002.BYTE018  $  y=x;
  $  055.�¼���������                               $    $           $    $  ANS002.BYTE019  $  y=x;
  $  056.�¼�����ʱ��                               $    $           $    $  ANS002.BYTE020  $  y=x;
  $  057.�¼���������                               $    $           $    $  ANS002.BYTE021  $  y=x;
  $  058.�¼���������                               $    $           $    $  ANS002.BYTE022  $  y=x;
  $  059.�¼����������                             $    $  km       $    $  ANS002.BYTE023  $  y=(x1*256*256+x2*256+x3);
  $  060.AEB�޷�����ԭ��0~7                         $    $           $    $  ANS003.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  061.AEB�޷�����ԭ��8~15                        $    $           $    $  ANS003.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  062.AEB�޷�����ԭ��16~23                       $    $           $    $  ANS003.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  063.AEB�޷�����ԭ��24~31                       $    $           $    $  ANS003.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  064.AEB�޷�����ʱ�Ĺ��ϱ���״̬1               $    $           $    $  ANS003.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  065.AEB�޷�����ʱ�Ĺ��ϱ���״̬2               $    $           $    $  ANS003.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  066.Acc�쳣�˳�ʱ�����                        $    $           $    $  ANS003.BYTE010  $  y=x+2000;
  $  067.Acc�쳣�˳�ʱ���·�                        $    $           $    $  ANS003.BYTE011  $  y=x;
  $  068.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS003.BYTE012  $  y=x;
  $  069.Acc�쳣�˳�ʱ��ʱ��                        $    $           $    $  ANS003.BYTE013  $  y=x;
  $  070.Acc�쳣�˳�ʱ�ķ���                        $    $           $    $  ANS003.BYTE014  $  y=x;
  $  071.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS003.BYTE015  $  y=x;
  $  072.Acc�쳣�˳�ʱ�����                        $    $  km       $    $  ANS003.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  073.AEB�޷�����ԭ��0~7                         $    $           $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  074.AEB�޷�����ԭ��8~15                        $    $           $    $  ANS004.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  075.AEB�޷�����ԭ��16~23                       $    $           $    $  ANS004.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  076.AEB�޷�����ԭ��24~31                       $    $           $    $  ANS004.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  077.AEB�޷�����ʱ�Ĺ��ϱ���״̬1               $    $           $    $  ANS004.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  078.AEB�޷�����ʱ�Ĺ��ϱ���״̬2               $    $           $    $  ANS004.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  079.Acc�쳣�˳�ʱ�����                        $    $           $    $  ANS004.BYTE010  $  y=x+2000;
  $  080.Acc�쳣�˳�ʱ���·�                        $    $           $    $  ANS004.BYTE011  $  y=x;
  $  081.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS004.BYTE012  $  y=x;
  $  082.Acc�쳣�˳�ʱ��ʱ��                        $    $           $    $  ANS004.BYTE013  $  y=x;
  $  083.Acc�쳣�˳�ʱ�ķ���                        $    $           $    $  ANS004.BYTE014  $  y=x;
  $  084.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS004.BYTE015  $  y=x;
  $  085.Acc�쳣�˳�ʱ�����                        $    $  km       $    $  ANS004.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  086.AEB�޷�����ԭ��0~7                         $    $           $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  087.AEB�޷�����ԭ��8~15                        $    $           $    $  ANS005.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  088.AEB�޷�����ԭ��16~23                       $    $           $    $  ANS005.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  089.AEB�޷�����ԭ��24~31                       $    $           $    $  ANS005.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  090.AEB�޷�����ʱ�Ĺ��ϱ���״̬1               $    $           $    $  ANS005.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  091.AEB�޷�����ʱ�Ĺ��ϱ���״̬2               $    $           $    $  ANS005.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  092.Acc�쳣�˳�ʱ�����                        $    $           $    $  ANS005.BYTE010  $  y=x+2000;
  $  093.Acc�쳣�˳�ʱ���·�                        $    $           $    $  ANS005.BYTE011  $  y=x;
  $  094.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS005.BYTE012  $  y=x;
  $  095.Acc�쳣�˳�ʱ��ʱ��                        $    $           $    $  ANS005.BYTE013  $  y=x;
  $  096.Acc�쳣�˳�ʱ�ķ���                        $    $           $    $  ANS005.BYTE014  $  y=x;
  $  097.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS005.BYTE015  $  y=x;
  $  098.Acc�쳣�˳�ʱ�����                        $    $  km       $    $  ANS005.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  099.AEB�޷�����ԭ��0~7                         $    $           $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  100.AEB�޷�����ԭ��8~15                        $    $           $    $  ANS006.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  101.AEB�޷�����ԭ��16~23                       $    $           $    $  ANS006.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  102.AEB�޷�����ԭ��24~31                       $    $           $    $  ANS006.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  103.AEB�޷�����ʱ�Ĺ��ϱ���״̬1               $    $           $    $  ANS006.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  104.AEB�޷�����ʱ�Ĺ��ϱ���״̬2               $    $           $    $  ANS006.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  105.Acc�쳣�˳�ʱ�����                        $    $           $    $  ANS006.BYTE010  $  y=x+2000;
  $  106.Acc�쳣�˳�ʱ���·�                        $    $           $    $  ANS006.BYTE011  $  y=x;
  $  107.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS006.BYTE012  $  y=x;
  $  108.Acc�쳣�˳�ʱ��ʱ��                        $    $           $    $  ANS006.BYTE013  $  y=x;
  $  109.Acc�쳣�˳�ʱ�ķ���                        $    $           $    $  ANS006.BYTE014  $  y=x;
  $  110.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS006.BYTE015  $  y=x;
  $  111.Acc�쳣�˳�ʱ�����                        $    $  km       $    $  ANS006.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  112.AEB�޷�����ԭ��0~7                         $    $           $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  113.AEB�޷�����ԭ��8~15                        $    $           $    $  ANS007.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  114.AEB�޷�����ԭ��16~23                       $    $           $    $  ANS007.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  115.AEB�޷�����ԭ��24~31                       $    $           $    $  ANS007.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  116.AEB�޷�����ʱ�Ĺ��ϱ���״̬1               $    $           $    $  ANS007.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  117.AEB�޷�����ʱ�Ĺ��ϱ���״̬2               $    $           $    $  ANS007.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  118.Acc�쳣�˳�ʱ�����                        $    $           $    $  ANS007.BYTE010  $  y=x+2000;
  $  119.Acc�쳣�˳�ʱ���·�                        $    $           $    $  ANS007.BYTE011  $  y=x;
  $  120.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS007.BYTE012  $  y=x;
  $  121.Acc�쳣�˳�ʱ��ʱ��                        $    $           $    $  ANS007.BYTE013  $  y=x;
  $  122.Acc�쳣�˳�ʱ�ķ���                        $    $           $    $  ANS007.BYTE014  $  y=x;
  $  123.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS007.BYTE015  $  y=x;
  $  124.Acc�쳣�˳�ʱ�����                        $    $  km       $    $  ANS007.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  125.AEB�޷�����ʱΪԭ��0~7ʱ��״̬             $    $           $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  126.AEB�޷�����ʱΪԭ��8~15ʱ��״̬            $    $           $    $  ANS008.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  127.AEB�޷�����ʱΪԭ��16~23ʱ��״̬           $    $           $    $  ANS008.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  128.AEB�޷�����ʱΪԭ��24~31ʱ��״̬           $    $           $    $  ANS008.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  129.AEB �쳣�˳�Ϊԭ��0~7ʱ��״̬              $    $           $    $  ANS009.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  130.AEB �쳣�˳�Ϊԭ��8~15ʱ��״̬             $    $           $    $  ANS009.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  131.AEB �쳣�˳�Ϊԭ��16~23ʱ��״̬            $    $           $    $  ANS009.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  132.AEB �쳣�˳�Ϊԭ��24~31ʱ��״̬            $    $           $    $  ANS009.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  133.AEB�Ӽ���״̬�쳣�˳�ԭ��0~7               $    $           $    $  ANS010.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  134.AEB�Ӽ���״̬�쳣�˳�ԭ��8~15              $    $           $    $  ANS010.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  135.AEB�Ӽ���״̬�쳣�˳�ԭ��16~23             $    $           $    $  ANS010.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  136.AEB�Ӽ���״̬�쳣�˳�ԭ��24~31             $    $           $    $  ANS010.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  137.AEB�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬1       $    $           $    $  ANS010.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  138.AEB�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬2       $    $           $    $  ANS010.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  139.Acc�쳣�˳�ʱ�����                        $    $           $    $  ANS010.BYTE010  $  y=x+2000;
  $  140.Acc�쳣�˳�ʱ���·�                        $    $           $    $  ANS010.BYTE011  $  y=x;
  $  141.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS010.BYTE012  $  y=x;
  $  142.Acc�쳣�˳�ʱ��ʱ��                        $    $           $    $  ANS010.BYTE013  $  y=x;
  $  143.Acc�쳣�˳�ʱ�ķ���                        $    $           $    $  ANS010.BYTE014  $  y=x;
  $  144.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS010.BYTE015  $  y=x;
  $  145.Acc�쳣�˳�ʱ�����                        $    $  km       $    $  ANS010.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  146.AEB�Ӽ���״̬�쳣�˳�ԭ��0~7               $    $           $    $  ANS011.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  147.AEB�Ӽ���״̬�쳣�˳�ԭ��8~15              $    $           $    $  ANS011.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  148.AEB�Ӽ���״̬�쳣�˳�ԭ��16~23             $    $           $    $  ANS011.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  149.AEB�Ӽ���״̬�쳣�˳�ԭ��24~31             $    $           $    $  ANS011.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  150.AEB�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬1       $    $           $    $  ANS011.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  151.AEB�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬2       $    $           $    $  ANS011.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  152.Acc�쳣�˳�ʱ�����                        $    $           $    $  ANS011.BYTE010  $  y=x+2000;
  $  153.Acc�쳣�˳�ʱ���·�                        $    $           $    $  ANS011.BYTE011  $  y=x;
  $  154.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS011.BYTE012  $  y=x;
  $  155.Acc�쳣�˳�ʱ��ʱ��                        $    $           $    $  ANS011.BYTE013  $  y=x;
  $  156.Acc�쳣�˳�ʱ�ķ���                        $    $           $    $  ANS011.BYTE014  $  y=x;
  $  157.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS011.BYTE015  $  y=x;
  $  158.Acc�쳣�˳�ʱ�����                        $    $  km       $    $  ANS011.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  159.AEB�Ӽ���״̬�쳣�˳�ԭ��0~7               $    $           $    $  ANS012.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  160.AEB�Ӽ���״̬�쳣�˳�ԭ��8~15              $    $           $    $  ANS012.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  161.AEB�Ӽ���״̬�쳣�˳�ԭ��16~23             $    $           $    $  ANS012.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  162.AEB�Ӽ���״̬�쳣�˳�ԭ��24~31             $    $           $    $  ANS012.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  163.AEB�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬1       $    $           $    $  ANS012.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  164.AEB�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬2       $    $           $    $  ANS012.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  165.Acc�쳣�˳�ʱ�����                        $    $           $    $  ANS012.BYTE010  $  y=x+2000;
  $  166.Acc�쳣�˳�ʱ���·�                        $    $           $    $  ANS012.BYTE011  $  y=x;
  $  167.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS012.BYTE012  $  y=x;
  $  168.Acc�쳣�˳�ʱ��ʱ��                        $    $           $    $  ANS012.BYTE013  $  y=x;
  $  169.Acc�쳣�˳�ʱ�ķ���                        $    $           $    $  ANS012.BYTE014  $  y=x;
  $  170.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS012.BYTE015  $  y=x;
  $  171.Acc�쳣�˳�ʱ�����                        $    $  km       $    $  ANS012.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  172.AEB�Ӽ���״̬�쳣�˳�ԭ��0~7               $    $           $    $  ANS013.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  173.AEB�Ӽ���״̬�쳣�˳�ԭ��8~15              $    $           $    $  ANS013.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  174.AEB�Ӽ���״̬�쳣�˳�ԭ��16~23             $    $           $    $  ANS013.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  175.AEB�Ӽ���״̬�쳣�˳�ԭ��24~31             $    $           $    $  ANS013.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  176.AEB�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬1       $    $           $    $  ANS013.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  177.AEB�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬2       $    $           $    $  ANS013.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  178.Acc�쳣�˳�ʱ�����                        $    $           $    $  ANS013.BYTE010  $  y=x+2000;
  $  179.Acc�쳣�˳�ʱ���·�                        $    $           $    $  ANS013.BYTE011  $  y=x;
  $  180.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS013.BYTE012  $  y=x;
  $  181.Acc�쳣�˳�ʱ��ʱ��                        $    $           $    $  ANS013.BYTE013  $  y=x;
  $  182.Acc�쳣�˳�ʱ�ķ���                        $    $           $    $  ANS013.BYTE014  $  y=x;
  $  183.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS013.BYTE015  $  y=x;
  $  184.Acc�쳣�˳�ʱ�����                        $    $  km       $    $  ANS013.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  185.AEB�Ӽ���״̬�쳣�˳�ԭ��0~7               $    $           $    $  ANS014.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  186.AEB�Ӽ���״̬�쳣�˳�ԭ��8~15              $    $           $    $  ANS014.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  187.AEB�Ӽ���״̬�쳣�˳�ԭ��16~23             $    $           $    $  ANS014.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  188.AEB�Ӽ���״̬�쳣�˳�ԭ��24~31             $    $           $    $  ANS014.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  189.AEB�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬1       $    $           $    $  ANS014.BYTE008  $  if(x==0x01) y=@0b7e;else if(x==0x02) y=@0b7f;else if(x==0x04) y=@0b80;else if(x==0x08) y=@0b81;else if(x==0x10) y=@0b82;else if(x==0x20) y=@0b83;else if(x==0x40) y=@0ddb;else if(x==0x80) y=@0ddc;else y=@0035;
  $  190.AEB�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬2       $    $           $    $  ANS014.BYTE009  $  if(x==0x01) y=@0b6c;else if(x==0x02) y=@0b6d;else y=@0035;
  $  191.Acc�쳣�˳�ʱ�����                        $    $           $    $  ANS014.BYTE010  $  y=x+2000;
  $  192.Acc�쳣�˳�ʱ���·�                        $    $           $    $  ANS014.BYTE011  $  y=x;
  $  193.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS014.BYTE012  $  y=x;
  $  194.Acc�쳣�˳�ʱ��ʱ��                        $    $           $    $  ANS014.BYTE013  $  y=x;
  $  195.Acc�쳣�˳�ʱ�ķ���                        $    $           $    $  ANS014.BYTE014  $  y=x;
  $  196.Acc�쳣�˳�ʱ������                        $    $           $    $  ANS014.BYTE015  $  y=x;
  $  197.Acc�쳣�˳�ʱ�����                        $    $  km       $    $  ANS014.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  198.AEB �쳣�˳�Ϊԭ��0~7ʱ��״̬              $    $           $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0035;
  $  199.AEB �쳣�˳�Ϊԭ��8~15ʱ��״̬             $    $           $    $  ANS015.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0035;
  $  200.AEB �쳣�˳�Ϊԭ��16~23ʱ��״̬            $    $           $    $  ANS015.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0035;
  $  201.AEB �쳣�˳�Ϊԭ��24~31ʱ��״̬            $    $           $    $  ANS015.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  202.APA����                                    $    $           $    $  ANS016.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  203.��ص�ѹ                                   $    $  V        $    $  ANS017.BYTE004  $  y=x*0.1;
  $  204.�궨����ԭ��_�����Զ�������Χ              $    $           $    $  ANS018.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  205.�궨����ԭ��_�������(���ڱ궨��Χ)        $    $           $    $  ANS018.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  206.�궨����ԭ��_δ�궨                        $    $           $    $  ANS018.BYTE004  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;

  $)  02.������3
  $  02.������3
  $  REQ000:74A 03 22 B0 2E 00 00 00 00       $  ANS000:7CA 03 22 B0 2E 00 00 00 00
  $  REQ001:74A 03 22 B0 38 00 00 00 00       $  ANS001:7CA 03 22 B0 38 00 00 00 00
  $  REQ002:74A 03 22 B0 3B 00 00 00 00       $  ANS002:7CA 03 22 B0 3B 00 00 00 00
  $  REQ003:74A 03 22 C0 01 00 00 00 00       $  ANS003:7CA 03 22 C0 01 00 00 00 00
  $  REQ004:74A 03 22 B0 3E 00 00 00 00       $  ANS004:7CA 03 22 B0 3E 00 00 00 00
  $  REQ005:74A 03 22 B0 4B 00 00 00 00       $  ANS005:7CA 03 22 B0 4B 00 00 00 00
  $  REQ006:74A 03 22 C0 02 00 00 00 00       $  ANS006:7CA 03 22 C0 02 00 00 00 00
  $  REQ007:74A 03 22 B0 26 00 00 00 00       $  ANS007:7CA 03 22 B0 26 00 00 00 00
  $  REQ008:74A 03 22 C0 03 00 00 00 00       $  ANS008:7CA 03 22 C0 03 00 00 00 00
  $  REQ009:74A 03 22 B0 2F 00 00 00 00       $  ANS009:7CA 03 22 B0 2F 00 00 00 00
  $  REQ010:74A 03 22 B0 75 00 00 00 00       $  ANS010:7CA 03 22 B0 75 00 00 00 00
  $  REQ011:74A 03 22 B0 77 00 00 00 00       $  ANS011:7CA 03 22 B0 77 00 00 00 00
  $  REQ012:74A 03 22 B0 94 00 00 00 00       $  ANS012:7CA 03 22 B0 94 00 00 00 00
  $  REQ013:74A 03 22 B0 74 00 00 00 00       $  ANS013:7CA 03 22 B0 74 00 00 00 00
  $  REQ014:74A 03 22 B0 76 00 00 00 00       $  ANS014:7CA 03 22 B0 76 00 00 00 00
  $  REQ015:74A 03 22 C0 04 00 00 00 00       $  ANS015:7CA 03 22 C0 04 00 00 00 00
  $  REQ016:74A 03 22 B0 27 00 00 00 00       $  ANS016:7CA 03 22 B0 27 00 00 00 00
  $  REQ017:74A 03 22 B0 7D 00 00 00 00       $  ANS017:7CA 03 22 B0 7D 00 00 00 00
  $  REQ018:74A 03 22 B0 7F 00 00 00 00       $  ANS018:7CA 03 22 B0 7F 00 00 00 00
  $  REQ019:74A 03 22 B0 96 00 00 00 00       $  ANS019:7CA 03 22 B0 96 00 00 00 00
  $  REQ020:74A 03 22 B0 7C 00 00 00 00       $  ANS020:7CA 03 22 B0 7C 00 00 00 00
  $  REQ021:74A 03 22 B0 7E 00 00 00 00       $  ANS021:7CA 03 22 B0 7E 00 00 00 00
  $  REQ022:74A 03 22 D0 01 00 00 00 00       $  ANS022:7CA 03 22 D0 01 00 00 00 00
  $  REQ023:74A 03 22 B0 31 00 00 00 00       $  ANS023:7CA 03 22 B0 31 00 00 00 00
  $  REQ024:74A 03 22 B0 02 00 00 00 00       $  ANS024:7CA 03 22 B0 02 00 00 00 00
  $  REQ025:74A 03 22 B0 01 00 00 00 00       $  ANS025:7CA 03 22 B0 01 00 00 00 00
  $  REQ026:74A 03 22 B0 71 00 00 00 00       $  ANS026:7CA 03 22 B0 71 00 00 00 00

  $  000.EOL�궨״̬                                       $    $          $    $  ANS000.BYTE004  $  if(x==0x00) y=@004a;else if(x==0x01) y=@0b2a;else if(x==0x02) y=@0b2b;else if(x==0x03) y=@0b2c;else y=@0035;
  $  001.EOL�궨����ԭ��                                   $    $          $    $  ANS000.BYTE005  $  if(x==0x00) y=@023f;else if(x==0x01) y=@0096;else if(x==0x02) y=@0910;else if(x==0x03) y=@0ddd;else if(x==0x04) y=@0912;else if(x==0x05) y=@0913;else if(x==0x06) y=@0914;else if(x==0x07) y=@0915;else if(x==0x08) y=@0916;else if(x==0x09) y=@0917;else if(x==0x0A) y=@0918;else if(x==0x0B) y=@0919;else if(x==0x0C) y=@091a;else if(x==0x0D) y=@0df1;else if(x==0x0E) y=@091c;else if(x==0x0F) y=@091d;else if(x==0x10) y=@091e;else if(x==0x11) y=@091f;else if(x==0x12) y=@0920;else if(x==0x13) y=@0921;else if(x==0x14) y=@0922;else if(x==0x15) y=@0923;else y=@0035;
  $  002.����ͷУ׼��ڽ�ֵ                                $    $          $    $  ANS000.BYTE006  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-188;
  $  003.����ͷУ׼������ֵ                                $    $          $    $  ANS000.BYTE008  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-160;
  $  004.����ͷУ׼�����ֵ                                $    $  rad     $    $  ANS000.BYTE010  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.001-0.55;
  $  005.����ͷ�Զ�������ڽ�ֵ                            $    $          $    $  ANS000.BYTE012  $  y=((x&0x7F)-(x&0x80))-40;
  $  006.����ͷ�Զ�����������ֵ                            $    $          $    $  ANS000.BYTE013  $  y=((x&0x7F)-(x&0x80))-40;
  $  007.�궨��                                            $    $          $    $  ANS001.BYTE004  $  y=x+2000;
  $  008.�궨��                                            $    $          $    $  ANS001.BYTE005  $  y=x;
  $  009.�궨��                                            $    $          $    $  ANS001.BYTE006  $  y=x;
  $  010.�궨Сʱ                                          $    $          $    $  ANS001.BYTE007  $  y=x;
  $  011.�궨����                                          $    $          $    $  ANS001.BYTE008  $  y=x;
  $  012.�궨��                                            $    $          $    $  ANS001.BYTE009  $  y=x;
  $  013.��ȡ�����                                        $    $  km      $    $  ANS001.BYTE010  $  y=(x1*256*256+x2*256+x3);
  $  014.���Թ��ܲο���                                    $    $          $    $  ANS001.BYTE013  $  HEX(X1,X2,X3);
  $  015.������                                            $    $          $    $  ANS002.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  016.����ͷ��Ұ�ڵ�ԭ��_����̫ǿ                       $    $          $    $  ANS002.BYTE004  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  017.����ͷ��Ұ�ڵ�ԭ��_ɢ��                           $    $          $    $  ANS002.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  018.����ͷ��Ұ�ڵ�ԭ��_ͼ��ģ��                       $    $          $    $  ANS002.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  019.����ͷ��Ұ�ڵ�ԭ��_���߲���                       $    $          $    $  ANS002.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  020.����ͷ��Ұ�ڵ�ԭ��_�ߵ�                           $    $          $    $  ANS002.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  021.����ͷ��Ұ�ڵ�ԭ��_�����ڵ�                       $    $          $    $  ANS002.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  022.����ͷ��Ұ�ڵ�ԭ��_��ȫ�ڵ�                       $    $          $    $  ANS002.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  023.����ͷ��Ұ�ڵ�ԭ��_���                           $    $          $    $  ANS002.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  024.����ͷ��Ұ�ڵ�ԭ��_����                           $    $          $    $  ANS002.BYTE005  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  025.AHB����                                           $    $          $    $  ANS003.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0035;
  $  026.TSR����                                           $    $          $    $  ANS003.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0035;
  $  027.ACC����                                           $    $          $    $  ANS003.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0035;
  $  028.AEBP����                                          $    $          $    $  ANS003.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0035;
  $  029.AEB(�Զ��ƶ�ϵͳ)����                             $    $          $    $  ANS003.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  030.PCW����                                           $    $          $    $  ANS003.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0035;
  $  031.FCW(������ײ����)����                             $    $          $    $  ANS003.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  032.LDW(����ƫ��Ԥ��ϵͳ)����                         $    $          $    $  ANS003.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  033.LKA(�������ָ���ϵͳ)����                         $    $          $    $  ANS003.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  034.SDM25-��ײ�ص�                                    $    $          $    $  ANS004.BYTE007  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  035.SDM9-�ؼ�������ǰ��ָ�ӳ����ص�����������         $    $          $    $  ANS004.BYTE007  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  036.SDM-8�ؼ����������ǲ�������֮���λ�ò���         $    $          $    $  ANS004.BYTE007  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  037.SDM-7Ŀ��λ������������                           $    $          $    $  ANS004.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  038.SDM-6TTC����������                                $    $          $    $  ANS004.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  039.(��-֡������)����źŵ���Ϣ                       $    $          $    $  ANS004.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  040.У��İ�ȫ�����źŲ�ƥ��                          $    $          $    $  ANS004.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  041.�ظ�����ظ�����ս���Ӧ                          $    $          $    $  ANS004.BYTE007  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  042.SDM-11��Ƭ��CRC����                               $    $          $    $  ANS004.BYTE008  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  043.SDM-29��Ƭ��RFC����                               $    $          $    $  ANS004.BYTE008  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  044.SDM-30ͼ��������Ч                                $    $          $    $  ANS004.BYTE008  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  045.SDM-4У׼����                                     $    $          $    $  ANS004.BYTE008  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  046.SDM-18�ڲ�ͼ�񱣻�ʧ��                            $    $          $    $  ANS004.BYTE008  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  047.SDM-13�ɵ���������                                $    $          $    $  ANS004.BYTE008  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  048.SDM ��ս��Ӧ���                                  $    $          $    $  ANS004.BYTE008  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  049.SDM-32�ڲ��ź���                                $    $          $    $  ANS004.BYTE008  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  050.SDM-31�ڲ�У�����                                $    $          $    $  ANS004.BYTE009  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  051.SDM-27-AEB˫�ؼ�����                            $    $          $    $  ANS004.BYTE009  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  052.SDM26-DDRУ�����                                 $    $          $    $  ANS004.BYTE009  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  053.SDM19-ͼ��ȱʧ                                    $    $          $    $  ANS004.BYTE009  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  054.EyeQ������ʧ��                                  $    $          $    $  ANS004.BYTE009  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  055.EyeQ APPʧ��                                      $    $          $    $  ANS004.BYTE009  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  056.EyeQ����ʧ��                                      $    $          $    $  ANS004.BYTE009  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  057.GPIO10                                            $    $          $    $  ANS004.BYTE009  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  058.EyeQ������������ʧ                              $    $          $    $  ANS004.BYTE010  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  059.MCU EEPROM����ʧ��                                $    $          $    $  ANS004.BYTE010  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  060.MCU RAM����ʧ��                                   $    $          $    $  ANS004.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  061.MCU����У�����                                   $    $          $    $  ANS004.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  062.MCU�쳣��λ                                       $    $          $    $  ANS004.BYTE010  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  063.MCU PLLʧ��                                       $    $          $    $  ANS004.BYTE010  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  064.DAS(��ʻ����ϵͳ) 2.8VǷѹ                        $    $          $    $  ANS004.BYTE010  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  065.DAS(��ʻ����ϵͳ) 2.8V��ѹ                        $    $          $    $  ANS004.BYTE010  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  066.DAS(��ʻ����ϵͳ) 1.2VǷѹ                        $    $          $    $  ANS004.BYTE011  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  067.DAS(��ʻ����ϵͳ) 1.2V��ѹ                        $    $          $    $  ANS004.BYTE011  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  068.DAS(��ʻ����ϵͳ) 1.8VǷѹ                        $    $          $    $  ANS004.BYTE011  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  069.DAS(��ʻ����ϵͳ) 1.8V��ѹ                        $    $          $    $  ANS004.BYTE011  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  070.DAS(��ʻ����ϵͳ) 3.3VǷѹ                        $    $          $    $  ANS004.BYTE011  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  071.DAS(��ʻ����ϵͳ) 3.3V��ѹ                        $    $          $    $  ANS004.BYTE011  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  072.DAS(��ʻ����ϵͳ) 5VǷѹ                          $    $          $    $  ANS004.BYTE011  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  073.DAS(��ʻ����ϵͳ) 5V��ѹ                          $    $          $    $  ANS004.BYTE011  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  074.MCUӦ�ð汾��MCU�궨�ļ�������                    $    $          $    $  ANS005.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  075.ͼ����Ԫ�����ļ���MCU�궨�ļ�������           $    $          $    $  ANS005.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  076.MCUӦ�ð汾��ͼ����Ԫ������                   $    $          $    $  ANS005.BYTE004  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  077.LKA�����յ���Ч���ݶ�������                       $    $          $    $  ANS006.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  078.LDW(����ƫ��Ԥ��ϵͳ)����ָʾ�ƶ�·               $    $          $    $  ANS006.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  079.LDW(����ƫ��Ԥ��ϵͳ)���ذ���ճ��                 $    $          $    $  ANS006.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  080.DAS��ʻ����ϵͳ����汾��ƥ��                     $    $          $    $  ANS006.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  081.DAS��ʻ����ϵͳ�궨�쳣                           $    $          $    $  ANS006.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  082.DAS��ʻ����ϵͳ����ͷ��Ұ�ڵ�                     $    $          $    $  ANS006.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  083.ͼ�������¶ȹ���                                $    $          $    $  ANS006.BYTE006  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  084.DAS��ʻ����ϵͳ�ڲ�����                           $    $          $    $  ANS006.BYTE006  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  085.AHB����������������Ч��ֹ                         $    $          $    $  ANS006.BYTE006  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  086.TSR����������������Ч��ֹ                         $    $          $    $  ANS006.BYTE006  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  087.ACC����������������Ч��ֹ                         $    $          $    $  ANS006.BYTE006  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  088.AEB(�Զ��ƶ�ϵͳ)����������������Ч��ֹ           $    $          $    $  ANS006.BYTE006  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  089.FCW(������ײ����)����������������Ч��ֹ           $    $          $    $  ANS006.BYTE006  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  090.LDW(����ƫ��Ԥ��ϵͳ)����������������Ч��ֹ       $    $          $    $  ANS006.BYTE006  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  091.��BCM(������ƹ���ϵͳ)ģ��ʧȥͨѶ               $    $          $    $  ANS006.BYTE007  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  092.��TCU(��������Ƶ�Ԫ)ģ��ʧȥͨѶ                 $    $          $    $  ANS006.BYTE007  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  093.��IPK(�Ǳ�)ģ��ʧȥͨѶ                           $    $          $    $  ANS006.BYTE007  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  094.��ABS/ESPģ��ʧȥͨѶ                             $    $          $    $  ANS006.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  095.��SAS(������ת��Ǵ�����)ģ��ʧȥͨѶ             $    $          $    $  ANS006.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  096.������ͨѶ���߹ر�                                $    $          $    $  ANS006.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  097.��ص�ѹ��                                        $    $          $    $  ANS006.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  098.��ص�ѹ��                                        $    $          $    $  ANS006.BYTE007  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  099.FCW(������ײ����)��ʻԱѡ������м���             $    $          $    $  ANS007.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  100.LDW(����ƫ��Ԥ��ϵͳ)��ʻԱѡ������м���         $    $          $    $  ANS007.BYTE004  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  101.AEB(�Զ��ƶ�ϵͳ)��ʻԱѡ������м���             $    $          $    $  ANS007.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  102.ACC��ʻԱѡ������м���                           $    $          $    $  ANS007.BYTE005  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0035;
  $  103.PCW��ʻԱѡ������м���                           $    $          $    $  ANS007.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  104.AEBP��ʻԱѡ������м���                          $    $          $    $  ANS007.BYTE006  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  105.FCW(������ײ����)��ʻԱѡ������м���             $    $          $    $  ANS008.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  106.LDW(����ƫ��Ԥ��ϵͳ)��ʻԱѡ������м���         $    $          $    $  ANS008.BYTE004  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  107.AEB(�Զ��ƶ�ϵͳ)��ʻԱѡ������м���             $    $          $    $  ANS008.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  108.ACC��ʻԱѡ������м���                           $    $          $    $  ANS008.BYTE005  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0035;
  $  109.PCW��ʻԱѡ������м���                           $    $          $    $  ANS008.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  110.AEBP��ʻԱѡ������м���                          $    $          $    $  ANS008.BYTE006  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  111.����ͷ���������Ե����                          $    $  m       $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.01;
  $  112.����ͷ���ҳ������Ե����                          $    $  m       $    $  ANS009.BYTE006  $  y=(x1*256+x2)*0.01;
  $  113.����ͷ��Ŀ�����                                  $    $  m       $    $  ANS009.BYTE008  $  y=(x1*256+x2)*0.001;
  $  114.����ͷ�߶�                                        $    $  m       $    $  ANS009.BYTE010  $  y=(x1*256+x2)*0.01;
  $  115.�ӵ��浽Ŀ���������߶�                          $    $  m       $    $  ANS009.BYTE012  $  y=(x1*256+x2)*0.01;
  $  116.�ӵ��浽Ŀ�������Ҳ�߶�                          $    $  m       $    $  ANS009.BYTE014  $  y=(x1*256+x2)*0.01;
  $  117.�ӳ������ĵ�Ŀ������������                      $    $  m       $    $  ANS009.BYTE016  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.01;
  $  118.�ӳ������ĵ�Ŀ�������Ҳ����                      $    $  m       $    $  ANS009.BYTE018  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))*0.01;
  $  119.Ŀ�굥�����С��������Ŀ��                        $    $  rad     $    $  ANS009.BYTE020  $  y=(x1*256+x2)*0.001;
  $  120.FCW�Ӽ���״̬�쳣�˳�ԭ��0~7                      $    $          $    $  ANS010.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  121.FCW�Ӽ���״̬�쳣�˳�ԭ��8~15                     $    $          $    $  ANS010.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  122.Acc�쳣�˳�ʱ�����                               $    $          $    $  ANS010.BYTE006  $  y=x+2000;
  $  123.Acc�쳣�˳�ʱ���·�                               $    $          $    $  ANS010.BYTE007  $  y=x;
  $  124.Acc�쳣�˳�ʱ������                               $    $          $    $  ANS010.BYTE008  $  y=x;
  $  125.Acc�쳣�˳�ʱ��ʱ��                               $    $          $    $  ANS010.BYTE009  $  y=x;
  $  126.Acc�쳣�˳�ʱ�ķ���                               $    $          $    $  ANS010.BYTE010  $  y=x;
  $  127.Acc�쳣�˳�ʱ������                               $    $          $    $  ANS010.BYTE011  $  y=x;
  $  128.Acc�쳣�˳�ʱ�����                               $    $  km      $    $  ANS010.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  129.FCW�޷�����Ϊԭ��0~7ʱ��״̬                      $    $          $    $  ANS011.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  130.FCW�޷�����Ϊԭ��8~15ʱ��״̬                     $    $          $    $  ANS011.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  131.FCW�Ӽ���״̬�쳣�˳�Ϊԭ��0~7��״̬              $    $          $    $  ANS012.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  132.FCW�Ӽ���״̬�쳣�˳�Ϊԭ��8~15��״̬             $    $          $    $  ANS012.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  133.FCW�Ӽ���״̬�쳣�˳�ԭ��0~7                      $    $          $    $  ANS013.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  134.FCW�Ӽ���״̬�쳣�˳�ԭ��8~15                     $    $          $    $  ANS013.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  135.Acc�쳣�˳�ʱ�����                               $    $          $    $  ANS013.BYTE006  $  y=x+2000;
  $  136.Acc�쳣�˳�ʱ���·�                               $    $          $    $  ANS013.BYTE007  $  y=x;
  $  137.Acc�쳣�˳�ʱ������                               $    $          $    $  ANS013.BYTE008  $  y=x;
  $  138.Acc�쳣�˳�ʱ��ʱ��                               $    $          $    $  ANS013.BYTE009  $  y=x;
  $  139.Acc�쳣�˳�ʱ�ķ���                               $    $          $    $  ANS013.BYTE010  $  y=x;
  $  140.Acc�쳣�˳�ʱ������                               $    $          $    $  ANS013.BYTE011  $  y=x;
  $  141.Acc�쳣�˳�ʱ�����                               $    $  km      $    $  ANS013.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  142.FCW�Ӽ���״̬�쳣�˳�Ϊԭ��0~7��״̬              $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  143.FCW�Ӽ���״̬�쳣�˳�Ϊԭ��8~15��״̬             $    $          $    $  ANS014.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  144.AHB���ܿ���                                       $    $          $    $  ANS015.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  145.TSR���ܿ���                                       $    $          $    $  ANS015.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  146.ACC���ܿ���                                       $    $          $    $  ANS015.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  147.AEBP���ܿ���                                      $    $          $    $  ANS015.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  148.AEB(�Զ��ƶ�ϵͳ)���ܿ���                         $    $          $    $  ANS015.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  149.PCW���ܿ���                                       $    $          $    $  ANS015.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  150.FCW(������ײ����)���ܿ���                         $    $          $    $  ANS015.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  151.LDW(����ƫ��Ԥ��ϵͳ)���ܿ���                     $    $          $    $  ANS015.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  152.LKA(�������ָ���ϵͳ)���ܿ���                     $    $          $    $  ANS015.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  153.AHB���ܿ���                                       $    $          $    $  ANS016.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  154.TSR���ܿ���                                       $    $          $    $  ANS016.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  155.ACC���ܿ���                                       $    $          $    $  ANS016.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  156.AEBP���ܿ���                                      $    $          $    $  ANS016.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  157.AEB(�Զ��ƶ�ϵͳ)���ܿ���                         $    $          $    $  ANS016.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  158.PCW���ܿ���                                       $    $          $    $  ANS016.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  159.FCW(������ײ����)���ܿ���                         $    $          $    $  ANS016.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  160.LDW(����ƫ��Ԥ��ϵͳ)���ܿ���                     $    $          $    $  ANS016.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  161.LKA(�������ָ���ϵͳ)���ܿ���                     $    $          $    $  ANS016.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  162.IHC�Ӽ���״̬�쳣�˳�ԭ��0~7                      $    $          $    $  ANS017.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  163.IHC�Ӽ���״̬�쳣�˳�ԭ��8~15                     $    $          $    $  ANS017.BYTE005  $  y=x;
  $  164.Acc�쳣�˳�ʱ�����                               $    $          $    $  ANS017.BYTE006  $  y=x+2000;
  $  165.Acc�쳣�˳�ʱ���·�                               $    $          $    $  ANS017.BYTE007  $  y=x;
  $  166.Acc�쳣�˳�ʱ������                               $    $          $    $  ANS017.BYTE008  $  y=x;
  $  167.Acc�쳣�˳�ʱ��ʱ��                               $    $          $    $  ANS017.BYTE009  $  y=x;
  $  168.Acc�쳣�˳�ʱ�ķ���                               $    $          $    $  ANS017.BYTE010  $  y=x;
  $  169.Acc�쳣�˳�ʱ������                               $    $          $    $  ANS017.BYTE011  $  y=x;
  $  170.Acc�쳣�˳�ʱ�����                               $    $  km      $    $  ANS017.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  171.IHC�޷�����Ϊԭ��0~7ʱ��״̬                      $    $          $    $  ANS018.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  172.IHC�޷�����Ϊԭ��8~15ʱ��״̬                     $    $          $    $  ANS018.BYTE005  $  y=x;
  $  173.IHC�Ӽ���״̬�쳣�˳�Ϊԭ��0~7��״̬              $    $          $    $  ANS019.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  174.IHC�Ӽ���״̬�쳣�˳�Ϊԭ��8~15��״̬             $    $          $    $  ANS019.BYTE005  $  y=x;
  $  175.IHC�Ӽ���״̬�쳣�˳�ԭ��0~7                      $    $          $    $  ANS020.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  176.IHC�Ӽ���״̬�쳣�˳�ԭ��8~15                     $    $          $    $  ANS020.BYTE005  $  y=x;
  $  177.Acc�쳣�˳�ʱ�����                               $    $          $    $  ANS020.BYTE006  $  y=x+2000;
  $  178.Acc�쳣�˳�ʱ���·�                               $    $          $    $  ANS020.BYTE007  $  y=x;
  $  179.Acc�쳣�˳�ʱ������                               $    $          $    $  ANS020.BYTE008  $  y=x;
  $  180.Acc�쳣�˳�ʱ��ʱ��                               $    $          $    $  ANS020.BYTE009  $  y=x;
  $  181.Acc�쳣�˳�ʱ�ķ���                               $    $          $    $  ANS020.BYTE010  $  y=x;
  $  182.Acc�쳣�˳�ʱ������                               $    $          $    $  ANS020.BYTE011  $  y=x;
  $  183.Acc�쳣�˳�ʱ�����                               $    $  km      $    $  ANS020.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  184.IHC�Ӽ���״̬�쳣�˳�Ϊԭ��0~7��״̬              $    $          $    $  ANS021.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  185.IHC�Ӽ���״̬�쳣�˳�Ϊԭ��8~15��״̬             $    $          $    $  ANS021.BYTE005  $  y=x;
  $  186.ȫ��KL50״̬                                      $    $          $    $  ANS022.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  187.ȫ�ַ�������ת״̬                                $    $          $    $  ANS022.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  188.ȫ��KL15״̬                                      $    $          $    $  ANS022.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  189.ȫ��ACC/KLR״̬                                   $    $          $    $  ANS022.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  190.ϵͳKL50״̬                                      $    $          $    $  ANS022.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  191.ϵͳ��������ת״̬                                $    $          $    $  ANS022.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  192.ϵͳKL15״̬                                      $    $          $    $  ANS022.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  193.ϵͳACC/KLR״̬                                   $    $          $    $  ANS022.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  194.ͼ�������¶�                                    $    $          $    $  ANS023.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-40;
  $  195.ͼ����Ԫ����ģʽ                              $    $          $    $  ANS024.BYTE004  $  if(x==0x00) y=@023f;else if(x==0x01) y=@07de;else if(x==0x02) y=@0e7e;else if(x==0x03) y=@0e7f;else if(x==0x04) y=@0e80;else if(x==0x05) y=@0035;else y=@0035;
  $  196.ͼ����Ԫ����״̬                              $    $          $    $  ANS025.BYTE004  $  if(x==0x00) y=@000f;else if(x==0x02) y=@090e;else if(x==0x03) y=@090f;else if(x==0x22) y=@0e81;else if(x==0x82) y=@0e82;else if(x==0x85) y=@0e83;else if(x==0x92) y=@0dc8;else if(x==0xAA) y=@0180;else if(x==0xAC) y=@0e84;else y=@0035;
  $  197.LDW�Ӽ���״̬�쳣�˳�ԭ��0~7                      $    $          $    $  ANS026.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  198.LDW�Ӽ���״̬�쳣�˳�ԭ��8~15                     $    $          $    $  ANS026.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  199.Acc�쳣�˳�ʱ�����                               $    $          $    $  ANS026.BYTE006  $  y=x+2000;
  $  200.Acc�쳣�˳�ʱ���·�                               $    $          $    $  ANS026.BYTE007  $  y=x;
  $  201.Acc�쳣�˳�ʱ������                               $    $          $    $  ANS026.BYTE008  $  y=x;
  $  202.Acc�쳣�˳�ʱ��ʱ��                               $    $          $    $  ANS026.BYTE009  $  y=x;
  $  203.Acc�쳣�˳�ʱ�ķ���                               $    $          $    $  ANS026.BYTE010  $  y=x;
  $  204.Acc�쳣�˳�ʱ������                               $    $          $    $  ANS026.BYTE011  $  y=x;
  $  205.Acc�쳣�˳�ʱ�����                               $    $  km      $    $  ANS026.BYTE012  $  y=(x1*256*256+x2*256+x3);

  $)  03.������4
  $  03.������4
  $  REQ000:74A 03 22 B0 73 00 00 00 00       $  ANS000:7CA 03 22 B0 73 00 00 00 00
  $  REQ001:74A 03 22 B0 93 00 00 00 00       $  ANS001:7CA 03 22 B0 93 00 00 00 00
  $  REQ002:74A 03 22 B0 70 00 00 00 00       $  ANS002:7CA 03 22 B0 70 00 00 00 00
  $  REQ003:74A 03 22 B0 72 00 00 00 00       $  ANS003:7CA 03 22 B0 72 00 00 00 00
  $  REQ004:74A 03 22 D0 03 00 00 00 00       $  ANS004:7CA 03 22 D0 03 00 00 00 00
  $  REQ005:74A 03 22 D0 02 00 00 00 00       $  ANS005:7CA 03 22 D0 02 00 00 00 00
  $  REQ006:74A 03 22 B0 A6 00 00 00 00       $  ANS006:7CA 03 22 B0 A6 00 00 00 00
  $  REQ007:74A 03 22 B0 A7 00 00 00 00       $  ANS007:7CA 03 22 B0 A7 00 00 00 00
  $  REQ008:74A 03 22 B0 A8 00 00 00 00       $  ANS008:7CA 03 22 B0 A8 00 00 00 00
  $  REQ009:74A 03 22 B0 A9 00 00 00 00       $  ANS009:7CA 03 22 B0 A9 00 00 00 00
  $  REQ010:74A 03 22 B0 AB 00 00 00 00       $  ANS010:7CA 03 22 B0 AB 00 00 00 00
  $  REQ011:74A 03 22 B0 97 00 00 00 00       $  ANS011:7CA 03 22 B0 97 00 00 00 00
  $  REQ012:74A 03 22 B0 A0 00 00 00 00       $  ANS012:7CA 03 22 B0 A0 00 00 00 00
  $  REQ013:74A 03 22 B0 A1 00 00 00 00       $  ANS013:7CA 03 22 B0 A1 00 00 00 00
  $  REQ014:74A 03 22 B0 A2 00 00 00 00       $  ANS014:7CA 03 22 B0 A2 00 00 00 00
  $  REQ015:74A 03 22 B0 A3 00 00 00 00       $  ANS015:7CA 03 22 B0 A3 00 00 00 00
  $  REQ016:74A 03 22 B0 A4 00 00 00 00       $  ANS016:7CA 03 22 B0 A4 00 00 00 00
  $  REQ017:74A 03 22 B0 A5 00 00 00 00       $  ANS017:7CA 03 22 B0 A5 00 00 00 00
  $  REQ018:74A 03 22 B0 AA 00 00 00 00       $  ANS018:7CA 03 22 B0 AA 00 00 00 00
  $  REQ019:74A 03 22 B0 30 00 00 00 00       $  ANS019:7CA 03 22 B0 30 00 00 00 00
  $  REQ020:74A 03 22 E1 01 00 00 00 00       $  ANS020:7CA 03 22 E1 01 00 00 00 00
  $  REQ021:74A 03 22 B0 90 00 00 00 00       $  ANS021:7CA 03 22 B0 90 00 00 00 00
  $  REQ022:74A 03 22 B0 47 00 00 00 00       $  ANS022:7CA 03 22 B0 47 00 00 00 00
  $  REQ023:74A 03 22 B0 79 00 00 00 00       $  ANS023:7CA 03 22 B0 79 00 00 00 00
  $  REQ024:74A 03 22 B0 7B 00 00 00 00       $  ANS024:7CA 03 22 B0 7B 00 00 00 00
  $  REQ025:74A 03 22 B0 95 00 00 00 00       $  ANS025:7CA 03 22 B0 95 00 00 00 00
  $  REQ026:74A 03 22 B0 78 00 00 00 00       $  ANS026:7CA 03 22 B0 78 00 00 00 00
  $  REQ027:74A 03 22 B0 7A 00 00 00 00       $  ANS027:7CA 03 22 B0 7A 00 00 00 00
  $  REQ028:74A 03 22 B0 29 00 00 00 00       $  ANS028:7CA 03 22 B0 29 00 00 00 00
  $  REQ029:74A 03 22 C0 06 00 00 00 00       $  ANS029:7CA 03 22 C0 06 00 00 00 00
  $  REQ030:74A 03 22 B0 28 00 00 00 00       $  ANS030:7CA 03 22 B0 28 00 00 00 00
  $  REQ031:74A 03 22 C0 05 00 00 00 00       $  ANS031:7CA 03 22 C0 05 00 00 00 00
  $  REQ032:74A 03 22 B0 00 00 00 00 00       $  ANS032:7CA 03 22 B0 00 00 00 00 00

  $  000.LDW�޷�����Ϊԭ��0~7ʱ��״̬                 $    $          $    $  ANS000.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  001.LDW�޷�����Ϊԭ��8~15ʱ��״̬                $    $          $    $  ANS000.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  002.LDW�޷�����Ϊԭ��0~7ʱ��״̬                 $    $          $    $  ANS001.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  003.LDW�޷�����Ϊԭ��8~15ʱ��״̬                $    $          $    $  ANS001.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  004.LDW�Ӽ���״̬�쳣�˳�ԭ��0~7                 $    $          $    $  ANS002.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  005.LDW�Ӽ���״̬�쳣�˳�ԭ��8~15                $    $          $    $  ANS002.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  006.Acc�쳣�˳�ʱ�����                          $    $          $    $  ANS002.BYTE006  $  y=x+2000;
  $  007.Acc�쳣�˳�ʱ���·�                          $    $          $    $  ANS002.BYTE007  $  y=x;
  $  008.Acc�쳣�˳�ʱ������                          $    $          $    $  ANS002.BYTE008  $  y=x;
  $  009.Acc�쳣�˳�ʱ��ʱ��                          $    $          $    $  ANS002.BYTE009  $  y=x;
  $  010.Acc�쳣�˳�ʱ�ķ���                          $    $          $    $  ANS002.BYTE010  $  y=x;
  $  011.Acc�쳣�˳�ʱ������                          $    $          $    $  ANS002.BYTE011  $  y=x;
  $  012.Acc�쳣�˳�ʱ�����                          $    $  km      $    $  ANS002.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  013.LDW�Ӽ���״̬�쳣�˳�Ϊԭ��0~7��״̬         $    $          $    $  ANS003.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0035;
  $  014.LDW�Ӽ���״̬�쳣�˳�Ϊԭ��8~15��״̬        $    $          $    $  ANS003.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  015.LDW(����ƫ��Ԥ��ϵͳ)����                    $    $          $    $  ANS004.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  016.LDW(����ƫ��Ԥ��ϵͳ)����ָʾ��              $    $          $    $  ANS005.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  017.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��0-7��״̬         $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0b31;else y=@0035;
  $  018.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS006.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0035;
  $  019.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��16-23��״̬       $    $          $    $  ANS006.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0035;
  $  020.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��24-31��״̬       $    $          $    $  ANS006.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else y=@0035;
  $  021.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��32-39��״̬       $    $          $    $  ANS006.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  022.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��40-47��״̬       $    $          $    $  ANS006.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  023.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��                  $    $          $    $  ANS006.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  024.LKA�쳣�Ƴ�ʱ�����                          $    $          $    $  ANS006.BYTE012  $  y=x+2000;
  $  025.LKA�쳣�Ƴ�ʱ���·�                          $    $          $    $  ANS006.BYTE013  $  y=x;
  $  026.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS006.BYTE014  $  y=x;
  $  027.LKA�쳣�Ƴ�ʱ��ʱ��                          $    $          $    $  ANS006.BYTE015  $  y=x;
  $  028.LKA�쳣�Ƴ�ʱ�ķ���                          $    $          $    $  ANS006.BYTE016  $  y=x;
  $  029.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS006.BYTE017  $  y=x;
  $  030.LKA�쳣�Ƴ�ʱ�������                        $    $  km      $    $  ANS006.BYTE020  $  y=x;
  $  031.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��0-7��״̬         $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0b31;else y=@0035;
  $  032.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS007.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0035;
  $  033.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��16-23��״̬       $    $          $    $  ANS007.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0035;
  $  034.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��24-31��״̬       $    $          $    $  ANS007.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else y=@0035;
  $  035.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��32-39��״̬       $    $          $    $  ANS007.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  036.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��40-47��״̬       $    $          $    $  ANS007.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  037.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��                  $    $          $    $  ANS007.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  038.LKA�쳣�Ƴ�ʱ�����                          $    $          $    $  ANS007.BYTE012  $  y=x+2000;
  $  039.LKA�쳣�Ƴ�ʱ���·�                          $    $          $    $  ANS007.BYTE013  $  y=x;
  $  040.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS007.BYTE014  $  y=x;
  $  041.LKA�쳣�Ƴ�ʱ��ʱ��                          $    $          $    $  ANS007.BYTE015  $  y=x;
  $  042.LKA�쳣�Ƴ�ʱ�ķ���                          $    $          $    $  ANS007.BYTE016  $  y=x;
  $  043.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS007.BYTE017  $  y=x;
  $  044.LKA�쳣�Ƴ�ʱ�������                        $    $  km      $    $  ANS007.BYTE020  $  y=x;
  $  045.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��0-7��״̬         $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0b31;else y=@0035;
  $  046.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS008.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0035;
  $  047.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��16-23��״̬       $    $          $    $  ANS008.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0035;
  $  048.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��24-31��״̬       $    $          $    $  ANS008.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else y=@0035;
  $  049.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��32-39��״̬       $    $          $    $  ANS008.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  050.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��40-47��״̬       $    $          $    $  ANS008.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  051.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��                  $    $          $    $  ANS008.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  052.LKA�쳣�Ƴ�ʱ�����                          $    $          $    $  ANS008.BYTE012  $  y=x+2000;
  $  053.LKA�쳣�Ƴ�ʱ���·�                          $    $          $    $  ANS008.BYTE013  $  y=x;
  $  054.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS008.BYTE014  $  y=x;
  $  055.LKA�쳣�Ƴ�ʱ��ʱ��                          $    $          $    $  ANS008.BYTE015  $  y=x;
  $  056.LKA�쳣�Ƴ�ʱ�ķ���                          $    $          $    $  ANS008.BYTE016  $  y=x;
  $  057.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS008.BYTE017  $  y=x;
  $  058.LKA�쳣�Ƴ�ʱ�������                        $    $  km      $    $  ANS008.BYTE020  $  y=x;
  $  059.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��0-7��״̬         $    $          $    $  ANS009.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0b31;else y=@0035;
  $  060.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS009.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0035;
  $  061.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��16-23��״̬       $    $          $    $  ANS009.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0035;
  $  062.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��24-31��״̬       $    $          $    $  ANS009.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else y=@0035;
  $  063.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��32-39��״̬       $    $          $    $  ANS009.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  064.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��40-47��״̬       $    $          $    $  ANS009.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  065.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��                  $    $          $    $  ANS009.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  066.LKA�쳣�Ƴ�ʱ�����                          $    $          $    $  ANS009.BYTE012  $  y=x+2000;
  $  067.LKA�쳣�Ƴ�ʱ���·�                          $    $          $    $  ANS009.BYTE013  $  y=x;
  $  068.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS009.BYTE014  $  y=x;
  $  069.LKA�쳣�Ƴ�ʱ��ʱ��                          $    $          $    $  ANS009.BYTE015  $  y=x;
  $  070.LKA�쳣�Ƴ�ʱ�ķ���                          $    $          $    $  ANS009.BYTE016  $  y=x;
  $  071.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS009.BYTE017  $  y=x;
  $  072.LKA�쳣�Ƴ�ʱ�������                        $    $  km      $    $  ANS009.BYTE020  $  y=x;
  $  073.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��0-7��״̬         $    $          $    $  ANS010.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0b31;else y=@0035;
  $  074.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS010.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0035;
  $  075.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��16-23��״̬       $    $          $    $  ANS010.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0035;
  $  076.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��24-31��״̬       $    $          $    $  ANS010.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else y=@0035;
  $  077.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��32-39��״̬       $    $          $    $  ANS010.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  078.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��40-47��״̬       $    $          $    $  ANS010.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  079.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS011.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  080.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS011.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  081.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��16-23��״̬       $    $          $    $  ANS011.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  082.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��24-31��״̬       $    $          $    $  ANS011.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  083.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��32-39��״̬       $    $          $    $  ANS011.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  084.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��40-47��״̬       $    $          $    $  ANS011.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  085.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��0-7��״̬         $    $          $    $  ANS012.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  086.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS012.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  087.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��16-23��״̬       $    $          $    $  ANS012.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  088.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��24-31��״̬       $    $          $    $  ANS012.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  089.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��32-39��״̬       $    $          $    $  ANS012.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  090.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��40-47��״̬       $    $          $    $  ANS012.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  091.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��                  $    $          $    $  ANS012.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  092.LKA�쳣�Ƴ�ʱ�����                          $    $          $    $  ANS012.BYTE012  $  y=x+2000;
  $  093.LKA�쳣�Ƴ�ʱ���·�                          $    $          $    $  ANS012.BYTE013  $  y=x;
  $  094.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS012.BYTE014  $  y=x;
  $  095.LKA�쳣�Ƴ�ʱ��ʱ��                          $    $          $    $  ANS012.BYTE015  $  y=x;
  $  096.LKA�쳣�Ƴ�ʱ�ķ���                          $    $          $    $  ANS012.BYTE016  $  y=x;
  $  097.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS012.BYTE017  $  y=x;
  $  098.LKA�쳣�Ƴ�ʱ�������                        $    $  km      $    $  ANS012.BYTE020  $  y=x;
  $  099.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��0-7��״̬         $    $          $    $  ANS013.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  100.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS013.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  101.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��16-23��״̬       $    $          $    $  ANS013.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  102.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��24-31��״̬       $    $          $    $  ANS013.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  103.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��32-39��״̬       $    $          $    $  ANS013.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  104.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��40-47��״̬       $    $          $    $  ANS013.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  105.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��                  $    $          $    $  ANS013.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  106.LKA�쳣�Ƴ�ʱ�����                          $    $          $    $  ANS013.BYTE012  $  y=x+2000;
  $  107.LKA�쳣�Ƴ�ʱ���·�                          $    $          $    $  ANS013.BYTE013  $  y=x;
  $  108.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS013.BYTE014  $  y=x;
  $  109.LKA�쳣�Ƴ�ʱ��ʱ��                          $    $          $    $  ANS013.BYTE015  $  y=x;
  $  110.LKA�쳣�Ƴ�ʱ�ķ���                          $    $          $    $  ANS013.BYTE016  $  y=x;
  $  111.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS013.BYTE017  $  y=x;
  $  112.LKA�쳣�Ƴ�ʱ�������                        $    $  km      $    $  ANS013.BYTE020  $  y=x;
  $  113.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��0-7��״̬         $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  114.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS014.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  115.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��16-23��״̬       $    $          $    $  ANS014.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  116.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��24-31��״̬       $    $          $    $  ANS014.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  117.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��32-39��״̬       $    $          $    $  ANS014.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  118.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��40-47��״̬       $    $          $    $  ANS014.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  119.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��                  $    $          $    $  ANS014.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  120.LKA�쳣�Ƴ�ʱ�����                          $    $          $    $  ANS014.BYTE012  $  y=x+2000;
  $  121.LKA�쳣�Ƴ�ʱ���·�                          $    $          $    $  ANS014.BYTE013  $  y=x;
  $  122.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS014.BYTE014  $  y=x;
  $  123.LKA�쳣�Ƴ�ʱ��ʱ��                          $    $          $    $  ANS014.BYTE015  $  y=x;
  $  124.LKA�쳣�Ƴ�ʱ�ķ���                          $    $          $    $  ANS014.BYTE016  $  y=x;
  $  125.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS014.BYTE017  $  y=x;
  $  126.LKA�쳣�Ƴ�ʱ�������                        $    $  km      $    $  ANS014.BYTE020  $  y=x;
  $  127.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��0-7��״̬         $    $          $    $  ANS015.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  128.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS015.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  129.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��16-23��״̬       $    $          $    $  ANS015.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  130.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��24-31��״̬       $    $          $    $  ANS015.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  131.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��32-39��״̬       $    $          $    $  ANS015.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  132.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��40-47��״̬       $    $          $    $  ANS015.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  133.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��                  $    $          $    $  ANS015.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  134.LKA�쳣�Ƴ�ʱ�����                          $    $          $    $  ANS015.BYTE012  $  y=x+2000;
  $  135.LKA�쳣�Ƴ�ʱ���·�                          $    $          $    $  ANS015.BYTE013  $  y=x;
  $  136.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS015.BYTE014  $  y=x;
  $  137.LKA�쳣�Ƴ�ʱ��ʱ��                          $    $          $    $  ANS015.BYTE015  $  y=x;
  $  138.LKA�쳣�Ƴ�ʱ�ķ���                          $    $          $    $  ANS015.BYTE016  $  y=x;
  $  139.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS015.BYTE017  $  y=x;
  $  140.LKA�쳣�Ƴ�ʱ�������                        $    $  km      $    $  ANS015.BYTE020  $  y=x;
  $  141.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��0-7��״̬         $    $          $    $  ANS016.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  142.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS016.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  143.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��16-23��״̬       $    $          $    $  ANS016.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  144.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��24-31��״̬       $    $          $    $  ANS016.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  145.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��32-39��״̬       $    $          $    $  ANS016.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  146.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��40-47��״̬       $    $          $    $  ANS016.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  147.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��                  $    $          $    $  ANS016.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  148.LKA�쳣�Ƴ�ʱ�����                          $    $          $    $  ANS016.BYTE012  $  y=x+2000;
  $  149.LKA�쳣�Ƴ�ʱ���·�                          $    $          $    $  ANS016.BYTE013  $  y=x;
  $  150.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS016.BYTE014  $  y=x;
  $  151.LKA�쳣�Ƴ�ʱ��ʱ��                          $    $          $    $  ANS016.BYTE015  $  y=x;
  $  152.LKA�쳣�Ƴ�ʱ�ķ���                          $    $          $    $  ANS016.BYTE016  $  y=x;
  $  153.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS016.BYTE017  $  y=x;
  $  154.LKA�쳣�Ƴ�ʱ�������                        $    $  km      $    $  ANS016.BYTE020  $  y=x;
  $  155.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��0-7��״̬         $    $          $    $  ANS017.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0b31;else y=@0035;
  $  156.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS017.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0035;
  $  157.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��16-23��״̬       $    $          $    $  ANS017.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0035;
  $  158.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��24-31��״̬       $    $          $    $  ANS017.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else y=@0035;
  $  159.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��32-39��״̬       $    $          $    $  ANS017.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  160.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��40-47��״̬       $    $          $    $  ANS017.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  161.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��                  $    $          $    $  ANS017.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x20) y=@0e7b;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x80) y=@0ddc;else y=@0035;
  $  162.LKA�쳣�Ƴ�ʱ�����                          $    $          $    $  ANS017.BYTE012  $  y=x+2000;
  $  163.LKA�쳣�Ƴ�ʱ���·�                          $    $          $    $  ANS017.BYTE013  $  y=x;
  $  164.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS017.BYTE014  $  y=x;
  $  165.LKA�쳣�Ƴ�ʱ��ʱ��                          $    $          $    $  ANS017.BYTE015  $  y=x;
  $  166.LKA�쳣�Ƴ�ʱ�ķ���                          $    $          $    $  ANS017.BYTE016  $  y=x;
  $  167.LKA�쳣�Ƴ�ʱ������                          $    $          $    $  ANS017.BYTE017  $  y=x;
  $  168.LKA�쳣�Ƴ�ʱ�������                        $    $  km      $    $  ANS017.BYTE020  $  y=x;
  $  169.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS018.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0e6b;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0035;
  $  170.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��8-15��״̬        $    $          $    $  ANS018.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  171.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��16-23��״̬       $    $          $    $  ANS018.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0035;
  $  172.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��24-31��״̬       $    $          $    $  ANS018.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else y=@0035;
  $  173.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��32-39��״̬       $    $          $    $  ANS018.BYTE008  $  if(x==0x00) y=@075a;else y=@01a9;
  $  174.LKA�Ӽ���״̬�쳣�˳�Ϊԭ��40-47��״̬       $    $          $    $  ANS018.BYTE009  $  if(x==0x00) y=@075a;else y=@01a9;
  $  175.AHB����                                      $    $          $    $  ANS019.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0035;
  $  176.TSR����                                      $    $          $    $  ANS019.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0035;
  $  177.ACC����                                      $    $          $    $  ANS019.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0035;
  $  178.AEBP����                                     $    $          $    $  ANS019.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0035;
  $  179.AEB����                                      $    $          $    $  ANS019.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0035;
  $  180.PCW����                                      $    $          $    $  ANS019.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0035;
  $  181.FCW����                                      $    $          $    $  ANS019.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0035;
  $  182.LDW����                                      $    $          $    $  ANS019.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  183.LKA(�������ָ���ϵͳ)����                    $    $          $    $  ANS019.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  184.���������źž���                             $    $          $    $  ANS019.BYTE006  $  HEX(X1);
  $  185.��ȡ�����                                   $    $  km      $    $  ANS020.BYTE010  $  y=(x1*256*256+x2*256+x3);
  $  186.ˢд������                                 $    $          $    $  ANS021.BYTE006  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  187.PLL������                                  $    $          $    $  ANS021.BYTE007  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  188.Ram������                                  $    $          $    $  ANS021.BYTE008  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  189.��ջ������                                 $    $          $    $  ANS021.BYTE009  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  190.δʹ���ڴ������                           $    $          $    $  ANS021.BYTE010  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  191.ECC������                                  $    $          $    $  ANS021.BYTE011  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  192.�����Ĵ���������                           $    $          $    $  ANS021.BYTE012  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  193.Spi��ʱ                                      $    $          $    $  ANS021.BYTE013  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0035;
  $  194.ESR0                                         $    $          $    $  ANS021.BYTE014  $  y=x;
  $  195.ESR1                                         $    $          $    $  ANS021.BYTE015  $  y=x;
  $  196.SMU                                          $    $          $    $  ANS021.BYTE016  $  y=x;
  $  197.������                                       $    $          $    $  ANS021.BYTE017  $  y=x;
  $  198.STM0                                         $    $          $    $  ANS021.BYTE018  $  y=x;
  $  199.STM1                                         $    $          $    $  ANS021.BYTE019  $  y=x;
  $  200.STM2                                         $    $          $    $  ANS021.BYTE020  $  y=x;
  $  201.�������                                     $    $          $    $  ANS021.BYTE021  $  y=x;
  $  202.CB0                                          $    $          $    $  ANS021.BYTE022  $  y=x;
  $  203.CB1                                          $    $          $    $  ANS021.BYTE023  $  y=x;
  $  204.CB3                                          $    $          $    $  ANS021.BYTE024  $  y=x;
  $  205.���Ա���                                     $    $          $    $  ANS021.BYTE025  $  y=x;
  $  206.EVR13                                        $    $          $    $  ANS021.BYTE026  $  y=x;
  $  207.EVR33                                        $    $          $    $  ANS021.BYTE027  $  y=x;
  $  208.��Ӧ���Ź�                                   $    $          $    $  ANS021.BYTE028  $  y=x;
  $  209.�������Ź�                                   $    $          $    $  ANS021.BYTE029  $  y=x;
  $  210.�ɿ����������                               $    $          $    $  ANS021.BYTE030  $  y=x+2000;
  $  211.�ɿ��������·�                               $    $          $    $  ANS021.BYTE031  $  y=x;
  $  212.�ɿ�����������                               $    $          $    $  ANS021.BYTE032  $  y=x;
  $  213.�ɿ�������ʱ��                               $    $          $    $  ANS021.BYTE033  $  y=x;
  $  214.�ɿ������ݷ���                               $    $          $    $  ANS021.BYTE034  $  y=x;
  $  215.�ɿ�����������                               $    $          $    $  ANS021.BYTE035  $  y=x;
  $  216.�ɿ������������                             $    $  km      $    $  ANS021.BYTE036  $  y=(x1*256*256+x2*256+x3);
  $  217.��Ӧ��оƬ���ٺ�                             $    $          $    $  ANS022.BYTE004  $  HEX(X1,X2,X3,X4,X5,X6,X7,X8);
  $  218.TSR�Ӽ���״̬�쳣�˳�ԭ��0~7                 $    $          $    $  ANS023.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  219.TSR�Ӽ���״̬�쳣�˳�ԭ��8~15                $    $          $    $  ANS023.BYTE005  $  y=x;
  $  220.Acc�쳣�˳�ʱ�����                          $    $          $    $  ANS023.BYTE006  $  y=x+2000;
  $  221.Acc�쳣�˳�ʱ���·�                          $    $          $    $  ANS023.BYTE007  $  y=x;
  $  222.Acc�쳣�˳�ʱ������                          $    $          $    $  ANS023.BYTE008  $  y=x;
  $  223.Acc�쳣�˳�ʱ��ʱ��                          $    $          $    $  ANS023.BYTE009  $  y=x;
  $  224.Acc�쳣�˳�ʱ�ķ���                          $    $          $    $  ANS023.BYTE010  $  y=x;
  $  225.Acc�쳣�˳�ʱ������                          $    $          $    $  ANS023.BYTE011  $  y=x;
  $  226.Acc�쳣�˳�ʱ�����                          $    $  km      $    $  ANS023.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  227.TSR�޷�����Ϊԭ��0~7ʱ��״̬                 $    $          $    $  ANS024.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  228.TSR�޷�����Ϊԭ��8~15ʱ��״̬                $    $          $    $  ANS024.BYTE005  $  y=x;
  $  229.TSR�Ӽ���״̬�쳣�˳�Ϊԭ��0~7��״̬         $    $          $    $  ANS025.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  230.TSR�Ӽ���״̬�쳣�˳�Ϊԭ��8~15��״̬        $    $          $    $  ANS025.BYTE005  $  y=x;
  $  231.TSR�Ӽ���״̬�쳣�˳�ԭ��0~7                 $    $          $    $  ANS026.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  232.TSR�Ӽ���״̬�쳣�˳�ԭ��8~15��״̬          $    $          $    $  ANS026.BYTE005  $  y=x;
  $  233.Acc�쳣�˳�ʱ�����                          $    $          $    $  ANS026.BYTE006  $  y=x+2000;
  $  234.Acc�쳣�˳�ʱ���·�                          $    $          $    $  ANS026.BYTE007  $  y=x;
  $  235.Acc�쳣�˳�ʱ������                          $    $          $    $  ANS026.BYTE008  $  y=x;
  $  236.Acc�쳣�˳�ʱ��ʱ��                          $    $          $    $  ANS026.BYTE009  $  y=x;
  $  237.Acc�쳣�˳�ʱ�ķ���                          $    $          $    $  ANS026.BYTE010  $  y=x;
  $  238.Acc�쳣�˳�ʱ������                          $    $          $    $  ANS026.BYTE011  $  y=x;
  $  239.Acc�쳣�˳�ʱ�����                          $    $  km      $    $  ANS026.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  240.TSR�Ӽ���״̬�쳣�˳�Ϊԭ��0~7��״̬         $    $          $    $  ANS027.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  241.TSR�Ӽ���״̬�쳣�˳�Ϊԭ��8~15��״̬        $    $          $    $  ANS027.BYTE005  $  y=x;
  $  242.����ͷĿ���ٶ�����                           $    $          $    $  ANS028.BYTE004  $  y=(x1*256+x2);
  $  243.ACC��ʻԱѡ����ٶ�                          $    $          $    $  ANS028.BYTE006  $  y=(x1*256+x2);
  $  244.����ͷĿ���ٶ�����                           $    $          $    $  ANS029.BYTE004  $  y=(x1*256+x2);
  $  245.ACC��ʻԱѡ����ٶ�                          $    $          $    $  ANS029.BYTE006  $  y=(x1*256+x2);
  $  246.����������                                   $    $          $    $  ANS030.BYTE004  $  if(x==0x00) y=@01df;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0b6e;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0103;
  $  247.����������                                   $    $          $    $  ANS031.BYTE004  $  if(x==0x00) y=@01df;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0b6e;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0103;
  $  248.����                                         $    $  kph     $    $  ANS032.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:74A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
