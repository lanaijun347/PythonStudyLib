
    ����ID��10ba

    ģ�⣺Э��ģ��-->10ba

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

  $*$*DTC/b7000000


;******************************************************************************************************************************************************

���������:

  $$  REQ000:74A 04 14 FF FF FF 00 00 00       $$  ANS000:7CA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:74A 03 22 F1 A0 00 00 00 00       $%  ANS000:7CA 03 22 F1 A0 00 00 00 00
  $%  REQ001:74A 03 22 F1 83 00 00 00 00       $%  ANS001:7CA 03 22 F1 83 00 00 00 00
  $%  REQ002:74A 03 22 F1 A1 00 00 00 00       $%  ANS002:7CA 03 22 F1 A1 00 00 00 00
  $%  REQ003:74A 03 22 F1 91 00 00 00 00       $%  ANS003:7CA 03 22 F1 91 00 00 00 00
  $%  REQ004:74A 03 22 F1 8B 00 00 00 00       $%  ANS004:7CA 03 22 F1 8B 00 00 00 00
  $%  REQ005:74A 03 22 F1 A2 00 00 00 00       $%  ANS005:7CA 03 22 F1 A2 00 00 00 00
  $%  REQ006:74A 03 22 F1 87 00 00 00 00       $%  ANS006:7CA 03 22 F1 87 00 00 00 00
  $%  REQ007:74A 03 22 F1 10 00 00 00 00       $%  ANS007:7CA 03 22 F1 10 00 00 00 00
  $%  REQ008:74A 03 22 F1 92 00 00 00 00       $%  ANS008:7CA 03 22 F1 92 00 00 00 00
  $%  REQ009:74A 03 22 F1 8C 00 00 00 00       $%  ANS009:7CA 03 22 F1 8C 00 00 00 00
  $%  REQ010:74A 03 22 F1 94 00 00 00 00       $%  ANS010:7CA 03 22 F1 94 00 00 00 00
  $%  REQ011:74A 03 22 F1 8A 00 00 00 00       $%  ANS011:7CA 03 22 F1 8A 00 00 00 00
  $%  REQ012:74A 03 22 F1 90 00 00 00 00       $%  ANS012:7CA 03 22 F1 90 00 00 00 00
  $%  REQ013:74A 03 22 F1 A8 00 00 00 00       $%  ANS013:7CA 03 22 F1 A8 00 00 00 00

  $%  000:��ص�ԪӦ�������:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:��ص�Ԫˢд����ο���:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:��ص�Ԫ�궨�����:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:��ص�ԪӲ����:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:��ص�Ԫ��������:                $%    $%  ANS004.BYTE004  $%  HEX(X1,X2,X3);
  $%  005:��ص�Ԫ�����ļ��ο���:          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:��ص�Ԫ�����:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:��ص�Ԫ�����(�ϴ�):            $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  008:���Թ��߲ο���(�ϴ�):            $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:��̶���(�ϴ�):                  $%    $%  ANS007.BYTE015  $%  HEX(X1,X2,X3);
  $%  010:��Ӧ�̵�ص�ԪӲ���ο���:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:��Ӧ�̵�ص�Ԫ���к�:            $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  012:��Ӧ�̵�ص�Ԫ����ο���:        $%    $%  ANS010.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  013:ϵͳ��Ӧ�̱�ʶ��:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  014:����ʶ�����:                    $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  015:����������Ϣ:                    $%    $%  ANS013.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

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
  $  REQ013:74A 03 22 B0 65 00 00 00 00       $  ANS013:7CA 03 22 B0 65 00 00 00 00
  $  REQ014:74A 03 22 B0 66 00 00 00 00       $  ANS014:7CA 03 22 B0 66 00 00 00 00
  $  REQ015:74A 03 22 B0 67 00 00 00 00       $  ANS015:7CA 03 22 B0 67 00 00 00 00
  $  REQ016:74A 03 22 B0 68 00 00 00 00       $  ANS016:7CA 03 22 B0 68 00 00 00 00

  $  000.ACC�޷�����ԭ��0~7                        $    $         $    $  ANS000.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  001.ACC�޷�����ԭ��8~15                       $    $         $    $  ANS000.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  002.ACC�޷�����ԭ��16~23                      $    $         $    $  ANS000.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  003.ACC�޷�����ԭ��24~31                      $    $         $    $  ANS000.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  004.ACC�޷�����ԭ��32~39                      $    $         $    $  ANS000.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  005.ACC�޷�����ԭ��40~47                      $    $         $    $  ANS000.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  006.ACC�޷�����ʱ�Ĺ��ϱ���״̬               $    $         $    $  ANS000.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  007.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.Acc�쳣�˳�ʱ�����                       $    $  km     $    $  ANS000.BYTE020  $  y=x;
  $  014.ACC�޷�����ԭ��0~7                        $    $         $    $  ANS001.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  015.ACC�޷�����ԭ��8~15                       $    $         $    $  ANS001.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  016.ACC�޷�����ԭ��16~23                      $    $         $    $  ANS001.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  017.ACC�޷�����ԭ��24~31                      $    $         $    $  ANS001.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  018.ACC�޷�����ԭ��32~39                      $    $         $    $  ANS001.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  019.ACC�޷�����ԭ��40~47                      $    $         $    $  ANS001.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  020.ACC�޷�����ʱ�Ĺ��ϱ���״̬               $    $         $    $  ANS001.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  021.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS001.BYTE012  $  y=x+2000;
  $  022.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS001.BYTE013  $  y=x;
  $  023.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS001.BYTE014  $  y=x;
  $  024.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS001.BYTE015  $  y=x;
  $  025.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS001.BYTE016  $  y=x;
  $  026.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS001.BYTE017  $  y=x;
  $  027.Acc�쳣�˳�ʱ�����                       $    $  km     $    $  ANS001.BYTE020  $  y=x;
  $  028.ACC�޷�����ԭ��0~7                        $    $         $    $  ANS002.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  029.ACC�޷�����ԭ��8~15                       $    $         $    $  ANS002.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  030.ACC�޷�����ԭ��16~23                      $    $         $    $  ANS002.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  031.ACC�޷�����ԭ��24~31                      $    $         $    $  ANS002.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  032.ACC�޷�����ԭ��32~39                      $    $         $    $  ANS002.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  033.ACC�޷�����ԭ��40~47                      $    $         $    $  ANS002.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  034.ACC�޷�����ʱ�Ĺ��ϱ���״̬               $    $         $    $  ANS002.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  035.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS002.BYTE012  $  y=x+2000;
  $  036.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS002.BYTE013  $  y=x;
  $  037.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS002.BYTE014  $  y=x;
  $  038.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS002.BYTE015  $  y=x;
  $  039.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS002.BYTE016  $  y=x;
  $  040.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS002.BYTE017  $  y=x;
  $  041.Acc�쳣�˳�ʱ�����                       $    $  km     $    $  ANS002.BYTE020  $  y=x;
  $  042.ACC�޷�����ԭ��0~7                        $    $         $    $  ANS003.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  043.ACC�޷�����ԭ��8~15                       $    $         $    $  ANS003.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  044.ACC�޷�����ԭ��16~23                      $    $         $    $  ANS003.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  045.ACC�޷�����ԭ��24~31                      $    $         $    $  ANS003.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  046.ACC�޷�����ԭ��32~39                      $    $         $    $  ANS003.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  047.ACC�޷�����ԭ��40~47                      $    $         $    $  ANS003.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  048.ACC�޷�����ʱ�Ĺ��ϱ���״̬               $    $         $    $  ANS003.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  049.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS003.BYTE012  $  y=x+2000;
  $  050.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS003.BYTE013  $  y=x;
  $  051.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS003.BYTE014  $  y=x;
  $  052.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS003.BYTE015  $  y=x;
  $  053.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS003.BYTE016  $  y=x;
  $  054.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS003.BYTE017  $  y=x;
  $  055.Acc�쳣�˳�ʱ�����                       $    $  km     $    $  ANS003.BYTE020  $  y=x;
  $  056.ACC�޷�����ԭ��0~7                        $    $         $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  057.ACC�޷�����ԭ��8~15                       $    $         $    $  ANS004.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  058.ACC�޷�����ԭ��16~23                      $    $         $    $  ANS004.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  059.ACC�޷�����ԭ��24~31                      $    $         $    $  ANS004.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  060.ACC�޷�����ԭ��32~39                      $    $         $    $  ANS004.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  061.ACC�޷�����ԭ��40~47                      $    $         $    $  ANS004.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  062.ACC�޷�����ʱ�Ĺ��ϱ���״̬               $    $         $    $  ANS004.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  063.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS004.BYTE012  $  y=x+2000;
  $  064.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS004.BYTE013  $  y=x;
  $  065.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS004.BYTE014  $  y=x;
  $  066.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS004.BYTE015  $  y=x;
  $  067.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS004.BYTE016  $  y=x;
  $  068.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS004.BYTE017  $  y=x;
  $  069.Acc�쳣�˳�ʱ�����                       $    $  km     $    $  ANS004.BYTE020  $  y=x;
  $  070.ACC�޷�����ԭ��0~7                        $    $         $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  071.ACC�޷�����ԭ��8~15                       $    $         $    $  ANS005.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  072.ACC�޷�����ԭ��16~23                      $    $         $    $  ANS005.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  073.ACC�޷�����ԭ��24~31                      $    $         $    $  ANS005.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  074.ACC�޷�����ԭ��32~39                      $    $         $    $  ANS005.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  075.ACC�޷�����ԭ��40~47                      $    $         $    $  ANS005.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  076.ACC�˳�����״̬��ԭ��0~7(B091)            $    $         $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  077.ACC�˳�����״̬��ԭ��8~15(B091)           $    $         $    $  ANS006.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  078.ACC�˳�����״̬��ԭ��16~23(B091)          $    $         $    $  ANS006.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  079.ACC�˳�����״̬��ԭ��24~31(B091)          $    $         $    $  ANS006.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  080.ACC�˳�����״̬��ԭ��32~39(B091)          $    $         $    $  ANS006.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  081.ACC�˳�����״̬��ԭ��40~47(B091)          $    $         $    $  ANS006.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  082.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7              $    $         $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  083.ACC�Ӽ���״̬�쳣�˳�ԭ��8~15             $    $         $    $  ANS007.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  084.ACC�Ӽ���״̬�쳣�˳�ԭ��16~23            $    $         $    $  ANS007.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  085.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31            $    $         $    $  ANS007.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  086.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39            $    $         $    $  ANS007.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  087.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47            $    $         $    $  ANS007.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  088.ACC�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬       $    $         $    $  ANS007.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  089.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS007.BYTE012  $  y=x+2000;
  $  090.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS007.BYTE013  $  y=x;
  $  091.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS007.BYTE014  $  y=x;
  $  092.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS007.BYTE015  $  y=x;
  $  093.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS007.BYTE016  $  y=x;
  $  094.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS007.BYTE017  $  y=x;
  $  095.Acc�쳣�˳�ʱ�����                       $    $  km     $    $  ANS007.BYTE020  $  y=x;
  $  096.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7              $    $         $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  097.ACC�Ӽ���״̬�쳣�˳�ԭ��8~15             $    $         $    $  ANS008.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  098.ACC�Ӽ���״̬�쳣�˳�ԭ��16~23            $    $         $    $  ANS008.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  099.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31            $    $         $    $  ANS008.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  100.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39            $    $         $    $  ANS008.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  101.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47            $    $         $    $  ANS008.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  102.ACC�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬       $    $         $    $  ANS008.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  103.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS008.BYTE012  $  y=x+2000;
  $  104.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS008.BYTE013  $  y=x;
  $  105.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS008.BYTE014  $  y=x;
  $  106.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS008.BYTE015  $  y=x;
  $  107.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS008.BYTE016  $  y=x;
  $  108.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS008.BYTE017  $  y=x;
  $  109.Acc�쳣�˳�ʱ�����                       $    $  km     $    $  ANS008.BYTE020  $  y=x;
  $  110.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7              $    $         $    $  ANS009.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  111.ACC�Ӽ���״̬�쳣�˳�ԭ��8~15             $    $         $    $  ANS009.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  112.ACC�Ӽ���״̬�쳣�˳�ԭ��16~23            $    $         $    $  ANS009.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  113.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31            $    $         $    $  ANS009.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  114.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39            $    $         $    $  ANS009.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  115.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47            $    $         $    $  ANS009.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  116.ACC�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬       $    $         $    $  ANS009.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  117.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS009.BYTE012  $  y=x+2000;
  $  118.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS009.BYTE013  $  y=x;
  $  119.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS009.BYTE014  $  y=x;
  $  120.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS009.BYTE015  $  y=x;
  $  121.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS009.BYTE016  $  y=x;
  $  122.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS009.BYTE017  $  y=x;
  $  123.Acc�쳣�˳�ʱ�����                       $    $  km     $    $  ANS009.BYTE020  $  y=x;
  $  124.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7              $    $         $    $  ANS010.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  125.ACC�Ӽ���״̬�쳣�˳�ԭ��8~15             $    $         $    $  ANS010.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  126.ACC�Ӽ���״̬�쳣�˳�ԭ��16~23            $    $         $    $  ANS010.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  127.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31            $    $         $    $  ANS010.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  128.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39            $    $         $    $  ANS010.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  129.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47            $    $         $    $  ANS010.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  130.ACC�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬       $    $         $    $  ANS010.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  131.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS010.BYTE012  $  y=x+2000;
  $  132.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS010.BYTE013  $  y=x;
  $  133.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS010.BYTE014  $  y=x;
  $  134.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS010.BYTE015  $  y=x;
  $  135.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS010.BYTE016  $  y=x;
  $  136.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS010.BYTE017  $  y=x;
  $  137.Acc�쳣�˳�ʱ�����                       $    $  km     $    $  ANS010.BYTE020  $  y=x;
  $  138.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7              $    $         $    $  ANS011.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  139.ACC�Ӽ���״̬�쳣�˳�ԭ��8~15             $    $         $    $  ANS011.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  140.ACC�Ӽ���״̬�쳣�˳�ԭ��16~23            $    $         $    $  ANS011.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  141.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31            $    $         $    $  ANS011.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  142.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39            $    $         $    $  ANS011.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  143.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47            $    $         $    $  ANS011.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  144.ACC�Ӽ���״̬�쳣�˳�ʱ���ϱ���״̬       $    $         $    $  ANS011.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  145.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS011.BYTE012  $  y=x+2000;
  $  146.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS011.BYTE013  $  y=x;
  $  147.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS011.BYTE014  $  y=x;
  $  148.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS011.BYTE015  $  y=x;
  $  149.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS011.BYTE016  $  y=x;
  $  150.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS011.BYTE017  $  y=x;
  $  151.Acc�쳣�˳�ʱ�����                       $    $  km     $    $  ANS011.BYTE020  $  y=x;
  $  152.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7              $    $         $    $  ANS012.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0b4d;else if(x==0x40) y=@0b4e;else if(x==0x80) y=@0e77;else y=@0103;
  $  153.ACC�Ӽ���״̬�쳣�˳�ԭ��8~15             $    $         $    $  ANS012.BYTE005  $  if(x==0x01) y=@0e78;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0b54;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0b56;else if(x==0x80) y=@0e79;else y=@0103;
  $  154.ACC�Ӽ���״̬�쳣�˳�ԭ��16~23            $    $         $    $  ANS012.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b5d;else if(x==0x40) y=@0194;else if(x==0x80) y=@0b73;else y=@0103;
  $  155.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31            $    $         $    $  ANS012.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0b62;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  156.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39            $    $         $    $  ANS012.BYTE008  $  if(x==0x01) y=@0e6d;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0e6e;else if(x==0x80) y=@0dd1;else y=@0103;
  $  157.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47            $    $         $    $  ANS012.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  158.AEBԭ��0~7δ׼���ü���                    $    $         $    $  ANS013.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  159.AEB�޷�����ԭ��8~15                       $    $         $    $  ANS013.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  160.AEB�޷�����ԭ��16~23                      $    $         $    $  ANS013.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  161.AEB�޷�����ԭ��24~31                      $    $         $    $  ANS013.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  162.AEBδ׼���ü���Ĺ��ϰ�ȫ��־             $    $         $    $  ANS013.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  163.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS013.BYTE010  $  y=x+2000;
  $  164.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS013.BYTE011  $  y=x;
  $  165.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS013.BYTE012  $  y=x;
  $  166.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS013.BYTE013  $  y=x;
  $  167.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS013.BYTE014  $  y=x;
  $  168.AEBδ׼���ü������                       $    $         $    $  ANS013.BYTE015  $  y=x;
  $  169.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS013.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  170.AEBԭ��0~7δ׼���ü���                    $    $         $    $  ANS014.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  171.AEB�޷�����ԭ��8~15                       $    $         $    $  ANS014.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  172.AEB�޷�����ԭ��16~23                      $    $         $    $  ANS014.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  173.AEB�޷�����ԭ��24~31                      $    $         $    $  ANS014.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  174.AEBδ׼���ü���Ĺ��ϰ�ȫ��־             $    $         $    $  ANS014.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  175.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS014.BYTE010  $  y=x+2000;
  $  176.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS014.BYTE011  $  y=x;
  $  177.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS014.BYTE012  $  y=x;
  $  178.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS014.BYTE013  $  y=x;
  $  179.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS014.BYTE014  $  y=x;
  $  180.AEBδ׼���ü������                       $    $         $    $  ANS014.BYTE015  $  y=x;
  $  181.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS014.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  182.AEBԭ��0~7δ׼���ü���                    $    $         $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  183.AEB�޷�����ԭ��8~15                       $    $         $    $  ANS015.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  184.AEB�޷�����ԭ��16~23                      $    $         $    $  ANS015.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  185.AEB�޷�����ԭ��24~31                      $    $         $    $  ANS015.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  186.AEBδ׼���ü���Ĺ��ϰ�ȫ��־             $    $         $    $  ANS015.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  187.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS015.BYTE010  $  y=x+2000;
  $  188.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS015.BYTE011  $  y=x;
  $  189.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS015.BYTE012  $  y=x;
  $  190.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS015.BYTE013  $  y=x;
  $  191.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS015.BYTE014  $  y=x;
  $  192.AEBδ׼���ü������                       $    $         $    $  ANS015.BYTE015  $  y=x;
  $  193.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS015.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  194.AEBԭ��0~7δ׼���ü���                    $    $         $    $  ANS016.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  195.AEB�޷�����ԭ��8~15                       $    $         $    $  ANS016.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  196.AEB�޷�����ԭ��16~23                      $    $         $    $  ANS016.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  197.AEB�޷�����ԭ��24~31                      $    $         $    $  ANS016.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  198.AEBδ׼���ü���Ĺ��ϰ�ȫ��־             $    $         $    $  ANS016.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  199.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS016.BYTE010  $  y=x+2000;
  $  200.Acc�쳣�˳�ʱ���·�                       $    $         $    $  ANS016.BYTE011  $  y=x;
  $  201.Acc�쳣�˳�ʱ������                       $    $         $    $  ANS016.BYTE012  $  y=x;
  $  202.Acc�쳣�˳�ʱ��ʱ��                       $    $         $    $  ANS016.BYTE013  $  y=x;
  $  203.Acc�쳣�˳�ʱ�ķ���                       $    $         $    $  ANS016.BYTE014  $  y=x;
  $  204.AEBδ׼���ü������                       $    $         $    $  ANS016.BYTE015  $  y=x;
  $  205.Acc�쳣�˳�ʱ�����                       $    $         $    $  ANS016.BYTE016  $  y=(x1*256*256+x2*256+x3);

  $)  01.������2
  $  01.������2
  $  REQ000:74A 03 22 B0 69 00 00 00 00       $  ANS000:7CA 03 22 B0 69 00 00 00 00
  $  REQ001:74A 03 22 B0 6B 00 00 00 00       $  ANS001:7CA 03 22 B0 6B 00 00 00 00
  $  REQ002:74A 03 22 B0 92 00 00 00 00       $  ANS002:7CA 03 22 B0 92 00 00 00 00
  $  REQ003:74A 03 22 B0 60 00 00 00 00       $  ANS003:7CA 03 22 B0 60 00 00 00 00
  $  REQ004:74A 03 22 B0 61 00 00 00 00       $  ANS004:7CA 03 22 B0 61 00 00 00 00
  $  REQ005:74A 03 22 B0 62 00 00 00 00       $  ANS005:7CA 03 22 B0 62 00 00 00 00
  $  REQ006:74A 03 22 B0 63 00 00 00 00       $  ANS006:7CA 03 22 B0 63 00 00 00 00
  $  REQ007:74A 03 22 B0 64 00 00 00 00       $  ANS007:7CA 03 22 B0 64 00 00 00 00
  $  REQ008:74A 03 22 B0 6A 00 00 00 00       $  ANS008:7CA 03 22 B0 6A 00 00 00 00
  $  REQ009:74A 03 22 01 12 00 00 00 00       $  ANS009:7CA 03 22 01 12 00 00 00 00
  $  REQ010:74A 03 22 B0 3D 00 00 00 00       $  ANS010:7CA 03 22 B0 3D 00 00 00 00
  $  REQ011:74A 03 22 B0 2E 00 00 00 00       $  ANS011:7CA 03 22 B0 2E 00 00 00 00
  $  REQ012:74A 03 22 B0 38 00 00 00 00       $  ANS012:7CA 03 22 B0 38 00 00 00 00
  $  REQ013:74A 03 22 B0 3B 00 00 00 00       $  ANS013:7CA 03 22 B0 3B 00 00 00 00
  $  REQ014:74A 03 22 C0 01 00 00 00 00       $  ANS014:7CA 03 22 C0 01 00 00 00 00
  $  REQ015:74A 03 22 B0 3E 00 00 00 00       $  ANS015:7CA 03 22 B0 3E 00 00 00 00
  $  REQ016:74A 03 22 B0 4B 00 00 00 00       $  ANS016:7CA 03 22 B0 4B 00 00 00 00
  $  REQ017:74A 03 22 C0 02 00 00 00 00       $  ANS017:7CA 03 22 C0 02 00 00 00 00
  $  REQ018:74A 03 22 B0 27 00 00 00 00       $  ANS018:7CA 03 22 B0 27 00 00 00 00
  $  REQ019:74A 03 22 B0 28 00 00 00 00       $  ANS019:7CA 03 22 B0 28 00 00 00 00
  $  REQ020:74A 03 22 B0 26 00 00 00 00       $  ANS020:7CA 03 22 B0 26 00 00 00 00
  $  REQ021:74A 03 22 B0 29 00 00 00 00       $  ANS021:7CA 03 22 B0 29 00 00 00 00
  $  REQ022:74A 03 22 B0 2F 00 00 00 00       $  ANS022:7CA 03 22 B0 2F 00 00 00 00

  $  000.AEBԭ��0~7δ׼���ü���                                   $    $          $    $  ANS000.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  001.AEB�޷�����ԭ��8~15                                      $    $          $    $  ANS000.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  002.AEB�޷�����ԭ��16~23                                     $    $          $    $  ANS000.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  003.AEB�޷�����ԭ��24~31                                     $    $          $    $  ANS000.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  004.AEBδ׼���ü���Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS000.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  005.Acc�쳣�˳�ʱ�����                                      $    $          $    $  ANS000.BYTE010  $  y=x+2000;
  $  006.Acc�쳣�˳�ʱ���·�                                      $    $          $    $  ANS000.BYTE011  $  y=x;
  $  007.Acc�쳣�˳�ʱ������                                      $    $          $    $  ANS000.BYTE012  $  y=x;
  $  008.Acc�쳣�˳�ʱ��ʱ��                                      $    $          $    $  ANS000.BYTE013  $  y=x;
  $  009.Acc�쳣�˳�ʱ�ķ���                                      $    $          $    $  ANS000.BYTE014  $  y=x;
  $  010.AEBδ׼���ü������                                      $    $          $    $  ANS000.BYTE015  $  y=x;
  $  011.Acc�쳣�˳�ʱ�����                                      $    $          $    $  ANS000.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  012.AEBԭ��0~7δ׼���ü���                                   $    $          $    $  ANS001.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  013.AEB�޷�����ԭ��8~15                                      $    $          $    $  ANS001.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  014.AEB�޷�����ԭ��16~23                                     $    $          $    $  ANS001.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  015.AEB�޷�����ԭ��24~31                                     $    $          $    $  ANS001.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  016.AEB�˳�����״̬��ԭ��0~7(B092)                           $    $          $    $  ANS002.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  017.AEB�˳�����״̬��ԭ��8~15(B092)                          $    $          $    $  ANS002.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  018.AEB�˳�����״̬��ԭ��16~23(B092)                         $    $          $    $  ANS002.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  019.AEB�˳�����״̬��ԭ��24~31(B092)                         $    $          $    $  ANS002.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  020.AEB�Ӽ���״̬�쳣�˳�ԭ��0~7                             $    $          $    $  ANS003.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  021.AEB�Ӽ���״̬�쳣�˳�ԭ��8~15                            $    $          $    $  ANS003.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  022.AEB�Ӽ���״̬�쳣�˳�ԭ��16~23                           $    $          $    $  ANS003.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  023.AEB�Ӽ���״̬�쳣�˳�ԭ��24~31                           $    $          $    $  ANS003.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  024.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS003.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  025.Acc�쳣�˳�ʱ�����                                      $    $          $    $  ANS003.BYTE010  $  y=x+2000;
  $  026.Acc�쳣�˳�ʱ���·�                                      $    $          $    $  ANS003.BYTE011  $  y=x;
  $  027.Acc�쳣�˳�ʱ������                                      $    $          $    $  ANS003.BYTE012  $  y=x;
  $  028.Acc�쳣�˳�ʱ��ʱ��                                      $    $          $    $  ANS003.BYTE013  $  y=x;
  $  029.Acc�쳣�˳�ʱ�ķ���                                      $    $          $    $  ANS003.BYTE014  $  y=x;
  $  030.Acc�쳣�˳�ʱ������                                      $    $          $    $  ANS003.BYTE015  $  y=x;
  $  031.Acc�쳣�˳�ʱ�����                                      $    $          $    $  ANS003.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  032.AEB�Ӽ���״̬�쳣�˳�ԭ��0~7                             $    $          $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  033.AEB�Ӽ���״̬�쳣�˳�ԭ��8~15                            $    $          $    $  ANS004.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  034.AEB�Ӽ���״̬�쳣�˳�ԭ��16~23                           $    $          $    $  ANS004.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  035.AEB�Ӽ���״̬�쳣�˳�ԭ��24~31                           $    $          $    $  ANS004.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  036.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS004.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  037.Acc�쳣�˳�ʱ�����                                      $    $          $    $  ANS004.BYTE010  $  y=x+2000;
  $  038.Acc�쳣�˳�ʱ���·�                                      $    $          $    $  ANS004.BYTE011  $  y=x;
  $  039.Acc�쳣�˳�ʱ������                                      $    $          $    $  ANS004.BYTE012  $  y=x;
  $  040.Acc�쳣�˳�ʱ��ʱ��                                      $    $          $    $  ANS004.BYTE013  $  y=x;
  $  041.Acc�쳣�˳�ʱ�ķ���                                      $    $          $    $  ANS004.BYTE014  $  y=x;
  $  042.Acc�쳣�˳�ʱ������                                      $    $          $    $  ANS004.BYTE015  $  y=x;
  $  043.Acc�쳣�˳�ʱ�����                                      $    $          $    $  ANS004.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  044.AEB�Ӽ���״̬�쳣�˳�ԭ��0~7                             $    $          $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  045.AEB�Ӽ���״̬�쳣�˳�ԭ��8~15                            $    $          $    $  ANS005.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  046.AEB�Ӽ���״̬�쳣�˳�ԭ��16~23                           $    $          $    $  ANS005.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  047.AEB�Ӽ���״̬�쳣�˳�ԭ��24~31                           $    $          $    $  ANS005.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  048.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS005.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  049.Acc�쳣�˳�ʱ�����                                      $    $          $    $  ANS005.BYTE010  $  y=x+2000;
  $  050.Acc�쳣�˳�ʱ���·�                                      $    $          $    $  ANS005.BYTE011  $  y=x;
  $  051.Acc�쳣�˳�ʱ������                                      $    $          $    $  ANS005.BYTE012  $  y=x;
  $  052.Acc�쳣�˳�ʱ��ʱ��                                      $    $          $    $  ANS005.BYTE013  $  y=x;
  $  053.Acc�쳣�˳�ʱ�ķ���                                      $    $          $    $  ANS005.BYTE014  $  y=x;
  $  054.Acc�쳣�˳�ʱ������                                      $    $          $    $  ANS005.BYTE015  $  y=x;
  $  055.Acc�쳣�˳�ʱ�����                                      $    $          $    $  ANS005.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  056.AEB�Ӽ���״̬�쳣�˳�ԭ��0~7                             $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  057.AEB�Ӽ���״̬�쳣�˳�ԭ��8~15                            $    $          $    $  ANS006.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  058.AEB�Ӽ���״̬�쳣�˳�ԭ��16~23                           $    $          $    $  ANS006.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  059.AEB�Ӽ���״̬�쳣�˳�ԭ��24~31                           $    $          $    $  ANS006.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  060.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS006.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  061.Acc�쳣�˳�ʱ�����                                      $    $          $    $  ANS006.BYTE010  $  y=x+2000;
  $  062.Acc�쳣�˳�ʱ���·�                                      $    $          $    $  ANS006.BYTE011  $  y=x;
  $  063.Acc�쳣�˳�ʱ������                                      $    $          $    $  ANS006.BYTE012  $  y=x;
  $  064.Acc�쳣�˳�ʱ��ʱ��                                      $    $          $    $  ANS006.BYTE013  $  y=x;
  $  065.Acc�쳣�˳�ʱ�ķ���                                      $    $          $    $  ANS006.BYTE014  $  y=x;
  $  066.Acc�쳣�˳�ʱ������                                      $    $          $    $  ANS006.BYTE015  $  y=x;
  $  067.Acc�쳣�˳�ʱ�����                                      $    $          $    $  ANS006.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  068.AEB�Ӽ���״̬�쳣�˳�ԭ��0~7                             $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  069.AEB�Ӽ���״̬�쳣�˳�ԭ��8~15                            $    $          $    $  ANS007.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  070.AEB�Ӽ���״̬�쳣�˳�ԭ��16~23                           $    $          $    $  ANS007.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  071.AEB�Ӽ���״̬�쳣�˳�ԭ��24~31                           $    $          $    $  ANS007.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  072.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS007.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  073.Acc�쳣�˳�ʱ�����                                      $    $          $    $  ANS007.BYTE010  $  y=x+2000;
  $  074.Acc�쳣�˳�ʱ���·�                                      $    $          $    $  ANS007.BYTE011  $  y=x;
  $  075.Acc�쳣�˳�ʱ������                                      $    $          $    $  ANS007.BYTE012  $  y=x;
  $  076.Acc�쳣�˳�ʱ��ʱ��                                      $    $          $    $  ANS007.BYTE013  $  y=x;
  $  077.Acc�쳣�˳�ʱ�ķ���                                      $    $          $    $  ANS007.BYTE014  $  y=x;
  $  078.Acc�쳣�˳�ʱ������                                      $    $          $    $  ANS007.BYTE015  $  y=x;
  $  079.Acc�쳣�˳�ʱ�����                                      $    $          $    $  ANS007.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  080.AEB�Ӽ���״̬�쳣�˳�ԭ��0~7                             $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0e78;else if(x==0x08) y=@0b54;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@0103;
  $  081.AEB�Ӽ���״̬�쳣�˳�ԭ��8~15                            $    $          $    $  ANS008.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0b5c;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@0103;
  $  082.AEB�Ӽ���״̬�쳣�˳�ԭ��16~23                           $    $          $    $  ANS008.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0e6d;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0e6e;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@0103;
  $  083.AEB�Ӽ���״̬�쳣�˳�ԭ��24~31                           $    $          $    $  ANS008.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0035;
  $  084.��ص�ѹ                                                 $    $  V       $    $  ANS009.BYTE004  $  y=x*0.1;
  $  085.�궨����ԭ��_�����Զ�������Χ                            $    $          $    $  ANS010.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  086.Ӧ�ó�����������-�����궨                                $    $          $    $  ANS010.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  087.�궨����ԭ��_δ�궨                                      $    $          $    $  ANS010.BYTE004  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  088.EOL�궨״̬                                              $    $          $    $  ANS011.BYTE004  $  if(x==0x00) y=@004a;else if(x==0x01) y=@0b2a;else if(x==0x02) y=@0b2b;else if(x==0x03) y=@0b2c;else y=@0103;
  $  089.EOL�궨����ԭ��                                          $    $          $    $  ANS011.BYTE005  $  if(x==0x00) y=@023f;else if(x==0x01) y=@0096;else if(x==0x02) y=@0910;else if(x==0x03) y=@0ddd;else if(x==0x04) y=@0912;else if(x==0x05) y=@0913;else if(x==0x06) y=@0914;else if(x==0x07) y=@0915;else if(x==0x08) y=@0916;else if(x==0x09) y=@0917;else if(x==0x0A) y=@0918;else if(x==0x0B) y=@0919;else if(x==0x0C) y=@091a;else if(x==0x0D) y=@0df1;else if(x==0x0E) y=@091c;else if(x==0x0F) y=@091d;else if(x==0x10) y=@091e;else if(x==0x11) y=@091f;else if(x==0x12) y=@0920;else if(x==0x13) y=@0921;else if(x==0x14) y=@0922;else if(x==0x15) y=@0923;else y=@0103;
  $  090.����ͷУ׼��ڽ�ֵ                                       $    $          $    $  ANS011.BYTE006  $  y=(x1*256+x2)-188;
  $  091.����ͷУ׼������ֵ                                       $    $          $    $  ANS011.BYTE008  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-160;
  $  092.����ͷУ׼�����ֵ                                       $    $  rad     $    $  ANS011.BYTE010  $  y=(x1*256+x2)*0.001-0.055;
  $  093.����ͷ�Զ�������ڽ�ֵ                                   $    $          $    $  ANS011.BYTE012  $  y=x-40;
  $  094.����ͷ�Զ�����������ֵ                                   $    $          $    $  ANS011.BYTE013  $  y=x-40;
  $  095.�궨��                                                   $    $          $    $  ANS012.BYTE004  $  y=x+2000;
  $  096.�궨��                                                   $    $          $    $  ANS012.BYTE005  $  y=x;
  $  097.�궨��                                                   $    $          $    $  ANS012.BYTE006  $  y=x;
  $  098.�궨Сʱ                                                 $    $          $    $  ANS012.BYTE007  $  y=x;
  $  099.�궨����                                                 $    $          $    $  ANS012.BYTE008  $  y=x;
  $  100.�궨��                                                   $    $          $    $  ANS012.BYTE009  $  y=x;
  $  101.�궨�����                                               $    $  km      $    $  ANS012.BYTE010  $  y=(x1*256*256+x2*256+x3);
  $  102.���Թ��ܲο���                                           $    $          $    $  ANS012.BYTE013  $  y=(x1*256*256+x2*256+x3);
  $  103.������                                                   $    $          $    $  ANS013.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  104.����ͷ��Ұ�ڵ�ԭ��_����̫ǿ                              $    $          $    $  ANS013.BYTE004  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  105.����ͷ��Ұ�ڵ�ԭ��_ɢ��                                  $    $          $    $  ANS013.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  106.����ͷ��Ұ�ڵ�ԭ��_ͼ��ģ��                              $    $          $    $  ANS013.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  107.����ͷ��Ұ�ڵ�ԭ��_���߲���                              $    $          $    $  ANS013.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  108.����ͷ��Ұ�ڵ�ԭ��_�ߵ�                                  $    $          $    $  ANS013.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  109.����ͷ��Ұ�ڵ�ԭ��_�����ڵ�                              $    $          $    $  ANS013.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  110.����ͷ��Ұ�ڵ�ԭ��_��ȫ�ڵ�                              $    $          $    $  ANS013.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  111.����ͷ��Ұ�ڵ�ԭ��_���                                  $    $          $    $  ANS013.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  112.����ͷ��Ұ�ڵ�ԭ��_����                                  $    $          $    $  ANS013.BYTE005  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  113.AHB�Զ����ϵͳ����                                      $    $          $    $  ANS014.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0035;
  $  114.TSR(��ͨ��־ʶ��)����                                    $    $          $    $  ANS014.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0035;
  $  115.ACC(����ӦѲ������)����                                  $    $          $    $  ANS014.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0035;
  $  116.AEBP(�����Զ������ƶ�)����                               $    $          $    $  ANS014.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0035;
  $  117.AEB(�Զ��ƶ�ϵͳ)����                                    $    $          $    $  ANS014.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0035;
  $  118.PCW(������ײ����)����                                    $    $          $    $  ANS014.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0035;
  $  119.FCW(������ײ����)����                                    $    $          $    $  ANS014.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0035;
  $  120.LDW(����ƫ��Ԥ��ϵͳ)����                                $    $          $    $  ANS014.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  121.LKA(�������ָ���)����                                    $    $          $    $  ANS014.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  122.SDM25-��ײ�ص�                                           $    $          $    $  ANS015.BYTE007  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  123.SDM9-�ؼ�������ǰ��ָ�ӳ����ص�����������                $    $          $    $  ANS015.BYTE007  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  124.SDM-8�ؼ����������ǲ�������֮���λ�ò���                $    $          $    $  ANS015.BYTE007  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  125.SDM7-Ŀ��λ������������                                  $    $          $    $  ANS015.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  126.SDM-6TTC����������                                       $    $          $    $  ANS015.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  127.(��-֡������)����źŵ���Ϣ                              $    $          $    $  ANS015.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  128.У��İ�ȫ�����źŲ�ƥ��                                 $    $          $    $  ANS015.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  129.EYEQ_CR_REPEAT-��ս����Ӧ�ظ�����                        $    $          $    $  ANS015.BYTE007  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  130.SDM-11��Ƭ��CRC����                                      $    $          $    $  ANS015.BYTE008  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  131.SDM-29��Ƭ��RFC����                                      $    $          $    $  ANS015.BYTE008  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  132.SDM-30ͼ��������Ч                                       $    $          $    $  ANS015.BYTE008  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  133.SDM-4У׼����                                            $    $          $    $  ANS015.BYTE008  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  134.SDM18-�ڲ�ͼ�񱣻�ʧ��                                   $    $          $    $  ANS015.BYTE008  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  135.SDM-13�ɵ���������                                       $    $          $    $  ANS015.BYTE008  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  136.SDM ��ս��Ӧ���                                         $    $          $    $  ANS015.BYTE008  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  137.SDM-32�ڲ��ź���                                       $    $          $    $  ANS015.BYTE008  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  138.SDM-31�ڲ�У�����                                       $    $          $    $  ANS015.BYTE009  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  139.SDM-27-AEB˫�ؼ�����                                   $    $          $    $  ANS015.BYTE009  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  140.SDM26-DDRУ�����                                        $    $          $    $  ANS015.BYTE009  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  141.SDM19-ͼ��ȱʧ                                           $    $          $    $  ANS015.BYTE009  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  142.EyeQ������ʧ��                                         $    $          $    $  ANS015.BYTE009  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  143.EyeQ APPʧ��                                             $    $          $    $  ANS015.BYTE009  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  144.EyeQ����ʧ��                                             $    $          $    $  ANS015.BYTE009  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  145.GPIO10                                                   $    $          $    $  ANS015.BYTE009  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  146.EyeQ������������ʧ                                     $    $          $    $  ANS015.BYTE010  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  147.MCU EEPROM����ʧ��                                       $    $          $    $  ANS015.BYTE010  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  148.MCU RAM����ʧ��                                          $    $          $    $  ANS015.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  149.MCU����У�����                                          $    $          $    $  ANS015.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  150.MCU�쳣��λ                                              $    $          $    $  ANS015.BYTE010  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  151.MCU PLLʧ��                                              $    $          $    $  ANS015.BYTE010  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  152.DAS(��ʻ����ϵͳ) 2.8VǷѹ                               $    $          $    $  ANS015.BYTE010  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  153.DAS(��ʻ����ϵͳ) 2.8V��ѹ                               $    $          $    $  ANS015.BYTE010  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  154.DAS(��ʻ����ϵͳ) 1.2VǷѹ                               $    $          $    $  ANS015.BYTE011  $  if(((x&0x80)>>7)==0x00) y=@0119;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0035;
  $  155.DAS(��ʻ����ϵͳ) 1.2V��ѹ                               $    $          $    $  ANS015.BYTE011  $  if(((x&0x40)>>6)==0x00) y=@0119;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0035;
  $  156.DAS(��ʻ����ϵͳ) 1.8VǷѹ                               $    $          $    $  ANS015.BYTE011  $  if(((x&0x20)>>5)==0x00) y=@0119;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0035;
  $  157.DAS(��ʻ����ϵͳ) 1.8V��ѹ                               $    $          $    $  ANS015.BYTE011  $  if(((x&0x10)>>4)==0x00) y=@0119;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0035;
  $  158.DAS(��ʻ����ϵͳ) 3.3VǷѹ                               $    $          $    $  ANS015.BYTE011  $  if(((x&0x08)>>3)==0x00) y=@0119;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0035;
  $  159.DAS(��ʻ����ϵͳ) 3.3V��ѹ                               $    $          $    $  ANS015.BYTE011  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  160.DAS(��ʻ����ϵͳ) 5VǷѹ                                 $    $          $    $  ANS015.BYTE011  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  161.DAS(��ʻ����ϵͳ) 5V��ѹ                                 $    $          $    $  ANS015.BYTE011  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  162.MCUӦ�ð汾��MCU�궨�ļ�������                           $    $          $    $  ANS016.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@0119;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0035;
  $  163.ͼ����Ԫ�����ļ���MCU�궨�ļ�������                  $    $          $    $  ANS016.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@0119;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0035;
  $  164.MCUӦ�ð汾��ͼ����Ԫ������                          $    $          $    $  ANS016.BYTE004  $  if((x&0x01)==0x00) y=@0119;else if((x&0x01)==0x01) y=@011f;else y=@0035;
  $  165.��BCM(������ƹ���ϵͳ)ģ��ʧȥͨѶ                      $    $          $    $  ANS017.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  166.��TCU(��������Ƶ�Ԫ)ģ��ʧȥͨѶ                        $    $          $    $  ANS017.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  167.��IPK(�Ǳ�)ģ��ʧȥͨѶ                                  $    $          $    $  ANS017.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  168.��ABS/ESP(�������ƶ�ϵͳ/�����ȶ�ϵͳ)ģ��ʧȥͨѶ       $    $          $    $  ANS017.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  169.��SAS(������ת��Ǵ�����)ģ��ʧȥͨѶ                    $    $          $    $  ANS017.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  170.������ͨѶ���߹ر�                                       $    $          $    $  ANS017.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  171.��ص�ѹ��                                               $    $          $    $  ANS017.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  172.��ص�ѹ��                                               $    $          $    $  ANS017.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  173.ͼ�������¶ȹ���                                       $    $          $    $  ANS017.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  174.DAS��ʻ����ϵͳ�ڲ�����                                  $    $          $    $  ANS017.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  175.AHB(�Զ�Զ���)����������������Ч��ֹ                    $    $          $    $  ANS017.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  176.TSR(��ͨ��־ʶ��)����������������Ч��ֹ                  $    $          $    $  ANS017.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  177.ACC(����ӦѲ������)����������������Ч��ֹ                $    $          $    $  ANS017.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  178.AEB(�Զ��ƶ�ϵͳ)����������������Ч��ֹ                  $    $          $    $  ANS017.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  179.FCW(������ײ����)����������������Ч��ֹ                  $    $          $    $  ANS017.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  180.LDW(����ƫ��Ԥ��ϵͳ)����������������Ч��ֹ              $    $          $    $  ANS017.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  181.LKA(�������ָ���)����������������Ч��ֹ                  $    $          $    $  ANS017.BYTE006  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  182.LDW(����ƫ��Ԥ��ϵͳ)����ָʾ�ƶ�·                      $    $          $    $  ANS017.BYTE006  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  183.LDW(����ƫ��Ԥ��ϵͳ)���ذ���ճ��                        $    $          $    $  ANS017.BYTE006  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  184.DAS��ʻ����ϵͳ����汾��ƥ��                            $    $          $    $  ANS017.BYTE006  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  185.DAS��ʻ����ϵͳ�궨�쳣                                  $    $          $    $  ANS017.BYTE006  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  186.DAS��ʻ����ϵͳ����ͷ��Ұ�ڵ�                            $    $          $    $  ANS017.BYTE006  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  187.AHB(�Զ�Զ���)���ܿ���                                  $    $          $    $  ANS018.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  188.TSR(��ͨ��־ʶ��)���ܿ���                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  189.ACC(����ӦѲ������)���ܿ���                              $    $          $    $  ANS018.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  190.AEBP(�����Զ������ƶ�)���ܿ���                           $    $          $    $  ANS018.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  191.AEB(�Զ��ƶ�ϵͳ)���ܿ���                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  192.PCW(������ײ����)���ܿ���                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  193.FCW(������ײ����)���ܿ���                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  194.LDW(����ƫ��Ԥ��ϵͳ)���ܿ���                            $    $          $    $  ANS018.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  195.LKA(�������ָ���)���ܿ���                                $    $          $    $  ANS018.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  196.����������                                               $    $          $    $  ANS019.BYTE004  $  if(x==0x00) y=@01df;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0b6e;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0103;
  $  197.FCW(������ײ����)����ѡ���������ȵȼ�                    $    $          $    $  ANS020.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  198.LDW(����ƫ��Ԥ��ϵͳ)��ʻԱѡ������м���                $    $          $    $  ANS020.BYTE004  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  199.AEB(�Զ��ƶ�ϵͳ)��ʻԱѡ������м���                    $    $          $    $  ANS020.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  200.ACC(����ӦѲ������)����ѡ����Ŀ�����ȼ�                $    $          $    $  ANS020.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0103;
  $  201.PCW(������ײ����)��ʻԱѡ���������ȵȼ�                  $    $          $    $  ANS020.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  202.AEBP(�����Զ������ƶ�)����ѡ��������ȵȼ�               $    $          $    $  ANS020.BYTE006  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  203.����ͷĿ���ٶ�����                                       $    $          $    $  ANS021.BYTE004  $  y=(x1*256+x2);
  $  204.ACC��ʻԱѡ����ٶ�                                      $    $          $    $  ANS021.BYTE006  $  y=(x1*256+x2);
  $  205.����ͷ��������Ե���ľ���                               $    $  m       $    $  ANS022.BYTE004  $  y=(x1*256+x2)*0.01;
  $  206.����ͷ��������Ե�Ҳ�ľ���                               $    $  m       $    $  ANS022.BYTE006  $  y=(x1*256+x2)*0.01;
  $  207.����ͷ��Ŀ�����                                         $    $  m       $    $  ANS022.BYTE008  $  y=(x1*256+x2)*0.001;
  $  208.����ͷ�߶�                                               $    $  m       $    $  ANS022.BYTE010  $  y=(x1*256+x2)*0.01;
  $  209.Ŀ�����ľ�������߶�                                   $    $  m       $    $  ANS022.BYTE012  $  y=(x1*256+x2)*0.01;
  $  210.Ŀ�����ľ�����Ҳ�߶�                                   $    $  m       $    $  ANS022.BYTE014  $  y=(x1*256+x2)*0.01;
  $  211.Ŀ�����ľ������������ľ���                             $    $  m       $    $  ANS022.BYTE016  $  y=(x1*256+x2)*0.01;
  $  212.Ŀ�����ľ����������Ҳ�ľ���                             $    $  m       $    $  ANS022.BYTE018  $  y=(x1*256+x2)*0.01;
  $  213.Ŀ�굥�����С��������Ŀ��                               $    $  rad     $    $  ANS022.BYTE020  $  y=(x1*256+x2)*0.001;

  $)  02.������3
  $  02.������3
  $  REQ000:74A 03 22 B0 75 00 00 00 00       $  ANS000:7CA 03 22 B0 75 00 00 00 00
  $  REQ001:74A 03 22 B0 77 00 00 00 00       $  ANS001:7CA 03 22 B0 77 00 00 00 00
  $  REQ002:74A 03 22 B0 94 00 00 00 00       $  ANS002:7CA 03 22 B0 94 00 00 00 00
  $  REQ003:74A 03 22 B0 74 00 00 00 00       $  ANS003:7CA 03 22 B0 74 00 00 00 00
  $  REQ004:74A 03 22 B0 76 00 00 00 00       $  ANS004:7CA 03 22 B0 76 00 00 00 00
  $  REQ005:74A 03 22 C0 04 00 00 00 00       $  ANS005:7CA 03 22 C0 04 00 00 00 00
  $  REQ006:74A 03 22 B0 7D 00 00 00 00       $  ANS006:7CA 03 22 B0 7D 00 00 00 00
  $  REQ007:74A 03 22 B0 7F 00 00 00 00       $  ANS007:7CA 03 22 B0 7F 00 00 00 00
  $  REQ008:74A 03 22 B0 96 00 00 00 00       $  ANS008:7CA 03 22 B0 96 00 00 00 00
  $  REQ009:74A 03 22 B0 7C 00 00 00 00       $  ANS009:7CA 03 22 B0 7C 00 00 00 00
  $  REQ010:74A 03 22 B0 7E 00 00 00 00       $  ANS010:7CA 03 22 B0 7E 00 00 00 00
  $  REQ011:74A 03 22 D0 01 00 00 00 00       $  ANS011:7CA 03 22 D0 01 00 00 00 00
  $  REQ012:74A 03 22 B0 31 00 00 00 00       $  ANS012:7CA 03 22 B0 31 00 00 00 00
  $  REQ013:74A 03 22 B0 02 00 00 00 00       $  ANS013:7CA 03 22 B0 02 00 00 00 00
  $  REQ014:74A 03 22 B0 01 00 00 00 00       $  ANS014:7CA 03 22 B0 01 00 00 00 00
  $  REQ015:74A 03 22 B0 71 00 00 00 00       $  ANS015:7CA 03 22 B0 71 00 00 00 00
  $  REQ016:74A 03 22 B0 73 00 00 00 00       $  ANS016:7CA 03 22 B0 73 00 00 00 00
  $  REQ017:74A 03 22 B0 93 00 00 00 00       $  ANS017:7CA 03 22 B0 93 00 00 00 00
  $  REQ018:74A 03 22 B0 70 00 00 00 00       $  ANS018:7CA 03 22 B0 70 00 00 00 00
  $  REQ019:74A 03 22 B0 72 00 00 00 00       $  ANS019:7CA 03 22 B0 72 00 00 00 00
  $  REQ020:74A 03 22 D0 03 00 00 00 00       $  ANS020:7CA 03 22 D0 03 00 00 00 00
  $  REQ021:74A 03 22 D0 02 00 00 00 00       $  ANS021:7CA 03 22 D0 02 00 00 00 00
  $  REQ022:74A 03 22 B0 A5 00 00 00 00       $  ANS022:7CA 03 22 B0 A5 00 00 00 00
  $  REQ023:74A 03 22 B0 A6 00 00 00 00       $  ANS023:7CA 03 22 B0 A6 00 00 00 00
  $  REQ024:74A 03 22 B0 A7 00 00 00 00       $  ANS024:7CA 03 22 B0 A7 00 00 00 00
  $  REQ025:74A 03 22 B0 A8 00 00 00 00       $  ANS025:7CA 03 22 B0 A8 00 00 00 00
  $  REQ026:74A 03 22 B0 A9 00 00 00 00       $  ANS026:7CA 03 22 B0 A9 00 00 00 00
  $  REQ027:74A 03 22 B0 AB 00 00 00 00       $  ANS027:7CA 03 22 B0 AB 00 00 00 00
  $  REQ028:74A 03 22 B0 97 00 00 00 00       $  ANS028:7CA 03 22 B0 97 00 00 00 00
  $  REQ029:74A 03 22 B0 A0 00 00 00 00       $  ANS029:7CA 03 22 B0 A0 00 00 00 00
  $  REQ030:74A 03 22 B0 A1 00 00 00 00       $  ANS030:7CA 03 22 B0 A1 00 00 00 00
  $  REQ031:74A 03 22 B0 A2 00 00 00 00       $  ANS031:7CA 03 22 B0 A2 00 00 00 00

  $  000.FCW�޷������ԭ��0~7                        $    $         $    $  ANS000.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  001.FCW�޷������ԭ��8~15                       $    $         $    $  ANS000.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  002.Acc�쳣�˳�ʱ�����                         $    $         $    $  ANS000.BYTE006  $  y=x+2000;
  $  003.Acc�쳣�˳�ʱ���·�                         $    $         $    $  ANS000.BYTE007  $  y=x;
  $  004.Acc�쳣�˳�ʱ������                         $    $         $    $  ANS000.BYTE008  $  y=x;
  $  005.Acc�쳣�˳�ʱ��ʱ��                         $    $         $    $  ANS000.BYTE009  $  y=x;
  $  006.Acc�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS000.BYTE010  $  y=x;
  $  007.Acc�쳣�˳�ʱ������                         $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.Acc�쳣�˳�ʱ�����                         $    $  km     $    $  ANS000.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  009.FCW�޷������ԭ��0~7                        $    $         $    $  ANS001.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  010.FCW�޷������ԭ��8~15                       $    $         $    $  ANS001.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  011.FCW�˳�����״̬��ԭ��0~7(B094)              $    $         $    $  ANS002.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0dc1;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  012.FCW�˳�����״̬��ԭ��8~15(B094)             $    $         $    $  ANS002.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  013.FCW�Ӽ���״̬�쳣�˳�ԭ��0~7                $    $         $    $  ANS003.BYTE004  $  if(x==0x01) y=@0e7c;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  014.FCW�Ӽ���״̬�쳣�˳�ԭ��8~15               $    $         $    $  ANS003.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  015.Acc�쳣�˳�ʱ�����                         $    $         $    $  ANS003.BYTE006  $  y=x+2000;
  $  016.Acc�쳣�˳�ʱ���·�                         $    $         $    $  ANS003.BYTE007  $  y=x;
  $  017.Acc�쳣�˳�ʱ������                         $    $         $    $  ANS003.BYTE008  $  y=x;
  $  018.Acc�쳣�˳�ʱ��ʱ��                         $    $         $    $  ANS003.BYTE009  $  y=x;
  $  019.Acc�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS003.BYTE010  $  y=x;
  $  020.Acc�쳣�˳�ʱ������                         $    $         $    $  ANS003.BYTE011  $  y=x;
  $  021.Acc�쳣�˳�ʱ�����                         $    $  km     $    $  ANS003.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  022.FCW�Ӽ���״̬�쳣�˳�ԭ��0~7                $    $         $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  023.FCW�Ӽ���״̬�쳣�˳�ԭ��8~15               $    $         $    $  ANS004.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0035;
  $  024.AHB(�Զ�Զ���)���ܿ���                     $    $         $    $  ANS005.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  025.TSR(��ͨ��־ʶ��)���ܿ���                   $    $         $    $  ANS005.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  026.ACC(����ӦѲ������)���ܿ���                 $    $         $    $  ANS005.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  027.AEBP(�����Զ������ƶ�)���ܿ���              $    $         $    $  ANS005.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  028.AEB(�Զ��ƶ�ϵͳ)���ܿ���                   $    $         $    $  ANS005.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  029.PCW(������ײ����)���ܿ���                   $    $         $    $  ANS005.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  030.FCW(������ײ����)���ܿ���                   $    $         $    $  ANS005.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  031.LDW(����ƫ��Ԥ��ϵͳ)���ܿ���               $    $         $    $  ANS005.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  032.LKA(�������ָ���)���ܿ���                   $    $         $    $  ANS005.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  033.IHC�޷�����Ϊԭ��0~7ʱ��״̬                $    $         $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  034.Acc�쳣�˳�ʱ�����                         $    $         $    $  ANS006.BYTE006  $  y=x+2000;
  $  035.Acc�쳣�˳�ʱ���·�                         $    $         $    $  ANS006.BYTE007  $  y=x;
  $  036.Acc�쳣�˳�ʱ������                         $    $         $    $  ANS006.BYTE008  $  y=x;
  $  037.Acc�쳣�˳�ʱ��ʱ��                         $    $         $    $  ANS006.BYTE009  $  y=x;
  $  038.Acc�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS006.BYTE010  $  y=x;
  $  039.Acc�쳣�˳�ʱ������                         $    $         $    $  ANS006.BYTE011  $  y=x;
  $  040.Acc�쳣�˳�ʱ�����                         $    $  km     $    $  ANS006.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  041.IHC�޷�����Ϊԭ��0~7ʱ��״̬                $    $         $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  042.IHC�˳�����״̬��ԭ��0~7(B096)              $    $         $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  043.IHC�Ӽ���״̬�쳣�˳�Ϊԭ��0~7��״̬        $    $         $    $  ANS009.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  044.Acc�쳣�˳�ʱ�����                         $    $         $    $  ANS009.BYTE006  $  y=x+2000;
  $  045.Acc�쳣�˳�ʱ���·�                         $    $         $    $  ANS009.BYTE007  $  y=x;
  $  046.Acc�쳣�˳�ʱ������                         $    $         $    $  ANS009.BYTE008  $  y=x;
  $  047.Acc�쳣�˳�ʱ��ʱ��                         $    $         $    $  ANS009.BYTE009  $  y=x;
  $  048.Acc�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS009.BYTE010  $  y=x;
  $  049.Acc�쳣�˳�ʱ������                         $    $         $    $  ANS009.BYTE011  $  y=x;
  $  050.Acc�쳣�˳�ʱ�����                         $    $  km     $    $  ANS009.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  051.IHC�Ӽ���״̬�쳣�˳�Ϊԭ��0~7��״̬        $    $         $    $  ANS010.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  052.ȫ��KL50״̬                                $    $         $    $  ANS011.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@016d;else y=@0035;
  $  053.ȫ�ַ�������ת״̬                          $    $         $    $  ANS011.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@016d;else y=@0035;
  $  054.ȫ��KL15״̬                                $    $         $    $  ANS011.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@016d;else y=@0035;
  $  055.ȫ��ACC/KLR״̬                             $    $         $    $  ANS011.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@016d;else y=@0035;
  $  056.ϵͳKL50״̬                                $    $         $    $  ANS011.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@016d;else y=@0035;
  $  057.ϵͳ��������ת״̬                          $    $         $    $  ANS011.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@016d;else y=@0035;
  $  058.ϵͳKL15״̬                                $    $         $    $  ANS011.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@016d;else y=@0035;
  $  059.ϵͳACC/KLR״̬                             $    $         $    $  ANS011.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  060.ͼ�������¶�                              $    $         $    $  ANS012.BYTE004  $  y=(x1*256+x2)-40;
  $  061.ͼ����Ԫ����ģʽ                        $    $         $    $  ANS013.BYTE004  $  if(x==0x00) y=@023f;else if(x==0x01) y=@07de;else if(x==0x02) y=@0e7e;else if(x==0x03) y=@0e7f;else if(x==0x04) y=@0e80;else if(x==0x05) y=@0035;else y=@0103;
  $  062.ͼ����Ԫ����״̬                        $    $         $    $  ANS014.BYTE004  $  if(x==0x00) y=@000f;else if(x==0x02) y=@090e;else if(x==0x03) y=@090f;else if(x==0x22) y=@0dc5;else if(x==0x82) y=@0dc6;else if(x==0x85) y=@0dc7;else if(x==0x92) y=@0dc8;else if(x==0xAA) y=@0180;else if(x==0xAC) y=@0dca;else y=@0103;
  $  063.LDW�޷�����Ϊԭ��0~7ʱ��״̬                $    $         $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  064.LDW�޷�����Ϊԭ��8~15ʱ��״̬               $    $         $    $  ANS015.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  065.Acc�쳣�˳�ʱ�����                         $    $         $    $  ANS015.BYTE006  $  y=x+2000;
  $  066.Acc�쳣�˳�ʱ���·�                         $    $         $    $  ANS015.BYTE007  $  y=x;
  $  067.Acc�쳣�˳�ʱ������                         $    $         $    $  ANS015.BYTE008  $  y=x;
  $  068.Acc�쳣�˳�ʱ��ʱ��                         $    $         $    $  ANS015.BYTE009  $  y=x;
  $  069.Acc�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS015.BYTE010  $  y=x;
  $  070.Acc�쳣�˳�ʱ������                         $    $         $    $  ANS015.BYTE011  $  y=x;
  $  071.Acc�쳣�˳�ʱ�����                         $    $  km     $    $  ANS015.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  072.LDW�޷�����Ϊԭ��0~7ʱ��״̬                $    $         $    $  ANS016.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  073.LDW�޷�����Ϊԭ��8~15ʱ��״̬               $    $         $    $  ANS016.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  074.LDWδ׼���ü����ԭ��0~7(B093)              $    $         $    $  ANS017.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  075.LDWδ׼���ü����ԭ��0~78~15(B093)          $    $         $    $  ANS017.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  076.LDW�Ӽ���״̬�쳣�˳�Ϊԭ��0~7��״̬        $    $         $    $  ANS018.BYTE004  $  if(x==0x01) y=@0daf;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0db1;else if(x==0x10) y=@0db2;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0db3;else if(x==0x80) y=@0db4;else y=@0103;
  $  077.LDW�Ӽ���״̬�쳣�˳�Ϊԭ��8~15��״̬       $    $         $    $  ANS018.BYTE005  $  if(x==0x01) y=@0db5;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0db6;else if(x==0x10) y=@0db7;else y=@0035;
  $  078.Acc�쳣�˳�ʱ�����                         $    $         $    $  ANS018.BYTE006  $  y=x+2000;
  $  079.Acc�쳣�˳�ʱ���·�                         $    $         $    $  ANS018.BYTE007  $  y=x;
  $  080.Acc�쳣�˳�ʱ������                         $    $         $    $  ANS018.BYTE008  $  y=x;
  $  081.Acc�쳣�˳�ʱ��ʱ��                         $    $         $    $  ANS018.BYTE009  $  y=x;
  $  082.Acc�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS018.BYTE010  $  y=x;
  $  083.Acc�쳣�˳�ʱ������                         $    $         $    $  ANS018.BYTE011  $  y=x;
  $  084.Acc�쳣�˳�ʱ�����                         $    $  km     $    $  ANS018.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  085.LDW�Ӽ���״̬�쳣�˳�Ϊԭ��0~7��״̬        $    $         $    $  ANS019.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e7d;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0e77;else if(x==0x10) y=@0e78;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@0103;
  $  086.LDW�Ӽ���״̬�쳣�˳�Ϊԭ��8~15��״̬       $    $         $    $  ANS019.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  087.LDW(����ƫ��Ԥ��ϵͳ)����                   $    $         $    $  ANS020.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  088.LDW(����ƫ��Ԥ��ϵͳ)����ָʾ��             $    $         $    $  ANS021.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@016d;else y=@0035;
  $  089.LAK ԭ��0~7δ׼���ü���                     $    $         $    $  ANS022.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  090.LKAԭ��8~15δ׼���ü���                     $    $         $    $  ANS022.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  091.LKAԭ��16~23δ׼���ü���                    $    $         $    $  ANS022.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  092.LKAԭ��24~31δ׼���ü���                    $    $         $    $  ANS022.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  093.LKAԭ��32~39δ׼���ü���                    $    $         $    $  ANS022.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  094.LKAԭ��40~47δ׼���ü���                    $    $         $    $  ANS022.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  095.LKA��ʧ��״̬δ׼���ü���                   $    $         $    $  ANS022.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  096.LKA�쳣�Ƴ�ʱ�����                         $    $         $    $  ANS022.BYTE012  $  y=x+2000;
  $  097.LKA�쳣�Ƴ�ʱ���·�                         $    $         $    $  ANS022.BYTE013  $  y=x;
  $  098.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS022.BYTE014  $  y=x;
  $  099.LKA�쳣�Ƴ�ʱ��ʱ��                         $    $         $    $  ANS022.BYTE015  $  y=x;
  $  100.LKA�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS022.BYTE016  $  y=x;
  $  101.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS022.BYTE017  $  y=x;
  $  102.LKA�쳣�Ƴ�ʱ�������                       $    $  km     $    $  ANS022.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  103.LAK ԭ��0~7δ׼���ü���                     $    $         $    $  ANS023.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  104.LKAԭ��8~15δ׼���ü���                     $    $         $    $  ANS023.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  105.LKAԭ��16~23δ׼���ü���                    $    $         $    $  ANS023.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  106.LKAԭ��24~31δ׼���ü���                    $    $         $    $  ANS023.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  107.LKAԭ��32~39δ׼���ü���                    $    $         $    $  ANS023.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  108.LKAԭ��40~47δ׼���ü���                    $    $         $    $  ANS023.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  109.LKA��ʧ��״̬δ׼���ü���                   $    $         $    $  ANS023.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  110.LKA�쳣�Ƴ�ʱ�����                         $    $         $    $  ANS023.BYTE012  $  y=x+2000;
  $  111.LKA�쳣�Ƴ�ʱ���·�                         $    $         $    $  ANS023.BYTE013  $  y=x;
  $  112.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS023.BYTE014  $  y=x;
  $  113.LKA�쳣�Ƴ�ʱ��ʱ��                         $    $         $    $  ANS023.BYTE015  $  y=x;
  $  114.LKA�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS023.BYTE016  $  y=x;
  $  115.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS023.BYTE017  $  y=x;
  $  116.LKA�쳣�Ƴ�ʱ�������                       $    $  km     $    $  ANS023.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  117.LAK ԭ��0~7δ׼���ü���                     $    $         $    $  ANS024.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  118.LKAԭ��8~15δ׼���ü���                     $    $         $    $  ANS024.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  119.LKAԭ��16~23δ׼���ü���                    $    $         $    $  ANS024.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  120.LKAԭ��24~31δ׼���ü���                    $    $         $    $  ANS024.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  121.LKAԭ��32~39δ׼���ü���                    $    $         $    $  ANS024.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  122.LKAԭ��40~47δ׼���ü���                    $    $         $    $  ANS024.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  123.LKA��ʧ��״̬δ׼���ü���                   $    $         $    $  ANS024.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  124.LKA�쳣�Ƴ�ʱ�����                         $    $         $    $  ANS024.BYTE012  $  y=x+2000;
  $  125.LKA�쳣�Ƴ�ʱ���·�                         $    $         $    $  ANS024.BYTE013  $  y=x;
  $  126.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS024.BYTE014  $  y=x;
  $  127.LKA�쳣�Ƴ�ʱ��ʱ��                         $    $         $    $  ANS024.BYTE015  $  y=x;
  $  128.LKA�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS024.BYTE016  $  y=x;
  $  129.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS024.BYTE017  $  y=x;
  $  130.LKA�쳣�Ƴ�ʱ�������                       $    $  km     $    $  ANS024.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  131.LAK ԭ��0~7δ׼���ü���                     $    $         $    $  ANS025.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  132.LKAԭ��8~15δ׼���ü���                     $    $         $    $  ANS025.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  133.LKAԭ��16~23δ׼���ü���                    $    $         $    $  ANS025.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  134.LKAԭ��24~31δ׼���ü���                    $    $         $    $  ANS025.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  135.LKAԭ��32~39δ׼���ü���                    $    $         $    $  ANS025.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  136.LKAԭ��40~47δ׼���ü���                    $    $         $    $  ANS025.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  137.LKA��ʧ��״̬δ׼���ü���                   $    $         $    $  ANS025.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  138.LKA�쳣�Ƴ�ʱ�����                         $    $         $    $  ANS025.BYTE012  $  y=x+2000;
  $  139.LKA�쳣�Ƴ�ʱ���·�                         $    $         $    $  ANS025.BYTE013  $  y=x;
  $  140.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS025.BYTE014  $  y=x;
  $  141.LKA�쳣�Ƴ�ʱ��ʱ��                         $    $         $    $  ANS025.BYTE015  $  y=x;
  $  142.LKA�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS025.BYTE016  $  y=x;
  $  143.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS025.BYTE017  $  y=x;
  $  144.LKA�쳣�Ƴ�ʱ�������                       $    $  km     $    $  ANS025.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  145.LAK ԭ��0~7δ׼���ü���                     $    $         $    $  ANS026.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  146.LKAԭ��8~15δ׼���ü���                     $    $         $    $  ANS026.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  147.LKAԭ��16~23δ׼���ü���                    $    $         $    $  ANS026.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  148.LKAԭ��24~31δ׼���ü���                    $    $         $    $  ANS026.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  149.LKAԭ��32~39δ׼���ü���                    $    $         $    $  ANS026.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  150.LKAԭ��40~47δ׼���ü���                    $    $         $    $  ANS026.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  151.LKA��ʧ��״̬δ׼���ü���                   $    $         $    $  ANS026.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  152.LKA�쳣�Ƴ�ʱ�����                         $    $         $    $  ANS026.BYTE012  $  y=x+2000;
  $  153.LKA�쳣�Ƴ�ʱ���·�                         $    $         $    $  ANS026.BYTE013  $  y=x;
  $  154.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS026.BYTE014  $  y=x;
  $  155.LKA�쳣�Ƴ�ʱ��ʱ��                         $    $         $    $  ANS026.BYTE015  $  y=x;
  $  156.LKA�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS026.BYTE016  $  y=x;
  $  157.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS026.BYTE017  $  y=x;
  $  158.LKA�쳣�Ƴ�ʱ�������                       $    $  km     $    $  ANS026.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  159.LAK ԭ��0~7δ׼���ü���                     $    $         $    $  ANS027.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0b2e;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  160.LKAԭ��8~15δ׼���ü���                     $    $         $    $  ANS027.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@0103;
  $  161.LKAԭ��16~23δ׼���ü���                    $    $         $    $  ANS027.BYTE006  $  if(x==0x01) y=@0e69;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0b38;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@0103;
  $  162.LKAԭ��24~31δ׼���ü���                    $    $         $    $  ANS027.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0e6a;else if(x==0x10) y=@0b40;else if(x==0x20) y=@0b41;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  163.LKAԭ��32~39δ׼���ü���                    $    $         $    $  ANS027.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  164.LKAԭ��40~47δ׼���ü���                    $    $         $    $  ANS027.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  165.LKAԭ��0~7�˳�����״̬                      $    $         $    $  ANS028.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  166.LKAԭ��8~15�˳�����״̬                     $    $         $    $  ANS028.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  167.LKAԭ��16~23�˳�����״̬                    $    $         $    $  ANS028.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  168.LKAԭ��24~31�˳�����״̬                    $    $         $    $  ANS028.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  169.LKAԭ��32~39�˳�����״̬                    $    $         $    $  ANS028.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  170.LKAԭ��40~47�˳�����״̬                    $    $         $    $  ANS028.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  171.LKAԭ��0~7�˳�����״̬                      $    $         $    $  ANS029.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  172.LKAԭ��8~15�˳�����״̬                     $    $         $    $  ANS029.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  173.LKAԭ��16~23�˳�����״̬                    $    $         $    $  ANS029.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  174.LKAԭ��24~31�˳�����״̬                    $    $         $    $  ANS029.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  175.LKAԭ��32~39�˳�����״̬                    $    $         $    $  ANS029.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  176.LKAԭ��40~47�˳�����״̬                    $    $         $    $  ANS029.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  177.LKA��ʧ��״̬�˳�����״̬                   $    $         $    $  ANS029.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  178.LKA�쳣�Ƴ�ʱ�����                         $    $         $    $  ANS029.BYTE012  $  y=x+2000;
  $  179.LKA�쳣�Ƴ�ʱ���·�                         $    $         $    $  ANS029.BYTE013  $  y=x;
  $  180.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS029.BYTE014  $  y=x;
  $  181.LKA�쳣�Ƴ�ʱ��ʱ��                         $    $         $    $  ANS029.BYTE015  $  y=x;
  $  182.LKA�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS029.BYTE016  $  y=x;
  $  183.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS029.BYTE017  $  y=x;
  $  184.LKA�쳣�Ƴ�ʱ�������                       $    $  km     $    $  ANS029.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  185.LKAԭ��0~7�˳�����״̬                      $    $         $    $  ANS030.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  186.LKAԭ��8~15�˳�����״̬                     $    $         $    $  ANS030.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  187.LKAԭ��16~23�˳�����״̬                    $    $         $    $  ANS030.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  188.LKAԭ��24~31�˳�����״̬                    $    $         $    $  ANS030.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  189.LKAԭ��32~39�˳�����״̬                    $    $         $    $  ANS030.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  190.LKAԭ��40~47�˳�����״̬                    $    $         $    $  ANS030.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  191.LKA��ʧ��״̬�˳�����״̬                   $    $         $    $  ANS030.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  192.LKA�쳣�Ƴ�ʱ�����                         $    $         $    $  ANS030.BYTE012  $  y=x+2000;
  $  193.LKA�쳣�Ƴ�ʱ���·�                         $    $         $    $  ANS030.BYTE013  $  y=x;
  $  194.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS030.BYTE014  $  y=x;
  $  195.LKA�쳣�Ƴ�ʱ��ʱ��                         $    $         $    $  ANS030.BYTE015  $  y=x;
  $  196.LKA�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS030.BYTE016  $  y=x;
  $  197.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS030.BYTE017  $  y=x;
  $  198.LKA�쳣�Ƴ�ʱ�������                       $    $  km     $    $  ANS030.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  199.LKAԭ��0~7�˳�����״̬                      $    $         $    $  ANS031.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  200.LKAԭ��8~15�˳�����״̬                     $    $         $    $  ANS031.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  201.LKAԭ��16~23�˳�����״̬                    $    $         $    $  ANS031.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  202.LKAԭ��24~31�˳�����״̬                    $    $         $    $  ANS031.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  203.LKAԭ��32~39�˳�����״̬                    $    $         $    $  ANS031.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  204.LKAԭ��40~47�˳�����״̬                    $    $         $    $  ANS031.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  205.LKA��ʧ��״̬�˳�����״̬                   $    $         $    $  ANS031.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  206.LKA�쳣�Ƴ�ʱ�����                         $    $         $    $  ANS031.BYTE012  $  y=x+2000;
  $  207.LKA�쳣�Ƴ�ʱ���·�                         $    $         $    $  ANS031.BYTE013  $  y=x;
  $  208.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS031.BYTE014  $  y=x;
  $  209.LKA�쳣�Ƴ�ʱ��ʱ��                         $    $         $    $  ANS031.BYTE015  $  y=x;
  $  210.LKA�쳣�˳�ʱ�ķ���                         $    $         $    $  ANS031.BYTE016  $  y=x;
  $  211.LKA�쳣�Ƴ�ʱ������                         $    $         $    $  ANS031.BYTE017  $  y=x;
  $  212.LKA�쳣�Ƴ�ʱ�������                       $    $  km     $    $  ANS031.BYTE018  $  y=(x1*256*256+x2*256+x3);

  $)  03.������4
  $  03.������4
  $  REQ000:74A 03 22 B0 A3 00 00 00 00       $  ANS000:7CA 03 22 B0 A3 00 00 00 00
  $  REQ001:74A 03 22 B0 A4 00 00 00 00       $  ANS001:7CA 03 22 B0 A4 00 00 00 00
  $  REQ002:74A 03 22 B0 AA 00 00 00 00       $  ANS002:7CA 03 22 B0 AA 00 00 00 00
  $  REQ003:74A 03 22 B0 30 00 00 00 00       $  ANS003:7CA 03 22 B0 30 00 00 00 00
  $  REQ004:74A 03 22 E1 01 00 00 00 00       $  ANS004:7CA 03 22 E1 01 00 00 00 00
  $  REQ005:74A 03 22 C0 05 00 00 00 00       $  ANS005:7CA 03 22 C0 05 00 00 00 00
  $  REQ006:74A 03 22 B0 90 00 00 00 00       $  ANS006:7CA 03 22 B0 90 00 00 00 00
  $  REQ007:74A 03 22 C0 08 00 00 00 00       $  ANS007:7CA 03 22 C0 08 00 00 00 00
  $  REQ008:74A 03 22 C0 03 00 00 00 00       $  ANS008:7CA 03 22 C0 03 00 00 00 00
  $  REQ009:74A 03 22 C0 06 00 00 00 00       $  ANS009:7CA 03 22 C0 06 00 00 00 00
  $  REQ010:74A 03 22 B0 47 00 00 00 00       $  ANS010:7CA 03 22 B0 47 00 00 00 00
  $  REQ011:74A 03 22 B0 79 00 00 00 00       $  ANS011:7CA 03 22 B0 79 00 00 00 00
  $  REQ012:74A 03 22 B0 7B 00 00 00 00       $  ANS012:7CA 03 22 B0 7B 00 00 00 00
  $  REQ013:74A 03 22 B0 95 00 00 00 00       $  ANS013:7CA 03 22 B0 95 00 00 00 00
  $  REQ014:74A 03 22 B0 78 00 00 00 00       $  ANS014:7CA 03 22 B0 78 00 00 00 00
  $  REQ015:74A 03 22 B0 7A 00 00 00 00       $  ANS015:7CA 03 22 B0 7A 00 00 00 00
  $  REQ016:74A 03 22 B0 00 00 00 00 00       $  ANS016:7CA 03 22 B0 00 00 00 00 00

  $  000.LKAԭ��0~7�˳�����״̬                           $    $          $    $  ANS000.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  001.LKAԭ��8~15�˳�����״̬                          $    $          $    $  ANS000.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  002.LKAԭ��16~23�˳�����״̬                         $    $          $    $  ANS000.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  003.LKAԭ��24~31�˳�����״̬                         $    $          $    $  ANS000.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  004.LKAԭ��32~39�˳�����״̬                         $    $          $    $  ANS000.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  005.LKAԭ��40~47�˳�����״̬                         $    $          $    $  ANS000.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  006.LKA��ʧ��״̬�˳�����״̬                        $    $          $    $  ANS000.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  007.LKA�쳣�Ƴ�ʱ�����                              $    $          $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.LKA�쳣�Ƴ�ʱ���·�                              $    $          $    $  ANS000.BYTE013  $  y=x;
  $  009.LKA�쳣�Ƴ�ʱ������                              $    $          $    $  ANS000.BYTE014  $  y=x;
  $  010.LKA�쳣�Ƴ�ʱ��ʱ��                              $    $          $    $  ANS000.BYTE015  $  y=x;
  $  011.LKA�쳣�˳�ʱ�ķ���                              $    $          $    $  ANS000.BYTE016  $  y=x;
  $  012.LKA�쳣�Ƴ�ʱ������                              $    $          $    $  ANS000.BYTE017  $  y=x;
  $  013.LKA�쳣�Ƴ�ʱ�������                            $    $  km      $    $  ANS000.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  014.LKAԭ��0~7�˳�����״̬                           $    $          $    $  ANS001.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  015.LKAԭ��8~15�˳�����״̬                          $    $          $    $  ANS001.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  016.LKAԭ��16~23�˳�����״̬                         $    $          $    $  ANS001.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  017.LKAԭ��24~31�˳�����״̬                         $    $          $    $  ANS001.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  018.LKAԭ��32~39�˳�����״̬                         $    $          $    $  ANS001.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  019.LKAԭ��40~47�˳�����״̬                         $    $          $    $  ANS001.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  020.LKA��ʧ��״̬�˳�����״̬                        $    $          $    $  ANS001.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0b6d;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  021.LKA�쳣�Ƴ�ʱ�����                              $    $          $    $  ANS001.BYTE012  $  y=x+2000;
  $  022.LKA�쳣�Ƴ�ʱ���·�                              $    $          $    $  ANS001.BYTE013  $  y=x;
  $  023.LKA�쳣�Ƴ�ʱ������                              $    $          $    $  ANS001.BYTE014  $  y=x;
  $  024.LKA�쳣�Ƴ�ʱ��ʱ��                              $    $          $    $  ANS001.BYTE015  $  y=x;
  $  025.LKA�쳣�˳�ʱ�ķ���                              $    $          $    $  ANS001.BYTE016  $  y=x;
  $  026.LKA�쳣�Ƴ�ʱ������                              $    $          $    $  ANS001.BYTE017  $  y=x;
  $  027.LKA�쳣�Ƴ�ʱ�������                            $    $  km      $    $  ANS001.BYTE018  $  y=(x1*256*256+x2*256+x3);
  $  028.LKAԭ��0~7�˳�����״̬                           $    $          $    $  ANS002.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0ab0;else y=@0103;
  $  029.LKAԭ��8~15�˳�����״̬                          $    $          $    $  ANS002.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0e6c;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  030.LKAԭ��16~23�˳�����״̬                         $    $          $    $  ANS002.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0b24;else y=@0103;
  $  031.LKAԭ��24~31�˳�����״̬                         $    $          $    $  ANS002.BYTE007  $  if(x==0x01) y=@0b25;else if(x==0x02) y=@0b26;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0e69;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  032.LKAԭ��32~39�˳�����״̬                         $    $          $    $  ANS002.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  033.LKAԭ��40~47�˳�����״̬                         $    $          $    $  ANS002.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  034.AHB�Զ����ϵͳ����                              $    $          $    $  ANS003.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0035;
  $  035.TSR(��ͨ��־ʶ��)����                            $    $          $    $  ANS003.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0035;
  $  036.ACC(����ӦѲ������)����                          $    $          $    $  ANS003.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0035;
  $  037.AEBP(�����Զ������ƶ�)����                       $    $          $    $  ANS003.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0035;
  $  038.AEB(�Զ��ƶ�ϵͳ)����                            $    $          $    $  ANS003.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0035;
  $  039.PCW(������ײ����)����                            $    $          $    $  ANS003.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0035;
  $  040.FCW(������ײ����)����                            $    $          $    $  ANS003.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0035;
  $  041.LDW(����ƫ��Ԥ��ϵͳ)����                        $    $          $    $  ANS003.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  042.LKA(�������ָ���)����                            $    $          $    $  ANS003.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  043.���������źž���                                 $    $          $    $  ANS003.BYTE006  $  HEX(X1);
  $  044.��ȡ�����                                       $    $  km      $    $  ANS004.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  045.����������                                       $    $          $    $  ANS005.BYTE004  $  if(x==0x00) y=@01df;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0b6e;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0103;
  $  046.ˢд������                                     $    $          $    $  ANS006.BYTE006  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  047.PLL(���໷)У�����                              $    $          $    $  ANS006.BYTE007  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  048.�ڴ�У�����                                     $    $          $    $  ANS006.BYTE008  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  049.��ջ������                                     $    $          $    $  ANS006.BYTE009  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  050.δʹ���ڴ������                               $    $          $    $  ANS006.BYTE010  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  051.ECC(������;���)У�����                      $    $          $    $  ANS006.BYTE011  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  052.�����Ĵ���������                               $    $          $    $  ANS006.BYTE012  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  053.Spi��ʱ                                          $    $          $    $  ANS006.BYTE013  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  054.ESR0���ô���                                     $    $          $    $  ANS006.BYTE014  $  y=x;
  $  055.ESR1���ô���                                     $    $          $    $  ANS006.BYTE015  $  y=x;
  $  056.SMU���ô���                                      $    $          $    $  ANS006.BYTE016  $  y=x;
  $  057.�����λ�ĸ�λ������                             $    $          $    $  ANS006.BYTE017  $  y=x;
  $  058.STM0���ô���                                     $    $          $    $  ANS006.BYTE018  $  y=x;
  $  059.STM1���ô���                                     $    $          $    $  ANS006.BYTE019  $  y=x;
  $  060.STM2���ô���                                     $    $          $    $  ANS006.BYTE020  $  y=x;
  $  061.MultipleReset���ô���                            $    $          $    $  ANS006.BYTE021  $  y=x;
  $  062.CB0���ô���                                      $    $          $    $  ANS006.BYTE022  $  y=x;
  $  063.CB1���ô���                                      $    $          $    $  ANS006.BYTE023  $  y=x;
  $  064.CB3���ô���                                      $    $          $    $  ANS006.BYTE024  $  y=x;
  $  065.TuningProtect���ô���                            $    $          $    $  ANS006.BYTE025  $  y=x;
  $  066.EVR13���ô���                                    $    $          $    $  ANS006.BYTE026  $  y=x;
  $  067.EVR33���ô���                                    $    $          $    $  ANS006.BYTE027  $  y=x;
  $  068.���ӿ��Ź��ĸ�λ������                           $    $          $    $  ANS006.BYTE028  $  y=x;
  $  069.���ÿ��Ź��ĸ�λ������                           $    $          $    $  ANS006.BYTE029  $  y=x;
  $  070.�ɿ����������                                   $    $          $    $  ANS006.BYTE030  $  y=x+2000;
  $  071.�ɿ��������·�                                   $    $          $    $  ANS006.BYTE031  $  y=x;
  $  072.�ɿ�����������                                   $    $          $    $  ANS006.BYTE032  $  y=x;
  $  073.�ɿ�������ʱ                                     $    $          $    $  ANS006.BYTE033  $  y=x;
  $  074.�ɿ������ݷ�                                     $    $          $    $  ANS006.BYTE034  $  y=x;
  $  075.�ɿ���������                                     $    $          $    $  ANS006.BYTE035  $  y=x;
  $  076.�ɿ������������                                 $    $  km      $    $  ANS006.BYTE036  $  y=(x1*256*256+x2*256+x3);
  $  077.MT/AT����                                        $    $          $    $  ANS007.BYTE004  $  if(x==0x55) y=@003b;else if(x==0xAA) y=@01b7;else y=@0103;
  $  078.FICM����                                         $    $          $    $  ANS007.BYTE005  $  if(x==0x55) y=@0e85;else if(x==0xAA) y=@0e86;else y=@0103;
  $  079.FCW(������ײ����)����ѡ���������ȵȼ�            $    $          $    $  ANS008.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  080.LDW(����ƫ��Ԥ��ϵͳ)��ʻԱѡ������м���        $    $          $    $  ANS008.BYTE004  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  081.AEB(�Զ��ƶ�ϵͳ)��ʻԱѡ������м���            $    $          $    $  ANS008.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  082.ACC(����ӦѲ������)����ѡ����Ŀ�����ȼ�        $    $          $    $  ANS008.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0103;
  $  083.PCW(������ײ����)��ʻԱѡ���������ȵȼ�          $    $          $    $  ANS008.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  084.AEBP(�����Զ������ƶ�)����ѡ��������ȵȼ�       $    $          $    $  ANS008.BYTE006  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  085.����ͷĿ���ٶ�����                               $    $          $    $  ANS009.BYTE004  $  y=(x1*256+x2);
  $  086.ACC��ʻԱѡ����ٶ�                              $    $          $    $  ANS009.BYTE006  $  y=(x1*256+x2);
  $  087.��Ӧ��оƬ���ٺ�                                 $    $          $    $  ANS010.BYTE004  $  y=UINT64(x1,x2,x3,x4,x5,x6,x7,x8);
  $  088.TSR�޷�����Ϊԭ��0~7ʱ��״̬                     $    $          $    $  ANS011.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  089.Acc�쳣�˳�ʱ�����                              $    $          $    $  ANS011.BYTE006  $  y=x+2000;
  $  090.Acc�쳣�˳�ʱ���·�                              $    $          $    $  ANS011.BYTE007  $  y=x;
  $  091.Acc�쳣�˳�ʱ������                              $    $          $    $  ANS011.BYTE008  $  y=x;
  $  092.Acc�쳣�˳�ʱ��ʱ��                              $    $          $    $  ANS011.BYTE009  $  y=x;
  $  093.Acc�쳣�˳�ʱ�ķ���                              $    $          $    $  ANS011.BYTE010  $  y=x;
  $  094.Acc�쳣�˳�ʱ������                              $    $          $    $  ANS011.BYTE011  $  y=x;
  $  095.Acc�쳣�˳�ʱ�����                              $    $  km      $    $  ANS011.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  096.TSR�޷�����Ϊԭ��0~7ʱ��״̬                     $    $          $    $  ANS012.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  097.TSR�޷�����Ϊԭ��8~15ʱ��״̬                    $    $          $    $  ANS012.BYTE005  $  if(x==0x00) y=@075a;else y=@01a9;
  $  098.TSR�˳�����״̬��ԭ��0~7(B095)                   $    $          $    $  ANS013.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  099.TSR�˳�����״̬��ԭ��8~15(B095)                  $    $          $    $  ANS013.BYTE005  $  if((x>=0x01)&&(x<=0xFF))y=@0e87;else y=@075a;
  $  100.TSR�Ӽ���״̬�쳣�˳�Ϊԭ��0~7��״̬             $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  101.Acc�쳣�˳�ʱ�����                              $    $          $    $  ANS014.BYTE006  $  y=x+2000;
  $  102.Acc�쳣�˳�ʱ���·�                              $    $          $    $  ANS014.BYTE007  $  y=x;
  $  103.Acc�쳣�˳�ʱ������                              $    $          $    $  ANS014.BYTE008  $  y=x;
  $  104.Acc�쳣�˳�ʱ��ʱ��                              $    $          $    $  ANS014.BYTE009  $  y=x;
  $  105.Acc�쳣�˳�ʱ�ķ���                              $    $          $    $  ANS014.BYTE010  $  y=x;
  $  106.Acc�쳣�˳�ʱ������                              $    $          $    $  ANS014.BYTE011  $  y=x;
  $  107.Acc�쳣�˳�ʱ�����                              $    $  km      $    $  ANS014.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  108.TSR�Ӽ���״̬�쳣�˳�Ϊԭ��0~7��״̬             $    $          $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0035;
  $  109.TSR�Ӽ���״̬�쳣�˳�Ϊԭ��8~15��״̬            $    $          $    $  ANS015.BYTE005  $  if((x>=0x01)&&(x<=0xFF))y=@0e87;else y=@075a;
  $  110.����                                             $    $  kph     $    $  ANS016.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:74A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
