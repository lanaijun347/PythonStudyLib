
    ����ID��10a0

    ģ�⣺Э��ģ��-->10a0

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

  $*$*DTC/9f000000


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
  $%  004:��ص�Ԫ��������:                $%    $%  ANS004.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);
  $%  005:��ص�Ԫ����ο���:              $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
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
  $  REQ013:74A 03 22 B0 80 00 00 00 00       $  ANS013:7CA 03 22 B0 80 00 00 00 00
  $  REQ014:74A 03 22 B0 81 00 00 00 00       $  ANS014:7CA 03 22 B0 81 00 00 00 00

  $  000.ACCδ׼���ü����ԭ��0~7_0             $    $            $    $  ANS000.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  001.ACCδ׼���ü����ԭ��8~15_0            $    $            $    $  ANS000.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  002.ACCδ׼���ü����ԭ��16~23_0           $    $            $    $  ANS000.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  003.ACCδ׼���ü����ԭ��24~31_0           $    $            $    $  ANS000.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  004.ACCδ׼���ü����ԭ��32~39_0           $    $            $    $  ANS000.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  005.ACCδ׼���ü����ԭ��40~47_0           $    $            $    $  ANS000.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  006.ACCδ׼���ü���Ĺ��ϰ�ȫ��־_0        $    $            $    $  ANS000.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  007.ACCδ׼���ü�������_0                $    $            $    $  ANS000.BYTE014  $  y=x+2000;
  $  008.ACCδ׼���ü�����·�_0                $    $            $    $  ANS000.BYTE015  $  y=x;
  $  009.ACCδ׼���ü������_0                  $    $            $    $  ANS000.BYTE016  $  y=x;
  $  010.ACCδ׼���ü����ʱ_0                  $    $            $    $  ANS000.BYTE017  $  y=x;
  $  011.ACCδ׼���ü���ķ�_0                  $    $            $    $  ANS000.BYTE018  $  y=x;
  $  012.ACCδ׼���ü������_0                  $    $            $    $  ANS000.BYTE019  $  y=x;
  $  013.ACCδ׼���ü�������_0                $    $  km        $    $  ANS000.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  014.ACCδ׼���ü����ԭ��0~7_1             $    $            $    $  ANS001.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  015.ACCδ׼���ü����ԭ��8~15_1            $    $            $    $  ANS001.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  016.ACCδ׼���ü����ԭ��16~23_1           $    $            $    $  ANS001.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  017.ACCδ׼���ü����ԭ��24~31_1           $    $            $    $  ANS001.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  018.ACCδ׼���ü����ԭ��32~39_1           $    $            $    $  ANS001.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  019.ACCδ׼���ü����ԭ��40~47_1           $    $            $    $  ANS001.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  020.ACCδ׼���ü���Ĺ��ϰ�ȫ��־_1        $    $            $    $  ANS001.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  021.ACCδ׼���ü�������_1                $    $            $    $  ANS001.BYTE014  $  y=x+2000;
  $  022.ACCδ׼���ü�����·�_1                $    $            $    $  ANS001.BYTE015  $  y=x;
  $  023.ACCδ׼���ü������_1                  $    $            $    $  ANS001.BYTE016  $  y=x;
  $  024.ACCδ׼���ü����ʱ_1                  $    $            $    $  ANS001.BYTE017  $  y=x;
  $  025.ACCδ׼���ü���ķ�_1                  $    $            $    $  ANS001.BYTE018  $  y=x;
  $  026.ACCδ׼���ü������_1                  $    $            $    $  ANS001.BYTE019  $  y=x;
  $  027.ACCδ׼���ü�������_1                $    $  km        $    $  ANS001.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  028.ACCδ׼���ü����ԭ��0~7_2             $    $            $    $  ANS002.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  029.ACCδ׼���ü����ԭ��8~15_2            $    $            $    $  ANS002.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  030.ACCδ׼���ü����ԭ��16~23_2           $    $            $    $  ANS002.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  031.ACCδ׼���ü����ԭ��24~31_2           $    $            $    $  ANS002.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  032.ACCδ׼���ü����ԭ��32~39_2           $    $            $    $  ANS002.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  033.ACCδ׼���ü����ԭ��40~47_2           $    $            $    $  ANS002.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  034.ACCδ׼���ü���Ĺ��ϰ�ȫ��־_2        $    $            $    $  ANS002.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  035.ACCδ׼���ü�������_2                $    $            $    $  ANS002.BYTE014  $  y=x+2000;
  $  036.ACCδ׼���ü�����·�_2                $    $            $    $  ANS002.BYTE015  $  y=x;
  $  037.ACCδ׼���ü������_2                  $    $            $    $  ANS002.BYTE016  $  y=x;
  $  038.ACCδ׼���ü����ʱ_2                  $    $            $    $  ANS002.BYTE017  $  y=x;
  $  039.ACCδ׼���ü���ķ�_2                  $    $            $    $  ANS002.BYTE018  $  y=x;
  $  040.ACCδ׼���ü������_2                  $    $            $    $  ANS002.BYTE019  $  y=x;
  $  041.ACCδ׼���ü�������_2                $    $  km        $    $  ANS002.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  042.ACCδ׼���ü����ԭ��0~7_3             $    $            $    $  ANS003.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  043.ACCδ׼���ü����ԭ��8~15_3            $    $            $    $  ANS003.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  044.ACCδ׼���ü����ԭ��16~23_3           $    $            $    $  ANS003.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  045.ACCδ׼���ü����ԭ��24~31_3           $    $            $    $  ANS003.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  046.ACCδ׼���ü����ԭ��32~39_3           $    $            $    $  ANS003.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  047.ACCδ׼���ü����ԭ��40~47_3           $    $            $    $  ANS003.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  048.ACCδ׼���ü���Ĺ��ϰ�ȫ��־_3        $    $            $    $  ANS003.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  049.ACCδ׼���ü�������_3                $    $            $    $  ANS003.BYTE014  $  y=x+2000;
  $  050.ACCδ׼���ü�����·�_3                $    $            $    $  ANS003.BYTE015  $  y=x;
  $  051.ACCδ׼���ü������_3                  $    $            $    $  ANS003.BYTE016  $  y=x;
  $  052.ACCδ׼���ü����ʱ_3                  $    $            $    $  ANS003.BYTE017  $  y=x;
  $  053.ACCδ׼���ü���ķ�_3                  $    $            $    $  ANS003.BYTE018  $  y=x;
  $  054.ACCδ׼���ü������_3                  $    $            $    $  ANS003.BYTE019  $  y=x;
  $  055.ACCδ׼���ü�������_3                $    $  km        $    $  ANS003.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  056.ACCδ׼���ü����ԭ��0~7_4             $    $            $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  057.ACCδ׼���ü����ԭ��8~15_4            $    $            $    $  ANS004.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  058.ACCδ׼���ü����ԭ��16~23_4           $    $            $    $  ANS004.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  059.ACCδ׼���ü����ԭ��24~31_4           $    $            $    $  ANS004.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  060.ACCδ׼���ü����ԭ��32~39_4           $    $            $    $  ANS004.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  061.ACCδ׼���ü����ԭ��40~47_4           $    $            $    $  ANS004.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  062.ACCδ׼���ü���Ĺ��ϰ�ȫ��־_4        $    $            $    $  ANS004.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  063.ACCδ׼���ü�������_4                $    $            $    $  ANS004.BYTE014  $  y=x+2000;
  $  064.ACCδ׼���ü�����·�_4                $    $            $    $  ANS004.BYTE015  $  y=x;
  $  065.ACCδ׼���ü������_4                  $    $            $    $  ANS004.BYTE016  $  y=x;
  $  066.ACCδ׼���ü����ʱ_4                  $    $            $    $  ANS004.BYTE017  $  y=x;
  $  067.ACCδ׼���ü���ķ�_4                  $    $            $    $  ANS004.BYTE018  $  y=x;
  $  068.ACCδ׼���ü������_4                  $    $            $    $  ANS004.BYTE019  $  y=x;
  $  069.ACCδ׼���ü�������_4                $    $  km        $    $  ANS004.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  070.ACCδ׼���ü����ԭ��0~7               $    $            $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  071.ACCδ׼���ü����ԭ��8~15              $    $            $    $  ANS005.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  072.ACCδ׼���ü����ԭ��16~23             $    $            $    $  ANS005.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  073.ACCδ׼���ü����ԭ��24~31             $    $            $    $  ANS005.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0035;
  $  074.ACCδ׼���ü����ԭ��32~39             $    $            $    $  ANS005.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  075.ACCδ׼���ü����ԭ��40~47             $    $            $    $  ANS005.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  076.ACC�˳�����״̬��ԭ��0~7(B091)         $    $            $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  077.ACC�˳�����״̬��ԭ��8~15(B091)        $    $            $    $  ANS006.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  078.ACC�˳�����״̬��ԭ��16~23(B091)       $    $            $    $  ANS006.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  079.ACC�˳�����״̬��ԭ��24~31(B091)       $    $            $    $  ANS006.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  080.ACC�˳�����״̬��ԭ��32~39(B091)       $    $            $    $  ANS006.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  081.ACC�˳�����״̬��ԭ��40~47(B091)       $    $            $    $  ANS006.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  082.ACC�˳�����״̬��ԭ��0~7_0             $    $            $    $  ANS007.BYTE004  $  if(x==0x01) y=@0e17;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0e18;else if(x==0x80) y=@0b4f;else y=@0035;
  $  083.ACC�˳�����״̬��ԭ��8~15_0            $    $            $    $  ANS007.BYTE005  $  if(x==0x01) y=@0db2;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  084.ACC�˳�����״̬��ԭ��16~23_0           $    $            $    $  ANS007.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0e03;else y=@0035;
  $  085.ACC�˳�����״̬��ԭ��24~31_0           $    $            $    $  ANS007.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0e22;else if(x==0x04) y=@0db3;else if(x==0x08) y=@0e23;else if(x==0x10) y=@0e04;else if(x==0x20) y=@0e24;else if(x==0x40) y=@0e25;else if(x==0x80) y=@0e05;else y=@0035;
  $  086.ACC�˳�����״̬��ԭ��32~39_0           $    $            $    $  ANS007.BYTE008  $  if(x==0x01) y=@0e06;else if(x==0x02) y=@0e26;else if(x==0x04) y=@0e27;else if(x==0x08) y=@0e08;else if(x==0x10) y=@0e28;else if(x==0x20) y=@0e29;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0e2a;else y=@0035;
  $  087.ACC�˳�����״̬��ԭ��40~47_0           $    $            $    $  ANS007.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0db6;else if(x==0x08) y=@0db7;else y=@0035;
  $  088.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־_0        $    $            $    $  ANS007.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  089.ACC�˳��¼����_0                      $    $            $    $  ANS007.BYTE014  $  y=x+2000;
  $  090.ACC�˳��¼��·�_0                      $    $            $    $  ANS007.BYTE015  $  y=x;
  $  091.ACC�˳��¼���_0                        $    $            $    $  ANS007.BYTE016  $  y=x;
  $  092.ACC�˳��¼�ʱ_0                        $    $            $    $  ANS007.BYTE017  $  y=x;
  $  093.ACC�˳��¼���_0                        $    $            $    $  ANS007.BYTE018  $  y=x;
  $  094.ACC�˳��¼���_0                        $    $            $    $  ANS007.BYTE019  $  y=x;
  $  095.ACC�˳��¼����_0                      $    $  km        $    $  ANS007.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  096.ACC�˳�����״̬��ԭ��0~7_1             $    $            $    $  ANS008.BYTE004  $  if(x==0x01) y=@0e17;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0e18;else if(x==0x80) y=@0b4f;else y=@0035;
  $  097.ACC�˳�����״̬��ԭ��8~15_1            $    $            $    $  ANS008.BYTE005  $  if(x==0x01) y=@0db2;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  098.ACC�˳�����״̬��ԭ��16~23_1           $    $            $    $  ANS008.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0e03;else y=@0035;
  $  099.ACC�˳�����״̬��ԭ��24~31_1           $    $            $    $  ANS008.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0e22;else if(x==0x04) y=@0db3;else if(x==0x08) y=@0e23;else if(x==0x10) y=@0e04;else if(x==0x20) y=@0e24;else if(x==0x40) y=@0e25;else if(x==0x80) y=@0e05;else y=@0035;
  $  100.ACC�˳�����״̬��ԭ��32~39_1           $    $            $    $  ANS008.BYTE008  $  if(x==0x01) y=@0e06;else if(x==0x02) y=@0e26;else if(x==0x04) y=@0e27;else if(x==0x08) y=@0e08;else if(x==0x10) y=@0e28;else if(x==0x20) y=@0e29;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0e2a;else y=@0035;
  $  101.ACC�˳�����״̬��ԭ��40~47_1           $    $            $    $  ANS008.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0db6;else if(x==0x08) y=@0db7;else y=@0035;
  $  102.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־_1        $    $            $    $  ANS008.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  103.ACC�˳��¼����_1                      $    $            $    $  ANS008.BYTE014  $  y=x+2000;
  $  104.ACC�˳��¼��·�_1                      $    $            $    $  ANS008.BYTE015  $  y=x;
  $  105.ACC�˳��¼���_1                        $    $            $    $  ANS008.BYTE016  $  y=x;
  $  106.ACC�˳��¼�ʱ_1                        $    $            $    $  ANS008.BYTE017  $  y=x;
  $  107.ACC�˳��¼���_1                        $    $            $    $  ANS008.BYTE018  $  y=x;
  $  108.ACC�˳��¼���_1                        $    $            $    $  ANS008.BYTE019  $  y=x;
  $  109.ACC�˳��¼����_1                      $    $  km        $    $  ANS008.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  110.ACC�˳�����״̬��ԭ��0~7_2             $    $            $    $  ANS009.BYTE004  $  if(x==0x01) y=@0e17;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0e18;else if(x==0x80) y=@0b4f;else y=@0035;
  $  111.ACC�˳�����״̬��ԭ��8~15_2            $    $            $    $  ANS009.BYTE005  $  if(x==0x01) y=@0db2;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  112.ACC�˳�����״̬��ԭ��16~23_2           $    $            $    $  ANS009.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0e03;else y=@0035;
  $  113.ACC�˳�����״̬��ԭ��24~31_2           $    $            $    $  ANS009.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0e22;else if(x==0x04) y=@0db3;else if(x==0x08) y=@0e23;else if(x==0x10) y=@0e04;else if(x==0x20) y=@0e24;else if(x==0x40) y=@0e25;else if(x==0x80) y=@0e05;else y=@0035;
  $  114.ACC�˳�����״̬��ԭ��32~39_2           $    $            $    $  ANS009.BYTE008  $  if(x==0x01) y=@0e06;else if(x==0x02) y=@0e26;else if(x==0x04) y=@0e27;else if(x==0x08) y=@0e08;else if(x==0x10) y=@0e28;else if(x==0x20) y=@0e29;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0e2a;else y=@0035;
  $  115.ACC�˳�����״̬��ԭ��40~47_2           $    $            $    $  ANS009.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0db6;else if(x==0x08) y=@0db7;else y=@0035;
  $  116.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־_2        $    $            $    $  ANS009.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  117.ACC�˳��¼����_2                      $    $            $    $  ANS009.BYTE014  $  y=x+2000;
  $  118.ACC�˳��¼��·�_2                      $    $            $    $  ANS009.BYTE015  $  y=x;
  $  119.ACC�˳��¼���_2                        $    $            $    $  ANS009.BYTE016  $  y=x;
  $  120.ACC�˳��¼�ʱ_2                        $    $            $    $  ANS009.BYTE017  $  y=x;
  $  121.ACC�˳��¼���_2                        $    $            $    $  ANS009.BYTE018  $  y=x;
  $  122.ACC�˳��¼���_2                        $    $            $    $  ANS009.BYTE019  $  y=x;
  $  123.ACC�˳��¼����_2                      $    $  km        $    $  ANS009.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  124.ACC�˳�����״̬��ԭ��0~7_3             $    $            $    $  ANS010.BYTE004  $  if(x==0x01) y=@0e17;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0e18;else if(x==0x80) y=@0b4f;else y=@0035;
  $  125.ACC�˳�����״̬��ԭ��8~15_3            $    $            $    $  ANS010.BYTE005  $  if(x==0x01) y=@0db2;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  126.ACC�˳�����״̬��ԭ��16~23_3           $    $            $    $  ANS010.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0e03;else y=@0035;
  $  127.ACC�˳�����״̬��ԭ��24~31_3           $    $            $    $  ANS010.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0e22;else if(x==0x04) y=@0db3;else if(x==0x08) y=@0e23;else if(x==0x10) y=@0e04;else if(x==0x20) y=@0e24;else if(x==0x40) y=@0e25;else if(x==0x80) y=@0e05;else y=@0035;
  $  128.ACC�˳�����״̬��ԭ��32~39_3           $    $            $    $  ANS010.BYTE008  $  if(x==0x01) y=@0e06;else if(x==0x02) y=@0e26;else if(x==0x04) y=@0e27;else if(x==0x08) y=@0e08;else if(x==0x10) y=@0e28;else if(x==0x20) y=@0e29;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0e2a;else y=@0035;
  $  129.ACC�˳�����״̬��ԭ��40~47_3           $    $            $    $  ANS010.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0db6;else if(x==0x08) y=@0db7;else y=@0035;
  $  130.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־_3        $    $            $    $  ANS010.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  131.ACC�˳��¼����_3                      $    $            $    $  ANS010.BYTE014  $  y=x+2000;
  $  132.ACC�˳��¼��·�_3                      $    $            $    $  ANS010.BYTE015  $  y=x;
  $  133.ACC�˳��¼���_3                        $    $            $    $  ANS010.BYTE016  $  y=x;
  $  134.ACC�˳��¼�ʱ_3                        $    $            $    $  ANS010.BYTE017  $  y=x;
  $  135.ACC�˳��¼���_3                        $    $            $    $  ANS010.BYTE018  $  y=x;
  $  136.ACC�˳��¼���_3                        $    $            $    $  ANS010.BYTE019  $  y=x;
  $  137.ACC�˳��¼����_3                      $    $  km        $    $  ANS010.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  138.ACC�˳�����״̬��ԭ��0~7_4             $    $            $    $  ANS011.BYTE004  $  if(x==0x01) y=@0e17;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0e18;else if(x==0x80) y=@0b4f;else y=@0035;
  $  139.ACC�˳�����״̬��ԭ��8~15_4            $    $            $    $  ANS011.BYTE005  $  if(x==0x01) y=@0db2;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  140.ACC�˳�����״̬��ԭ��16~23_4           $    $            $    $  ANS011.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0e03;else y=@0035;
  $  141.ACC�˳�����״̬��ԭ��24~31_4           $    $            $    $  ANS011.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0e22;else if(x==0x04) y=@0db3;else if(x==0x08) y=@0e23;else if(x==0x10) y=@0e04;else if(x==0x20) y=@0e24;else if(x==0x40) y=@0e25;else if(x==0x80) y=@0e05;else y=@0035;
  $  142.ACC�˳�����״̬��ԭ��32~39_4           $    $            $    $  ANS011.BYTE008  $  if(x==0x01) y=@0e06;else if(x==0x02) y=@0e26;else if(x==0x04) y=@0e27;else if(x==0x08) y=@0e08;else if(x==0x10) y=@0e28;else if(x==0x20) y=@0e29;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0e2a;else y=@0035;
  $  143.ACC�˳�����״̬��ԭ��40~47_4           $    $            $    $  ANS011.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0db6;else if(x==0x08) y=@0db7;else y=@0035;
  $  144.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־_4        $    $            $    $  ANS011.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  145.ACC�˳��¼����_4                      $    $            $    $  ANS011.BYTE014  $  y=x+2000;
  $  146.ACC�˳��¼��·�_4                      $    $            $    $  ANS011.BYTE015  $  y=x;
  $  147.ACC�˳��¼���_4                        $    $            $    $  ANS011.BYTE016  $  y=x;
  $  148.ACC�˳��¼�ʱ_4                        $    $            $    $  ANS011.BYTE017  $  y=x;
  $  149.ACC�˳��¼���_4                        $    $            $    $  ANS011.BYTE018  $  y=x;
  $  150.ACC�˳��¼���_4                        $    $            $    $  ANS011.BYTE019  $  y=x;
  $  151.ACC�˳��¼����_4                      $    $  km        $    $  ANS011.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  152.ACC�˳�����״̬��ԭ��0~7               $    $            $    $  ANS012.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0035;
  $  153.ACC�˳�����״̬��ԭ��8~15              $    $            $    $  ANS012.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0035;
  $  154.ACC�˳�����״̬��ԭ��16~23             $    $            $    $  ANS012.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0035;
  $  155.ACC�˳�����״̬��ԭ��24~31             $    $            $    $  ANS012.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0035;
  $  156.ACC�˳�����״̬��ԭ��32~39             $    $            $    $  ANS012.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0035;
  $  157.ACC�˳�����״̬��ԭ��40~47             $    $            $    $  ANS012.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  158.AEB�¼����_0                          $    $  km        $    $  ANS013.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  159.AEB�¼���_0                            $    $            $    $  ANS013.BYTE008  $  y=x;
  $  160.AEB�¼���_0                            $    $            $    $  ANS013.BYTE009  $  y=x;
  $  161.AEB�¼�ʱ_0                            $    $            $    $  ANS013.BYTE010  $  y=x;
  $  162.AEB�¼���_0                            $    $            $    $  ANS013.BYTE011  $  y=x;
  $  163.AEB�¼��·�_0                          $    $            $    $  ANS013.BYTE012  $  y=x;
  $  164.AEB�¼����_0                          $    $            $    $  ANS013.BYTE013  $  y=x+2000;
  $  165.�����������_0                         $    $  m         $    $  ANS013.BYTE014  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  166.����������_0                         $    $  m         $    $  ANS013.BYTE016  $  y=(((x1*256+x2)&0x3FFC)>>2)*0.05-102.4;
  $  167.�¼�ƫ����_0                           $    $  rad/s     $    $  ANS013.BYTE017  $  y=((x1*256+x2)&0x3FF)*0.002132-2.094;
  $  168.�¼����ȼ��ٶ�_0                       $    $  m/s2      $    $  ANS013.BYTE019  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  169.�¼������_0                           $    $            $    $  ANS013.BYTE020  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  170.�¼��������_0                         $    $            $    $  ANS013.BYTE020  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  171.�¼�������ǿ�ȶ��Բ�����ٶ�_0         $    $  m/s2      $    $  ANS013.BYTE020  $  y=((x1*256+x2)&0xFFF)*0.027127-21.5928;
  $  172.�¼��ƶ���̤��λ��_0                   $    $  %         $    $  ANS013.BYTE022  $  y=x*0.392157;
  $  173.�¼�������ʵ��λ��_0                   $    $  %         $    $  ANS013.BYTE023  $  y=x*0.392157;
  $  174.�¼�����_0                             $    $  kph       $    $  ANS013.BYTE024  $  y=(x1*256+x2)*0.5625;
  $  175.FCW��ʻԱѡ���������ȵȼ�_0            $    $            $    $  ANS013.BYTE026  $  if(((x&0xF0)>>4)==0x00) y=@0d9c;else if(((x&0xF0)>>4)==0x01) y=@0e1b;else if(((x&0xF0)>>4)==0x02) y=@0e1c;else if(((x&0xF0)>>4)==0x03) y=@0e1d;else y=@0035;
  $  176.�¼��ȼ�_0                             $    $            $    $  ANS013.BYTE026  $  if(((x&0x0C)>>2)==0x00) y=@0e1e;else if(((x&0x0C)>>2)==0x01) y=@0e1f;else if(((x&0x0C)>>2)==0x02) y=@0e20;else if(((x&0x0C)>>2)==0x03) y=@0035;else y=@0035;
  $  177.�¼�����_0                             $    $            $    $  ANS013.BYTE026  $  if((x&0x03)==0x00) y=@023f;else if((x&0x03)==0x01) y=@0e21;else if((x&0x03)==0x02) y=@0b87;else if((x&0x03)==0x03) y=@0035;else y=@0035;
  $  178.AEB�¼����_1                          $    $  km        $    $  ANS014.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  179.AEB�¼���_1                            $    $            $    $  ANS014.BYTE008  $  y=x;
  $  180.AEB�¼���_1                            $    $            $    $  ANS014.BYTE009  $  y=x;
  $  181.AEB�¼�ʱ_1                            $    $            $    $  ANS014.BYTE010  $  y=x;
  $  182.AEB�¼���_1                            $    $            $    $  ANS014.BYTE011  $  y=x;
  $  183.AEB�¼��·�_1                          $    $            $    $  ANS014.BYTE012  $  y=x;
  $  184.AEB�¼����_1                          $    $            $    $  ANS014.BYTE013  $  y=x+2000;
  $  185.�����������_1                         $    $  m         $    $  ANS014.BYTE014  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  186.����������_1                         $    $  m         $    $  ANS014.BYTE016  $  y=(((x1*256+x2)&0x3FFC)>>2)*0.05-102.4;
  $  187.�¼�ƫ����_1                           $    $  rad/s     $    $  ANS014.BYTE017  $  y=((x1*256+x2)&0x3FF)*0.002132-2.094;
  $  188.�¼����ȼ��ٶ�_1                       $    $  m/s2      $    $  ANS014.BYTE019  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  189.�¼������_1                           $    $            $    $  ANS014.BYTE020  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  190.�¼��������_1                         $    $            $    $  ANS014.BYTE020  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  191.�¼�������ǿ�ȶ��Բ�����ٶ�_1         $    $  m/s2      $    $  ANS014.BYTE020  $  y=((x1*256+x2)&0xFFF)*0.027127-21.5928;
  $  192.�¼��ƶ���̤��λ��_1                   $    $  %         $    $  ANS014.BYTE022  $  y=x*0.392157;
  $  193.�¼�������ʵ��λ��_1                   $    $  %         $    $  ANS014.BYTE023  $  y=x*0.392157;
  $  194.�¼�����_1                             $    $  kph       $    $  ANS014.BYTE024  $  y=(x1*256+x2)*0.5625;
  $  195.FCW��ʻԱѡ���������ȵȼ�_1            $    $            $    $  ANS014.BYTE026  $  if(((x&0xF0)>>4)==0x00) y=@0d9c;else if(((x&0xF0)>>4)==0x01) y=@0e1b;else if(((x&0xF0)>>4)==0x02) y=@0e1c;else if(((x&0xF0)>>4)==0x03) y=@0e1d;else y=@0035;
  $  196.�¼��ȼ�_1                             $    $            $    $  ANS014.BYTE026  $  if(((x&0x0C)>>2)==0x00) y=@0e1e;else if(((x&0x0C)>>2)==0x01) y=@0e1f;else if(((x&0x0C)>>2)==0x02) y=@0e20;else if(((x&0x0C)>>2)==0x03) y=@0035;else y=@0035;
  $  197.�¼�����_1                             $    $            $    $  ANS014.BYTE026  $  if((x&0x03)==0x00) y=@023f;else if((x&0x03)==0x01) y=@0e21;else if((x&0x03)==0x02) y=@0b87;else if((x&0x03)==0x03) y=@0035;else y=@0035;

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

  $  000.AEB�¼����_2                          $    $  km        $    $  ANS000.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  001.AEB�¼���_2                            $    $            $    $  ANS000.BYTE008  $  y=x;
  $  002.AEB�¼���_2                            $    $            $    $  ANS000.BYTE009  $  y=x;
  $  003.AEB�¼�ʱ_2                            $    $            $    $  ANS000.BYTE010  $  y=x;
  $  004.AEB�¼���_2                            $    $            $    $  ANS000.BYTE011  $  y=x;
  $  005.AEB�¼��·�_2                          $    $            $    $  ANS000.BYTE012  $  y=x;
  $  006.AEB�¼����_2                          $    $            $    $  ANS000.BYTE013  $  y=x+2000;
  $  007.�����������_2                         $    $  m         $    $  ANS000.BYTE014  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  008.����������_2                         $    $  m         $    $  ANS000.BYTE016  $  y=(((x1*256+x2)&0x3FFC)>>2)*0.05-102.4;
  $  009.�¼�ƫ����_2                           $    $  rad/s     $    $  ANS000.BYTE017  $  y=((x1*256+x2)&0x3FF)*0.002132-2.094;
  $  010.�¼����ȼ��ٶ�_2                       $    $  m/s2      $    $  ANS000.BYTE019  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  011.�¼������_2                           $    $            $    $  ANS000.BYTE020  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  012.�¼��������_2                         $    $            $    $  ANS000.BYTE020  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  013.�¼�������ǿ�ȶ��Բ�����ٶ�_2         $    $  m/s2      $    $  ANS000.BYTE020  $  y=((x1*256+x2)&0xFFF)*0.027127-21.5928;
  $  014.�¼��ƶ���̤��λ��_2                   $    $  %         $    $  ANS000.BYTE022  $  y=x*0.392157;
  $  015.�¼�������ʵ��λ��_2                   $    $  %         $    $  ANS000.BYTE023  $  y=x*0.392157;
  $  016.�¼�����_2                             $    $  kph       $    $  ANS000.BYTE024  $  y=(x1*256+x2)*0.5625;
  $  017.FCW��ʻԱѡ���������ȵȼ�_2            $    $            $    $  ANS000.BYTE026  $  if(((x&0xF0)>>4)==0x00) y=@0d9c;else if(((x&0xF0)>>4)==0x01) y=@0e1b;else if(((x&0xF0)>>4)==0x02) y=@0e1c;else if(((x&0xF0)>>4)==0x03) y=@0e1d;else y=@0035;
  $  018.�¼��ȼ�_2                             $    $            $    $  ANS000.BYTE026  $  if(((x&0x0C)>>2)==0x00) y=@0e1e;else if(((x&0x0C)>>2)==0x01) y=@0e1f;else if(((x&0x0C)>>2)==0x02) y=@0e20;else if(((x&0x0C)>>2)==0x03) y=@0035;else y=@0035;
  $  019.�¼�����_2                             $    $            $    $  ANS000.BYTE026  $  if((x&0x03)==0x00) y=@023f;else if((x&0x03)==0x01) y=@0e21;else if((x&0x03)==0x02) y=@0b87;else if((x&0x03)==0x03) y=@0035;else y=@0035;
  $  020.AEB�¼����_3                          $    $  km        $    $  ANS001.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  021.AEB�¼���_3                            $    $            $    $  ANS001.BYTE008  $  y=x;
  $  022.AEB�¼���_3                            $    $            $    $  ANS001.BYTE009  $  y=x;
  $  023.AEB�¼�ʱ_3                            $    $            $    $  ANS001.BYTE010  $  y=x;
  $  024.AEB�¼���_3                            $    $            $    $  ANS001.BYTE011  $  y=x;
  $  025.AEB�¼��·�_3                          $    $            $    $  ANS001.BYTE012  $  y=x;
  $  026.AEB�¼����_3                          $    $            $    $  ANS001.BYTE013  $  y=x+2000;
  $  027.�����������_3                         $    $  m         $    $  ANS001.BYTE014  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  028.����������_3                         $    $  m         $    $  ANS001.BYTE016  $  y=(((x1*256+x2)&0x3FFC)>>2)*0.05-102.4;
  $  029.�¼�ƫ����_3                           $    $  rad/s     $    $  ANS001.BYTE017  $  y=((x1*256+x2)&0x3FF)*0.002132-2.094;
  $  030.�¼����ȼ��ٶ�_3                       $    $  m/s2      $    $  ANS001.BYTE019  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  031.�¼������_3                           $    $            $    $  ANS001.BYTE020  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  032.�¼��������_3                         $    $            $    $  ANS001.BYTE020  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  033.�¼�������ǿ�ȶ��Բ�����ٶ�_3         $    $  m/s2      $    $  ANS001.BYTE020  $  y=((x1*256+x2)&0xFFF)*0.027127-21.5928;
  $  034.�¼��ƶ���̤��λ��_3                   $    $  %         $    $  ANS001.BYTE022  $  y=x*0.392157;
  $  035.�¼�������ʵ��λ��_3                   $    $  %         $    $  ANS001.BYTE023  $  y=x*0.392157;
  $  036.�¼�����_3                             $    $  kph       $    $  ANS001.BYTE024  $  y=(x1*256+x2)*0.5625;
  $  037.FCW��ʻԱѡ���������ȵȼ�_3            $    $            $    $  ANS001.BYTE026  $  if(((x&0xF0)>>4)==0x00) y=@0d9c;else if(((x&0xF0)>>4)==0x01) y=@0e1b;else if(((x&0xF0)>>4)==0x02) y=@0e1c;else if(((x&0xF0)>>4)==0x03) y=@0e1d;else y=@0035;
  $  038.�¼��ȼ�_3                             $    $            $    $  ANS001.BYTE026  $  if(((x&0x0C)>>2)==0x00) y=@0e1e;else if(((x&0x0C)>>2)==0x01) y=@0e1f;else if(((x&0x0C)>>2)==0x02) y=@0e20;else if(((x&0x0C)>>2)==0x03) y=@0035;else y=@0035;
  $  039.�¼�����_3                             $    $            $    $  ANS001.BYTE026  $  if((x&0x03)==0x00) y=@023f;else if((x&0x03)==0x01) y=@0e21;else if((x&0x03)==0x02) y=@0b87;else if((x&0x03)==0x03) y=@0035;else y=@0035;
  $  040.AEB�¼����_4                          $    $  km        $    $  ANS002.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  041.AEB�¼���_4                            $    $            $    $  ANS002.BYTE008  $  y=x;
  $  042.AEB�¼���_4                            $    $            $    $  ANS002.BYTE009  $  y=x;
  $  043.AEB�¼�ʱ_4                            $    $            $    $  ANS002.BYTE010  $  y=x;
  $  044.AEB�¼���_4                            $    $            $    $  ANS002.BYTE011  $  y=x;
  $  045.AEB�¼��·�_4                          $    $            $    $  ANS002.BYTE012  $  y=x;
  $  046.AEB�¼����_4                          $    $            $    $  ANS002.BYTE013  $  y=x+2000;
  $  047.�����������_4                         $    $  m         $    $  ANS002.BYTE014  $  y=(x1*256*256+x2*256+x3)*0.05;
  $  048.����������_4                         $    $  m         $    $  ANS002.BYTE016  $  y=(((x1*256+x2)&0x3FFC)>>2)*0.05-102.4;
  $  049.�¼�ƫ����_4                           $    $  rad/s     $    $  ANS002.BYTE017  $  y=((x1*256+x2)&0x3FF)*0.002132-2.094;
  $  050.�¼����ȼ��ٶ�_4                       $    $  m/s2      $    $  ANS002.BYTE019  $  y=(((x1*256+x2)&0xFFC0)>>6)*0.027127-21.592;
  $  051.�¼������_4                           $    $            $    $  ANS002.BYTE020  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  052.�¼��������_4                         $    $            $    $  ANS002.BYTE020  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  053.�¼�������ǿ�ȶ��Բ�����ٶ�_4         $    $  m/s2      $    $  ANS002.BYTE020  $  y=((x1*256+x2)&0xFFF)*0.027127-21.5928;
  $  054.�¼��ƶ���̤��λ��_4                   $    $  %         $    $  ANS002.BYTE022  $  y=x*0.392157;
  $  055.�¼�������ʵ��λ��_4                   $    $  %         $    $  ANS002.BYTE023  $  y=x*0.392157;
  $  056.�¼�����_4                             $    $  kph       $    $  ANS002.BYTE024  $  y=(x1*256+x2)*0.5625;
  $  057.FCW��ʻԱѡ���������ȵȼ�_4            $    $            $    $  ANS002.BYTE026  $  if(((x&0xF0)>>4)==0x00) y=@0d9c;else if(((x&0xF0)>>4)==0x01) y=@0e1b;else if(((x&0xF0)>>4)==0x02) y=@0e1c;else if(((x&0xF0)>>4)==0x03) y=@0e1d;else y=@0035;
  $  058.�¼��ȼ�_4                             $    $            $    $  ANS002.BYTE026  $  if(((x&0x0C)>>2)==0x00) y=@0e1e;else if(((x&0x0C)>>2)==0x01) y=@0e1f;else if(((x&0x0C)>>2)==0x02) y=@0e20;else if(((x&0x0C)>>2)==0x03) y=@0035;else y=@0035;
  $  059.�¼�����_4                             $    $            $    $  ANS002.BYTE026  $  if((x&0x03)==0x00) y=@023f;else if((x&0x03)==0x01) y=@0e21;else if((x&0x03)==0x02) y=@0b87;else if((x&0x03)==0x03) y=@0035;else y=@0035;
  $  060.AEBδ׼���ü����ԭ��0~7_0             $    $            $    $  ANS003.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  061.AEBδ׼���ü����ԭ��8~15_0            $    $            $    $  ANS003.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  062.AEBδ׼���ü����ԭ��16~23_0           $    $            $    $  ANS003.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  063.AEBδ׼���ü����ԭ��24~31_0           $    $            $    $  ANS003.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  064.AEBδ׼���ü���Ĺ��ϰ�ȫ��־_0        $    $            $    $  ANS003.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  065.AEBδ׼���ü�������_0                $    $            $    $  ANS003.BYTE010  $  y=x+2000;
  $  066.AEBδ׼���ü�����·�_0                $    $            $    $  ANS003.BYTE011  $  y=x;
  $  067.AEBδ׼���ü������_0                  $    $            $    $  ANS003.BYTE012  $  y=x;
  $  068.AEBδ׼���ü����ʱ_0                  $    $            $    $  ANS003.BYTE013  $  y=x;
  $  069.AEBδ׼���ü���ķ�_0                  $    $            $    $  ANS003.BYTE014  $  y=x;
  $  070.AEBδ׼���ü������_0                  $    $            $    $  ANS003.BYTE015  $  y=x;
  $  071.AEBδ׼���ü�������_0                $    $  km        $    $  ANS003.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  072.AEBδ׼���ü����ԭ��0~7_1             $    $            $    $  ANS004.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  073.AEBδ׼���ü����ԭ��8~15_1            $    $            $    $  ANS004.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  074.AEBδ׼���ü����ԭ��16~23_1           $    $            $    $  ANS004.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  075.AEBδ׼���ü����ԭ��24~31_1           $    $            $    $  ANS004.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  076.AEBδ׼���ü���Ĺ��ϰ�ȫ��־_1        $    $            $    $  ANS004.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  077.AEBδ׼���ü�������_1                $    $            $    $  ANS004.BYTE010  $  y=x+2000;
  $  078.AEBδ׼���ü�����·�_1                $    $            $    $  ANS004.BYTE011  $  y=x;
  $  079.AEBδ׼���ü������_1                  $    $            $    $  ANS004.BYTE012  $  y=x;
  $  080.AEBδ׼���ü����ʱ_1                  $    $            $    $  ANS004.BYTE013  $  y=x;
  $  081.AEBδ׼���ü���ķ�_1                  $    $            $    $  ANS004.BYTE014  $  y=x;
  $  082.AEBδ׼���ü������_1                  $    $            $    $  ANS004.BYTE015  $  y=x;
  $  083.AEBδ׼���ü�������_1                $    $  km        $    $  ANS004.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  084.AEBδ׼���ü����ԭ��0~7_2             $    $            $    $  ANS005.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  085.AEBδ׼���ü����ԭ��8~15_2            $    $            $    $  ANS005.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  086.AEBδ׼���ü����ԭ��16~23_2           $    $            $    $  ANS005.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  087.AEBδ׼���ü����ԭ��24~31_2           $    $            $    $  ANS005.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  088.AEBδ׼���ü���Ĺ��ϰ�ȫ��־_2        $    $            $    $  ANS005.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  089.AEBδ׼���ü�������_2                $    $            $    $  ANS005.BYTE010  $  y=x+2000;
  $  090.AEBδ׼���ü�����·�_2                $    $            $    $  ANS005.BYTE011  $  y=x;
  $  091.AEBδ׼���ü������_2                  $    $            $    $  ANS005.BYTE012  $  y=x;
  $  092.AEBδ׼���ü����ʱ_2                  $    $            $    $  ANS005.BYTE013  $  y=x;
  $  093.AEBδ׼���ü���ķ�_2                  $    $            $    $  ANS005.BYTE014  $  y=x;
  $  094.AEBδ׼���ü������_2                  $    $            $    $  ANS005.BYTE015  $  y=x;
  $  095.AEBδ׼���ü�������_2                $    $  km        $    $  ANS005.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  096.AEBδ׼���ü����ԭ��0~7_3             $    $            $    $  ANS006.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  097.AEBδ׼���ü����ԭ��8~15_3            $    $            $    $  ANS006.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  098.AEBδ׼���ü����ԭ��16~23_3           $    $            $    $  ANS006.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  099.AEBδ׼���ü����ԭ��24~31_3           $    $            $    $  ANS006.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  100.AEBδ׼���ü���Ĺ��ϰ�ȫ��־_3        $    $            $    $  ANS006.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  101.AEBδ׼���ü�������_3                $    $            $    $  ANS006.BYTE010  $  y=x+2000;
  $  102.AEBδ׼���ü�����·�_3                $    $            $    $  ANS006.BYTE011  $  y=x;
  $  103.AEBδ׼���ü������_3                  $    $            $    $  ANS006.BYTE012  $  y=x;
  $  104.AEBδ׼���ü����ʱ_3                  $    $            $    $  ANS006.BYTE013  $  y=x;
  $  105.AEBδ׼���ü���ķ�_3                  $    $            $    $  ANS006.BYTE014  $  y=x;
  $  106.AEBδ׼���ü������_3                  $    $            $    $  ANS006.BYTE015  $  y=x;
  $  107.AEBδ׼���ü�������_3                $    $  km        $    $  ANS006.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  108.AEBδ׼���ü����ԭ��0~7_4             $    $            $    $  ANS007.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  109.AEBδ׼���ü����ԭ��8~15_4            $    $            $    $  ANS007.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  110.AEBδ׼���ü����ԭ��16~23_4           $    $            $    $  ANS007.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  111.AEBδ׼���ü����ԭ��24~31_4           $    $            $    $  ANS007.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  112.AEBδ׼���ü���Ĺ��ϰ�ȫ��־_4        $    $            $    $  ANS007.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  113.AEBδ׼���ü�������_4                $    $            $    $  ANS007.BYTE010  $  y=x+2000;
  $  114.AEBδ׼���ü�����·�_4                $    $            $    $  ANS007.BYTE011  $  y=x;
  $  115.AEBδ׼���ü������_4                  $    $            $    $  ANS007.BYTE012  $  y=x;
  $  116.AEBδ׼���ü����ʱ_4                  $    $            $    $  ANS007.BYTE013  $  y=x;
  $  117.AEBδ׼���ü���ķ�_4                  $    $            $    $  ANS007.BYTE014  $  y=x;
  $  118.AEBδ׼���ü������_4                  $    $            $    $  ANS007.BYTE015  $  y=x;
  $  119.AEBδ׼���ü�������_4                $    $  km        $    $  ANS007.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  120.AEBδ׼���ü����ԭ��0~7               $    $            $    $  ANS008.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  121.AEBδ׼���ü����ԭ��8~15              $    $            $    $  ANS008.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  122.AEBδ׼���ü����ԭ��16~23             $    $            $    $  ANS008.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  123.AEBδ׼���ü����ԭ��24~31             $    $            $    $  ANS008.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  124.AEB�˳�����״̬��ԭ��0~7(B092)         $    $            $    $  ANS009.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  125.AEB�˳�����״̬��ԭ��8~15(B092)        $    $            $    $  ANS009.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  126.AEB�˳�����״̬��ԭ��16~23(B092)       $    $            $    $  ANS009.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  127.AEB�˳�����״̬��ԭ��24~31(B092)       $    $            $    $  ANS009.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  128.AEB�˳�����״̬��ԭ��0~7_0             $    $            $    $  ANS010.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0db2;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  129.AEB�˳�����״̬��ԭ��8~15_0            $    $            $    $  ANS010.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0e01;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0e03;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0db3;else y=@0035;
  $  130.AEB�˳�����״̬��ԭ��16~23_0           $    $            $    $  ANS010.BYTE006  $  if(x==0x01) y=@0e04;else if(x==0x02) y=@0e05;else if(x==0x04) y=@0e06;else if(x==0x08) y=@0e07;else if(x==0x10) y=@0e08;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  131.AEB�˳�����״̬��ԭ��24~31_0           $    $            $    $  ANS010.BYTE007  $  if(x==0x01) y=@0db6;else if(x==0x02) y=@0db7;else y=@0035;
  $  132.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־_0        $    $            $    $  ANS010.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  133.AEB�˳��¼����_0                      $    $            $    $  ANS010.BYTE010  $  y=x+2000;
  $  134.AEB�˳��¼��·�_0                      $    $            $    $  ANS010.BYTE011  $  y=x;
  $  135.AEB�˳��¼���_0                        $    $            $    $  ANS010.BYTE012  $  y=x;
  $  136.AEB�˳��¼�ʱ_0                        $    $            $    $  ANS010.BYTE013  $  y=x;
  $  137.AEB�˳��¼���_0                        $    $            $    $  ANS010.BYTE014  $  y=x;
  $  138.AEB�˳��¼���_0                        $    $            $    $  ANS010.BYTE015  $  y=x;
  $  139.AEB�˳��¼����_0                      $    $  km        $    $  ANS010.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  140.AEB�˳�����״̬��ԭ��0~7_1             $    $            $    $  ANS011.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0db2;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  141.AEB�˳�����״̬��ԭ��8~15_1            $    $            $    $  ANS011.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0e01;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0e03;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0db3;else y=@0035;
  $  142.AEB�˳�����״̬��ԭ��16~23_1           $    $            $    $  ANS011.BYTE006  $  if(x==0x01) y=@0e04;else if(x==0x02) y=@0e05;else if(x==0x04) y=@0e06;else if(x==0x08) y=@0e07;else if(x==0x10) y=@0e08;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  143.AEB�˳�����״̬��ԭ��24~31_1           $    $            $    $  ANS011.BYTE007  $  if(x==0x01) y=@0db6;else if(x==0x02) y=@0db7;else y=@0035;
  $  144.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־_1        $    $            $    $  ANS011.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  145.AEB�˳��¼����_1                      $    $            $    $  ANS011.BYTE010  $  y=x+2000;
  $  146.AEB�˳��¼��·�_1                      $    $            $    $  ANS011.BYTE011  $  y=x;
  $  147.AEB�˳��¼���_1                        $    $            $    $  ANS011.BYTE012  $  y=x;
  $  148.AEB�˳��¼�ʱ_1                        $    $            $    $  ANS011.BYTE013  $  y=x;
  $  149.AEB�˳��¼���_1                        $    $            $    $  ANS011.BYTE014  $  y=x;
  $  150.AEB�˳��¼���_1                        $    $            $    $  ANS011.BYTE015  $  y=x;
  $  151.AEB�˳��¼����_1                      $    $  km        $    $  ANS011.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  152.AEB�˳�����״̬��ԭ��0~7_2             $    $            $    $  ANS012.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0db2;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  153.AEB�˳�����״̬��ԭ��8~15_2            $    $            $    $  ANS012.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0e01;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0e03;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0db3;else y=@0035;
  $  154.AEB�˳�����״̬��ԭ��16~23_2           $    $            $    $  ANS012.BYTE006  $  if(x==0x01) y=@0e04;else if(x==0x02) y=@0e05;else if(x==0x04) y=@0e06;else if(x==0x08) y=@0e07;else if(x==0x10) y=@0e08;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  155.AEB�˳�����״̬��ԭ��24~31_2           $    $            $    $  ANS012.BYTE007  $  if(x==0x01) y=@0db6;else if(x==0x02) y=@0db7;else y=@0035;
  $  156.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־_2        $    $            $    $  ANS012.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  157.AEB�˳��¼����_2                      $    $            $    $  ANS012.BYTE010  $  y=x+2000;
  $  158.AEB�˳��¼��·�_2                      $    $            $    $  ANS012.BYTE011  $  y=x;
  $  159.AEB�˳��¼���_2                        $    $            $    $  ANS012.BYTE012  $  y=x;
  $  160.AEB�˳��¼�ʱ_2                        $    $            $    $  ANS012.BYTE013  $  y=x;
  $  161.AEB�˳��¼���_2                        $    $            $    $  ANS012.BYTE014  $  y=x;
  $  162.AEB�˳��¼���_2                        $    $            $    $  ANS012.BYTE015  $  y=x;
  $  163.AEB�˳��¼����_2                      $    $  km        $    $  ANS012.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  164.AEB�˳�����״̬��ԭ��0~7_3             $    $            $    $  ANS013.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0db2;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  165.AEB�˳�����״̬��ԭ��8~15_3            $    $            $    $  ANS013.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0e01;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0e03;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0db3;else y=@0035;
  $  166.AEB�˳�����״̬��ԭ��16~23_3           $    $            $    $  ANS013.BYTE006  $  if(x==0x01) y=@0e04;else if(x==0x02) y=@0e05;else if(x==0x04) y=@0e06;else if(x==0x08) y=@0e07;else if(x==0x10) y=@0e08;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  167.AEB�˳�����״̬��ԭ��24~31_3           $    $            $    $  ANS013.BYTE007  $  if(x==0x01) y=@0db6;else if(x==0x02) y=@0db7;else y=@0035;
  $  168.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־_3        $    $            $    $  ANS013.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  169.AEB�˳��¼����_3                      $    $            $    $  ANS013.BYTE010  $  y=x+2000;
  $  170.AEB�˳��¼��·�_3                      $    $            $    $  ANS013.BYTE011  $  y=x;
  $  171.AEB�˳��¼���_3                        $    $            $    $  ANS013.BYTE012  $  y=x;
  $  172.AEB�˳��¼�ʱ_3                        $    $            $    $  ANS013.BYTE013  $  y=x;
  $  173.AEB�˳��¼���_3                        $    $            $    $  ANS013.BYTE014  $  y=x;
  $  174.AEB�˳��¼���_3                        $    $            $    $  ANS013.BYTE015  $  y=x;
  $  175.AEB�˳��¼����_3                      $    $  km        $    $  ANS013.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  176.AEB�˳�����״̬��ԭ��0~7_4             $    $            $    $  ANS014.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0db2;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  177.AEB�˳�����״̬��ԭ��8~15_4            $    $            $    $  ANS014.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0e01;else if(x==0x10) y=@0e02;else if(x==0x20) y=@0e03;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0db3;else y=@0035;
  $  178.AEB�˳�����״̬��ԭ��16~23_4           $    $            $    $  ANS014.BYTE006  $  if(x==0x01) y=@0e04;else if(x==0x02) y=@0e05;else if(x==0x04) y=@0e06;else if(x==0x08) y=@0e07;else if(x==0x10) y=@0e08;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  179.AEB�˳�����״̬��ԭ��24~31_4           $    $            $    $  ANS014.BYTE007  $  if(x==0x01) y=@0db6;else if(x==0x02) y=@0db7;else y=@0035;
  $  180.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־_4        $    $            $    $  ANS014.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  181.AEB�˳��¼����_4                      $    $            $    $  ANS014.BYTE010  $  y=x+2000;
  $  182.AEB�˳��¼��·�_4                      $    $            $    $  ANS014.BYTE011  $  y=x;
  $  183.AEB�˳��¼���_4                        $    $            $    $  ANS014.BYTE012  $  y=x;
  $  184.AEB�˳��¼�ʱ_4                        $    $            $    $  ANS014.BYTE013  $  y=x;
  $  185.AEB�˳��¼���_4                        $    $            $    $  ANS014.BYTE014  $  y=x;
  $  186.AEB�˳��¼���_4                        $    $            $    $  ANS014.BYTE015  $  y=x;
  $  187.AEB�˳��¼����_4                      $    $  km        $    $  ANS014.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  188.AEB�˳�����״̬��ԭ��0~7               $    $            $    $  ANS015.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0035;
  $  189.AEB�˳�����״̬��ԭ��8~15              $    $            $    $  ANS015.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0035;
  $  190.AEB�˳�����״̬��ԭ��16~23             $    $            $    $  ANS015.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0035;
  $  191.AEB�˳�����״̬��ԭ��24~31             $    $            $    $  ANS015.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;

  $)  02.������3
  $  02.������3
  $  REQ000:74A 03 22 01 12 00 00 00 00       $  ANS000:7CA 03 22 01 12 00 00 00 00
  $  REQ001:74A 03 22 B0 3D 00 00 00 00       $  ANS001:7CA 03 22 B0 3D 00 00 00 00
  $  REQ002:74A 03 22 B0 2E 00 00 00 00       $  ANS002:7CA 03 22 B0 2E 00 00 00 00
  $  REQ003:74A 03 22 B0 3B 00 00 00 00       $  ANS003:7CA 03 22 B0 3B 00 00 00 00
  $  REQ004:74A 03 22 C0 01 00 00 00 00       $  ANS004:7CA 03 22 C0 01 00 00 00 00
  $  REQ005:74A 03 22 B0 3E 00 00 00 00       $  ANS005:7CA 03 22 B0 3E 00 00 00 00
  $  REQ006:74A 03 22 B0 4B 00 00 00 00       $  ANS006:7CA 03 22 B0 4B 00 00 00 00
  $  REQ007:74A 03 22 C0 02 00 00 00 00       $  ANS007:7CA 03 22 C0 02 00 00 00 00
  $  REQ008:74A 03 22 B0 27 00 00 00 00       $  ANS008:7CA 03 22 B0 27 00 00 00 00
  $  REQ009:74A 03 22 B0 28 00 00 00 00       $  ANS009:7CA 03 22 B0 28 00 00 00 00
  $  REQ010:74A 03 22 B0 26 00 00 00 00       $  ANS010:7CA 03 22 B0 26 00 00 00 00
  $  REQ011:74A 03 22 B0 29 00 00 00 00       $  ANS011:7CA 03 22 B0 29 00 00 00 00
  $  REQ012:74A 03 22 B0 2F 00 00 00 00       $  ANS012:7CA 03 22 B0 2F 00 00 00 00
  $  REQ013:74A 03 22 B0 75 00 00 00 00       $  ANS013:7CA 03 22 B0 75 00 00 00 00
  $  REQ014:74A 03 22 B0 77 00 00 00 00       $  ANS014:7CA 03 22 B0 77 00 00 00 00
  $  REQ015:74A 03 22 B0 94 00 00 00 00       $  ANS015:7CA 03 22 B0 94 00 00 00 00
  $  REQ016:74A 03 22 B0 74 00 00 00 00       $  ANS016:7CA 03 22 B0 74 00 00 00 00
  $  REQ017:74A 03 22 B0 76 00 00 00 00       $  ANS017:7CA 03 22 B0 76 00 00 00 00
  $  REQ018:74A 03 22 C0 04 00 00 00 00       $  ANS018:7CA 03 22 C0 04 00 00 00 00
  $  REQ019:74A 03 22 B0 7D 00 00 00 00       $  ANS019:7CA 03 22 B0 7D 00 00 00 00
  $  REQ020:74A 03 22 B0 7F 00 00 00 00       $  ANS020:7CA 03 22 B0 7F 00 00 00 00
  $  REQ021:74A 03 22 B0 96 00 00 00 00       $  ANS021:7CA 03 22 B0 96 00 00 00 00
  $  REQ022:74A 03 22 B0 7C 00 00 00 00       $  ANS022:7CA 03 22 B0 7C 00 00 00 00
  $  REQ023:74A 03 22 B0 7E 00 00 00 00       $  ANS023:7CA 03 22 B0 7E 00 00 00 00
  $  REQ024:74A 03 22 D0 01 00 00 00 00       $  ANS024:7CA 03 22 D0 01 00 00 00 00
  $  REQ025:74A 03 22 B0 31 00 00 00 00       $  ANS025:7CA 03 22 B0 31 00 00 00 00
  $  REQ026:74A 03 22 B0 02 00 00 00 00       $  ANS026:7CA 03 22 B0 02 00 00 00 00
  $  REQ027:74A 03 22 B0 01 00 00 00 00       $  ANS027:7CA 03 22 B0 01 00 00 00 00
  $  REQ028:74A 03 22 B0 71 00 00 00 00       $  ANS028:7CA 03 22 B0 71 00 00 00 00
  $  REQ029:74A 03 22 B0 73 00 00 00 00       $  ANS029:7CA 03 22 B0 73 00 00 00 00
  $  REQ030:74A 03 22 B0 93 00 00 00 00       $  ANS030:7CA 03 22 B0 93 00 00 00 00
  $  REQ031:74A 03 22 B0 70 00 00 00 00       $  ANS031:7CA 03 22 B0 70 00 00 00 00
  $  REQ032:74A 03 22 B0 72 00 00 00 00       $  ANS032:7CA 03 22 B0 72 00 00 00 00
  $  REQ033:74A 03 22 D0 03 00 00 00 00       $  ANS033:7CA 03 22 D0 03 00 00 00 00
  $  REQ034:74A 03 22 D0 02 00 00 00 00       $  ANS034:7CA 03 22 D0 02 00 00 00 00

  $  000.��ص�ѹ                                                 $    $  V       $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.�Զ��޸�������Χ                                         $    $          $    $  ANS001.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  002.Ӧ�ó�����������-�����궨                                $    $          $    $  ANS001.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  003.δ�궨                                                   $    $          $    $  ANS001.BYTE004  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  004.EOLУ׼״̬                                              $    $          $    $  ANS002.BYTE004  $  if(x==0x00) y=@0def;else if(x==0x01) y=@0b2a;else if(x==0x02) y=@0b2b;else if(x==0x03) y=@0b2c;else y=@0035;
  $  005.EOLУ׼����ԭ��                                          $    $          $    $  ANS002.BYTE005  $  if(x==0x00) y=@0df0;else if(x==0x01) y=@0096;else if(x==0x02) y=@0910;else if(x==0x03) y=@0ddd;else if(x==0x04) y=@0912;else if(x==0x05) y=@0913;else if(x==0x06) y=@0914;else if(x==0x07) y=@0915;else if(x==0x08) y=@0916;else if(x==0x09) y=@0917;else if(x==0x0A) y=@0918;else if(x==0x0B) y=@0919;else if(x==0x0C) y=@091a;else if(x==0x0D) y=@0df1;else if(x==0x0E) y=@091c;else if(x==0x0F) y=@0df2;else if(x==0x10) y=@091e;else if(x==0x11) y=@091f;else if(x==0x12) y=@0920;else if(x==0x13) y=@0df3;else if(x==0x14) y=@0922;else if(x==0x15) y=@0923;else y=@0035;
  $  006.����ͷУ׼ƫ��ֵ                                         $    $          $    $  ANS002.BYTE006  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-188;
  $  007.����ͷУ׼ˮƽֵ                                         $    $          $    $  ANS002.BYTE008  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-160;
  $  008.����ͷУ׼����ֵ                                         $    $  rad     $    $  ANS002.BYTE010  $  y=(x1*256+x2)*0.001-0.055;
  $  009.����ͷ�Զ�����ƫ��ֵ                                     $    $          $    $  ANS002.BYTE012  $  y=((x&0x7F)-(x&0x80))-40;
  $  010.����ͷ�Զ�����ˮƽֵ                                     $    $          $    $  ANS002.BYTE013  $  y=((x&0x7F)-(x&0x80))-40;
  $  011.��ѣ��                                                   $    $          $    $  ANS003.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  012.̫������                                                 $    $          $    $  ANS003.BYTE004  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  013.��·��ˮ                                                 $    $          $    $  ANS003.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@00ca;else y=@0035;
  $  014.ģ��ͼ��                                                 $    $          $    $  ANS003.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@00ca;else y=@0035;
  $  015.Ϧ��ֱ��                                                 $    $          $    $  ANS003.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  016.մ�۵�                                                   $    $          $    $  ANS003.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  017.�����ڵ�                                                 $    $          $    $  ANS003.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@00ca;else y=@0035;
  $  018.��ȫ�ڵ�                                                 $    $          $    $  ANS003.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  019.���粣������                                             $    $          $    $  ANS003.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  020.���                                                     $    $          $    $  ANS003.BYTE005  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  021.AHB(�Զ�Զ���)����                                      $    $          $    $  ANS004.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00f0;else y=@0035;
  $  022.TSR(��ͨ��־ʶ��)����                                    $    $          $    $  ANS004.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00f0;else y=@0035;
  $  023.ACC(����ӦѲ������)����                                  $    $          $    $  ANS004.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00f0;else y=@0035;
  $  024.AEBP(�����Զ������ƶ�)����                               $    $          $    $  ANS004.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00f0;else y=@0035;
  $  025.AEB(�Զ��ƶ�ϵͳ)����                                    $    $          $    $  ANS004.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00f0;else y=@0035;
  $  026.PCW(������ײ����)����                                    $    $          $    $  ANS004.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00f0;else y=@0035;
  $  027.FCW(������ײ����)����                                    $    $          $    $  ANS004.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00f0;else y=@0035;
  $  028.LDW(����ƫ��Ԥ��ϵͳ)����                                $    $          $    $  ANS004.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00f0;else y=@0035;
  $  029.LKA(�������ָ���)����                                    $    $          $    $  ANS004.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00f0;else y=@0035;
  $  030.SDM25-��ײ�ص�                                           $    $          $    $  ANS005.BYTE007  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@00ca;else y=@0035;
  $  031.SDM9-�ؼ�������ǰ��ָ�ӳ����ص�����������                $    $          $    $  ANS005.BYTE007  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@00ca;else y=@0035;
  $  032.SDM8-�ؼ����������ǲ�������֮���λ�ò���                $    $          $    $  ANS005.BYTE007  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  033.SDM7-Ŀ��λ������������                                  $    $          $    $  ANS005.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  034.SDM6-TTC����������                                       $    $          $    $  ANS005.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@00ca;else y=@0035;
  $  035.EYEQ_RFC-�����ź���Ϣ�Ĺ���֡������(RFC)����             $    $          $    $  ANS005.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  036.EYEQ_CRC-CRCУ���밲ȫ�����źŲ���                       $    $          $    $  ANS005.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  037.EYEQ_CR_REPEAT-��ս����Ӧ�ظ�����                        $    $          $    $  ANS005.BYTE007  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  038.SDM11-MCUУ�����                                        $    $          $    $  ANS005.BYTE008  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@00ca;else y=@0035;
  $  039.SDM29-MCU RFC����                                        $    $          $    $  ANS005.BYTE008  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@00ca;else y=@0035;
  $  040.SDM30-ͼ��������Ч                                       $    $          $    $  ANS005.BYTE008  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  041.SDM4-У׼����                                            $    $          $    $  ANS005.BYTE008  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  042.SDM18-�ڲ�ͼ�񱣻�ʧ��                                   $    $          $    $  ANS005.BYTE008  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@00ca;else y=@0035;
  $  043.SDM13-�ɵ���������                                       $    $          $    $  ANS005.BYTE008  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  044.SDMY-C-R��ս��Ӧ����                                     $    $          $    $  ANS005.BYTE008  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  045.SDM32-�ڲ��ź���                                       $    $          $    $  ANS005.BYTE008  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  046.SDM31-�ڲ�У�����                                       $    $          $    $  ANS005.BYTE009  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@00ca;else y=@0035;
  $  047.SDM27-AEB˫�ؼ�����                                    $    $          $    $  ANS005.BYTE009  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@00ca;else y=@0035;
  $  048.SDM26-DDRУ�����                                        $    $          $    $  ANS005.BYTE009  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  049.SDM19ͼ��ʧ                                            $    $          $    $  ANS005.BYTE009  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  050.EyeQ Ӧ�ó������ʧЧ                                    $    $          $    $  ANS005.BYTE009  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@00ca;else y=@0035;
  $  051.EyeQ Ӧ�ó���ʧЧ                                        $    $          $    $  ANS005.BYTE009  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  052.EyeQ����ʧ��                                             $    $          $    $  ANS005.BYTE009  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  053.GPIO10                                                   $    $          $    $  ANS005.BYTE009  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  054.EyeQ SPI��ʧ                                             $    $          $    $  ANS005.BYTE010  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@00ca;else y=@0035;
  $  055.MCU EEPROM����ʧ��                                       $    $          $    $  ANS005.BYTE010  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@00ca;else y=@0035;
  $  056.MCU RAM����ʧ��                                          $    $          $    $  ANS005.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  057.MCU����У��ʹ���                                        $    $          $    $  ANS005.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  058.MCU�쳣��λ                                              $    $          $    $  ANS005.BYTE010  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@00ca;else y=@0035;
  $  059.MCU PLLʧ��                                              $    $          $    $  ANS005.BYTE010  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  060.DAS��Դ2.8VǷѹ                                          $    $          $    $  ANS005.BYTE010  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  061.DAS��Դ2.8V��ѹ                                          $    $          $    $  ANS005.BYTE010  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  062.DAS��Դ1.2VǷѹ                                          $    $          $    $  ANS005.BYTE011  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@00ca;else y=@0035;
  $  063.DAS��Դ1.2V��ѹ                                          $    $          $    $  ANS005.BYTE011  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@00ca;else y=@0035;
  $  064.DAS��Դ1.8VǷѹ                                          $    $          $    $  ANS005.BYTE011  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@00ca;else y=@0035;
  $  065.DAS��Դ1.8V��ѹ                                          $    $          $    $  ANS005.BYTE011  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@00ca;else y=@0035;
  $  066.DAS��Դ3.3VǷѹ                                          $    $          $    $  ANS005.BYTE011  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@00ca;else y=@0035;
  $  067.DAS��Դ3.3V��ѹ                                          $    $          $    $  ANS005.BYTE011  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  068.DAS��Դ5VǷѹ                                            $    $          $    $  ANS005.BYTE011  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  069.DAS��Դ5V��ѹ                                            $    $          $    $  ANS005.BYTE011  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  070.MCUӦ�ó���汾��MCU�궨�ļ�������                       $    $          $    $  ANS006.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@00ca;else y=@0035;
  $  071.ͼ����Ԫ���ļ���MCU�궨�ļ�������                    $    $          $    $  ANS006.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@00ca;else y=@0035;
  $  072.MCUӦ�ó���汾��ͼ����Ԫ������                      $    $          $    $  ANS006.BYTE004  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@00ca;else y=@0035;
  $  073.��EPB(������ɲ)ʧȥͨ��                                  $    $          $    $  ANS007.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  074.��BCM(������ƹ���ϵͳ)ʧȥͨ��                          $    $          $    $  ANS007.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  075.��IPK(�Ǳ�)ģ��ʧȥͨѶ                                  $    $          $    $  ANS007.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  076.��ABS/ESP(�������ƶ�ϵͳ/�����ȶ�ϵͳ)ģ��ʧȥͨѶ       $    $          $    $  ANS007.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  077.��SAS(������ת��Ǵ�����)ģ��ʧȥͨѶ                    $    $          $    $  ANS007.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  078.������ͨѶ���߹ر�                                       $    $          $    $  ANS007.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  079.���ص�ѹ��                                             $    $          $    $  ANS007.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  080.���ص�ѹ��                                             $    $          $    $  ANS007.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  081.�յ���Ч���ݵ���AEB������                                $    $          $    $  ANS007.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  082.�յ���Ч���ݵ���FCW������                                $    $          $    $  ANS007.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  083.�յ���Ч���ݵ���LDW������                                $    $          $    $  ANS007.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  084.ECU��SRSģ��ͨѶ��ʧ                                     $    $          $    $  ANS007.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  085.��VCUʧȥͨ��                                            $    $          $    $  ANS007.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  086.��FICMʧȥͨ��                                           $    $          $    $  ANS007.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  087.��ATCʧȥͨ��                                            $    $          $    $  ANS007.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  088.��EPSʧȥͨ��                                            $    $          $    $  ANS007.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  089.ͼ����Ԫ�¶ȹ���                                     $    $          $    $  ANS007.BYTE006  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  090.DAS�ڲ�����                                              $    $          $    $  ANS007.BYTE006  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  091.�յ���Ч���ݵ���LKA������                                $    $          $    $  ANS007.BYTE006  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  092.�յ���Ч���ݵ���IHC������                                $    $          $    $  ANS007.BYTE006  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  093.�յ���Ч���ݵ���PCW������                                $    $          $    $  ANS007.BYTE006  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  094.�յ���Ч���ݵ���AEBP������                               $    $          $    $  ANS007.BYTE006  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  095.�յ���Ч���ݵ���TSR������                                $    $          $    $  ANS007.BYTE006  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  096.�յ���Ч���ݵ���FSRA������                               $    $          $    $  ANS007.BYTE006  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  097.LDW����ָʾ�ƶ�·����                                    $    $          $    $  ANS007.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  098.LDW���ذ�����ס                                          $    $          $    $  ANS007.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  099.DAS�����ƥ��                                            $    $          $    $  ANS007.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  100.DAS�궨ʧ��                                              $    $          $    $  ANS007.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  101.DAS����ͷ��ͼ����ֹ                                      $    $          $    $  ANS007.BYTE007  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  102.AHB(�Զ�Զ���)���ܿ���                                  $    $          $    $  ANS008.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  103.TSR(��ͨ��־ʶ��)���ܿ���                                $    $          $    $  ANS008.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  104.ACC(����ӦѲ������)���ܿ���                              $    $          $    $  ANS008.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  105.AEBP(�����Զ������ƶ�)���ܿ���                           $    $          $    $  ANS008.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  106.AEB(�Զ��ƶ�ϵͳ)���ܿ���                                $    $          $    $  ANS008.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  107.PCW(������ײ����)���ܿ���                                $    $          $    $  ANS008.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  108.FCW(������ײ����)���ܿ���                                $    $          $    $  ANS008.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  109.LDW(����ƫ��Ԥ��ϵͳ)���ܿ���                            $    $          $    $  ANS008.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  110.LKA(�������ָ���)���ܿ���                                $    $          $    $  ANS008.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  111.�����ĵ�������                                           $    $          $    $  ANS009.BYTE004  $  if(x==0x00) y=@0136;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0da8;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0035;
  $  112.FCW(������ײ����)��ʻԱѡ���������ȵȼ�                  $    $          $    $  ANS010.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  113.LDW(����ƫ��Ԥ��ϵͳ)��ʻԱѡ���������ȵȼ�              $    $          $    $  ANS010.BYTE004  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  114.AEB(�Զ��ƶ�ϵͳ)��ʻԱѡ��������ȵȼ�                  $    $          $    $  ANS010.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  115.ACC(����ӦѲ������)��ʻԱѡ����Ŀ�����ȼ�              $    $          $    $  ANS010.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0035;
  $  116.PCW(������ײ����)��ʻԱѡ���������ȵȼ�                  $    $          $    $  ANS010.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  117.AEBP(�����Զ������ƶ�)��ʻԱѡ��������ȵȼ�             $    $          $    $  ANS010.BYTE006  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  118.����ͷ��Ŀ���ٶ�Ҫ��                                     $    $          $    $  ANS011.BYTE004  $  y=(x1*256+x2);
  $  119.ACC��ʻԱѡ����Ŀ���ٶ�                                  $    $          $    $  ANS011.BYTE006  $  y=(x1*256+x2);
  $  120.����ͷ��������Ե���ľ���                               $    $  m       $    $  ANS012.BYTE004  $  y=(x1*256+x2)*0.01;
  $  121.����ͷ��������Ե�Ҳ�ľ���                               $    $  m       $    $  ANS012.BYTE006  $  y=(x1*256+x2)*0.01;
  $  122.������ͷ��Ŀ��ľ���                                     $    $  m       $    $  ANS012.BYTE008  $  y=(x1*256+x2)*0.001;
  $  123.����ͷ�߶�                                               $    $  m       $    $  ANS012.BYTE010  $  y=(x1*256+x2)*0.01;
  $  124.Ŀ�����ľ�������߶�                                   $    $  m       $    $  ANS012.BYTE012  $  y=(x1*256+x2)*0.01;
  $  125.Ŀ�����ľ�����Ҳ�߶�                                   $    $  m       $    $  ANS012.BYTE014  $  y=(x1*256+x2)*0.01;
  $  126.Ŀ�����ľ������������ľ���                             $    $  m       $    $  ANS012.BYTE016  $  y=(x1*256+x2)*0.01;
  $  127.Ŀ�����ľ����������Ҳ�ľ���                             $    $  m       $    $  ANS012.BYTE018  $  y=(x1*256+x2)*0.01;
  $  128.�������γߴ磬��������Ŀ��                               $    $  rad     $    $  ANS012.BYTE020  $  y=(x1*256+x2)*0.001;
  $  129.FCWδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS013.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  130.FCWδ׼���ü����ԭ��8~15                                $    $          $    $  ANS013.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  131.FCWδ׼���ü�������                                    $    $          $    $  ANS013.BYTE006  $  y=x+2000;
  $  132.FCWδ׼���ü�����·�                                    $    $          $    $  ANS013.BYTE007  $  y=x;
  $  133.FCWδ׼���ü������                                      $    $          $    $  ANS013.BYTE008  $  y=x;
  $  134.FCWδ׼���ü����ʱ                                      $    $          $    $  ANS013.BYTE009  $  y=x;
  $  135.FCWδ׼���ü���ķ�                                      $    $          $    $  ANS013.BYTE010  $  y=x;
  $  136.FCWδ׼���ü������                                      $    $          $    $  ANS013.BYTE011  $  y=x;
  $  137.FCWδ׼���ü�������                                    $    $  km      $    $  ANS013.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  138.FCWδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  139.FCWδ׼���ü����ԭ��8~15                                $    $          $    $  ANS014.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  140.FCW�˳�����״̬��ԭ��0~7(B094)                           $    $          $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  141.FCW�˳�����״̬��ԭ��8~15(B094)                          $    $          $    $  ANS015.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  142.FCW�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS016.BYTE004  $  if(x==0x01) y=@0dc2;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  143.FCW�˳�����״̬��ԭ��8~15                                $    $          $    $  ANS016.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  144.FCW�˳��¼����                                          $    $          $    $  ANS016.BYTE006  $  y=x+2000;
  $  145.FCW�˳��¼��·�                                          $    $          $    $  ANS016.BYTE007  $  y=x;
  $  146.FCW�˳����                                            $    $          $    $  ANS016.BYTE008  $  y=x;
  $  147.FCW�˳��ʱ                                            $    $          $    $  ANS016.BYTE009  $  y=x;
  $  148.FCW�˳��¼���                                            $    $          $    $  ANS016.BYTE010  $  y=x;
  $  149.FCW�˳��¼���                                            $    $          $    $  ANS016.BYTE011  $  y=x;
  $  150.FCW�˳��¼����                                          $    $  km      $    $  ANS016.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  151.FCW�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS017.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  152.FCW�˳�����״̬��ԭ��8~15                                $    $          $    $  ANS017.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  153.AHB(�Զ�Զ���)���ܿ���                                  $    $          $    $  ANS018.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  154.TSR(��ͨ��־ʶ��)���ܿ���                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  155.ACC(����ӦѲ������)���ܿ���                              $    $          $    $  ANS018.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  156.AEBP(�����Զ������ƶ�)���ܿ���                           $    $          $    $  ANS018.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  157.AEB(�Զ��ƶ�ϵͳ)���ܿ���                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  158.PCW(������ײ����)���ܿ���                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  159.FCW(������ײ����)���ܿ���                                $    $          $    $  ANS018.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  160.LDW(����ƫ��Ԥ��ϵͳ)���ܿ���                            $    $          $    $  ANS018.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  161.LKA(�������ָ���)���ܿ���                                $    $          $    $  ANS018.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  162.IHCδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS019.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  163.IHCδ׼���ü�������                                    $    $          $    $  ANS019.BYTE006  $  y=x+2000;
  $  164.IHCδ׼���ü�����·�                                    $    $          $    $  ANS019.BYTE007  $  y=x;
  $  165.IHCδ׼���ü������                                      $    $          $    $  ANS019.BYTE008  $  y=x;
  $  166.IHCδ׼���ü����ʱ                                      $    $          $    $  ANS019.BYTE009  $  y=x;
  $  167.IHCδ׼���ü���ķ�                                      $    $          $    $  ANS019.BYTE010  $  y=x;
  $  168.IHCδ׼���ü������                                      $    $          $    $  ANS019.BYTE011  $  y=x;
  $  169.IHCδ׼���ü�������                                    $    $  km      $    $  ANS019.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  170.IHCδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS020.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  171.IHC�˳�����״̬��ԭ��0~7(B096)                           $    $          $    $  ANS021.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  172.IHC�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS022.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  173.IHC�˳��¼���                                            $    $          $    $  ANS022.BYTE006  $  y=x+2000;
  $  174.IHC�˳��¼��·�                                          $    $          $    $  ANS022.BYTE007  $  y=x;
  $  175.IHC�˳��¼���                                            $    $          $    $  ANS022.BYTE008  $  y=x;
  $  176.IHC�˳��¼�ʱ                                            $    $          $    $  ANS022.BYTE009  $  y=x;
  $  177.IHC�˳��¼���                                            $    $          $    $  ANS022.BYTE010  $  y=x;
  $  178.IHC�˳��¼���                                            $    $          $    $  ANS022.BYTE011  $  y=x;
  $  179.IHC�˳��¼����                                          $    $  km      $    $  ANS022.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  180.IHC�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS023.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  181.ȫ��KL.50״̬                                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  182.ȫ�ַ���������״̬                                       $    $          $    $  ANS024.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  183.ȫ��KL15״̬                                             $    $          $    $  ANS024.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  184.ȫ��KL.R״̬                                             $    $          $    $  ANS024.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  185.ϵͳKL.50״̬                                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  186.ϵͳ����������״̬                                       $    $          $    $  ANS024.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  187.ϵͳKL.15״̬                                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  188.ϵͳKL.R״̬                                             $    $          $    $  ANS024.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  189.ͼ��������ǰ�¶�                                       $    $          $    $  ANS025.BYTE004  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-40;
  $  190.ͼ����Ԫ����ģʽ                                     $    $          $    $  ANS026.BYTE004  $  if(x==0x00) y=@0908;else if(x==0x01) y=@0dc3;else if(x==0x02) y=@0e2c;else if(x==0x03) y=@090b;else if(x==0x04) y=@0e2d;else if(x==0x05) y=@090d;else y=@0035;
  $  191.ͼ����Ԫ����״̬                                     $    $          $    $  ANS027.BYTE004  $  if(x==0x00) y=@000f;else if(x==0x02) y=@0dc4;else if(x==0x03) y=@009e;else if(x==0x22) y=@0dc5;else if(x==0x82) y=@0dc6;else if(x==0x85) y=@0dc7;else if(x==0x92) y=@0e37;else if(x==0xAA) y=@0dc9;else if(x==0xAC) y=@0dca;else y=@0035;
  $  192.LDWδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS028.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  193.LDWδ׼���ü����ԭ��8~15                                $    $          $    $  ANS028.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  194.LDWδ׼���ü�������                                    $    $          $    $  ANS028.BYTE006  $  y=x+2000;
  $  195.LDWδ׼���ü�����·�                                    $    $          $    $  ANS028.BYTE007  $  y=x;
  $  196.LDWδ׼���ü������                                      $    $          $    $  ANS028.BYTE008  $  y=x;
  $  197.LDWδ׼���ü����ʱ                                      $    $          $    $  ANS028.BYTE009  $  y=x;
  $  198.LDWδ׼���ü���ķ�                                      $    $          $    $  ANS028.BYTE010  $  y=x;
  $  199.LDWδ׼���ü������                                      $    $          $    $  ANS028.BYTE011  $  y=x;
  $  200.LDWδ׼���ü�������                                    $    $  km      $    $  ANS028.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  201.LDWδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS029.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  202.LDWδ׼���ü����ԭ��8~15                                $    $          $    $  ANS029.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  203.LDWδ׼���ü����ԭ��0~7(B093)                           $    $          $    $  ANS030.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  204.LDWδ׼���ü����ԭ��0~78~15(B093)                       $    $          $    $  ANS030.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  205.LDW�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS031.BYTE004  $  if(x==0x01) y=@0e39;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0db1;else if(x==0x10) y=@0db2;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0db3;else if(x==0x80) y=@0e03;else y=@0035;
  $  206.LDW�˳�����״̬��ԭ��8~15                                $    $          $    $  ANS031.BYTE005  $  if(x==0x01) y=@0db5;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0db6;else if(x==0x10) y=@0db7;else y=@0035;
  $  207.LDW�˳��¼����                                          $    $          $    $  ANS031.BYTE006  $  y=x+2000;
  $  208.LDW�˳��¼��·�                                          $    $          $    $  ANS031.BYTE007  $  y=x;
  $  209.LDW�˳��¼���                                            $    $          $    $  ANS031.BYTE008  $  y=x;
  $  210.LDW�˳��¼�ʱ                                            $    $          $    $  ANS031.BYTE009  $  y=x;
  $  211.LDW�˳��¼���                                            $    $          $    $  ANS031.BYTE010  $  y=x;
  $  212.LDW�˳��¼���                                            $    $          $    $  ANS031.BYTE011  $  y=x;
  $  213.LDW�˳��¼����                                          $    $  km      $    $  ANS031.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  214.LDW�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS032.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0035;
  $  215.LDW�˳�����״̬��ԭ��8~15                                $    $          $    $  ANS032.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  216.LDW(����ƫ��Ԥ��ϵͳ)����                                $    $          $    $  ANS033.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  217.LDW(����ƫ��Ԥ��ϵͳ)ָʾ��                              $    $          $    $  ANS034.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;

  $)  03.������4
  $  03.������4
  $  REQ000:74A 03 22 B0 A5 00 00 00 00       $  ANS000:7CA 03 22 B0 A5 00 00 00 00
  $  REQ001:74A 03 22 B0 A6 00 00 00 00       $  ANS001:7CA 03 22 B0 A6 00 00 00 00
  $  REQ002:74A 03 22 B0 A7 00 00 00 00       $  ANS002:7CA 03 22 B0 A7 00 00 00 00
  $  REQ003:74A 03 22 B0 A8 00 00 00 00       $  ANS003:7CA 03 22 B0 A8 00 00 00 00
  $  REQ004:74A 03 22 B0 A9 00 00 00 00       $  ANS004:7CA 03 22 B0 A9 00 00 00 00
  $  REQ005:74A 03 22 B0 AB 00 00 00 00       $  ANS005:7CA 03 22 B0 AB 00 00 00 00
  $  REQ006:74A 03 22 B0 97 00 00 00 00       $  ANS006:7CA 03 22 B0 97 00 00 00 00
  $  REQ007:74A 03 22 B0 A0 00 00 00 00       $  ANS007:7CA 03 22 B0 A0 00 00 00 00
  $  REQ008:74A 03 22 B0 A1 00 00 00 00       $  ANS008:7CA 03 22 B0 A1 00 00 00 00
  $  REQ009:74A 03 22 B0 A2 00 00 00 00       $  ANS009:7CA 03 22 B0 A2 00 00 00 00
  $  REQ010:74A 03 22 B0 A3 00 00 00 00       $  ANS010:7CA 03 22 B0 A3 00 00 00 00
  $  REQ011:74A 03 22 B0 A4 00 00 00 00       $  ANS011:7CA 03 22 B0 A4 00 00 00 00
  $  REQ012:74A 03 22 B0 AA 00 00 00 00       $  ANS012:7CA 03 22 B0 AA 00 00 00 00
  $  REQ013:74A 03 22 B0 30 00 00 00 00       $  ANS013:7CA 03 22 B0 30 00 00 00 00
  $  REQ014:74A 03 22 E1 01 00 00 00 00       $  ANS014:7CA 03 22 E1 01 00 00 00 00
  $  REQ015:74A 03 22 C0 05 00 00 00 00       $  ANS015:7CA 03 22 C0 05 00 00 00 00

  $  000.LKAδ׼���ü����ԭ��0~7_0            $    $         $    $  ANS000.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0e30;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0e3a;else y=@0035;
  $  001.LKAδ׼���ü����ԭ��8~15_0           $    $         $    $  ANS000.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0035;
  $  002.LKAδ׼���ü����ԭ��16~23_0          $    $         $    $  ANS000.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0e3b;else if(x==0x10) y=@0e3c;else if(x==0x20) y=@0e3d;else if(x==0x40) y=@0e3e;else if(x==0x80) y=@0e3f;else y=@0035;
  $  003.LKAδ׼���ü����ԭ��24~31_0          $    $         $    $  ANS000.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0e41;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  004.LKAδ׼���ü����ԭ��32~39_0          $    $         $    $  ANS000.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  005.LKAδ׼���ü����ԭ��40~47_0          $    $         $    $  ANS000.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  006.LKAδ׼���ü����ԭ��48_55_0          $    $         $    $  ANS000.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  007.LKAδ׼���ü����ԭ��56_63_0          $    $         $    $  ANS000.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  008.LKAδ׼���ü���Ĺ��ϰ�ȫ��־_0       $    $         $    $  ANS000.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  009.LKAδ׼���ü�������_0               $    $         $    $  ANS000.BYTE014  $  y=x+2000;
  $  010.LKAδ׼���ü�����·�_0               $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.LKAδ׼���ü������_0                 $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.LKAδ׼���ü����ʱ_0                 $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.LKAδ׼���ü���ķ�_0                 $    $         $    $  ANS000.BYTE018  $  y=x;
  $  014.LKAδ׼���ü������_0                 $    $         $    $  ANS000.BYTE019  $  y=x;
  $  015.LKAδ׼���ü�������_0               $    $  km     $    $  ANS000.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  016.LKAδ׼���ü����ԭ��0~7_1            $    $         $    $  ANS001.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0e30;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0e3a;else y=@0035;
  $  017.LKAδ׼���ü����ԭ��8~15_1           $    $         $    $  ANS001.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0035;
  $  018.LKAδ׼���ü����ԭ��16~23_1          $    $         $    $  ANS001.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0e3b;else if(x==0x10) y=@0e3c;else if(x==0x20) y=@0e3d;else if(x==0x40) y=@0e3e;else if(x==0x80) y=@0e3f;else y=@0035;
  $  019.LKAδ׼���ü����ԭ��24~31_1          $    $         $    $  ANS001.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0e41;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  020.LKAδ׼���ü����ԭ��32~39_1          $    $         $    $  ANS001.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  021.LKAδ׼���ü����ԭ��40~47_1          $    $         $    $  ANS001.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  022.LKAδ׼���ü����ԭ��48_55_1          $    $         $    $  ANS001.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  023.LKAδ׼���ü����ԭ��56_63_1          $    $         $    $  ANS001.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  024.LKAδ׼���ü���Ĺ��ϰ�ȫ��־_1       $    $         $    $  ANS001.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  025.LKAδ׼���ü�������_1               $    $         $    $  ANS001.BYTE014  $  y=x+2000;
  $  026.LKAδ׼���ü�����·�_1               $    $         $    $  ANS001.BYTE015  $  y=x;
  $  027.LKAδ׼���ü������_1                 $    $         $    $  ANS001.BYTE016  $  y=x;
  $  028.LKAδ׼���ü����ʱ_1                 $    $         $    $  ANS001.BYTE017  $  y=x;
  $  029.LKAδ׼���ü���ķ�_1                 $    $         $    $  ANS001.BYTE018  $  y=x;
  $  030.LKAδ׼���ü������_1                 $    $         $    $  ANS001.BYTE019  $  y=x;
  $  031.LKAδ׼���ü�������_1               $    $  km     $    $  ANS001.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  032.LKAδ׼���ü����ԭ��0~7_2            $    $         $    $  ANS002.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0e30;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0e3a;else y=@0035;
  $  033.LKAδ׼���ü����ԭ��8~15_2           $    $         $    $  ANS002.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0035;
  $  034.LKAδ׼���ü����ԭ��16~23_2          $    $         $    $  ANS002.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0e3b;else if(x==0x10) y=@0e3c;else if(x==0x20) y=@0e3d;else if(x==0x40) y=@0e3e;else if(x==0x80) y=@0e3f;else y=@0035;
  $  035.LKAδ׼���ü����ԭ��24~31_2          $    $         $    $  ANS002.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0e41;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  036.LKAδ׼���ü����ԭ��32~39_2          $    $         $    $  ANS002.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  037.LKAδ׼���ü����ԭ��40~47_2          $    $         $    $  ANS002.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  038.LKAδ׼���ü����ԭ��48_55_2          $    $         $    $  ANS002.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  039.LKAδ׼���ü����ԭ��56_63_2          $    $         $    $  ANS002.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  040.LKAδ׼���ü���Ĺ��ϰ�ȫ��־_2       $    $         $    $  ANS002.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  041.LKAδ׼���ü�������_2               $    $         $    $  ANS002.BYTE014  $  y=x+2000;
  $  042.LKAδ׼���ü�����·�_2               $    $         $    $  ANS002.BYTE015  $  y=x;
  $  043.LKAδ׼���ü������_2                 $    $         $    $  ANS002.BYTE016  $  y=x;
  $  044.LKAδ׼���ü����ʱ_2                 $    $         $    $  ANS002.BYTE017  $  y=x;
  $  045.LKAδ׼���ü���ķ�_2                 $    $         $    $  ANS002.BYTE018  $  y=x;
  $  046.LKAδ׼���ü������_2                 $    $         $    $  ANS002.BYTE019  $  y=x;
  $  047.LKAδ׼���ü�������_2               $    $  km     $    $  ANS002.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  048.LKAδ׼���ü����ԭ��0~7_3            $    $         $    $  ANS003.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0e30;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0e3a;else y=@0035;
  $  049.LKAδ׼���ü����ԭ��8~15_3           $    $         $    $  ANS003.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0035;
  $  050.LKAδ׼���ü����ԭ��16~23_3          $    $         $    $  ANS003.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0e3b;else if(x==0x10) y=@0e3c;else if(x==0x20) y=@0e3d;else if(x==0x40) y=@0e3e;else if(x==0x80) y=@0e3f;else y=@0035;
  $  051.LKAδ׼���ü����ԭ��24~31_3          $    $         $    $  ANS003.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0e41;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  052.LKAδ׼���ü����ԭ��32~39_3          $    $         $    $  ANS003.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  053.LKAδ׼���ü����ԭ��40~47_3          $    $         $    $  ANS003.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  054.LKAδ׼���ü����ԭ��48_55_3          $    $         $    $  ANS003.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  055.LKAδ׼���ü����ԭ��56_63_3          $    $         $    $  ANS003.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  056.LKAδ׼���ü���Ĺ��ϰ�ȫ��־_3       $    $         $    $  ANS003.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  057.LKAδ׼���ü�������_3               $    $         $    $  ANS003.BYTE014  $  y=x+2000;
  $  058.LKAδ׼���ü�����·�_3               $    $         $    $  ANS003.BYTE015  $  y=x;
  $  059.LKAδ׼���ü������_3                 $    $         $    $  ANS003.BYTE016  $  y=x;
  $  060.LKAδ׼���ü����ʱ_3                 $    $         $    $  ANS003.BYTE017  $  y=x;
  $  061.LKAδ׼���ü���ķ�_3                 $    $         $    $  ANS003.BYTE018  $  y=x;
  $  062.LKAδ׼���ü������_3                 $    $         $    $  ANS003.BYTE019  $  y=x;
  $  063.LKAδ׼���ü�������_3               $    $  km     $    $  ANS003.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  064.LKAδ׼���ü����ԭ��0~7_4            $    $         $    $  ANS004.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0e30;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0e3a;else y=@0035;
  $  065.LKAδ׼���ü����ԭ��8~15_4           $    $         $    $  ANS004.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0035;
  $  066.LKAδ׼���ü����ԭ��16~23_4          $    $         $    $  ANS004.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0e3b;else if(x==0x10) y=@0e3c;else if(x==0x20) y=@0e3d;else if(x==0x40) y=@0e3e;else if(x==0x80) y=@0e3f;else y=@0035;
  $  067.LKAδ׼���ü����ԭ��24~31_4          $    $         $    $  ANS004.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0e41;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  068.LKAδ׼���ü����ԭ��32~39_4          $    $         $    $  ANS004.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  069.LKAδ׼���ü����ԭ��40~47_4          $    $         $    $  ANS004.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  070.LKAδ׼���ü����ԭ��48_55_4          $    $         $    $  ANS004.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  071.LKAδ׼���ü����ԭ��56_63_4          $    $         $    $  ANS004.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  072.LKAδ׼���ü���Ĺ��ϰ�ȫ��־_4       $    $         $    $  ANS004.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  073.LKAδ׼���ü�������_4               $    $         $    $  ANS004.BYTE014  $  y=x+2000;
  $  074.LKAδ׼���ü�����·�_4               $    $         $    $  ANS004.BYTE015  $  y=x;
  $  075.LKAδ׼���ü������_4                 $    $         $    $  ANS004.BYTE016  $  y=x;
  $  076.LKAδ׼���ü����ʱ_4                 $    $         $    $  ANS004.BYTE017  $  y=x;
  $  077.LKAδ׼���ü���ķ�_4                 $    $         $    $  ANS004.BYTE018  $  y=x;
  $  078.LKAδ׼���ü������_4                 $    $         $    $  ANS004.BYTE019  $  y=x;
  $  079.LKAδ׼���ü�������_4               $    $  km     $    $  ANS004.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  080.LKAδ׼���ü����ԭ��0~7              $    $         $    $  ANS005.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0e2f;else y=@0035;
  $  081.LKAδ׼���ü����ԭ��8~15             $    $         $    $  ANS005.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0035;
  $  082.LKAδ׼���ü����ԭ��16~23            $    $         $    $  ANS005.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0e3b;else if(x==0x10) y=@0e3c;else if(x==0x20) y=@0e3d;else if(x==0x40) y=@0e3e;else if(x==0x80) y=@0e3f;else y=@0035;
  $  083.LKAδ׼���ü����ԭ��24~31            $    $         $    $  ANS005.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0e41;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  084.LKAδ׼���ü����ԭ��32~39            $    $         $    $  ANS005.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  085.LKAδ׼���ü����ԭ��40~47            $    $         $    $  ANS005.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  086.LKAδ׼���ü����ԭ��48_55            $    $         $    $  ANS005.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  087.LKAδ׼���ü����ԭ��56_63            $    $         $    $  ANS005.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  088.LKA�˳�����״̬��ԭ��0~7              $    $         $    $  ANS006.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  089.LKA�˳�����״̬��ԭ��8~15             $    $         $    $  ANS006.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  090.LKA�˳�����״̬��ԭ��16~23            $    $         $    $  ANS006.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  091.LKA�˳�����״̬��ԭ��24~31            $    $         $    $  ANS006.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  092.LKA�˳�����״̬��ԭ��32~39            $    $         $    $  ANS006.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  093.LKA�˳�����״̬��ԭ��40~47            $    $         $    $  ANS006.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  094.LKA�˳�����״̬��ԭ��48_55            $    $         $    $  ANS006.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  095.LKA�˳�����״̬��ԭ��56_63            $    $         $    $  ANS006.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  096.LKA�˳�����״̬��ԭ��0~7_0            $    $         $    $  ANS007.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  097.LKA�˳�����״̬��ԭ��8~15_0           $    $         $    $  ANS007.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  098.LKA�˳�����״̬��ԭ��16~23_0          $    $         $    $  ANS007.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  099.LKA�˳�����״̬��ԭ��24~31_0          $    $         $    $  ANS007.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  100.LKA�˳�����״̬��ԭ��32~39_0          $    $         $    $  ANS007.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  101.LKA�˳�����״̬��ԭ��40~47_0          $    $         $    $  ANS007.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  102.LKA�˳�����״̬��ԭ��48_55_0          $    $         $    $  ANS007.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  103.LKA�˳�����״̬��ԭ��56_63_0          $    $         $    $  ANS007.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  104.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־_0       $    $         $    $  ANS007.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  105.LKA�˳��¼����_0                     $    $         $    $  ANS007.BYTE014  $  y=x+2000;
  $  106.LKA�˳��¼��·�_0                     $    $         $    $  ANS007.BYTE015  $  y=x;
  $  107.LKA�˳����_0                       $    $         $    $  ANS007.BYTE016  $  y=x;
  $  108.LKA�˳��ʱ_0                       $    $         $    $  ANS007.BYTE017  $  y=x;
  $  109.LKA�˳��¼���_0                       $    $         $    $  ANS007.BYTE018  $  y=x;
  $  110.LKA�˳��¼���_0                       $    $         $    $  ANS007.BYTE019  $  y=x;
  $  111.LKA�˳��¼����_0                     $    $  km     $    $  ANS007.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  112.LKA�˳�����״̬��ԭ��0~7_1            $    $         $    $  ANS008.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  113.LKA�˳�����״̬��ԭ��8~15_1           $    $         $    $  ANS008.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  114.LKA�˳�����״̬��ԭ��16~23_1          $    $         $    $  ANS008.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  115.LKA�˳�����״̬��ԭ��24~31_1          $    $         $    $  ANS008.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  116.LKA�˳�����״̬��ԭ��32~39_1          $    $         $    $  ANS008.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  117.LKA�˳�����״̬��ԭ��40~47_1          $    $         $    $  ANS008.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  118.LKA�˳�����״̬��ԭ��48_55_1          $    $         $    $  ANS008.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  119.LKA�˳�����״̬��ԭ��56_63_1          $    $         $    $  ANS008.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  120.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־_1       $    $         $    $  ANS008.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  121.LKA�˳��¼����_1                     $    $         $    $  ANS008.BYTE014  $  y=x+2000;
  $  122.LKA�˳��¼��·�_1                     $    $         $    $  ANS008.BYTE015  $  y=x;
  $  123.LKA�˳����_1                       $    $         $    $  ANS008.BYTE016  $  y=x;
  $  124.LKA�˳��ʱ_1                       $    $         $    $  ANS008.BYTE017  $  y=x;
  $  125.LKA�˳��¼���_1                       $    $         $    $  ANS008.BYTE018  $  y=x;
  $  126.LKA�˳��¼���_1                       $    $         $    $  ANS008.BYTE019  $  y=x;
  $  127.LKA�˳��¼����_1                     $    $  km     $    $  ANS008.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  128.LKA�˳�����״̬��ԭ��0~7_2            $    $         $    $  ANS009.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  129.LKA�˳�����״̬��ԭ��8~15_2           $    $         $    $  ANS009.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  130.LKA�˳�����״̬��ԭ��16~23_2          $    $         $    $  ANS009.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  131.LKA�˳�����״̬��ԭ��24~31_2          $    $         $    $  ANS009.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  132.LKA�˳�����״̬��ԭ��32~39_2          $    $         $    $  ANS009.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  133.LKA�˳�����״̬��ԭ��40~47_2          $    $         $    $  ANS009.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  134.LKA�˳�����״̬��ԭ��48_55_2          $    $         $    $  ANS009.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  135.LKA�˳�����״̬��ԭ��56_63_2          $    $         $    $  ANS009.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  136.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־_2       $    $         $    $  ANS009.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  137.LKA�˳��¼����_2                     $    $         $    $  ANS009.BYTE014  $  y=x+2000;
  $  138.LKA�˳��¼��·�_2                     $    $         $    $  ANS009.BYTE015  $  y=x;
  $  139.LKA�˳����_2                       $    $         $    $  ANS009.BYTE016  $  y=x;
  $  140.LKA�˳��ʱ_2                       $    $         $    $  ANS009.BYTE017  $  y=x;
  $  141.LKA�˳��¼���_2                       $    $         $    $  ANS009.BYTE018  $  y=x;
  $  142.LKA�˳��¼���_2                       $    $         $    $  ANS009.BYTE019  $  y=x;
  $  143.LKA�˳��¼����_2                     $    $  km     $    $  ANS009.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  144.LKA�˳�����״̬��ԭ��0~7_3            $    $         $    $  ANS010.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  145.LKA�˳�����״̬��ԭ��8~15_3           $    $         $    $  ANS010.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  146.LKA�˳�����״̬��ԭ��16~23_3          $    $         $    $  ANS010.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  147.LKA�˳�����״̬��ԭ��24~31_3          $    $         $    $  ANS010.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  148.LKA�˳�����״̬��ԭ��32~39_3          $    $         $    $  ANS010.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  149.LKA�˳�����״̬��ԭ��40~47_3          $    $         $    $  ANS010.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  150.LKA�˳�����״̬��ԭ��48_55_3          $    $         $    $  ANS010.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  151.LKA�˳�����״̬��ԭ��56_63_3          $    $         $    $  ANS010.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  152.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־_3       $    $         $    $  ANS010.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  153.LKA�˳��¼����_3                     $    $         $    $  ANS010.BYTE014  $  y=x+2000;
  $  154.LKA�˳��¼��·�_3                     $    $         $    $  ANS010.BYTE015  $  y=x;
  $  155.LKA�˳����_3                       $    $         $    $  ANS010.BYTE016  $  y=x;
  $  156.LKA�˳��ʱ_3                       $    $         $    $  ANS010.BYTE017  $  y=x;
  $  157.LKA�˳��¼���_3                       $    $         $    $  ANS010.BYTE018  $  y=x;
  $  158.LKA�˳��¼���_3                       $    $         $    $  ANS010.BYTE019  $  y=x;
  $  159.LKA�˳��¼����_3                     $    $  km     $    $  ANS010.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  160.LKA�˳�����״̬��ԭ��0~7_4            $    $         $    $  ANS011.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  161.LKA�˳�����״̬��ԭ��8~15_4           $    $         $    $  ANS011.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  162.LKA�˳�����״̬��ԭ��16~23_4          $    $         $    $  ANS011.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  163.LKA�˳�����״̬��ԭ��24~31_4          $    $         $    $  ANS011.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  164.LKA�˳�����״̬��ԭ��32~39_4          $    $         $    $  ANS011.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  165.LKA�˳�����״̬��ԭ��40~47_4          $    $         $    $  ANS011.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  166.LKA�˳�����״̬��ԭ��48_55_4          $    $         $    $  ANS011.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  167.LKA�˳�����״̬��ԭ��56_63_4          $    $         $    $  ANS011.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  168.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־_4       $    $         $    $  ANS011.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0035;
  $  169.LKA�˳��¼����_4                     $    $         $    $  ANS011.BYTE014  $  y=x+2000;
  $  170.LKA�˳��¼��·�_4                     $    $         $    $  ANS011.BYTE015  $  y=x;
  $  171.LKA�˳����_4                       $    $         $    $  ANS011.BYTE016  $  y=x;
  $  172.LKA�˳��ʱ_4                       $    $         $    $  ANS011.BYTE017  $  y=x;
  $  173.LKA�˳��¼���_4                       $    $         $    $  ANS011.BYTE018  $  y=x;
  $  174.LKA�˳��¼���_4                       $    $         $    $  ANS011.BYTE019  $  y=x;
  $  175.LKA�˳��¼����_4                     $    $  km     $    $  ANS011.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  176.LKA�˳�����״̬��ԭ��0~7              $    $         $    $  ANS012.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0035;
  $  177.LKA�˳�����״̬��ԭ��8~15             $    $         $    $  ANS012.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0035;
  $  178.LKA�˳�����״̬��ԭ��16~23            $    $         $    $  ANS012.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0035;
  $  179.LKA�˳�����״̬��ԭ��24~31            $    $         $    $  ANS012.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  180.LKA�˳�����״̬��ԭ��32~39            $    $         $    $  ANS012.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  181.LKA�˳�����״̬��ԭ��40~47            $    $         $    $  ANS012.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  182.LKA�˳�����״̬��ԭ��48_55            $    $         $    $  ANS012.BYTE010  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  183.LKA�˳�����״̬��ԭ��56_63            $    $         $    $  ANS012.BYTE011  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0035;
  $  184.AHB(�Զ�Զ���)����                   $    $         $    $  ANS013.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00f0;else y=@0035;
  $  185.TSR(��ͨ��־ʶ��)����                 $    $         $    $  ANS013.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00f0;else y=@0035;
  $  186.ACC(����ӦѲ������)����               $    $         $    $  ANS013.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00f0;else y=@0035;
  $  187.AEBP(�����Զ������ƶ�)����            $    $         $    $  ANS013.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00f0;else y=@0035;
  $  188.AEB(�Զ��ƶ�ϵͳ)����                 $    $         $    $  ANS013.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00f0;else y=@0035;
  $  189.PCW(������ײ����)����                 $    $         $    $  ANS013.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00f0;else y=@0035;
  $  190.FCW(������ײ����)����                 $    $         $    $  ANS013.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00f0;else y=@0035;
  $  191.LDW(����ƫ��Ԥ��ϵͳ)����             $    $         $    $  ANS013.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00f0;else y=@0035;
  $  192.LKA(�������ָ���)����                 $    $         $    $  ANS013.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00f0;else y=@0035;
  $  193.���������ź�У���                    $    $         $    $  ANS013.BYTE006  $  HEX(X1);
  $  194.��̱����                            $    $  km     $    $  ANS014.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  195.�����ĵ�������                        $    $         $    $  ANS015.BYTE004  $  if(x==0x00) y=@0136;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0da8;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0035;

  $)  04.������5
  $  04.������5
  $  REQ000:74A 03 22 B0 90 00 00 00 00       $  ANS000:7CA 03 22 B0 90 00 00 00 00
  $  REQ001:74A 03 22 C0 03 00 00 00 00       $  ANS001:7CA 03 22 C0 03 00 00 00 00
  $  REQ002:74A 03 22 C0 06 00 00 00 00       $  ANS002:7CA 03 22 C0 06 00 00 00 00
  $  REQ003:74A 03 22 B0 47 00 00 00 00       $  ANS003:7CA 03 22 B0 47 00 00 00 00
  $  REQ004:74A 03 22 B0 79 00 00 00 00       $  ANS004:7CA 03 22 B0 79 00 00 00 00
  $  REQ005:74A 03 22 B0 7B 00 00 00 00       $  ANS005:7CA 03 22 B0 7B 00 00 00 00
  $  REQ006:74A 03 22 B0 95 00 00 00 00       $  ANS006:7CA 03 22 B0 95 00 00 00 00
  $  REQ007:74A 03 22 B0 78 00 00 00 00       $  ANS007:7CA 03 22 B0 78 00 00 00 00
  $  REQ008:74A 03 22 B0 7A 00 00 00 00       $  ANS008:7CA 03 22 B0 7A 00 00 00 00
  $  REQ009:74A 03 22 B0 00 00 00 00 00       $  ANS009:7CA 03 22 B0 00 00 00 00 00

  $  000.�����Ĵ���У�����                                 $    $          $    $  ANS000.BYTE004  $  if((x&0x40)==0x00) y=@0096;else if((x&0x40)==0x40) y=@0119;else y=@0035;
  $  001.У�����                                           $    $          $    $  ANS000.BYTE004  $  if((x&0x20)==0x00) y=@0096;else if((x&0x20)==0x20) y=@0119;else y=@0035;
  $  002.δʹ�õĴ洢��У�����                             $    $          $    $  ANS000.BYTE004  $  if((x&0x10)==0x00) y=@0096;else if((x&0x10)==0x10) y=@0119;else y=@0035;
  $  003.ջУ�����                                         $    $          $    $  ANS000.BYTE004  $  if((x&0x08)==0x00) y=@0096;else if((x&0x08)==0x08) y=@0119;else y=@0035;
  $  004.RamУ�����                                        $    $          $    $  ANS000.BYTE004  $  if((x&0x04)==0x00) y=@0096;else if((x&0x04)==0x04) y=@0119;else y=@0035;
  $  005.PLLУ�����                                        $    $          $    $  ANS000.BYTE004  $  if((x&0x02)==0x00) y=@0096;else if((x&0x02)==0x02) y=@0119;else y=@0035;
  $  006.����У�����                                       $    $          $    $  ANS000.BYTE004  $  if((x&0x01)==0x00) y=@0096;else if((x&0x01)==0x01) y=@0119;else y=@0035;
  $  007.ESR0�ĸ�λ������                                   $    $          $    $  ANS000.BYTE005  $  y=x;
  $  008.ESR1�ĸ�λ������                                   $    $          $    $  ANS000.BYTE006  $  y=x;
  $  009.SMU�ĸ�λ������                                    $    $          $    $  ANS000.BYTE007  $  y=x;
  $  010.�����λ�ĸ�λ������                               $    $          $    $  ANS000.BYTE008  $  y=x;
  $  011.STM0�ĸ�λ������                                   $    $          $    $  ANS000.BYTE009  $  y=x;
  $  012.STM1�ĸ�λ������                                   $    $          $    $  ANS000.BYTE010  $  y=x;
  $  013.STM2�ĸ�λ������                                   $    $          $    $  ANS000.BYTE011  $  y=x;
  $  014.CB0�ĸ�λ������                                    $    $          $    $  ANS000.BYTE012  $  y=x;
  $  015.CB1�ĸ�λ������                                    $    $          $    $  ANS000.BYTE013  $  y=x;
  $  016.CB3�ĸ�λ������                                    $    $          $    $  ANS000.BYTE014  $  y=x;
  $  017.���ű����ĸ�λ������                               $    $          $    $  ANS000.BYTE015  $  y=x;
  $  018.EVR13�ĸ�λ������                                  $    $          $    $  ANS000.BYTE016  $  y=x;
  $  019.EVR33�ĸ�λ������                                  $    $          $    $  ANS000.BYTE017  $  y=x;
  $  020.���ӿ��Ź��ĸ�λ������                             $    $          $    $  ANS000.BYTE018  $  y=x;
  $  021.���ÿ��Ź��ĸ�λ������                             $    $          $    $  ANS000.BYTE019  $  y=x;
  $  022.�ɿ����������                                     $    $          $    $  ANS000.BYTE020  $  y=x+2000;
  $  023.�ɿ��������·�                                     $    $          $    $  ANS000.BYTE021  $  y=x;
  $  024.�ɿ���������                                       $    $          $    $  ANS000.BYTE022  $  y=x;
  $  025.�ɿ�������ʱ                                       $    $          $    $  ANS000.BYTE023  $  y=x;
  $  026.�ɿ������ݷ�                                       $    $          $    $  ANS000.BYTE024  $  y=x;
  $  027.�ɿ���������                                       $    $          $    $  ANS000.BYTE025  $  y=x;
  $  028.�ɿ����������                                     $    $  km      $    $  ANS000.BYTE026  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  029.FCW(������ײ����)��ʻԱѡ���������ȵȼ�            $    $          $    $  ANS001.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  030.LDW(����ƫ��Ԥ��ϵͳ)��ʻԱѡ���������ȵȼ�        $    $          $    $  ANS001.BYTE004  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  031.AEB(�Զ��ƶ�ϵͳ)��ʻԱѡ��������ȵȼ�            $    $          $    $  ANS001.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  032.ACC(����ӦѲ������)��ʻԱѡ����Ŀ�����ȼ�        $    $          $    $  ANS001.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0035;
  $  033.PCW(������ײ����)��ʻԱѡ���������ȵȼ�            $    $          $    $  ANS001.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0238;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0035;
  $  034.AEBP(�����Զ������ƶ�)��ʻԱѡ��������ȵȼ�       $    $          $    $  ANS001.BYTE006  $  if((x&0x0F)==0x00) y=@0238;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@06cb;else y=@0035;
  $  035.����ͷ��Ŀ���ٶ�Ҫ��                               $    $          $    $  ANS002.BYTE004  $  y=(x1*256+x2);
  $  036.ACC��ʻԱѡ����Ŀ���ٶ�                            $    $          $    $  ANS002.BYTE006  $  y=(x1*256+x2);
  $  037.��Ӧ��оƬ���ٺ�                                   $    $          $    $  ANS003.BYTE004  $  y=UINT64(x1,x2,x3,x4,x5,x6,x7,x8);
  $  038.TSRδ׼���ü����ԭ��0~7                           $    $          $    $  ANS004.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  039.TSRδ׼���ü�������                              $    $          $    $  ANS004.BYTE006  $  y=x+2000;
  $  040.TSRδ׼���ü�����·�                              $    $          $    $  ANS004.BYTE007  $  y=x;
  $  041.TSRδ׼���ü������                                $    $          $    $  ANS004.BYTE008  $  y=x;
  $  042.TSRδ׼���ü����ʱ                                $    $          $    $  ANS004.BYTE009  $  y=x;
  $  043.TSRδ׼���ü���ķ�                                $    $          $    $  ANS004.BYTE010  $  y=x;
  $  044.TSRδ׼���ü������                                $    $          $    $  ANS004.BYTE011  $  y=x;
  $  045.TSRδ׼���ü�������                              $    $  km      $    $  ANS004.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  046.TSRδ׼���ü����ԭ��0~7                           $    $          $    $  ANS005.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  047.TSR�˳�����״̬��ԭ��0~7(B095)                     $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  048.TSR�˳�����״̬��ԭ��0~7                           $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  049.TSR�˳��¼����                                    $    $          $    $  ANS007.BYTE006  $  y=x+2000;
  $  050.TSR�˳��¼��·�                                    $    $          $    $  ANS007.BYTE007  $  y=x;
  $  051.TSR�˳����                                      $    $          $    $  ANS007.BYTE008  $  y=x;
  $  052.TSR�˳��ʱ                                      $    $          $    $  ANS007.BYTE009  $  y=x;
  $  053.TSR�˳��¼���                                      $    $          $    $  ANS007.BYTE010  $  y=x;
  $  054.TSR�˳��¼���                                      $    $          $    $  ANS007.BYTE011  $  y=x;
  $  055.TSR�˳��¼����                                    $    $  km      $    $  ANS007.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  056.TSR�˳�����״̬��ԭ��0~7                           $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  057.����                                               $    $  kph     $    $  ANS009.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:74A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
