
    ����ID��10a3

    ģ�⣺Э��ģ��-->10a3

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

  $*$*DTC/a0000000


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
  $%  005:��ص�Ԫ�����ļ��ο���:          $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:��ص�Ԫ�����:                  $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:��ص�Ԫ����ţ��ϴΣ�:          $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  008:���Թ��߲ο��ţ��ϴΣ�:          $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:��̶������ϴΣ�:                $%    $%  ANS007.BYTE015  $%  HEX(X1,X2,X3);
  $%  010:��Ӧ�̵�ص�ԪӲ���ο���:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:��Ӧ�̵�ص�Ԫ���к�:            $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  012:��Ӧ�̵�ص�Ԫ����ο���:        $%    $%  ANS010.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  013:ϵͳ��Ӧ��ʶ���:                $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  014:VIN:                             $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
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
  $  REQ017:74A 03 22 B0 69 00 00 00 00       $  ANS017:7CA 03 22 B0 69 00 00 00 00
  $  REQ018:74A 03 22 B0 6B 00 00 00 00       $  ANS018:7CA 03 22 B0 6B 00 00 00 00
  $  REQ019:74A 03 22 B0 92 00 00 00 00       $  ANS019:7CA 03 22 B0 92 00 00 00 00
  $  REQ020:74A 03 22 B0 60 00 00 00 00       $  ANS020:7CA 03 22 B0 60 00 00 00 00
  $  REQ021:74A 03 22 B0 61 00 00 00 00       $  ANS021:7CA 03 22 B0 61 00 00 00 00
  $  REQ022:74A 03 22 B0 62 00 00 00 00       $  ANS022:7CA 03 22 B0 62 00 00 00 00
  $  REQ023:74A 03 22 B0 63 00 00 00 00       $  ANS023:7CA 03 22 B0 63 00 00 00 00
  $  REQ024:74A 03 22 B0 64 00 00 00 00       $  ANS024:7CA 03 22 B0 64 00 00 00 00
  $  REQ025:74A 03 22 B0 6A 00 00 00 00       $  ANS025:7CA 03 22 B0 6A 00 00 00 00

  $  000.ACCδ׼���ü����ԭ��0~7               $    $         $    $  ANS000.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  001.ACCδ׼���ü����ԭ��8~15              $    $         $    $  ANS000.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  002.ACC�޷�����ԭ��16~23                   $    $         $    $  ANS000.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  003.ACCδ׼���ü����ԭ��24~31             $    $         $    $  ANS000.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@012b;
  $  004.ACC�޷�����ԭ��32~39                   $    $         $    $  ANS000.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  005.ACC�޷�����ԭ��40~47                   $    $         $    $  ANS000.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  006.ACCδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS000.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  007.ACCδ׼���ü�������                  $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.ACCδ׼���ü�����·�                  $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.ACC�޷�����ʱ������                    $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.ACCδ׼���ü����ʱ                    $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.ACC�޷�����ʱ�ķ���                    $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.ACC�޷�����ʱ������                    $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.ACC�޷�����ʱ�����                    $    $  km     $    $  ANS000.BYTE020  $  y=x;
  $  014.ACCδ׼���ü����ԭ��0~7               $    $         $    $  ANS001.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  015.ACCδ׼���ü����ԭ��8~15              $    $         $    $  ANS001.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  016.ACC�޷�����ԭ��16~23                   $    $         $    $  ANS001.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  017.ACCδ׼���ü����ԭ��24~31             $    $         $    $  ANS001.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@012b;
  $  018.ACC�޷�����ԭ��32~39                   $    $         $    $  ANS001.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  019.ACC�޷�����ԭ��40~47                   $    $         $    $  ANS001.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  020.ACCδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS001.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  021.ACCδ׼���ü�������                  $    $         $    $  ANS001.BYTE012  $  y=x+2000;
  $  022.ACCδ׼���ü�����·�                  $    $         $    $  ANS001.BYTE013  $  y=x;
  $  023.ACC�޷�����ʱ������                    $    $         $    $  ANS001.BYTE014  $  y=x;
  $  024.ACCδ׼���ü����ʱ                    $    $         $    $  ANS001.BYTE015  $  y=x;
  $  025.ACC�޷�����ʱ�ķ���                    $    $         $    $  ANS001.BYTE016  $  y=x;
  $  026.ACC�޷�����ʱ������                    $    $         $    $  ANS001.BYTE017  $  y=x;
  $  027.ACC�޷�����ʱ�����                    $    $  km     $    $  ANS001.BYTE020  $  y=x;
  $  028.ACCδ׼���ü����ԭ��0~7               $    $         $    $  ANS002.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  029.ACCδ׼���ü����ԭ��8~15              $    $         $    $  ANS002.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  030.ACC�޷�����ԭ��16~23                   $    $         $    $  ANS002.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  031.ACCδ׼���ü����ԭ��24~31             $    $         $    $  ANS002.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@012b;
  $  032.ACC�޷�����ԭ��32~39                   $    $         $    $  ANS002.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  033.ACC�޷�����ԭ��40~47                   $    $         $    $  ANS002.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  034.ACCδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS002.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  035.ACCδ׼���ü�������                  $    $         $    $  ANS002.BYTE012  $  y=x+2000;
  $  036.ACCδ׼���ü�����·�                  $    $         $    $  ANS002.BYTE013  $  y=x;
  $  037.ACC�޷�����ʱ������                    $    $         $    $  ANS002.BYTE014  $  y=x;
  $  038.ACCδ׼���ü����ʱ                    $    $         $    $  ANS002.BYTE015  $  y=x;
  $  039.ACC�޷�����ʱ�ķ���                    $    $         $    $  ANS002.BYTE016  $  y=x;
  $  040.ACC�޷�����ʱ������                    $    $         $    $  ANS002.BYTE017  $  y=x;
  $  041.ACC�޷�����ʱ�����                    $    $  km     $    $  ANS002.BYTE020  $  y=x;
  $  042.ACCδ׼���ü����ԭ��0~7               $    $         $    $  ANS003.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  043.ACCδ׼���ü����ԭ��8~15              $    $         $    $  ANS003.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  044.ACC�޷�����ԭ��16~23                   $    $         $    $  ANS003.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  045.ACCδ׼���ü����ԭ��24~31             $    $         $    $  ANS003.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@012b;
  $  046.ACC�޷�����ԭ��32~39                   $    $         $    $  ANS003.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  047.ACC�޷�����ԭ��40~47                   $    $         $    $  ANS003.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  048.ACCδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS003.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  049.ACCδ׼���ü�������                  $    $         $    $  ANS003.BYTE012  $  y=x+2000;
  $  050.ACCδ׼���ü�����·�                  $    $         $    $  ANS003.BYTE013  $  y=x;
  $  051.ACC�޷�����ʱ������                    $    $         $    $  ANS003.BYTE014  $  y=x;
  $  052.ACCδ׼���ü����ʱ                    $    $         $    $  ANS003.BYTE015  $  y=x;
  $  053.ACC�޷�����ʱ�ķ���                    $    $         $    $  ANS003.BYTE016  $  y=x;
  $  054.ACC�޷�����ʱ������                    $    $         $    $  ANS003.BYTE017  $  y=x;
  $  055.ACC�޷�����ʱ�����                    $    $  km     $    $  ANS003.BYTE020  $  y=x;
  $  056.ACCδ׼���ü����ԭ��0~7               $    $         $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  057.ACCδ׼���ü����ԭ��8~15              $    $         $    $  ANS004.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  058.ACC�޷�����ԭ��16~23                   $    $         $    $  ANS004.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  059.ACCδ׼���ü����ԭ��24~31             $    $         $    $  ANS004.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@012b;
  $  060.ACC�޷�����ԭ��32~39                   $    $         $    $  ANS004.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  061.ACC�޷�����ԭ��40~47                   $    $         $    $  ANS004.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  062.ACCδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS004.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  063.ACCδ׼���ü�������                  $    $         $    $  ANS004.BYTE012  $  y=x+2000;
  $  064.ACCδ׼���ü�����·�                  $    $         $    $  ANS004.BYTE013  $  y=x;
  $  065.ACC�޷�����ʱ������                    $    $         $    $  ANS004.BYTE014  $  y=x;
  $  066.ACCδ׼���ü����ʱ                    $    $         $    $  ANS004.BYTE015  $  y=x;
  $  067.ACC�޷�����ʱ�ķ���                    $    $         $    $  ANS004.BYTE016  $  y=x;
  $  068.ACC�޷�����ʱ������                    $    $         $    $  ANS004.BYTE017  $  y=x;
  $  069.ACC�޷�����ʱ�����                    $    $  km     $    $  ANS004.BYTE020  $  y=x;
  $  070.ACCδ׼���ü����ԭ��0~7               $    $         $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  071.ACCδ׼���ü����ԭ��8~15              $    $         $    $  ANS005.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  072.ACC�޷�����ԭ��16~23                   $    $         $    $  ANS005.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  073.ACCδ׼���ü����ԭ��24~31             $    $         $    $  ANS005.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@012b;
  $  074.ACC�޷�����ԭ��32~39                   $    $         $    $  ANS005.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  075.ACC�޷�����ԭ��40~47                   $    $         $    $  ANS005.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  076.ACC�˳�����״̬��ԭ��0~7(B091)         $    $         $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  077.ACC�˳�����״̬��ԭ��8~15(B091)        $    $         $    $  ANS006.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  078.ACC�˳�����״̬��ԭ��16~23(B091)       $    $         $    $  ANS006.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  079.ACC�˳�����״̬��ԭ��24~31(B091)       $    $         $    $  ANS006.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  080.ACC�˳�����״̬��ԭ��32~39(B091)       $    $         $    $  ANS006.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  081.ACC�˳�����״̬��ԭ��40~47(B091)       $    $         $    $  ANS006.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  082.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7           $    $         $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  083.ACC�˳�����״̬��ԭ��8~15              $    $         $    $  ANS007.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  084.ACC�˳�����״̬��ԭ��16~23             $    $         $    $  ANS007.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  085.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31         $    $         $    $  ANS007.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  086.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39         $    $         $    $  ANS007.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  087.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47         $    $         $    $  ANS007.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  088.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS007.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  089.Acc�쳣�˳�ʱ�����                    $    $         $    $  ANS007.BYTE012  $  y=x+2000;
  $  090.Acc�쳣�˳�ʱ���·�                    $    $         $    $  ANS007.BYTE013  $  y=x;
  $  091.Acc�쳣�˳�ʱ������                    $    $         $    $  ANS007.BYTE014  $  y=x;
  $  092.Acc�쳣�˳�ʱ��ʱ��                    $    $         $    $  ANS007.BYTE015  $  y=x;
  $  093.Acc�쳣�˳�ʱ�ķ���                    $    $         $    $  ANS007.BYTE016  $  y=x;
  $  094.Acc�쳣�˳�ʱ������                    $    $         $    $  ANS007.BYTE017  $  y=x;
  $  095.ACC�˳��¼����                        $    $  km     $    $  ANS007.BYTE020  $  y=x;
  $  096.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7           $    $         $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  097.ACC�˳�����״̬��ԭ��8~15              $    $         $    $  ANS008.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  098.ACC�˳�����״̬��ԭ��16~23             $    $         $    $  ANS008.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  099.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31         $    $         $    $  ANS008.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  100.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39         $    $         $    $  ANS008.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  101.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47         $    $         $    $  ANS008.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  102.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS008.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  103.Acc�쳣�˳�ʱ�����                    $    $         $    $  ANS008.BYTE012  $  y=x+2000;
  $  104.Acc�쳣�˳�ʱ���·�                    $    $         $    $  ANS008.BYTE013  $  y=x;
  $  105.Acc�쳣�˳�ʱ������                    $    $         $    $  ANS008.BYTE014  $  y=x;
  $  106.Acc�쳣�˳�ʱ��ʱ��                    $    $         $    $  ANS008.BYTE015  $  y=x;
  $  107.Acc�쳣�˳�ʱ�ķ���                    $    $         $    $  ANS008.BYTE016  $  y=x;
  $  108.Acc�쳣�˳�ʱ������                    $    $         $    $  ANS008.BYTE017  $  y=x;
  $  109.ACC�˳��¼����                        $    $  km     $    $  ANS008.BYTE020  $  y=x;
  $  110.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7           $    $         $    $  ANS009.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  111.ACC�˳�����״̬��ԭ��8~15              $    $         $    $  ANS009.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  112.ACC�˳�����״̬��ԭ��16~23             $    $         $    $  ANS009.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  113.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31         $    $         $    $  ANS009.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  114.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39         $    $         $    $  ANS009.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  115.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47         $    $         $    $  ANS009.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  116.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS009.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  117.Acc�쳣�˳�ʱ�����                    $    $         $    $  ANS009.BYTE012  $  y=x+2000;
  $  118.Acc�쳣�˳�ʱ���·�                    $    $         $    $  ANS009.BYTE013  $  y=x;
  $  119.Acc�쳣�˳�ʱ������                    $    $         $    $  ANS009.BYTE014  $  y=x;
  $  120.Acc�쳣�˳�ʱ��ʱ��                    $    $         $    $  ANS009.BYTE015  $  y=x;
  $  121.Acc�쳣�˳�ʱ�ķ���                    $    $         $    $  ANS009.BYTE016  $  y=x;
  $  122.Acc�쳣�˳�ʱ������                    $    $         $    $  ANS009.BYTE017  $  y=x;
  $  123.ACC�˳��¼����                        $    $  km     $    $  ANS009.BYTE020  $  y=x;
  $  124.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7           $    $         $    $  ANS010.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  125.ACC�˳�����״̬��ԭ��8~15              $    $         $    $  ANS010.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  126.ACC�˳�����״̬��ԭ��16~23             $    $         $    $  ANS010.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  127.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31         $    $         $    $  ANS010.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  128.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39         $    $         $    $  ANS010.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  129.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47         $    $         $    $  ANS010.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  130.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS010.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  131.Acc�쳣�˳�ʱ�����                    $    $         $    $  ANS010.BYTE012  $  y=x+2000;
  $  132.Acc�쳣�˳�ʱ���·�                    $    $         $    $  ANS010.BYTE013  $  y=x;
  $  133.Acc�쳣�˳�ʱ������                    $    $         $    $  ANS010.BYTE014  $  y=x;
  $  134.Acc�쳣�˳�ʱ��ʱ��                    $    $         $    $  ANS010.BYTE015  $  y=x;
  $  135.Acc�쳣�˳�ʱ�ķ���                    $    $         $    $  ANS010.BYTE016  $  y=x;
  $  136.Acc�쳣�˳�ʱ������                    $    $         $    $  ANS010.BYTE017  $  y=x;
  $  137.ACC�˳��¼����                        $    $  km     $    $  ANS010.BYTE020  $  y=x;
  $  138.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7           $    $         $    $  ANS011.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  139.ACC�˳�����״̬��ԭ��8~15              $    $         $    $  ANS011.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  140.ACC�˳�����״̬��ԭ��16~23             $    $         $    $  ANS011.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  141.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31         $    $         $    $  ANS011.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  142.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39         $    $         $    $  ANS011.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  143.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47         $    $         $    $  ANS011.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  144.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS011.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  145.Acc�쳣�˳�ʱ�����                    $    $         $    $  ANS011.BYTE012  $  y=x+2000;
  $  146.Acc�쳣�˳�ʱ���·�                    $    $         $    $  ANS011.BYTE013  $  y=x;
  $  147.Acc�쳣�˳�ʱ������                    $    $         $    $  ANS011.BYTE014  $  y=x;
  $  148.Acc�쳣�˳�ʱ��ʱ��                    $    $         $    $  ANS011.BYTE015  $  y=x;
  $  149.Acc�쳣�˳�ʱ�ķ���                    $    $         $    $  ANS011.BYTE016  $  y=x;
  $  150.Acc�쳣�˳�ʱ������                    $    $         $    $  ANS011.BYTE017  $  y=x;
  $  151.ACC�˳��¼����                        $    $  km     $    $  ANS011.BYTE020  $  y=x;
  $  152.ACC�Ӽ���״̬�쳣�˳�ԭ��0~7           $    $         $    $  ANS012.BYTE004  $  if(x==0x01) y=@0dcb;else if(x==0x02) y=@0dc1;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0dcc;else if(x==0x20) y=@0dcd;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@012b;
  $  153.ACC�˳�����״̬��ԭ��8~15              $    $         $    $  ANS012.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0b51;else if(x==0x04) y=@0dd5;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0b55;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@012b;
  $  154.ACC�˳�����״̬��ԭ��16~23             $    $         $    $  ANS012.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b5b;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0018;else if(x==0x80) y=@0b73;else y=@012b;
  $  155.ACC�Ӽ���״̬�쳣�˳�ԭ��24~31         $    $         $    $  ANS012.BYTE007  $  if(x==0x01) y=@0dae;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0b18;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@012b;
  $  156.ACC�Ӽ���״̬�쳣�˳�ԭ��32~39         $    $         $    $  ANS012.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0b45;else if(x==0x08) y=@0b67;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dd0;else if(x==0x80) y=@0dd1;else y=@012b;
  $  157.ACC�Ӽ���״̬�쳣�˳�ԭ��40~47         $    $         $    $  ANS012.BYTE009  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  158.AEBδ׼���ü����ԭ��0~7               $    $         $    $  ANS013.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  159.AEB�޷�����ԭ��8~15                    $    $         $    $  ANS013.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  160.AEBδ׼���ü����ԭ��16~23             $    $         $    $  ANS013.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  161.AEB�޷�����ԭ��24~31                   $    $         $    $  ANS013.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  162.AEBδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS013.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  163.AEB�޷�����ʱ�����                    $    $         $    $  ANS013.BYTE010  $  y=x+2000;
  $  164.AEB�޷�����ʱ���·�                    $    $         $    $  ANS013.BYTE011  $  y=x;
  $  165.AEB�޷�����ʱ������                    $    $         $    $  ANS013.BYTE012  $  y=x;
  $  166.AEB�޷�����ʱ��ʱ��                    $    $         $    $  ANS013.BYTE013  $  y=x;
  $  167.AEBδ׼���ü���ķ�                    $    $         $    $  ANS013.BYTE014  $  y=x;
  $  168.AEBδ׼���ü������                    $    $         $    $  ANS013.BYTE015  $  y=x;
  $  169.AEBδ׼���ü�������                  $    $         $    $  ANS013.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  170.AEBδ׼���ü����ԭ��0~7               $    $         $    $  ANS014.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  171.AEB�޷�����ԭ��8~15                    $    $         $    $  ANS014.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  172.AEBδ׼���ü����ԭ��16~23             $    $         $    $  ANS014.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  173.AEB�޷�����ԭ��24~31                   $    $         $    $  ANS014.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  174.AEBδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS014.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  175.AEB�޷�����ʱ�����                    $    $         $    $  ANS014.BYTE010  $  y=x+2000;
  $  176.AEB�޷�����ʱ���·�                    $    $         $    $  ANS014.BYTE011  $  y=x;
  $  177.AEB�޷�����ʱ������                    $    $         $    $  ANS014.BYTE012  $  y=x;
  $  178.AEB�޷�����ʱ��ʱ��                    $    $         $    $  ANS014.BYTE013  $  y=x;
  $  179.AEBδ׼���ü���ķ�                    $    $         $    $  ANS014.BYTE014  $  y=x;
  $  180.AEBδ׼���ü������                    $    $         $    $  ANS014.BYTE015  $  y=x;
  $  181.AEBδ׼���ü�������                  $    $         $    $  ANS014.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  182.AEBδ׼���ü����ԭ��0~7               $    $         $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  183.AEB�޷�����ԭ��8~15                    $    $         $    $  ANS015.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  184.AEBδ׼���ü����ԭ��16~23             $    $         $    $  ANS015.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  185.AEB�޷�����ԭ��24~31                   $    $         $    $  ANS015.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  186.AEBδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS015.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  187.AEB�޷�����ʱ�����                    $    $         $    $  ANS015.BYTE010  $  y=x+2000;
  $  188.AEB�޷�����ʱ���·�                    $    $         $    $  ANS015.BYTE011  $  y=x;
  $  189.AEB�޷�����ʱ������                    $    $         $    $  ANS015.BYTE012  $  y=x;
  $  190.AEB�޷�����ʱ��ʱ��                    $    $         $    $  ANS015.BYTE013  $  y=x;
  $  191.AEBδ׼���ü���ķ�                    $    $         $    $  ANS015.BYTE014  $  y=x;
  $  192.AEBδ׼���ü������                    $    $         $    $  ANS015.BYTE015  $  y=x;
  $  193.AEBδ׼���ü�������                  $    $         $    $  ANS015.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  194.AEBδ׼���ü����ԭ��0~7               $    $         $    $  ANS016.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  195.AEB�޷�����ԭ��8~15                    $    $         $    $  ANS016.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  196.AEBδ׼���ü����ԭ��16~23             $    $         $    $  ANS016.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  197.AEB�޷�����ԭ��24~31                   $    $         $    $  ANS016.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  198.AEBδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS016.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  199.AEB�޷�����ʱ�����                    $    $         $    $  ANS016.BYTE010  $  y=x+2000;
  $  200.AEB�޷�����ʱ���·�                    $    $         $    $  ANS016.BYTE011  $  y=x;
  $  201.AEB�޷�����ʱ������                    $    $         $    $  ANS016.BYTE012  $  y=x;
  $  202.AEB�޷�����ʱ��ʱ��                    $    $         $    $  ANS016.BYTE013  $  y=x;
  $  203.AEBδ׼���ü���ķ�                    $    $         $    $  ANS016.BYTE014  $  y=x;
  $  204.AEBδ׼���ü������                    $    $         $    $  ANS016.BYTE015  $  y=x;
  $  205.AEBδ׼���ü�������                  $    $         $    $  ANS016.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  206.AEBδ׼���ü����ԭ��0~7               $    $         $    $  ANS017.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  207.AEB�޷�����ԭ��8~15                    $    $         $    $  ANS017.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  208.AEBδ׼���ü����ԭ��16~23             $    $         $    $  ANS017.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  209.AEB�޷�����ԭ��24~31                   $    $         $    $  ANS017.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  210.AEBδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS017.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  211.AEB�޷�����ʱ�����                    $    $         $    $  ANS017.BYTE010  $  y=x+2000;
  $  212.AEB�޷�����ʱ���·�                    $    $         $    $  ANS017.BYTE011  $  y=x;
  $  213.AEB�޷�����ʱ������                    $    $         $    $  ANS017.BYTE012  $  y=x;
  $  214.AEB�޷�����ʱ��ʱ��                    $    $         $    $  ANS017.BYTE013  $  y=x;
  $  215.AEBδ׼���ü���ķ�                    $    $         $    $  ANS017.BYTE014  $  y=x;
  $  216.AEBδ׼���ü������                    $    $         $    $  ANS017.BYTE015  $  y=x;
  $  217.AEBδ׼���ü�������                  $    $         $    $  ANS017.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  218.AEBδ׼���ü����ԭ��0~7               $    $         $    $  ANS018.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  219.AEB�޷�����ԭ��8~15                    $    $         $    $  ANS018.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  220.AEBδ׼���ü����ԭ��16~23             $    $         $    $  ANS018.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  221.AEB�޷�����ԭ��24~31                   $    $         $    $  ANS018.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  222.AEB�˳�����״̬��ԭ��0~7(B092)         $    $         $    $  ANS019.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  223.AEB�˳�����״̬��ԭ��8~15(B092)        $    $         $    $  ANS019.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  224.AEB�˳�����״̬��ԭ��16~23(B092)       $    $         $    $  ANS019.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  225.AEB�˳�����״̬��ԭ��24~31(B092)       $    $         $    $  ANS019.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  226.AEB�˳�����״̬��ԭ��0~7               $    $         $    $  ANS020.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  227.AEB�˳�����״̬��ԭ��8~15              $    $         $    $  ANS020.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  228.AEB�˳�����״̬��ԭ��16~23             $    $         $    $  ANS020.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  229.AEB�˳�����״̬��ԭ��24~31             $    $         $    $  ANS020.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  230.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS020.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  231.AEB�쳣�˳�ʱ�����                    $    $         $    $  ANS020.BYTE010  $  y=x+2000;
  $  232.AEB�쳣�˳�ʱ���·�                    $    $         $    $  ANS020.BYTE011  $  y=x;
  $  233.AEB�쳣�˳�ʱ������                    $    $         $    $  ANS020.BYTE012  $  y=x;
  $  234.AEB�쳣�˳�ʱ��ʱ��                    $    $         $    $  ANS020.BYTE013  $  y=x;
  $  235.AEB�쳣�˳�ʱ�ķ���                    $    $         $    $  ANS020.BYTE014  $  y=x;
  $  236.AEB�쳣�˳�ʱ������                    $    $         $    $  ANS020.BYTE015  $  y=x;
  $  237.AEB�쳣�˳�ʱ�����                    $    $         $    $  ANS020.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  238.AEB�˳�����״̬��ԭ��0~7               $    $         $    $  ANS021.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  239.AEB�˳�����״̬��ԭ��8~15              $    $         $    $  ANS021.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  240.AEB�˳�����״̬��ԭ��16~23             $    $         $    $  ANS021.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  241.AEB�˳�����״̬��ԭ��24~31             $    $         $    $  ANS021.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  242.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS021.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  243.AEB�쳣�˳�ʱ�����                    $    $         $    $  ANS021.BYTE010  $  y=x+2000;
  $  244.AEB�쳣�˳�ʱ���·�                    $    $         $    $  ANS021.BYTE011  $  y=x;
  $  245.AEB�쳣�˳�ʱ������                    $    $         $    $  ANS021.BYTE012  $  y=x;
  $  246.AEB�쳣�˳�ʱ��ʱ��                    $    $         $    $  ANS021.BYTE013  $  y=x;
  $  247.AEB�쳣�˳�ʱ�ķ���                    $    $         $    $  ANS021.BYTE014  $  y=x;
  $  248.AEB�쳣�˳�ʱ������                    $    $         $    $  ANS021.BYTE015  $  y=x;
  $  249.AEB�쳣�˳�ʱ�����                    $    $         $    $  ANS021.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  250.AEB�˳�����״̬��ԭ��0~7               $    $         $    $  ANS022.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  251.AEB�˳�����״̬��ԭ��8~15              $    $         $    $  ANS022.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  252.AEB�˳�����״̬��ԭ��16~23             $    $         $    $  ANS022.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  253.AEB�˳�����״̬��ԭ��24~31             $    $         $    $  ANS022.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  254.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS022.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  255.AEB�쳣�˳�ʱ�����                    $    $         $    $  ANS022.BYTE010  $  y=x+2000;
  $  256.AEB�쳣�˳�ʱ���·�                    $    $         $    $  ANS022.BYTE011  $  y=x;
  $  257.AEB�쳣�˳�ʱ������                    $    $         $    $  ANS022.BYTE012  $  y=x;
  $  258.AEB�쳣�˳�ʱ��ʱ��                    $    $         $    $  ANS022.BYTE013  $  y=x;
  $  259.AEB�쳣�˳�ʱ�ķ���                    $    $         $    $  ANS022.BYTE014  $  y=x;
  $  260.AEB�쳣�˳�ʱ������                    $    $         $    $  ANS022.BYTE015  $  y=x;
  $  261.AEB�쳣�˳�ʱ�����                    $    $         $    $  ANS022.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  262.AEB�˳�����״̬��ԭ��0~7               $    $         $    $  ANS023.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  263.AEB�˳�����״̬��ԭ��8~15              $    $         $    $  ANS023.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  264.AEB�˳�����״̬��ԭ��16~23             $    $         $    $  ANS023.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  265.AEB�˳�����״̬��ԭ��24~31             $    $         $    $  ANS023.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  266.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS023.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  267.AEB�쳣�˳�ʱ�����                    $    $         $    $  ANS023.BYTE010  $  y=x+2000;
  $  268.AEB�쳣�˳�ʱ���·�                    $    $         $    $  ANS023.BYTE011  $  y=x;
  $  269.AEB�쳣�˳�ʱ������                    $    $         $    $  ANS023.BYTE012  $  y=x;
  $  270.AEB�쳣�˳�ʱ��ʱ��                    $    $         $    $  ANS023.BYTE013  $  y=x;
  $  271.AEB�쳣�˳�ʱ�ķ���                    $    $         $    $  ANS023.BYTE014  $  y=x;
  $  272.AEB�쳣�˳�ʱ������                    $    $         $    $  ANS023.BYTE015  $  y=x;
  $  273.AEB�쳣�˳�ʱ�����                    $    $         $    $  ANS023.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  274.AEB�˳�����״̬��ԭ��0~7               $    $         $    $  ANS024.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  275.AEB�˳�����״̬��ԭ��8~15              $    $         $    $  ANS024.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  276.AEB�˳�����״̬��ԭ��16~23             $    $         $    $  ANS024.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  277.AEB�˳�����״̬��ԭ��24~31             $    $         $    $  ANS024.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;
  $  278.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS024.BYTE008  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  279.AEB�쳣�˳�ʱ�����                    $    $         $    $  ANS024.BYTE010  $  y=x+2000;
  $  280.AEB�쳣�˳�ʱ���·�                    $    $         $    $  ANS024.BYTE011  $  y=x;
  $  281.AEB�쳣�˳�ʱ������                    $    $         $    $  ANS024.BYTE012  $  y=x;
  $  282.AEB�쳣�˳�ʱ��ʱ��                    $    $         $    $  ANS024.BYTE013  $  y=x;
  $  283.AEB�쳣�˳�ʱ�ķ���                    $    $         $    $  ANS024.BYTE014  $  y=x;
  $  284.AEB�쳣�˳�ʱ������                    $    $         $    $  ANS024.BYTE015  $  y=x;
  $  285.AEB�쳣�˳�ʱ�����                    $    $         $    $  ANS024.BYTE016  $  y=(x1*256*256+x2*256+x3);
  $  286.AEB�˳�����״̬��ԭ��0~7               $    $         $    $  ANS025.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0b55;else if(x==0x20) y=@0b51;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0b56;else y=@012b;
  $  287.AEB�˳�����״̬��ԭ��8~15              $    $         $    $  ANS025.BYTE005  $  if(x==0x01) y=@0b5b;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0b5a;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0b73;else if(x==0x40) y=@0dae;else if(x==0x80) y=@0b61;else y=@012b;
  $  288.AEB�˳�����״̬��ԭ��16~23             $    $         $    $  ANS025.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dd4;else if(x==0x10) y=@0b67;else if(x==0x20) y=@0dd0;else if(x==0x40) y=@0daa;else if(x==0x80) y=@0b48;else y=@012b;
  $  289.AEB�˳�����״̬��ԭ��24~31             $    $         $    $  ANS025.BYTE007  $  if(x==0x01) y=@0b49;else if(x==0x02) y=@0b4a;else y=@0004;

  $)  01.������2
  $  01.������2
  $  REQ000:74A 03 22 01 12 00 00 00 00       $  ANS000:7CA 03 22 01 12 00 00 00 00
  $  REQ001:74A 03 22 B0 3D 00 00 00 00       $  ANS001:7CA 03 22 B0 3D 00 00 00 00
  $  REQ002:74A 03 22 B0 2E 00 00 00 00       $  ANS002:7CA 03 22 B0 2E 00 00 00 00
  $  REQ003:74A 03 22 B0 38 00 00 00 00       $  ANS003:7CA 03 22 B0 38 00 00 00 00
  $  REQ004:74A 03 22 B0 3B 00 00 00 00       $  ANS004:7CA 03 22 B0 3B 00 00 00 00
  $  REQ005:74A 03 22 C0 01 00 00 00 00       $  ANS005:7CA 03 22 C0 01 00 00 00 00
  $  REQ006:74A 03 22 B0 3E 00 00 00 00       $  ANS006:7CA 03 22 B0 3E 00 00 00 00
  $  REQ007:74A 03 22 B0 4B 00 00 00 00       $  ANS007:7CA 03 22 B0 4B 00 00 00 00
  $  REQ008:74A 03 22 C0 02 00 00 00 00       $  ANS008:7CA 03 22 C0 02 00 00 00 00
  $  REQ009:74A 03 22 B0 27 00 00 00 00       $  ANS009:7CA 03 22 B0 27 00 00 00 00
  $  REQ010:74A 03 22 B0 28 00 00 00 00       $  ANS010:7CA 03 22 B0 28 00 00 00 00
  $  REQ011:74A 03 22 B0 26 00 00 00 00       $  ANS011:7CA 03 22 B0 26 00 00 00 00
  $  REQ012:74A 03 22 B0 29 00 00 00 00       $  ANS012:7CA 03 22 B0 29 00 00 00 00
  $  REQ013:74A 03 22 B0 2F 00 00 00 00       $  ANS013:7CA 03 22 B0 2F 00 00 00 00
  $  REQ014:74A 03 22 B0 75 00 00 00 00       $  ANS014:7CA 03 22 B0 75 00 00 00 00
  $  REQ015:74A 03 22 B0 77 00 00 00 00       $  ANS015:7CA 03 22 B0 77 00 00 00 00
  $  REQ016:74A 03 22 B0 94 00 00 00 00       $  ANS016:7CA 03 22 B0 94 00 00 00 00
  $  REQ017:74A 03 22 B0 74 00 00 00 00       $  ANS017:7CA 03 22 B0 74 00 00 00 00
  $  REQ018:74A 03 22 B0 76 00 00 00 00       $  ANS018:7CA 03 22 B0 76 00 00 00 00
  $  REQ019:74A 03 22 C0 04 00 00 00 00       $  ANS019:7CA 03 22 C0 04 00 00 00 00
  $  REQ020:74A 03 22 B0 7D 00 00 00 00       $  ANS020:7CA 03 22 B0 7D 00 00 00 00
  $  REQ021:74A 03 22 B0 7F 00 00 00 00       $  ANS021:7CA 03 22 B0 7F 00 00 00 00
  $  REQ022:74A 03 22 B0 96 00 00 00 00       $  ANS022:7CA 03 22 B0 96 00 00 00 00
  $  REQ023:74A 03 22 B0 7C 00 00 00 00       $  ANS023:7CA 03 22 B0 7C 00 00 00 00
  $  REQ024:74A 03 22 B0 7E 00 00 00 00       $  ANS024:7CA 03 22 B0 7E 00 00 00 00

  $  000.��ص�ѹ                                                 $    $  V       $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.�����Զ�������Χ                                         $    $          $    $  ANS001.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  002.Ӧ�ó�����������-�����궨                                $    $          $    $  ANS001.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  003.δ�궨                                                   $    $          $    $  ANS001.BYTE004  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  004.EOLУ׼״̬                                              $    $          $    $  ANS002.BYTE004  $  if(x==0x00) y=@004a;else if(x==0x01) y=@0b2a;else if(x==0x02) y=@0b2b;else if(x==0x03) y=@0b2c;else y=@012b;
  $  005.EOLУ׼����ԭ��                                          $    $          $    $  ANS002.BYTE005  $  if(x==0x00) y=@023f;else if(x==0x01) y=@012a;else if(x==0x02) y=@0910;else if(x==0x03) y=@0ddd;else if(x==0x04) y=@0912;else if(x==0x05) y=@0913;else if(x==0x06) y=@0914;else if(x==0x07) y=@0915;else if(x==0x08) y=@0916;else if(x==0x09) y=@0917;else if(x==0x0A) y=@0918;else if(x==0x0B) y=@0919;else if(x==0x0C) y=@091a;else if(x==0x0D) y=@091b;else if(x==0x0E) y=@091c;else if(x==0x0F) y=@091d;else if(x==0x10) y=@091e;else if(x==0x11) y=@091f;else if(x==0x12) y=@0920;else if(x==0x13) y=@0921;else if(x==0x14) y=@0922;else if(x==0x15) y=@0923;else y=@012b;
  $  006.����ͷУ׼ƫ��ֵ                                         $    $          $    $  ANS002.BYTE006  $  y=(x1*256+x2)-188;
  $  007.����ͷУ׼ˮƽֵ                                         $    $          $    $  ANS002.BYTE008  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))-160;
  $  008.����ͷУ׼�����ֵ                                       $    $  rad     $    $  ANS002.BYTE010  $  y=(x1*256+x2)*0.001-0.055;
  $  009.����ͷ�Զ�����ƫ��ֵ                                     $    $          $    $  ANS002.BYTE012  $  y=x-40;
  $  010.����ͷ�Զ�����������ֵ                                   $    $          $    $  ANS002.BYTE013  $  y=x-40;
  $  011.У׼��                                                   $    $          $    $  ANS003.BYTE004  $  y=x+2000;
  $  012.�궨��                                                   $    $          $    $  ANS003.BYTE005  $  y=x;
  $  013.У׼��                                                   $    $          $    $  ANS003.BYTE006  $  y=x;
  $  014.У׼Сʱ                                                 $    $          $    $  ANS003.BYTE007  $  y=x;
  $  015.�궨����                                                 $    $          $    $  ANS003.BYTE008  $  y=x;
  $  016.У׼��                                                   $    $          $    $  ANS003.BYTE009  $  y=x;
  $  017.�궨�����                                               $    $  km      $    $  ANS003.BYTE010  $  y=(x1*256*256+x2*256+x3);
  $  018.������Ա�ο����                                         $    $          $    $  ANS003.BYTE013  $  y=(x1*256*256+x2*256+x3);
  $  019.����ͷ��Ұ�ڵ�ԭ��_ѣ��                                  $    $          $    $  ANS004.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  020.����ͷ��Ұ�ڵ�ԭ��_����̫ǿ                              $    $          $    $  ANS004.BYTE004  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  021.����ͷ��Ұ�ڵ�ԭ��_ɢ��                                  $    $          $    $  ANS004.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0004;
  $  022.����ͷ��Ұ�ڵ�ԭ��_ͼ��ģ��                              $    $          $    $  ANS004.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0004;
  $  023.����ͷ��Ұ�ڵ�ԭ��_���߲���                              $    $          $    $  ANS004.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0004;
  $  024.����ͷ��Ұ�ڵ�ԭ��_�ߵ�                                  $    $          $    $  ANS004.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0004;
  $  025.����ͷ��Ұ�ڵ�ԭ��_�����ڵ�                              $    $          $    $  ANS004.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0004;
  $  026.����ͷ��Ұ�ڵ�ԭ��_��ȫ�ڵ�                              $    $          $    $  ANS004.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  027.����ͷ��Ұ�ڵ�ԭ��_���                                  $    $          $    $  ANS004.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  028.����ͷ��Ұ�ڵ�ԭ��_����                                  $    $          $    $  ANS004.BYTE005  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  029.AHB�Զ����ϵͳ����                                      $    $          $    $  ANS005.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00b1;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0004;
  $  030.TSR(��ͨ��־ʶ��)����                                    $    $          $    $  ANS005.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00b1;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0004;
  $  031.ACC(����ӦѲ������)����                                  $    $          $    $  ANS005.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00b1;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0004;
  $  032.AEBP(�����Զ������ƶ�)����                               $    $          $    $  ANS005.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00b1;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0004;
  $  033.AEB(�Զ��ƶ�ϵͳ)����                                    $    $          $    $  ANS005.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00b1;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0004;
  $  034.PCW(������ײ����)����                                    $    $          $    $  ANS005.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00b1;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0004;
  $  035.FCW(������ײ����)����                                    $    $          $    $  ANS005.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00b1;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0004;
  $  036.LDW(����ƫ��Ԥ��ϵͳ)����                                $    $          $    $  ANS005.BYTE004  $  if((x&0x01)==0x00) y=@00b1;else if((x&0x01)==0x01) y=@00dc;else y=@0004;
  $  037.LKA(�������ָ���)����                                    $    $          $    $  ANS005.BYTE005  $  if((x&0x01)==0x00) y=@00b1;else if((x&0x01)==0x01) y=@00dc;else y=@0004;
  $  038.SDM25-��ײ�ص�                                           $    $          $    $  ANS006.BYTE007  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0004;
  $  039.SDM9-�ؼ�������ǰ��ָ�ӳ����ص�����������                $    $          $    $  ANS006.BYTE007  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0004;
  $  040.SDM8-�ؼ����������ǲ�������֮���λ�ò���                $    $          $    $  ANS006.BYTE007  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0004;
  $  041.SDM7-Ŀ��λ������������                                  $    $          $    $  ANS006.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0004;
  $  042.SDM6-TTC����������                                       $    $          $    $  ANS006.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0004;
  $  043.����-֡������������źŵ���Ϣ��                          $    $          $    $  ANS006.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  044.У��İ�ȫ�����źŲ�ƥ��                                 $    $          $    $  ANS006.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  045.EYEQ_CR_REPEAT-��ս����Ӧ�ظ�����                        $    $          $    $  ANS006.BYTE007  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  046.sdm11��Ƭ��CRC����                                       $    $          $    $  ANS006.BYTE008  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0004;
  $  047.SDM29-MCU RFC����                                        $    $          $    $  ANS006.BYTE008  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0004;
  $  048.SDM30-ͼ��������Ч                                       $    $          $    $  ANS006.BYTE008  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0004;
  $  049.SDM4-У׼����                                            $    $          $    $  ANS006.BYTE008  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0004;
  $  050.SDM18-�ڲ�ͼ�񱣻�ʧ��                                   $    $          $    $  ANS006.BYTE008  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0004;
  $  051.SDM13-�ɵ���������                                       $    $          $    $  ANS006.BYTE008  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  052.SDM ��ս��Ӧ���                                         $    $          $    $  ANS006.BYTE008  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  053.SDM32-�ڲ��ź���                                       $    $          $    $  ANS006.BYTE008  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  054.SDM31-�ڲ�У�����                                       $    $          $    $  ANS006.BYTE009  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0004;
  $  055.SDM27-AEB˫�ؼ�����                                    $    $          $    $  ANS006.BYTE009  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0004;
  $  056.SDM26-DDRУ�����                                        $    $          $    $  ANS006.BYTE009  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0004;
  $  057.sdm19 ͼ��ȱʧ                                           $    $          $    $  ANS006.BYTE009  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0004;
  $  058.EyeQ Ӧ�ó������ʧЧ                                    $    $          $    $  ANS006.BYTE009  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0004;
  $  059.EyeQ Ӧ�ó���ʧЧ                                        $    $          $    $  ANS006.BYTE009  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  060.EyeQ����ʧ��                                             $    $          $    $  ANS006.BYTE009  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  061.GPIO10                                                   $    $          $    $  ANS006.BYTE009  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  062.EyeQ������������ʧ                                     $    $          $    $  ANS006.BYTE010  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0004;
  $  063.MCU EEPROM(��ɲ�ֻ����ȡ��)����ʧ��                     $    $          $    $  ANS006.BYTE010  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0004;
  $  064.MCU RAM(�����ȡ������)����ʧ��                          $    $          $    $  ANS006.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0004;
  $  065.MCU����У�����                                          $    $          $    $  ANS006.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0004;
  $  066.MCU�쳣��λ                                              $    $          $    $  ANS006.BYTE010  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0004;
  $  067.MCU PLLʧ��                                              $    $          $    $  ANS006.BYTE010  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  068.DAS��Դ2.8VǷѹ                                          $    $          $    $  ANS006.BYTE010  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  069.DAS��Դ2.8V��ѹ                                          $    $          $    $  ANS006.BYTE010  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  070.DAS 1.2VǷѹ                                             $    $          $    $  ANS006.BYTE011  $  if(((x&0x80)>>7)==0x00) y=@00c9;else if(((x&0x80)>>7)==0x01) y=@011f;else y=@0004;
  $  071.DAS 1.2V��ѹ                                             $    $          $    $  ANS006.BYTE011  $  if(((x&0x40)>>6)==0x00) y=@00c9;else if(((x&0x40)>>6)==0x01) y=@011f;else y=@0004;
  $  072.DAS 1.8VǷѹ                                             $    $          $    $  ANS006.BYTE011  $  if(((x&0x20)>>5)==0x00) y=@00c9;else if(((x&0x20)>>5)==0x01) y=@011f;else y=@0004;
  $  073.DAS��Դ1.8V��ѹ                                          $    $          $    $  ANS006.BYTE011  $  if(((x&0x10)>>4)==0x00) y=@00c9;else if(((x&0x10)>>4)==0x01) y=@011f;else y=@0004;
  $  074.DAS��Դ3.3VǷѹ                                          $    $          $    $  ANS006.BYTE011  $  if(((x&0x08)>>3)==0x00) y=@00c9;else if(((x&0x08)>>3)==0x01) y=@011f;else y=@0004;
  $  075.DAS 3.3V��ѹ                                             $    $          $    $  ANS006.BYTE011  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  076.DAS 5VǷѹ                                               $    $          $    $  ANS006.BYTE011  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  077.DAS��Դ5V��ѹ                                            $    $          $    $  ANS006.BYTE011  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  078.MCUӦ�ó���汾��MCU�궨�ļ�������                       $    $          $    $  ANS007.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00c9;else if(((x&0x04)>>2)==0x01) y=@011f;else y=@0004;
  $  079.ͼ����Ԫ�����ļ���MCU�궨�ļ�������                  $    $          $    $  ANS007.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00c9;else if(((x&0x02)>>1)==0x01) y=@011f;else y=@0004;
  $  080.MCUӦ�ð汾��ͼ����Ԫ������                          $    $          $    $  ANS007.BYTE004  $  if((x&0x01)==0x00) y=@00c9;else if((x&0x01)==0x01) y=@011f;else y=@0004;
  $  081.��BCM(������ƹ���ϵͳ)ͨѶ��ʧ                          $    $          $    $  ANS008.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0004;
  $  082.��TCU(��������Ƶ�Ԫ)ͨѶ��ʧ                            $    $          $    $  ANS008.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0004;
  $  083.��IPK(�Ǳ�)ͨѶ��ʧ                                      $    $          $    $  ANS008.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0004;
  $  084.��ABS/ESP(�������ƶ�ϵͳ/�����ȶ�ϵͳ)ģ��ʧȥͨѶ       $    $          $    $  ANS008.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0004;
  $  085.��SAS(������ת��Ǵ�����)ģ��ʧȥͨѶ                    $    $          $    $  ANS008.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0004;
  $  086.����ģ��ͨ�����߹ر�                                     $    $          $    $  ANS008.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0004;
  $  087.��ص�ѹ����                                             $    $          $    $  ANS008.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0004;
  $  088.��ص�ѹ����                                             $    $          $    $  ANS008.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  089.ͼ�������¶ȹ���                                       $    $          $    $  ANS008.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0004;
  $  090.DAS��ʻ����ϵͳ�ڲ�����                                  $    $          $    $  ANS008.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0004;
  $  091.AHB(�Զ�Զ���)����������������Ч��ֹ                    $    $          $    $  ANS008.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0004;
  $  092.TSR(��ͨ��־ʶ��)����������������Ч��ֹ                  $    $          $    $  ANS008.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0004;
  $  093.ACC(����ӦѲ������)����������������Ч��ֹ                $    $          $    $  ANS008.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0004;
  $  094.AEB(�Զ��ƶ�ϵͳ)����������������Ч��ֹ                  $    $          $    $  ANS008.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0004;
  $  095.FCW(������ײ����)����������������Ч��ֹ                  $    $          $    $  ANS008.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0004;
  $  096.LDW(����ƫ��Ԥ��ϵͳ)����������������Ч��ֹ              $    $          $    $  ANS008.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  097.LKA(�������ָ���)����������������Ч��ֹ                  $    $          $    $  ANS008.BYTE006  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0004;
  $  098.LDW(����ƫ��Ԥ��ϵͳ)����ָʾ�ƶ�·����                  $    $          $    $  ANS008.BYTE006  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0004;
  $  099.LDW(����ƫ��Ԥ��ϵͳ)���ذ���ճ��                        $    $          $    $  ANS008.BYTE006  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0004;
  $  100.DAS��ʻ����ϵͳ����汾��ƥ��                            $    $          $    $  ANS008.BYTE006  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0004;
  $  101.DAS��ʻ����ϵͳ�궨�쳣                                  $    $          $    $  ANS008.BYTE006  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0004;
  $  102.DAS(��ʻ����ϵͳ)����ͷ��Ұ�ڵ�                          $    $          $    $  ANS008.BYTE006  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  103.AHB(�Զ�Զ���)���ܿ���                                  $    $          $    $  ANS009.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0004;
  $  104.TSR(��ͨ��־ʶ��)���ܿ���                                $    $          $    $  ANS009.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0004;
  $  105.ACC(����ӦѲ������)���ܿ���                              $    $          $    $  ANS009.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0004;
  $  106.AEBP(�����Զ������ƶ�)���ܿ���                           $    $          $    $  ANS009.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0004;
  $  107.AEB(�Զ��ƶ�ϵͳ)���ܿ���                                $    $          $    $  ANS009.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0004;
  $  108.PCW(������ײ����)���ܿ���                                $    $          $    $  ANS009.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0004;
  $  109.FCW(������ײ����)���ܿ���                                $    $          $    $  ANS009.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0004;
  $  110.LDW(����ƫ��Ԥ��ϵͳ)���ܿ���                            $    $          $    $  ANS009.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  111.LKA(�������ָ���)���ܿ���                                $    $          $    $  ANS009.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  112.����������                                               $    $          $    $  ANS010.BYTE004  $  if(x==0x00) y=@0136;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0da8;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@012b;
  $  113.FCW(������ײ����)����ѡ���������ȵȼ�                    $    $          $    $  ANS011.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@02ce;else if(((x&0xF0)>>4)==0x01) y=@098b;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@098c;else y=@012b;
  $  114.LDW(����ƫ��Ԥ��ϵͳ)����ѡ���������ȵȼ�                $    $          $    $  ANS011.BYTE004  $  if((x&0x0F)==0x00) y=@02ce;else if((x&0x0F)==0x01) y=@098b;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@098c;else y=@012b;
  $  115.AEB(�Զ��ƶ�ϵͳ)����ѡ��������ȵȼ�                    $    $          $    $  ANS011.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@02ce;else if(((x&0xF0)>>4)==0x01) y=@098b;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@098c;else y=@012b;
  $  116.ACC(����ӦѲ������)����ѡ����Ŀ�����ȼ�                $    $          $    $  ANS011.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@012b;
  $  117.PCW(������ײ����)��ʻԱѡ���������ȵȼ�                  $    $          $    $  ANS011.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@02ce;else if(((x&0xF0)>>4)==0x01) y=@098b;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@098c;else y=@012b;
  $  118.AEBP(�����Զ������ƶ�)����ѡ��������ȵȼ�               $    $          $    $  ANS011.BYTE006  $  if((x&0x0F)==0x00) y=@02ce;else if((x&0x0F)==0x01) y=@098b;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@098c;else y=@012b;
  $  119.����ͷ��Ŀ���ٶ�Ҫ��                                     $    $          $    $  ANS012.BYTE004  $  y=(x1*256+x2);
  $  120.ACC��ʻԱѡ����ٶ�                                      $    $          $    $  ANS012.BYTE006  $  y=(x1*256+x2);
  $  121.����ͷ��������Ե���ľ���                               $    $  m       $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.01;
  $  122.����ͷ��������Ե�Ҳ�ľ���                               $    $  m       $    $  ANS013.BYTE006  $  y=(x1*256+x2)*0.01;
  $  123.����ͷ��Ŀ�����                                         $    $  m       $    $  ANS013.BYTE008  $  y=(x1*256+x2)*0.001;
  $  124.����ͷ�߶�                                               $    $  m       $    $  ANS013.BYTE010  $  y=(x1*256+x2)*0.01;
  $  125.Ŀ�����ľ�������߶�                                   $    $  m       $    $  ANS013.BYTE012  $  y=(x1*256+x2)*0.01;
  $  126.Ŀ�����ľ�����Ҳ�߶�                                   $    $  m       $    $  ANS013.BYTE014  $  y=(x1*256+x2)*0.01;
  $  127.Ŀ�����ľ������������ľ���                             $    $  m       $    $  ANS013.BYTE016  $  y=(x1*256+x2)*0.01;
  $  128.Ŀ�����ľ����������Ҳ�ľ���                             $    $  m       $    $  ANS013.BYTE018  $  y=(x1*256+x2)*0.01;
  $  129.Ŀ�굥�����С��������Ŀ��                               $    $  rad     $    $  ANS013.BYTE020  $  y=(x1*256+x2)*0.001;
  $  130.FCWδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  131.FCW�޷������ԭ��8~15                                    $    $          $    $  ANS014.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  132.FCWδ׼���ü�������                                    $    $          $    $  ANS014.BYTE006  $  y=x+2000;
  $  133.FCWδ׼���ü�����·�                                    $    $          $    $  ANS014.BYTE007  $  y=x;
  $  134.FCW�쳣�˳�ʱ������                                      $    $          $    $  ANS014.BYTE008  $  y=x;
  $  135.FCWδ׼���ü����ʱ                                      $    $          $    $  ANS014.BYTE009  $  y=x;
  $  136.FCW�쳣�˳�ʱ�ķ���                                      $    $          $    $  ANS014.BYTE010  $  y=x;
  $  137.FCWδ׼���ü������                                      $    $          $    $  ANS014.BYTE011  $  y=x;
  $  138.FCWδ׼���ü�������                                    $    $  km      $    $  ANS014.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  139.FCWδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS015.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  140.FCW�޷������ԭ��8~15                                    $    $          $    $  ANS015.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  141.FCW�˳�����״̬��ԭ��0~7(B094)                           $    $          $    $  ANS016.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0dc1;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  142.FCW�˳�����״̬��ԭ��8~15(B094)                          $    $          $    $  ANS016.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  143.FCW�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS017.BYTE004  $  if(x==0x01) y=@0dc2;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  144.FCW�Ӽ���״̬�쳣�˳�ԭ��8~15                            $    $          $    $  ANS017.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  145.FCW�쳣�˳�ʱ�����                                      $    $          $    $  ANS017.BYTE006  $  y=x+2000;
  $  146.FCW�쳣�˳�ʱ���·�                                      $    $          $    $  ANS017.BYTE007  $  y=x;
  $  147.FCW�쳣�˳�ʱ������                                      $    $          $    $  ANS017.BYTE008  $  y=x;
  $  148.FCW�쳣�˳�ʱ��ʱ��                                      $    $          $    $  ANS017.BYTE009  $  y=x;
  $  149.FCW�˳��¼���                                            $    $          $    $  ANS017.BYTE010  $  y=x;
  $  150.FCW�쳣�˳�ʱ������                                      $    $          $    $  ANS017.BYTE011  $  y=x;
  $  151.FCW�쳣�˳�ʱ�����                                      $    $  km      $    $  ANS017.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  152.FCW�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS018.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  153.FCW�Ӽ���״̬�쳣�˳�ԭ��8~15                            $    $          $    $  ANS018.BYTE005  $  if(x==0x01) y=@0daa;else if(x==0x02) y=@0b48;else if(x==0x04) y=@0b49;else if(x==0x08) y=@0b4a;else y=@0004;
  $  154.AHB(�Զ�Զ���)���ܿ���                                  $    $          $    $  ANS019.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0004;
  $  155.TSR(��ͨ��־ʶ��)���ܿ���                                $    $          $    $  ANS019.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0004;
  $  156.ACC(����ӦѲ������)���ܿ���                              $    $          $    $  ANS019.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0004;
  $  157.AEBP(�����Զ������ƶ�)���ܿ���                           $    $          $    $  ANS019.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0004;
  $  158.AEB(�Զ��ƶ�ϵͳ)���ܿ���                                $    $          $    $  ANS019.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0004;
  $  159.PCW(������ײ����)���ܿ���                                $    $          $    $  ANS019.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0004;
  $  160.FCW(������ײ����)���ܿ���                                $    $          $    $  ANS019.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0004;
  $  161.LDW(����ƫ��Ԥ��ϵͳ)���ܿ���                            $    $          $    $  ANS019.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  162.LKA(�������ָ���)���ܿ���                                $    $          $    $  ANS019.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  163.IHCδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS020.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  164.IHC�쳣�˳�ʱ�����                                      $    $          $    $  ANS020.BYTE006  $  y=x+2000;
  $  165.IHC�쳣�˳�ʱ���·�                                      $    $          $    $  ANS020.BYTE007  $  y=x;
  $  166.IHC�쳣�˳�ʱ������                                      $    $          $    $  ANS020.BYTE008  $  y=x;
  $  167.IHC�쳣�˳�ʱ��ʱ��                                      $    $          $    $  ANS020.BYTE009  $  y=x;
  $  168.IHC�쳣�˳�ʱ�ķ���                                      $    $          $    $  ANS020.BYTE010  $  y=x;
  $  169.IHCδ׼���ü������                                      $    $          $    $  ANS020.BYTE011  $  y=x;
  $  170.IHC�쳣�˳�ʱ�����                                      $    $  km      $    $  ANS020.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  171.IHCδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS021.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  172.IHC�˳�����״̬��ԭ��0~7(B096)                           $    $          $    $  ANS022.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  173.IHC�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS023.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  174.IHC�쳣�˳�ʱ�����                                      $    $          $    $  ANS023.BYTE006  $  y=x+2000;
  $  175.IHC�쳣�˳�ʱ���·�                                      $    $          $    $  ANS023.BYTE007  $  y=x;
  $  176.IHC�쳣�˳�ʱ������                                      $    $          $    $  ANS023.BYTE008  $  y=x;
  $  177.IHC�쳣�˳�ʱ��ʱ��                                      $    $          $    $  ANS023.BYTE009  $  y=x;
  $  178.IHC�쳣�˳�ʱ�ķ���                                      $    $          $    $  ANS023.BYTE010  $  y=x;
  $  179.IHC�쳣�˳�ʱ������                                      $    $          $    $  ANS023.BYTE011  $  y=x;
  $  180.IHC�쳣�˳�ʱ�����                                      $    $  km      $    $  ANS023.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  181.IHC�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS024.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;

  $)  02.������3
  $  02.������3
  $  REQ000:74A 03 22 D0 01 00 00 00 00       $  ANS000:7CA 03 22 D0 01 00 00 00 00
  $  REQ001:74A 03 22 B0 31 00 00 00 00       $  ANS001:7CA 03 22 B0 31 00 00 00 00
  $  REQ002:74A 03 22 B0 02 00 00 00 00       $  ANS002:7CA 03 22 B0 02 00 00 00 00
  $  REQ003:74A 03 22 B0 01 00 00 00 00       $  ANS003:7CA 03 22 B0 01 00 00 00 00
  $  REQ004:74A 03 22 B0 71 00 00 00 00       $  ANS004:7CA 03 22 B0 71 00 00 00 00
  $  REQ005:74A 03 22 B0 73 00 00 00 00       $  ANS005:7CA 03 22 B0 73 00 00 00 00
  $  REQ006:74A 03 22 B0 93 00 00 00 00       $  ANS006:7CA 03 22 B0 93 00 00 00 00
  $  REQ007:74A 03 22 B0 70 00 00 00 00       $  ANS007:7CA 03 22 B0 70 00 00 00 00
  $  REQ008:74A 03 22 B0 72 00 00 00 00       $  ANS008:7CA 03 22 B0 72 00 00 00 00
  $  REQ009:74A 03 22 D0 03 00 00 00 00       $  ANS009:7CA 03 22 D0 03 00 00 00 00
  $  REQ010:74A 03 22 D0 02 00 00 00 00       $  ANS010:7CA 03 22 D0 02 00 00 00 00
  $  REQ011:74A 03 22 B0 A5 00 00 00 00       $  ANS011:7CA 03 22 B0 A5 00 00 00 00
  $  REQ012:74A 03 22 B0 A6 00 00 00 00       $  ANS012:7CA 03 22 B0 A6 00 00 00 00
  $  REQ013:74A 03 22 B0 A7 00 00 00 00       $  ANS013:7CA 03 22 B0 A7 00 00 00 00
  $  REQ014:74A 03 22 B0 A8 00 00 00 00       $  ANS014:7CA 03 22 B0 A8 00 00 00 00
  $  REQ015:74A 03 22 B0 A9 00 00 00 00       $  ANS015:7CA 03 22 B0 A9 00 00 00 00
  $  REQ016:74A 03 22 B0 AB 00 00 00 00       $  ANS016:7CA 03 22 B0 AB 00 00 00 00
  $  REQ017:74A 03 22 B0 97 00 00 00 00       $  ANS017:7CA 03 22 B0 97 00 00 00 00
  $  REQ018:74A 03 22 B0 A0 00 00 00 00       $  ANS018:7CA 03 22 B0 A0 00 00 00 00
  $  REQ019:74A 03 22 B0 A1 00 00 00 00       $  ANS019:7CA 03 22 B0 A1 00 00 00 00
  $  REQ020:74A 03 22 B0 A2 00 00 00 00       $  ANS020:7CA 03 22 B0 A2 00 00 00 00
  $  REQ021:74A 03 22 B0 A3 00 00 00 00       $  ANS021:7CA 03 22 B0 A3 00 00 00 00
  $  REQ022:74A 03 22 B0 A4 00 00 00 00       $  ANS022:7CA 03 22 B0 A4 00 00 00 00
  $  REQ023:74A 03 22 B0 AA 00 00 00 00       $  ANS023:7CA 03 22 B0 AA 00 00 00 00
  $  REQ024:74A 03 22 B0 30 00 00 00 00       $  ANS024:7CA 03 22 B0 30 00 00 00 00
  $  REQ025:74A 03 22 E1 01 00 00 00 00       $  ANS025:7CA 03 22 E1 01 00 00 00 00
  $  REQ026:74A 03 22 C0 05 00 00 00 00       $  ANS026:7CA 03 22 C0 05 00 00 00 00
  $  REQ027:74A 03 22 B0 90 00 00 00 00       $  ANS027:7CA 03 22 B0 90 00 00 00 00
  $  REQ028:74A 03 22 C0 08 00 00 00 00       $  ANS028:7CA 03 22 C0 08 00 00 00 00
  $  REQ029:74A 03 22 C0 03 00 00 00 00       $  ANS029:7CA 03 22 C0 03 00 00 00 00
  $  REQ030:74A 03 22 C0 06 00 00 00 00       $  ANS030:7CA 03 22 C0 06 00 00 00 00
  $  REQ031:74A 03 22 B0 47 00 00 00 00       $  ANS031:7CA 03 22 B0 47 00 00 00 00
  $  REQ032:74A 03 22 C0 09 00 00 00 00       $  ANS032:7CA 03 22 C0 09 00 00 00 00
  $  REQ033:74A 03 22 B0 79 00 00 00 00       $  ANS033:7CA 03 22 B0 79 00 00 00 00
  $  REQ034:74A 03 22 B0 7B 00 00 00 00       $  ANS034:7CA 03 22 B0 7B 00 00 00 00
  $  REQ035:74A 03 22 B0 95 00 00 00 00       $  ANS035:7CA 03 22 B0 95 00 00 00 00
  $  REQ036:74A 03 22 B0 78 00 00 00 00       $  ANS036:7CA 03 22 B0 78 00 00 00 00
  $  REQ037:74A 03 22 B0 7A 00 00 00 00       $  ANS037:7CA 03 22 B0 7A 00 00 00 00
  $  REQ038:74A 03 22 B0 00 00 00 00 00       $  ANS038:7CA 03 22 B0 00 00 00 00 00

  $  000.ȫ��KL.50״̬                                    $    $          $    $  ANS000.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0004;
  $  001.ȫ�ַ���������״̬                               $    $          $    $  ANS000.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0004;
  $  002.ȫ�� KL.15 ״̬                                  $    $          $    $  ANS000.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0004;
  $  003.ȫ��KL.R״̬                                     $    $          $    $  ANS000.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0004;
  $  004.ϵͳKL.50״̬                                    $    $          $    $  ANS000.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0004;
  $  005.ϵͳ��������ת״̬                               $    $          $    $  ANS000.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0004;
  $  006.ϵͳKL.15״̬                                    $    $          $    $  ANS000.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0004;
  $  007.ϵͳKL.R״̬                                     $    $          $    $  ANS000.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  008.ͼ����Ԫ�¶�                                 $    $          $    $  ANS001.BYTE004  $  y=(x1*256+x2)-40;
  $  009.ͼ����Ԫ����ģʽ                             $    $          $    $  ANS002.BYTE004  $  if(x==0x00) y=@0908;else if(x==0x01) y=@0dc3;else if(x==0x02) y=@090a;else if(x==0x03) y=@090b;else if(x==0x04) y=@090c;else if(x==0x05) y=@090d;else y=@012b;
  $  010.ͼ����Ԫ����״̬                             $    $          $    $  ANS003.BYTE004  $  if(x==0x00) y=@000f;else if(x==0x02) y=@0dc4;else if(x==0x03) y=@090f;else if(x==0x22) y=@0dc5;else if(x==0x82) y=@0dc6;else if(x==0x85) y=@0dc7;else if(x==0x92) y=@0dc8;else if(x==0xAA) y=@0dc9;else if(x==0xAC) y=@0dca;else y=@012b;
  $  011.LDWδ׼���ü����ԭ��0~7                         $    $          $    $  ANS004.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  012.LDW�޷�����Ϊԭ��8~15ʱ��״̬                    $    $          $    $  ANS004.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  013.LDW�쳣�˳�ʱ�����                              $    $          $    $  ANS004.BYTE006  $  y=x+2000;
  $  014.LDWδ׼���ü�����·�                            $    $          $    $  ANS004.BYTE007  $  y=x;
  $  015.LDWδ׼���ü������                              $    $          $    $  ANS004.BYTE008  $  y=x;
  $  016.LDW�쳣�˳�ʱ��ʱ��                              $    $          $    $  ANS004.BYTE009  $  y=x;
  $  017.LDW�쳣�˳�ʱ�ķ���                              $    $          $    $  ANS004.BYTE010  $  y=x;
  $  018.LDW�쳣�˳�ʱ������                              $    $          $    $  ANS004.BYTE011  $  y=x;
  $  019.LDWδ׼���ü�������                            $    $  km      $    $  ANS004.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  020.LDWδ׼���ü����ԭ��0~7                         $    $          $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  021.LDW�޷�����Ϊԭ��8~15ʱ��״̬                    $    $          $    $  ANS005.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  022.LDWδ׼���ü����ԭ��0~7(B093)                   $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  023.LDWδ׼���ü����ԭ��0~78~15(B093)               $    $          $    $  ANS006.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  024.LDW�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0daf;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0db1;else if(x==0x10) y=@0db2;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0db3;else if(x==0x80) y=@0db4;else y=@012b;
  $  025.LDW�Ӽ���״̬�쳣�˳�Ϊԭ��8~15��״̬            $    $          $    $  ANS007.BYTE005  $  if(x==0x01) y=@0db5;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0db6;else if(x==0x10) y=@0db7;else y=@0004;
  $  026.LDW�쳣�˳�ʱ�����                              $    $          $    $  ANS007.BYTE006  $  y=x+2000;
  $  027.LDW�쳣�˳�ʱ���·�                              $    $          $    $  ANS007.BYTE007  $  y=x;
  $  028.LDW�쳣�˳�ʱ������                              $    $          $    $  ANS007.BYTE008  $  y=x;
  $  029.LDW�˳��ʱ                                    $    $          $    $  ANS007.BYTE009  $  y=x;
  $  030.LDW�쳣�˳�ʱ�ķ���                              $    $          $    $  ANS007.BYTE010  $  y=x;
  $  031.LDW�쳣�˳�ʱ������                              $    $          $    $  ANS007.BYTE011  $  y=x;
  $  032.LDW�˳��¼����                                  $    $  km      $    $  ANS007.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  033.LDW�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0db0;else if(x==0x04) y=@0dad;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0dae;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0b73;else y=@012b;
  $  034.LDW�Ӽ���״̬�쳣�˳�Ϊԭ��8~15��״̬            $    $          $    $  ANS008.BYTE005  $  if(x==0x01) y=@0da9;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  035.LDW(����ƫ��Ԥ��ϵͳ)����                        $    $          $    $  ANS009.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  036.LDW(����ƫ��Ԥ��ϵͳ)����ָʾ��                  $    $          $    $  ANS010.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0004;
  $  037.LKAδ׼���ü����ԭ��0~7                         $    $          $    $  ANS011.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  038.LKAδ׼���ü����ԭ��8~15                        $    $          $    $  ANS011.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  039.LKAδ׼���ü����ԭ��16~23                       $    $          $    $  ANS011.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  040.LKAδ׼���ü����ԭ��24~31                       $    $          $    $  ANS011.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  041.LKAδ׼���ü����ԭ��32~39                       $    $          $    $  ANS011.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  042.LKAδ׼���ü����ԭ��40~47                       $    $          $    $  ANS011.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  043.LKAδ׼���ü���Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS011.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  044.LKAδ׼���ü�������                            $    $          $    $  ANS011.BYTE012  $  y=x+2000;
  $  045.LKAδ׼���ü�����·�                            $    $          $    $  ANS011.BYTE013  $  y=x;
  $  046.LKAδ׼���ü������                              $    $          $    $  ANS011.BYTE014  $  y=x;
  $  047.LKAδ׼���ü����ʱ                              $    $          $    $  ANS011.BYTE015  $  y=x;
  $  048.LKAδ׼���ü���ķ�                              $    $          $    $  ANS011.BYTE016  $  y=x;
  $  049.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS011.BYTE017  $  y=x;
  $  050.LKAδ׼���ü�������                            $    $  km      $    $  ANS011.BYTE020  $  y=x;
  $  051.LKAδ׼���ü����ԭ��0~7                         $    $          $    $  ANS012.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  052.LKAδ׼���ü����ԭ��8~15                        $    $          $    $  ANS012.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  053.LKAδ׼���ü����ԭ��16~23                       $    $          $    $  ANS012.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  054.LKAδ׼���ü����ԭ��24~31                       $    $          $    $  ANS012.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  055.LKAδ׼���ü����ԭ��32~39                       $    $          $    $  ANS012.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  056.LKAδ׼���ü����ԭ��40~47                       $    $          $    $  ANS012.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  057.LKAδ׼���ü���Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS012.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  058.LKAδ׼���ü�������                            $    $          $    $  ANS012.BYTE012  $  y=x+2000;
  $  059.LKAδ׼���ü�����·�                            $    $          $    $  ANS012.BYTE013  $  y=x;
  $  060.LKAδ׼���ü������                              $    $          $    $  ANS012.BYTE014  $  y=x;
  $  061.LKAδ׼���ü����ʱ                              $    $          $    $  ANS012.BYTE015  $  y=x;
  $  062.LKAδ׼���ü���ķ�                              $    $          $    $  ANS012.BYTE016  $  y=x;
  $  063.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS012.BYTE017  $  y=x;
  $  064.LKAδ׼���ü�������                            $    $  km      $    $  ANS012.BYTE020  $  y=x;
  $  065.LKAδ׼���ü����ԭ��0~7                         $    $          $    $  ANS013.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  066.LKAδ׼���ü����ԭ��8~15                        $    $          $    $  ANS013.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  067.LKAδ׼���ü����ԭ��16~23                       $    $          $    $  ANS013.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  068.LKAδ׼���ü����ԭ��24~31                       $    $          $    $  ANS013.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  069.LKAδ׼���ü����ԭ��32~39                       $    $          $    $  ANS013.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  070.LKAδ׼���ü����ԭ��40~47                       $    $          $    $  ANS013.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  071.LKAδ׼���ü���Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS013.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  072.LKAδ׼���ü�������                            $    $          $    $  ANS013.BYTE012  $  y=x+2000;
  $  073.LKAδ׼���ü�����·�                            $    $          $    $  ANS013.BYTE013  $  y=x;
  $  074.LKAδ׼���ü������                              $    $          $    $  ANS013.BYTE014  $  y=x;
  $  075.LKAδ׼���ü����ʱ                              $    $          $    $  ANS013.BYTE015  $  y=x;
  $  076.LKAδ׼���ü���ķ�                              $    $          $    $  ANS013.BYTE016  $  y=x;
  $  077.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS013.BYTE017  $  y=x;
  $  078.LKAδ׼���ü�������                            $    $  km      $    $  ANS013.BYTE020  $  y=x;
  $  079.LKAδ׼���ü����ԭ��0~7                         $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  080.LKAδ׼���ü����ԭ��8~15                        $    $          $    $  ANS014.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  081.LKAδ׼���ü����ԭ��16~23                       $    $          $    $  ANS014.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  082.LKAδ׼���ü����ԭ��24~31                       $    $          $    $  ANS014.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  083.LKAδ׼���ü����ԭ��32~39                       $    $          $    $  ANS014.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  084.LKAδ׼���ü����ԭ��40~47                       $    $          $    $  ANS014.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  085.LKAδ׼���ü���Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS014.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  086.LKAδ׼���ü�������                            $    $          $    $  ANS014.BYTE012  $  y=x+2000;
  $  087.LKAδ׼���ü�����·�                            $    $          $    $  ANS014.BYTE013  $  y=x;
  $  088.LKAδ׼���ü������                              $    $          $    $  ANS014.BYTE014  $  y=x;
  $  089.LKAδ׼���ü����ʱ                              $    $          $    $  ANS014.BYTE015  $  y=x;
  $  090.LKAδ׼���ü���ķ�                              $    $          $    $  ANS014.BYTE016  $  y=x;
  $  091.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS014.BYTE017  $  y=x;
  $  092.LKAδ׼���ü�������                            $    $  km      $    $  ANS014.BYTE020  $  y=x;
  $  093.LKAδ׼���ü����ԭ��0~7                         $    $          $    $  ANS015.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  094.LKAδ׼���ü����ԭ��8~15                        $    $          $    $  ANS015.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  095.LKAδ׼���ü����ԭ��16~23                       $    $          $    $  ANS015.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  096.LKAδ׼���ü����ԭ��24~31                       $    $          $    $  ANS015.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  097.LKAδ׼���ü����ԭ��32~39                       $    $          $    $  ANS015.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  098.LKAδ׼���ü����ԭ��40~47                       $    $          $    $  ANS015.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  099.LKAδ׼���ü���Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS015.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  100.LKAδ׼���ü�������                            $    $          $    $  ANS015.BYTE012  $  y=x+2000;
  $  101.LKAδ׼���ü�����·�                            $    $          $    $  ANS015.BYTE013  $  y=x;
  $  102.LKAδ׼���ü������                              $    $          $    $  ANS015.BYTE014  $  y=x;
  $  103.LKAδ׼���ü����ʱ                              $    $          $    $  ANS015.BYTE015  $  y=x;
  $  104.LKAδ׼���ü���ķ�                              $    $          $    $  ANS015.BYTE016  $  y=x;
  $  105.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS015.BYTE017  $  y=x;
  $  106.LKAδ׼���ü�������                            $    $  km      $    $  ANS015.BYTE020  $  y=x;
  $  107.LKAδ׼���ü����ԭ��0~7                         $    $          $    $  ANS016.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b2f;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@012b;
  $  108.LKAδ׼���ü����ԭ��8~15                        $    $          $    $  ANS016.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0daa;else y=@012b;
  $  109.LKAδ׼���ü����ԭ��16~23                       $    $          $    $  ANS016.BYTE006  $  if(x==0x01) y=@0b34;else if(x==0x02) y=@0b35;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0b37;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0b39;else if(x==0x40) y=@0b3a;else if(x==0x80) y=@0b3b;else y=@012b;
  $  110.LKAδ׼���ü����ԭ��24~31                       $    $          $    $  ANS016.BYTE007  $  if(x==0x01) y=@0de2;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  111.LKAδ׼���ü����ԭ��32~39                       $    $          $    $  ANS016.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  112.LKAδ׼���ü����ԭ��40~47                       $    $          $    $  ANS016.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  113.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS017.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  114.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS017.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  115.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS017.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  116.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS017.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  117.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS017.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  118.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS017.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  119.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS018.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  120.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS018.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  121.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS018.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  122.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS018.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  123.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS018.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  124.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS018.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  125.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS018.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  126.LKA�쳣�˳�ʱ�����                              $    $          $    $  ANS018.BYTE012  $  y=x+2000;
  $  127.LKA�쳣�˳�ʱ���·�                              $    $          $    $  ANS018.BYTE013  $  y=x;
  $  128.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS018.BYTE014  $  y=x;
  $  129.LKA�쳣�˳�ʱ��ʱ��                              $    $          $    $  ANS018.BYTE015  $  y=x;
  $  130.LKA�쳣�˳�ʱ�ķ���                              $    $          $    $  ANS018.BYTE016  $  y=x;
  $  131.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS018.BYTE017  $  y=x;
  $  132.LKA�˳��¼����                                  $    $  km      $    $  ANS018.BYTE020  $  y=x;
  $  133.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS019.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  134.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS019.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  135.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS019.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  136.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS019.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  137.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS019.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  138.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS019.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  139.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS019.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  140.LKA�쳣�˳�ʱ�����                              $    $          $    $  ANS019.BYTE012  $  y=x+2000;
  $  141.LKA�쳣�˳�ʱ���·�                              $    $          $    $  ANS019.BYTE013  $  y=x;
  $  142.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS019.BYTE014  $  y=x;
  $  143.LKA�쳣�˳�ʱ��ʱ��                              $    $          $    $  ANS019.BYTE015  $  y=x;
  $  144.LKA�쳣�˳�ʱ�ķ���                              $    $          $    $  ANS019.BYTE016  $  y=x;
  $  145.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS019.BYTE017  $  y=x;
  $  146.LKA�˳��¼����                                  $    $  km      $    $  ANS019.BYTE020  $  y=x;
  $  147.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS020.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  148.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS020.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  149.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS020.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  150.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS020.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  151.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS020.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  152.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS020.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  153.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS020.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  154.LKA�쳣�˳�ʱ�����                              $    $          $    $  ANS020.BYTE012  $  y=x+2000;
  $  155.LKA�쳣�˳�ʱ���·�                              $    $          $    $  ANS020.BYTE013  $  y=x;
  $  156.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS020.BYTE014  $  y=x;
  $  157.LKA�쳣�˳�ʱ��ʱ��                              $    $          $    $  ANS020.BYTE015  $  y=x;
  $  158.LKA�쳣�˳�ʱ�ķ���                              $    $          $    $  ANS020.BYTE016  $  y=x;
  $  159.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS020.BYTE017  $  y=x;
  $  160.LKA�˳��¼����                                  $    $  km      $    $  ANS020.BYTE020  $  y=x;
  $  161.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS021.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  162.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS021.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  163.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS021.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  164.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS021.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  165.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS021.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  166.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS021.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  167.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS021.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  168.LKA�쳣�˳�ʱ�����                              $    $          $    $  ANS021.BYTE012  $  y=x+2000;
  $  169.LKA�쳣�˳�ʱ���·�                              $    $          $    $  ANS021.BYTE013  $  y=x;
  $  170.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS021.BYTE014  $  y=x;
  $  171.LKA�쳣�˳�ʱ��ʱ��                              $    $          $    $  ANS021.BYTE015  $  y=x;
  $  172.LKA�쳣�˳�ʱ�ķ���                              $    $          $    $  ANS021.BYTE016  $  y=x;
  $  173.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS021.BYTE017  $  y=x;
  $  174.LKA�˳��¼����                                  $    $  km      $    $  ANS021.BYTE020  $  y=x;
  $  175.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS022.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  176.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS022.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  177.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS022.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  178.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS022.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  179.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS022.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  180.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS022.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  181.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS022.BYTE010  $  if((x1*256+x2)==0x01) y=@0b7e;else if((x1*256+x2)==0x02) y=@0b7f;else if((x1*256+x2)==0x04) y=@0b80;else if((x1*256+x2)==0x08) y=@0b81;else if((x1*256+x2)==0x10) y=@0b82;else if((x1*256+x2)==0x100) y=@0b6c;else if((x1*256+x2)==0x1000) y=@0004;else if((x1*256+x2)==0x20) y=@0b83;else if((x1*256+x2)==0x200) y=@0dda;else if((x1*256+x2)==0x2000) y=@0004;else if((x1*256+x2)==0x40) y=@0ddb;else if((x1*256+x2)==0x400) y=@0004;else if((x1*256+x2)==0x4000) y=@0004;else if((x1*256+x2)==0x80) y=@0ddc;else if((x1*256+x2)==0x800) y=@0004;else if((x1*256+x2)==0x8000) y=@0004;else y=@012b;
  $  182.LKA�쳣�˳�ʱ�����                              $    $          $    $  ANS022.BYTE012  $  y=x+2000;
  $  183.LKA�쳣�˳�ʱ���·�                              $    $          $    $  ANS022.BYTE013  $  y=x;
  $  184.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS022.BYTE014  $  y=x;
  $  185.LKA�쳣�˳�ʱ��ʱ��                              $    $          $    $  ANS022.BYTE015  $  y=x;
  $  186.LKA�쳣�˳�ʱ�ķ���                              $    $          $    $  ANS022.BYTE016  $  y=x;
  $  187.LKA�쳣�˳�ʱ������                              $    $          $    $  ANS022.BYTE017  $  y=x;
  $  188.LKA�˳��¼����                                  $    $  km      $    $  ANS022.BYTE020  $  y=x;
  $  189.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS023.BYTE004  $  if(x==0x01) y=@0db8;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0b45;else if(x==0x20) y=@091c;else if(x==0x40) y=@0b46;else if(x==0x80) y=@0abc;else y=@012b;
  $  190.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS023.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0b17;else if(x==0x04) y=@0103;else if(x==0x08) y=@0b18;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@012b;
  $  191.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS023.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0daa;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0dbc;else if(x==0x80) y=@0b24;else y=@012b;
  $  192.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS023.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0dc0;else if(x==0x10) y=@0b34;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  193.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS023.BYTE008  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  194.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS023.BYTE009  $  if(x==0x01) y=@0004;else if(x==0x02) y=@0004;else if(x==0x04) y=@0004;else if(x==0x08) y=@0004;else if(x==0x10) y=@0004;else if(x==0x20) y=@0004;else if(x==0x40) y=@0004;else if(x==0x80) y=@0004;else y=@012b;
  $  195.AHB�Զ����ϵͳ����                              $    $          $    $  ANS024.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00b1;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0004;
  $  196.TSR(��ͨ��־ʶ��)����                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00b1;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0004;
  $  197.ACC(����ӦѲ������)����                          $    $          $    $  ANS024.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00b1;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0004;
  $  198.AEBP(�����Զ������ƶ�)����                       $    $          $    $  ANS024.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00b1;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0004;
  $  199.AEB(�Զ��ƶ�ϵͳ)����                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00b1;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0004;
  $  200.PCW(������ײ����)����                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00b1;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0004;
  $  201.FCW(������ײ����)����                            $    $          $    $  ANS024.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00b1;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0004;
  $  202.LDW(����ƫ��Ԥ��ϵͳ)����                        $    $          $    $  ANS024.BYTE004  $  if((x&0x01)==0x00) y=@00b1;else if((x&0x01)==0x01) y=@00dc;else y=@0004;
  $  203.LKA(�������ָ���)����                            $    $          $    $  ANS024.BYTE005  $  if((x&0x01)==0x00) y=@00b1;else if((x&0x01)==0x01) y=@00dc;else y=@0004;
  $  204.���������ź�Ч��                                 $    $          $    $  ANS024.BYTE006  $  HEX(X1);
  $  205.��̱����                                       $    $  km      $    $  ANS025.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  206.����������                                       $    $          $    $  ANS026.BYTE004  $  if(x==0x00) y=@0136;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0da8;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@012b;
  $  207.ˢд������                                     $    $          $    $  ANS027.BYTE006  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  208.PLL(���໷)У�����                              $    $          $    $  ANS027.BYTE007  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  209.�ڴ�У�����                                     $    $          $    $  ANS027.BYTE008  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  210.��ջ������                                     $    $          $    $  ANS027.BYTE009  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  211.δʹ�õĴ洢��У�����                           $    $          $    $  ANS027.BYTE010  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  212.ECC(������;���)У�����                      $    $          $    $  ANS027.BYTE011  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  213.�����Ĵ���У�����                               $    $          $    $  ANS027.BYTE012  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  214.Spi��ʱ                                          $    $          $    $  ANS027.BYTE013  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@012b;
  $  215.ESR0���ô���                                     $    $          $    $  ANS027.BYTE014  $  y=x;
  $  216.ESR1���ô���                                     $    $          $    $  ANS027.BYTE015  $  y=x;
  $  217.SMU�ĸ�λ������                                  $    $          $    $  ANS027.BYTE016  $  y=x;
  $  218.�����λ�ĸ�λ������                             $    $          $    $  ANS027.BYTE017  $  y=x;
  $  219.STM0���ô���                                     $    $          $    $  ANS027.BYTE018  $  y=x;
  $  220.STM1���ô���                                     $    $          $    $  ANS027.BYTE019  $  y=x;
  $  221.STM2���ô���                                     $    $          $    $  ANS027.BYTE020  $  y=x;
  $  222.MultipleReset���ô���                            $    $          $    $  ANS027.BYTE021  $  y=x;
  $  223.CB0���ô���                                      $    $          $    $  ANS027.BYTE022  $  y=x;
  $  224.CB1���ô���                                      $    $          $    $  ANS027.BYTE023  $  y=x;
  $  225.CB3���ô���                                      $    $          $    $  ANS027.BYTE024  $  y=x;
  $  226.���ű����ĸ�λ������                             $    $          $    $  ANS027.BYTE025  $  y=x;
  $  227.EVR13�ĸ�λ������                                $    $          $    $  ANS027.BYTE026  $  y=x;
  $  228.EVR33�ĸ�λ������                                $    $          $    $  ANS027.BYTE027  $  y=x;
  $  229.���ӿ��Ź��ĸ�λ������                           $    $          $    $  ANS027.BYTE028  $  y=x;
  $  230.���ÿ��Ź��ĸ�λ������                           $    $          $    $  ANS027.BYTE029  $  y=x;
  $  231.�ɿ����������                                   $    $          $    $  ANS027.BYTE030  $  y=x+2000;
  $  232.�ɿ��������·�                                   $    $          $    $  ANS027.BYTE031  $  y=x;
  $  233.�ɿ�����������                                   $    $          $    $  ANS027.BYTE032  $  y=x;
  $  234.�ɿ�������ʱ                                     $    $          $    $  ANS027.BYTE033  $  y=x;
  $  235.�ɿ������ݷ�                                     $    $          $    $  ANS027.BYTE034  $  y=x;
  $  236.�ɿ���������                                     $    $          $    $  ANS027.BYTE035  $  y=x;
  $  237.�ɿ����������                                   $    $  km      $    $  ANS027.BYTE036  $  y=(x1*256*256+x2*256+x3);
  $  238.��������                                         $    $          $    $  ANS028.BYTE004  $  if(x==0x01) y=@0de6;else if(x==0x02) y=@0de7;else if(x==0x03) y=@0de8;else if(x==0x04) y=@0de9;else if(x==0x05) y=@0dea;else if(x==0x06) y=@0deb;else if(x==0x07) y=@0dec;else if(x==0x08) y=@0ded;else y=@0004;
  $  239.FCW(������ײ����)����ѡ���������ȵȼ�            $    $          $    $  ANS029.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@02ce;else if(((x&0xF0)>>4)==0x01) y=@098b;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@098c;else y=@012b;
  $  240.LDW(����ƫ��Ԥ��ϵͳ)����ѡ���������ȵȼ�        $    $          $    $  ANS029.BYTE004  $  if((x&0x0F)==0x00) y=@02ce;else if((x&0x0F)==0x01) y=@098b;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@098c;else y=@012b;
  $  241.AEB(�Զ��ƶ�ϵͳ)����ѡ��������ȵȼ�            $    $          $    $  ANS029.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@02ce;else if(((x&0xF0)>>4)==0x01) y=@098b;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@098c;else y=@012b;
  $  242.ACC(����ӦѲ������)����ѡ����Ŀ�����ȼ�        $    $          $    $  ANS029.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@012b;
  $  243.PCW(������ײ����)��ʻԱѡ���������ȵȼ�          $    $          $    $  ANS029.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@02ce;else if(((x&0xF0)>>4)==0x01) y=@098b;else if(((x&0xF0)>>4)==0x02) y=@08ce;else if(((x&0xF0)>>4)==0x03) y=@098c;else y=@012b;
  $  244.AEBP(�����Զ������ƶ�)����ѡ��������ȵȼ�       $    $          $    $  ANS029.BYTE006  $  if((x&0x0F)==0x00) y=@02ce;else if((x&0x0F)==0x01) y=@098b;else if((x&0x0F)==0x02) y=@08ce;else if((x&0x0F)==0x03) y=@098c;else y=@012b;
  $  245.����ͷ��Ŀ���ٶ�Ҫ��                             $    $          $    $  ANS030.BYTE004  $  y=(x1*256+x2);
  $  246.ACC��ʻԱѡ����ٶ�                              $    $          $    $  ANS030.BYTE006  $  y=(x1*256+x2);
  $  247.��Ӧ��оƬ���ٺ�                                 $    $          $    $  ANS031.BYTE004  $  y=UINT64(x1,x2,x3,x4,x5,x6,x7,x8);
  $  248.�Զ���������Ƶ�Ԫ����                           $    $          $    $  ANS032.BYTE004  $  if(x==0x01) y=@0dee;else if(x==0x02) y=@0164;else y=@0004;
  $  249.TSRδ׼���ü����ԭ��0~7                         $    $          $    $  ANS033.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  250.TSRδ׼���ü�������                            $    $          $    $  ANS033.BYTE006  $  y=x+2000;
  $  251.TSRδ׼���ü�����·�                            $    $          $    $  ANS033.BYTE007  $  y=x;
  $  252.TSR�쳣�˳�ʱ������                              $    $          $    $  ANS033.BYTE008  $  y=x;
  $  253.TSRδ׼���ü����ʱ                              $    $          $    $  ANS033.BYTE009  $  y=x;
  $  254.TSR�쳣�˳�ʱ�ķ���                              $    $          $    $  ANS033.BYTE010  $  y=x;
  $  255.TSRδ׼���ü������                              $    $          $    $  ANS033.BYTE011  $  y=x;
  $  256.TSR�쳣�˳�ʱ�����                              $    $  km      $    $  ANS033.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  257.TSRδ׼���ü����ԭ��0~7                         $    $          $    $  ANS034.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  258.TSRδ׼���ü����ԭ��8~15                        $    $          $    $  ANS034.BYTE005  $  if(x==0x00)y=@075a;else y=@0dde;
  $  259.TSR�˳�����״̬��ԭ��0~7(B095)                   $    $          $    $  ANS035.BYTE004  $  if(x==0x01) y=@0dad;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  260.TSR�˳�����״̬��ԭ��8~15(B095)                  $    $          $    $  ANS035.BYTE005  $  if(x==0x00)y=@075a;else y=@0dde;
  $  261.TSR�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS036.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  262.TSR�쳣�˳�ʱ�����                              $    $          $    $  ANS036.BYTE006  $  y=x+2000;
  $  263.TSR�쳣�˳�ʱ���·�                              $    $          $    $  ANS036.BYTE007  $  y=x;
  $  264.TSR�쳣�˳�ʱ������                              $    $          $    $  ANS036.BYTE008  $  y=x;
  $  265.TSR�쳣�˳�ʱ��ʱ��                              $    $          $    $  ANS036.BYTE009  $  y=x;
  $  266.TSR�쳣�˳�ʱ�ķ���                              $    $          $    $  ANS036.BYTE010  $  y=x;
  $  267.TSR�˳��¼���                                    $    $          $    $  ANS036.BYTE011  $  y=x;
  $  268.TSR�˳��¼����                                  $    $  km      $    $  ANS036.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  269.TSR�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS037.BYTE004  $  if(x==0x01) y=@0dc1;else if(x==0x02) y=@0daa;else if(x==0x04) y=@0b48;else if(x==0x08) y=@0b49;else if(x==0x10) y=@0b4a;else y=@0004;
  $  270.TSR�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS037.BYTE005  $  if(x==0x00)y=@075a;else y=@0dde;
  $  271.�����ٶ�                                         $    $  kph     $    $  ANS038.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:74A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
