
    ����ID��10b9

    ģ�⣺Э��ģ��-->10b9

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

  $*$*DTC/b6000000


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
  $%  007:��ص�Ԫ����ţ��ϴΣ�:          $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  008:���Թ��߲ο��ţ��ϴΣ�:          $%    $%  ANS007.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  009:��̶������ϴΣ�:                $%    $%  ANS007.BYTE015  $%  HEX(X1,X2,X3);
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

  $  000.ACCδ׼���ü����ԭ��0~7               $    $         $    $  ANS000.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  001.ACCδ׼���ü����ԭ��8~15              $    $         $    $  ANS000.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  002.ACCδ׼���ü����ԭ��16~23             $    $         $    $  ANS000.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  003.ACCδ׼���ü����ԭ��24~31             $    $         $    $  ANS000.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  004.ACCδ׼���ü����ԭ��32~39             $    $         $    $  ANS000.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  005.ACCδ׼���ü����ԭ��40~47             $    $         $    $  ANS000.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  006.ACCδ׼���ü����ԭ��48_55             $    $         $    $  ANS000.BYTE010  $  y=x;
  $  007.ACCδ׼���ü����ԭ��56_63             $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.ACCδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS000.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  009.ACCδ׼���ü�������                  $    $         $    $  ANS000.BYTE014  $  y=x+2000;
  $  010.ACCδ׼���ü�����·�                  $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.ACCδ׼���ü������                    $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.ACCδ׼���ü����ʱ                    $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.ACCδ׼���ü���ķ�                    $    $         $    $  ANS000.BYTE018  $  y=x;
  $  014.ACCδ׼���ü������                    $    $         $    $  ANS000.BYTE019  $  y=x;
  $  015.ACCδ׼���ü�������                  $    $  km     $    $  ANS000.BYTE023  $  y=x;
  $  016.ACCδ׼���ü����ԭ��0~7               $    $         $    $  ANS001.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  017.ACCδ׼���ü����ԭ��8~15              $    $         $    $  ANS001.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  018.ACCδ׼���ü����ԭ��16~23             $    $         $    $  ANS001.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  019.ACCδ׼���ü����ԭ��24~31             $    $         $    $  ANS001.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  020.ACCδ׼���ü����ԭ��32~39             $    $         $    $  ANS001.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  021.ACCδ׼���ü����ԭ��40~47             $    $         $    $  ANS001.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  022.ACCδ׼���ü����ԭ��48_55             $    $         $    $  ANS001.BYTE010  $  y=x;
  $  023.ACCδ׼���ü����ԭ��56_63             $    $         $    $  ANS001.BYTE011  $  y=x;
  $  024.ACCδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS001.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  025.ACCδ׼���ü�������                  $    $         $    $  ANS001.BYTE014  $  y=x+2000;
  $  026.ACCδ׼���ü�����·�                  $    $         $    $  ANS001.BYTE015  $  y=x;
  $  027.ACCδ׼���ü������                    $    $         $    $  ANS001.BYTE016  $  y=x;
  $  028.ACCδ׼���ü����ʱ                    $    $         $    $  ANS001.BYTE017  $  y=x;
  $  029.ACCδ׼���ü���ķ�                    $    $         $    $  ANS001.BYTE018  $  y=x;
  $  030.ACCδ׼���ü������                    $    $         $    $  ANS001.BYTE019  $  y=x;
  $  031.ACCδ׼���ü�������                  $    $  km     $    $  ANS001.BYTE023  $  y=x;
  $  032.ACCδ׼���ü����ԭ��0~7               $    $         $    $  ANS002.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  033.ACCδ׼���ü����ԭ��8~15              $    $         $    $  ANS002.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  034.ACCδ׼���ü����ԭ��16~23             $    $         $    $  ANS002.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  035.ACCδ׼���ü����ԭ��24~31             $    $         $    $  ANS002.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  036.ACCδ׼���ü����ԭ��32~39             $    $         $    $  ANS002.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  037.ACCδ׼���ü����ԭ��40~47             $    $         $    $  ANS002.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  038.ACCδ׼���ü����ԭ��48_55             $    $         $    $  ANS002.BYTE010  $  y=x;
  $  039.ACCδ׼���ü����ԭ��56_63             $    $         $    $  ANS002.BYTE011  $  y=x;
  $  040.ACCδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS002.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  041.ACCδ׼���ü�������                  $    $         $    $  ANS002.BYTE014  $  y=x+2000;
  $  042.ACCδ׼���ü�����·�                  $    $         $    $  ANS002.BYTE015  $  y=x;
  $  043.ACCδ׼���ü������                    $    $         $    $  ANS002.BYTE016  $  y=x;
  $  044.ACCδ׼���ü����ʱ                    $    $         $    $  ANS002.BYTE017  $  y=x;
  $  045.ACCδ׼���ü���ķ�                    $    $         $    $  ANS002.BYTE018  $  y=x;
  $  046.ACCδ׼���ü������                    $    $         $    $  ANS002.BYTE019  $  y=x;
  $  047.ACCδ׼���ü�������                  $    $  km     $    $  ANS002.BYTE023  $  y=x;
  $  048.ACCδ׼���ü����ԭ��0~7               $    $         $    $  ANS003.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  049.ACCδ׼���ü����ԭ��8~15              $    $         $    $  ANS003.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  050.ACCδ׼���ü����ԭ��16~23             $    $         $    $  ANS003.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  051.ACCδ׼���ü����ԭ��24~31             $    $         $    $  ANS003.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  052.ACCδ׼���ü����ԭ��32~39             $    $         $    $  ANS003.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  053.ACCδ׼���ü����ԭ��40~47             $    $         $    $  ANS003.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  054.ACCδ׼���ü����ԭ��48_55             $    $         $    $  ANS003.BYTE010  $  y=x;
  $  055.ACCδ׼���ü����ԭ��56_63             $    $         $    $  ANS003.BYTE011  $  y=x;
  $  056.ACCδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS003.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  057.ACCδ׼���ü�������                  $    $         $    $  ANS003.BYTE014  $  y=x+2000;
  $  058.ACCδ׼���ü�����·�                  $    $         $    $  ANS003.BYTE015  $  y=x;
  $  059.ACCδ׼���ü������                    $    $         $    $  ANS003.BYTE016  $  y=x;
  $  060.ACCδ׼���ü����ʱ                    $    $         $    $  ANS003.BYTE017  $  y=x;
  $  061.ACCδ׼���ü���ķ�                    $    $         $    $  ANS003.BYTE018  $  y=x;
  $  062.ACCδ׼���ü������                    $    $         $    $  ANS003.BYTE019  $  y=x;
  $  063.ACCδ׼���ü�������                  $    $  km     $    $  ANS003.BYTE023  $  y=x;
  $  064.ACCδ׼���ü����ԭ��0~7               $    $         $    $  ANS004.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  065.ACCδ׼���ü����ԭ��8~15              $    $         $    $  ANS004.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  066.ACCδ׼���ü����ԭ��16~23             $    $         $    $  ANS004.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  067.ACCδ׼���ü����ԭ��24~31             $    $         $    $  ANS004.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  068.ACCδ׼���ü����ԭ��32~39             $    $         $    $  ANS004.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  069.ACCδ׼���ü����ԭ��40~47             $    $         $    $  ANS004.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  070.ACCδ׼���ü����ԭ��48_55             $    $         $    $  ANS004.BYTE010  $  y=x;
  $  071.ACCδ׼���ü����ԭ��56_63             $    $         $    $  ANS004.BYTE011  $  y=x;
  $  072.ACCδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS004.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  073.ACCδ׼���ü�������                  $    $         $    $  ANS004.BYTE014  $  y=x+2000;
  $  074.ACCδ׼���ü�����·�                  $    $         $    $  ANS004.BYTE015  $  y=x;
  $  075.ACCδ׼���ü������                    $    $         $    $  ANS004.BYTE016  $  y=x;
  $  076.ACCδ׼���ü����ʱ                    $    $         $    $  ANS004.BYTE017  $  y=x;
  $  077.ACCδ׼���ü���ķ�                    $    $         $    $  ANS004.BYTE018  $  y=x;
  $  078.ACCδ׼���ü������                    $    $         $    $  ANS004.BYTE019  $  y=x;
  $  079.ACCδ׼���ü�������                  $    $  km     $    $  ANS004.BYTE023  $  y=x;
  $  080.ACCδ׼���ü����ԭ��0~7               $    $         $    $  ANS005.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0103;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  081.ACCδ׼���ü����ԭ��8~15              $    $         $    $  ANS005.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  082.ACCδ׼���ü����ԭ��16~23             $    $         $    $  ANS005.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  083.ACCδ׼���ü����ԭ��24~31             $    $         $    $  ANS005.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0103;else if(x==0x40) y=@0103;else if(x==0x80) y=@0b64;else y=@0103;
  $  084.ACCδ׼���ü����ԭ��32~39             $    $         $    $  ANS005.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0103;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  085.ACCδ׼���ü����ԭ��40~47             $    $         $    $  ANS005.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  086.ACCδ׼���ü����ԭ��48~55             $    $         $    $  ANS005.BYTE010  $  y=x;
  $  087.ACCδ׼���ü����ԭ��56_63             $    $         $    $  ANS005.BYTE011  $  y=x;
  $  088.ACC�˳�����״̬��ԭ��0~7(B091)         $    $         $    $  ANS006.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  089.ACC�˳�����״̬��ԭ��8~15(B091)        $    $         $    $  ANS006.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  090.ACC�˳�����״̬��ԭ��16~23(B091)       $    $         $    $  ANS006.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  091.ACC�˳�����״̬��ԭ��24~31(B091)       $    $         $    $  ANS006.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  092.ACC�˳�����״̬��ԭ��32~39(B091)       $    $         $    $  ANS006.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  093.ACC�˳�����״̬��ԭ��40~47(B091)       $    $         $    $  ANS006.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  094.ACC�˳�����״̬��ԭ��48_55             $    $         $    $  ANS006.BYTE010  $  y=x;
  $  095.ACC�˳�����״̬��ԭ��56_63             $    $         $    $  ANS006.BYTE011  $  y=x;
  $  096.ACC�˳�����״̬��ԭ��0~7               $    $         $    $  ANS007.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  097.ACC�˳�����״̬��ԭ��8~15              $    $         $    $  ANS007.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  098.ACC�˳�����״̬��ԭ��16~23             $    $         $    $  ANS007.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  099.ACC�˳�����״̬��ԭ��24~31             $    $         $    $  ANS007.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  100.ACC�˳�����״̬��ԭ��32~39             $    $         $    $  ANS007.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  101.ACC�˳�����״̬��ԭ��40~47             $    $         $    $  ANS007.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  102.ACC�˳�����״̬��ԭ��48~55             $    $         $    $  ANS007.BYTE010  $  y=x;
  $  103.ACC�˳�����״̬��ԭ��56~63             $    $         $    $  ANS007.BYTE011  $  y=x;
  $  104.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS007.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  105.ACC�˳��¼����                        $    $         $    $  ANS007.BYTE014  $  y=x+2000;
  $  106.ACC�˳��¼��·�                        $    $         $    $  ANS007.BYTE015  $  y=x;
  $  107.ACC�˳����                          $    $         $    $  ANS007.BYTE016  $  y=x;
  $  108.ACC�˳��ʱ                          $    $         $    $  ANS007.BYTE017  $  y=x;
  $  109.ACC�˳��¼���                          $    $         $    $  ANS007.BYTE018  $  y=x;
  $  110.ACC�˳��¼���                          $    $         $    $  ANS007.BYTE019  $  y=x;
  $  111.ACC�˳��¼����                        $    $  km     $    $  ANS007.BYTE023  $  y=x;
  $  112.ACC�˳�����״̬��ԭ��0~7               $    $         $    $  ANS008.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  113.ACC�˳�����״̬��ԭ��8~15              $    $         $    $  ANS008.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  114.ACC�˳�����״̬��ԭ��16~23             $    $         $    $  ANS008.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  115.ACC�˳�����״̬��ԭ��24~31             $    $         $    $  ANS008.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  116.ACC�˳�����״̬��ԭ��32~39             $    $         $    $  ANS008.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  117.ACC�˳�����״̬��ԭ��40~47             $    $         $    $  ANS008.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  118.ACC�˳�����״̬��ԭ��48~55             $    $         $    $  ANS008.BYTE010  $  y=x;
  $  119.ACC�˳�����״̬��ԭ��56~63             $    $         $    $  ANS008.BYTE011  $  y=x;
  $  120.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS008.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  121.ACC�˳��¼����                        $    $         $    $  ANS008.BYTE014  $  y=x+2000;
  $  122.ACC�˳��¼��·�                        $    $         $    $  ANS008.BYTE015  $  y=x;
  $  123.ACC�˳����                          $    $         $    $  ANS008.BYTE016  $  y=x;
  $  124.ACC�˳��ʱ                          $    $         $    $  ANS008.BYTE017  $  y=x;
  $  125.ACC�˳��¼���                          $    $         $    $  ANS008.BYTE018  $  y=x;
  $  126.ACC�˳��¼���                          $    $         $    $  ANS008.BYTE019  $  y=x;
  $  127.ACC�˳��¼����                        $    $  km     $    $  ANS008.BYTE023  $  y=x;
  $  128.ACC�˳�����״̬��ԭ��0~7               $    $         $    $  ANS009.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  129.ACC�˳�����״̬��ԭ��8~15              $    $         $    $  ANS009.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  130.ACC�˳�����״̬��ԭ��16~23             $    $         $    $  ANS009.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  131.ACC�˳�����״̬��ԭ��24~31             $    $         $    $  ANS009.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  132.ACC�˳�����״̬��ԭ��32~39             $    $         $    $  ANS009.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  133.ACC�˳�����״̬��ԭ��40~47             $    $         $    $  ANS009.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  134.ACC�˳�����״̬��ԭ��48~55             $    $         $    $  ANS009.BYTE010  $  y=x;
  $  135.ACC�˳�����״̬��ԭ��56~63             $    $         $    $  ANS009.BYTE011  $  y=x;
  $  136.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS009.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  137.ACC�˳��¼����                        $    $         $    $  ANS009.BYTE014  $  y=x+2000;
  $  138.ACC�˳��¼��·�                        $    $         $    $  ANS009.BYTE015  $  y=x;
  $  139.ACC�˳����                          $    $         $    $  ANS009.BYTE016  $  y=x;
  $  140.ACC�˳��ʱ                          $    $         $    $  ANS009.BYTE017  $  y=x;
  $  141.ACC�˳��¼���                          $    $         $    $  ANS009.BYTE018  $  y=x;
  $  142.ACC�˳��¼���                          $    $         $    $  ANS009.BYTE019  $  y=x;
  $  143.ACC�˳��¼����                        $    $  km     $    $  ANS009.BYTE023  $  y=x;
  $  144.ACC�˳�����״̬��ԭ��0~7               $    $         $    $  ANS010.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  145.ACC�˳�����״̬��ԭ��8~15              $    $         $    $  ANS010.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  146.ACC�˳�����״̬��ԭ��16~23             $    $         $    $  ANS010.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  147.ACC�˳�����״̬��ԭ��24~31             $    $         $    $  ANS010.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  148.ACC�˳�����״̬��ԭ��32~39             $    $         $    $  ANS010.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  149.ACC�˳�����״̬��ԭ��40~47             $    $         $    $  ANS010.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  150.ACC�˳�����״̬��ԭ��48~55             $    $         $    $  ANS010.BYTE010  $  y=x;
  $  151.ACC�˳�����״̬��ԭ��56~63             $    $         $    $  ANS010.BYTE011  $  y=x;
  $  152.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS010.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  153.ACC�˳��¼����                        $    $         $    $  ANS010.BYTE014  $  y=x+2000;
  $  154.ACC�˳��¼��·�                        $    $         $    $  ANS010.BYTE015  $  y=x;
  $  155.ACC�˳����                          $    $         $    $  ANS010.BYTE016  $  y=x;
  $  156.ACC�˳��ʱ                          $    $         $    $  ANS010.BYTE017  $  y=x;
  $  157.ACC�˳��¼���                          $    $         $    $  ANS010.BYTE018  $  y=x;
  $  158.ACC�˳��¼���                          $    $         $    $  ANS010.BYTE019  $  y=x;
  $  159.ACC�˳��¼����                        $    $  km     $    $  ANS010.BYTE023  $  y=x;
  $  160.ACC�˳�����״̬��ԭ��0~7               $    $         $    $  ANS011.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  161.ACC�˳�����״̬��ԭ��8~15              $    $         $    $  ANS011.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  162.ACC�˳�����״̬��ԭ��16~23             $    $         $    $  ANS011.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  163.ACC�˳�����״̬��ԭ��24~31             $    $         $    $  ANS011.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  164.ACC�˳�����״̬��ԭ��32~39             $    $         $    $  ANS011.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  165.ACC�˳�����״̬��ԭ��40~47             $    $         $    $  ANS011.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  166.ACC�˳�����״̬��ԭ��48~55             $    $         $    $  ANS011.BYTE010  $  y=x;
  $  167.ACC�˳�����״̬��ԭ��56~63             $    $         $    $  ANS011.BYTE011  $  y=x;
  $  168.ACC�˳�����״̬�Ĺ��ϰ�ȫ��־          $    $         $    $  ANS011.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  169.ACC�˳��¼����                        $    $         $    $  ANS011.BYTE014  $  y=x+2000;
  $  170.ACC�˳��¼��·�                        $    $         $    $  ANS011.BYTE015  $  y=x;
  $  171.ACC�˳����                          $    $         $    $  ANS011.BYTE016  $  y=x;
  $  172.ACC�˳��ʱ                          $    $         $    $  ANS011.BYTE017  $  y=x;
  $  173.ACC�˳��¼���                          $    $         $    $  ANS011.BYTE018  $  y=x;
  $  174.ACC�˳��¼���                          $    $         $    $  ANS011.BYTE019  $  y=x;
  $  175.ACC�˳��¼����                        $    $  km     $    $  ANS011.BYTE023  $  y=x;
  $  176.ACC�˳�����״̬��ԭ��0~7               $    $         $    $  ANS012.BYTE004  $  if(x==0x01) y=@0ee3;else if(x==0x02) y=@0df4;else if(x==0x04) y=@0103;else if(x==0x08) y=@0103;else if(x==0x10) y=@0e13;else if(x==0x20) y=@0e14;else if(x==0x40) y=@0dce;else if(x==0x80) y=@0b4f;else y=@0103;
  $  177.ACC�˳�����״̬��ԭ��8~15              $    $         $    $  ANS012.BYTE005  $  if(x==0x01) y=@0b50;else if(x==0x02) y=@0df6;else if(x==0x04) y=@0e19;else if(x==0x08) y=@0b53;else if(x==0x10) y=@0dd2;else if(x==0x20) y=@0df5;else if(x==0x40) y=@0dd6;else if(x==0x80) y=@0dd7;else y=@0103;
  $  178.ACC�˳�����״̬��ԭ��16~23             $    $         $    $  ANS012.BYTE006  $  if(x==0x01) y=@0dd8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0df8;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dd9;else if(x==0x40) y=@0e1a;else if(x==0x80) y=@0dfa;else y=@0103;
  $  179.ACC�˳�����״̬��ԭ��24~31             $    $         $    $  ANS012.BYTE007  $  if(x==0x01) y=@0b5f;else if(x==0x02) y=@0b60;else if(x==0x04) y=@0b61;else if(x==0x08) y=@0dcf;else if(x==0x10) y=@0b63;else if(x==0x20) y=@0e15;else if(x==0x40) y=@0b44;else if(x==0x80) y=@0b64;else y=@0103;
  $  180.ACC�˳�����״̬��ԭ��32~39             $    $         $    $  ANS012.BYTE008  $  if(x==0x01) y=@0b65;else if(x==0x02) y=@0b66;else if(x==0x04) y=@0e16;else if(x==0x08) y=@0dfc;else if(x==0x10) y=@0b68;else if(x==0x20) y=@0b69;else if(x==0x40) y=@0dfd;else if(x==0x80) y=@0dd1;else y=@0103;
  $  181.ACC�˳�����״̬��ԭ��40~47             $    $         $    $  ANS012.BYTE009  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  182.ACC�˳�����״̬��ԭ��48_55             $    $         $    $  ANS012.BYTE010  $  y=x;
  $  183.ACC�˳�����״̬��ԭ��56_63             $    $         $    $  ANS012.BYTE011  $  y=x;
  $  184.AEBδ׼���ü����ԭ��0~7               $    $         $    $  ANS013.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  185.AEBδ׼���ü����ԭ��8~15              $    $         $    $  ANS013.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  186.AEBδ׼���ü����ԭ��16~23             $    $         $    $  ANS013.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  187.AEBδ׼���ü����ԭ��24~31             $    $         $    $  ANS013.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  188.AEBδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS013.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  189.AEBδ׼���ü�������                  $    $         $    $  ANS013.BYTE010  $  y=x+2000;
  $  190.AEBδ׼���ü�����·�                  $    $         $    $  ANS013.BYTE011  $  y=x;
  $  191.AEBδ׼���ü������                    $    $         $    $  ANS013.BYTE012  $  y=x;
  $  192.AEBδ׼���ü����ʱ                    $    $         $    $  ANS013.BYTE013  $  y=x;
  $  193.AEBδ׼���ü���ķ�                    $    $         $    $  ANS013.BYTE014  $  y=x;
  $  194.AEBδ׼���ü������                    $    $         $    $  ANS013.BYTE015  $  y=x;
  $  195.AEBδ׼���ü�������                  $    $         $    $  ANS013.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  196.AEBδ׼���ü����ԭ��0~7               $    $         $    $  ANS014.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  197.AEBδ׼���ü����ԭ��8~15              $    $         $    $  ANS014.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  198.AEBδ׼���ü����ԭ��16~23             $    $         $    $  ANS014.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  199.AEBδ׼���ü����ԭ��24~31             $    $         $    $  ANS014.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  200.AEBδ׼���ü���Ĺ��ϰ�ȫ��־          $    $         $    $  ANS014.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  201.AEBδ׼���ü�������                  $    $         $    $  ANS014.BYTE010  $  y=x+2000;
  $  202.AEBδ׼���ü�����·�                  $    $         $    $  ANS014.BYTE011  $  y=x;
  $  203.AEBδ׼���ü������                    $    $         $    $  ANS014.BYTE012  $  y=x;
  $  204.AEBδ׼���ü����ʱ                    $    $         $    $  ANS014.BYTE013  $  y=x;
  $  205.AEBδ׼���ü���ķ�                    $    $         $    $  ANS014.BYTE014  $  y=x;
  $  206.AEBδ׼���ü������                    $    $         $    $  ANS014.BYTE015  $  y=x;
  $  207.AEBδ׼���ü�������                  $    $         $    $  ANS014.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);

  $)  01.������2
  $  01.������2
  $  REQ000:74A 03 22 B0 67 00 00 00 00       $  ANS000:7CA 03 22 B0 67 00 00 00 00
  $  REQ001:74A 03 22 B0 68 00 00 00 00       $  ANS001:7CA 03 22 B0 68 00 00 00 00
  $  REQ002:74A 03 22 B0 69 00 00 00 00       $  ANS002:7CA 03 22 B0 69 00 00 00 00
  $  REQ003:74A 03 22 B0 6B 00 00 00 00       $  ANS003:7CA 03 22 B0 6B 00 00 00 00
  $  REQ004:74A 03 22 B0 92 00 00 00 00       $  ANS004:7CA 03 22 B0 92 00 00 00 00
  $  REQ005:74A 03 22 B0 60 00 00 00 00       $  ANS005:7CA 03 22 B0 60 00 00 00 00
  $  REQ006:74A 03 22 B0 61 00 00 00 00       $  ANS006:7CA 03 22 B0 61 00 00 00 00
  $  REQ007:74A 03 22 B0 62 00 00 00 00       $  ANS007:7CA 03 22 B0 62 00 00 00 00
  $  REQ008:74A 03 22 B0 63 00 00 00 00       $  ANS008:7CA 03 22 B0 63 00 00 00 00
  $  REQ009:74A 03 22 B0 64 00 00 00 00       $  ANS009:7CA 03 22 B0 64 00 00 00 00
  $  REQ010:74A 03 22 B0 6A 00 00 00 00       $  ANS010:7CA 03 22 B0 6A 00 00 00 00
  $  REQ011:74A 03 22 01 12 00 00 00 00       $  ANS011:7CA 03 22 01 12 00 00 00 00
  $  REQ012:74A 03 22 B0 3D 00 00 00 00       $  ANS012:7CA 03 22 B0 3D 00 00 00 00
  $  REQ013:74A 03 22 B0 2E 00 00 00 00       $  ANS013:7CA 03 22 B0 2E 00 00 00 00
  $  REQ014:74A 03 22 B0 3B 00 00 00 00       $  ANS014:7CA 03 22 B0 3B 00 00 00 00
  $  REQ015:74A 03 22 C0 01 00 00 00 00       $  ANS015:7CA 03 22 C0 01 00 00 00 00
  $  REQ016:74A 03 22 B0 3E 00 00 00 00       $  ANS016:7CA 03 22 B0 3E 00 00 00 00
  $  REQ017:74A 03 22 B0 4B 00 00 00 00       $  ANS017:7CA 03 22 B0 4B 00 00 00 00
  $  REQ018:74A 03 22 C0 02 00 00 00 00       $  ANS018:7CA 03 22 C0 02 00 00 00 00

  $  000.AEBδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS000.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  001.AEBδ׼���ü����ԭ��8~15                                $    $          $    $  ANS000.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  002.AEBδ׼���ü����ԭ��16~23                               $    $          $    $  ANS000.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  003.AEBδ׼���ü����ԭ��24~31                               $    $          $    $  ANS000.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  004.AEBδ׼���ü���Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS000.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  005.AEBδ׼���ü�������                                    $    $          $    $  ANS000.BYTE010  $  y=x+2000;
  $  006.AEBδ׼���ü�����·�                                    $    $          $    $  ANS000.BYTE011  $  y=x;
  $  007.AEBδ׼���ü������                                      $    $          $    $  ANS000.BYTE012  $  y=x;
  $  008.AEBδ׼���ü����ʱ                                      $    $          $    $  ANS000.BYTE013  $  y=x;
  $  009.AEBδ׼���ü���ķ�                                      $    $          $    $  ANS000.BYTE014  $  y=x;
  $  010.AEBδ׼���ü������                                      $    $          $    $  ANS000.BYTE015  $  y=x;
  $  011.AEBδ׼���ü�������                                    $    $          $    $  ANS000.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  012.AEBδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS001.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  013.AEBδ׼���ü����ԭ��8~15                                $    $          $    $  ANS001.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  014.AEBδ׼���ü����ԭ��16~23                               $    $          $    $  ANS001.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  015.AEBδ׼���ü����ԭ��24~31                               $    $          $    $  ANS001.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  016.AEBδ׼���ü���Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS001.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  017.AEBδ׼���ü�������                                    $    $          $    $  ANS001.BYTE010  $  y=x+2000;
  $  018.AEBδ׼���ü�����·�                                    $    $          $    $  ANS001.BYTE011  $  y=x;
  $  019.AEBδ׼���ü������                                      $    $          $    $  ANS001.BYTE012  $  y=x;
  $  020.AEBδ׼���ü����ʱ                                      $    $          $    $  ANS001.BYTE013  $  y=x;
  $  021.AEBδ׼���ü���ķ�                                      $    $          $    $  ANS001.BYTE014  $  y=x;
  $  022.AEBδ׼���ü������                                      $    $          $    $  ANS001.BYTE015  $  y=x;
  $  023.AEBδ׼���ü�������                                    $    $          $    $  ANS001.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  024.AEBδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS002.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  025.AEBδ׼���ü����ԭ��8~15                                $    $          $    $  ANS002.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  026.AEBδ׼���ü����ԭ��16~23                               $    $          $    $  ANS002.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  027.AEBδ׼���ü����ԭ��24~31                               $    $          $    $  ANS002.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  028.AEBδ׼���ü���Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS002.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  029.AEBδ׼���ü�������                                    $    $          $    $  ANS002.BYTE010  $  y=x+2000;
  $  030.AEBδ׼���ü�����·�                                    $    $          $    $  ANS002.BYTE011  $  y=x;
  $  031.AEBδ׼���ü������                                      $    $          $    $  ANS002.BYTE012  $  y=x;
  $  032.AEBδ׼���ü����ʱ                                      $    $          $    $  ANS002.BYTE013  $  y=x;
  $  033.AEBδ׼���ü���ķ�                                      $    $          $    $  ANS002.BYTE014  $  y=x;
  $  034.AEBδ׼���ü������                                      $    $          $    $  ANS002.BYTE015  $  y=x;
  $  035.AEBδ׼���ü�������                                    $    $          $    $  ANS002.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  036.AEBδ׼���ü����ԭ��0~7                                 $    $          $    $  ANS003.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  037.AEBδ׼���ü����ԭ��8~15                                $    $          $    $  ANS003.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  038.AEBδ׼���ü����ԭ��16~23                               $    $          $    $  ANS003.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  039.AEBδ׼���ü����ԭ��24~31                               $    $          $    $  ANS003.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  040.AEB�˳�����״̬��ԭ��0~7(B092)                           $    $          $    $  ANS004.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  041.AEB�˳�����״̬��ԭ��8~15(B092)                          $    $          $    $  ANS004.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  042.AEB�˳�����״̬��ԭ��16~23(B092)                         $    $          $    $  ANS004.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  043.AEB�˳�����״̬��ԭ��24~31(B092)                         $    $          $    $  ANS004.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  044.AEB�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS005.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  045.AEB�˳�����״̬��ԭ��8~15                                $    $          $    $  ANS005.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  046.AEB�˳�����״̬��ԭ��16~23                               $    $          $    $  ANS005.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  047.AEB�˳�����״̬��ԭ��24~31                               $    $          $    $  ANS005.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  048.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS005.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  049.AEB�˳��¼����                                          $    $          $    $  ANS005.BYTE010  $  y=x+2000;
  $  050.AEB�˳��¼��·�                                          $    $          $    $  ANS005.BYTE011  $  y=x;
  $  051.AEB�˳����                                            $    $          $    $  ANS005.BYTE012  $  y=x;
  $  052.AEB�˳��ʱ                                            $    $          $    $  ANS005.BYTE013  $  y=x;
  $  053.AEB�˳��¼���                                            $    $          $    $  ANS005.BYTE014  $  y=x;
  $  054.AEB�˳��¼���                                            $    $          $    $  ANS005.BYTE015  $  y=x;
  $  055.AEB�˳��¼����                                          $    $          $    $  ANS005.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  056.AEB�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  057.AEB�˳�����״̬��ԭ��8~15                                $    $          $    $  ANS006.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  058.AEB�˳�����״̬��ԭ��16~23                               $    $          $    $  ANS006.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  059.AEB�˳�����״̬��ԭ��24~31                               $    $          $    $  ANS006.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  060.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS006.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  061.AEB�˳��¼����                                          $    $          $    $  ANS006.BYTE010  $  y=x+2000;
  $  062.AEB�˳��¼��·�                                          $    $          $    $  ANS006.BYTE011  $  y=x;
  $  063.AEB�˳����                                            $    $          $    $  ANS006.BYTE012  $  y=x;
  $  064.AEB�˳��ʱ                                            $    $          $    $  ANS006.BYTE013  $  y=x;
  $  065.AEB�˳��¼���                                            $    $          $    $  ANS006.BYTE014  $  y=x;
  $  066.AEB�˳��¼���                                            $    $          $    $  ANS006.BYTE015  $  y=x;
  $  067.AEB�˳��¼����                                          $    $          $    $  ANS006.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  068.AEB�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  069.AEB�˳�����״̬��ԭ��8~15                                $    $          $    $  ANS007.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  070.AEB�˳�����״̬��ԭ��16~23                               $    $          $    $  ANS007.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  071.AEB�˳�����״̬��ԭ��24~31                               $    $          $    $  ANS007.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  072.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS007.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  073.AEB�˳��¼����                                          $    $          $    $  ANS007.BYTE010  $  y=x+2000;
  $  074.AEB�˳��¼��·�                                          $    $          $    $  ANS007.BYTE011  $  y=x;
  $  075.AEB�˳����                                            $    $          $    $  ANS007.BYTE012  $  y=x;
  $  076.AEB�˳��ʱ                                            $    $          $    $  ANS007.BYTE013  $  y=x;
  $  077.AEB�˳��¼���                                            $    $          $    $  ANS007.BYTE014  $  y=x;
  $  078.AEB�˳��¼���                                            $    $          $    $  ANS007.BYTE015  $  y=x;
  $  079.AEB�˳��¼����                                          $    $          $    $  ANS007.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  080.AEB�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  081.AEB�˳�����״̬��ԭ��8~15                                $    $          $    $  ANS008.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  082.AEB�˳�����״̬��ԭ��16~23                               $    $          $    $  ANS008.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  083.AEB�˳�����״̬��ԭ��24~31                               $    $          $    $  ANS008.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  084.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS008.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  085.AEB�˳��¼����                                          $    $          $    $  ANS008.BYTE010  $  y=x+2000;
  $  086.AEB�˳��¼��·�                                          $    $          $    $  ANS008.BYTE011  $  y=x;
  $  087.AEB�˳����                                            $    $          $    $  ANS008.BYTE012  $  y=x;
  $  088.AEB�˳��ʱ                                            $    $          $    $  ANS008.BYTE013  $  y=x;
  $  089.AEB�˳��¼���                                            $    $          $    $  ANS008.BYTE014  $  y=x;
  $  090.AEB�˳��¼���                                            $    $          $    $  ANS008.BYTE015  $  y=x;
  $  091.AEB�˳��¼����                                          $    $          $    $  ANS008.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  092.AEB�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS009.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  093.AEB�˳�����״̬��ԭ��8~15                                $    $          $    $  ANS009.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  094.AEB�˳�����״̬��ԭ��16~23                               $    $          $    $  ANS009.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  095.AEB�˳�����״̬��ԭ��24~31                               $    $          $    $  ANS009.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  096.AEB�˳�����״̬�Ĺ��ϰ�ȫ��־                            $    $          $    $  ANS009.BYTE008  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  097.AEB�˳��¼����                                          $    $          $    $  ANS009.BYTE010  $  y=x+2000;
  $  098.AEB�˳��¼��·�                                          $    $          $    $  ANS009.BYTE011  $  y=x;
  $  099.AEB�˳����                                            $    $          $    $  ANS009.BYTE012  $  y=x;
  $  100.AEB�˳��ʱ                                            $    $          $    $  ANS009.BYTE013  $  y=x;
  $  101.AEB�˳��¼���                                            $    $          $    $  ANS009.BYTE014  $  y=x;
  $  102.AEB�˳��¼���                                            $    $          $    $  ANS009.BYTE015  $  y=x;
  $  103.AEB�˳��¼����                                          $    $          $    $  ANS009.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  104.AEB�˳�����״̬��ԭ��0~7                                 $    $          $    $  ANS010.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0103;else if(x==0x04) y=@0b50;else if(x==0x08) y=@0dd2;else if(x==0x10) y=@0df5;else if(x==0x20) y=@0df6;else if(x==0x40) y=@0b53;else if(x==0x80) y=@0df7;else y=@0103;
  $  105.AEB�˳�����״̬��ԭ��8~15                                $    $          $    $  ANS010.BYTE005  $  if(x==0x01) y=@0df8;else if(x==0x02) y=@0b59;else if(x==0x04) y=@0df9;else if(x==0x08) y=@0b7c;else if(x==0x10) y=@0dd3;else if(x==0x20) y=@0dfa;else if(x==0x40) y=@0b5f;else if(x==0x80) y=@0b61;else y=@0103;
  $  106.AEB�˳�����״̬��ԭ��16~23                               $    $          $    $  ANS010.BYTE006  $  if(x==0x01) y=@0b63;else if(x==0x02) y=@0b64;else if(x==0x04) y=@0b65;else if(x==0x08) y=@0dfb;else if(x==0x10) y=@0dfc;else if(x==0x20) y=@0dfd;else if(x==0x40) y=@0dfe;else if(x==0x80) y=@0dff;else y=@0103;
  $  107.AEB�˳�����״̬��ԭ��24~31                               $    $          $    $  ANS010.BYTE007  $  if(x==0x01) y=@0e00;else if(x==0x02) y=@0b4a;else y=@0035;
  $  108.��ص�ѹ                                                 $    $  V       $    $  ANS011.BYTE004  $  y=x*0.1;
  $  109.�Զ��޸�������Χ                                         $    $          $    $  ANS012.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  110.Ӧ�ó�����������-�����궨                                $    $          $    $  ANS012.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  111.δ�궨                                                   $    $          $    $  ANS012.BYTE004  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  112.EOLУ׼״̬                                              $    $          $    $  ANS013.BYTE004  $  if(x==0x00) y=@0475;else if(x==0x01) y=@0ee4;else if(x==0x02) y=@0ee5;else if(x==0x03) y=@0ee6;else y=@0103;
  $  113.EOLУ׼����ԭ��                                          $    $          $    $  ANS013.BYTE005  $  if(x==0x00) y=@0df0;else if(x==0x01) y=@0197;else if(x==0x02) y=@0910;else if(x==0x03) y=@0ee7;else if(x==0x04) y=@0ee8;else if(x==0x05) y=@0ee9;else if(x==0x06) y=@0eea;else if(x==0x07) y=@0eeb;else if(x==0x08) y=@0eec;else if(x==0x09) y=@0eed;else if(x==0x0A) y=@0eee;else if(x==0x0B) y=@0eef;else if(x==0x0C) y=@0ef0;else if(x==0x0D) y=@0df1;else if(x==0x0E) y=@091c;else if(x==0x0F) y=@0df2;else if(x==0x10) y=@091e;else if(x==0x11) y=@091f;else if(x==0x12) y=@0920;else if(x==0x13) y=@0df3;else if(x==0x14) y=@0922;else if(x==0x15) y=@0923;else if(x==0x18) y=@0ef1;else y=@0103;
  $  114.����ͷУ׼ƫ��ֵ                                         $    $          $    $  ANS013.BYTE006  $  y=(x1*256+x2)-250;
  $  115.����ͷУ׼ˮƽֵ                                         $    $          $    $  ANS013.BYTE008  $  y=(x1*256+x2)-250;
  $  116.����ͷУ׼����ֵ                                         $    $  rad     $    $  ANS013.BYTE010  $  y=(x1*256+x2)*0.001-0.055;
  $  117.����ͷ�Զ�����ƫ��ֵ                                     $    $          $    $  ANS013.BYTE012  $  y=(x1*256+x2)*160-160;
  $  118.����ͷ�Զ�����ˮƽֵ                                     $    $          $    $  ANS013.BYTE014  $  y=(x1*256+x2)*160-160;
  $  119.����ͷ�Զ�У׼�ķ����Ƕ�                                 $    $  rad     $    $  ANS013.BYTE016  $  y=(x1*256+x2)*0.001-0.055;
  $  120.��ѣ��                                                   $    $          $    $  ANS014.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  121.̫������                                                 $    $          $    $  ANS014.BYTE004  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  122.��·��ˮ                                                 $    $          $    $  ANS014.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@040c;else if(((x&0x80)>>7)==0x01) y=@040d;else y=@0035;
  $  123.ģ��ͼ��                                                 $    $          $    $  ANS014.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@040c;else if(((x&0x40)>>6)==0x01) y=@040d;else y=@0035;
  $  124.Ϧ��ֱ��                                                 $    $          $    $  ANS014.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@040c;else if(((x&0x20)>>5)==0x01) y=@040d;else y=@0035;
  $  125.մ�۵�                                                   $    $          $    $  ANS014.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@040c;else if(((x&0x10)>>4)==0x01) y=@040d;else y=@0035;
  $  126.�����ڵ�                                                 $    $          $    $  ANS014.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@040c;else if(((x&0x08)>>3)==0x01) y=@040d;else y=@0035;
  $  127.��ȫ�ڵ�                                                 $    $          $    $  ANS014.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  128.���粣������                                             $    $          $    $  ANS014.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  129.���                                                     $    $          $    $  ANS014.BYTE005  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  130.AHB(�Զ�Զ���)����                                      $    $          $    $  ANS015.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0035;
  $  131.TSR(��ͨ��־ʶ��)����                                    $    $          $    $  ANS015.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0035;
  $  132.ACC(����ӦѲ������)����                                  $    $          $    $  ANS015.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0035;
  $  133.AEBP(�����Զ������ƶ�)����                               $    $          $    $  ANS015.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0035;
  $  134.AEB(�Զ��ƶ�ϵͳ)����                                    $    $          $    $  ANS015.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0035;
  $  135.PCW(������ײ����)����                                    $    $          $    $  ANS015.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0035;
  $  136.FCW(������ײ����)����                                    $    $          $    $  ANS015.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0035;
  $  137.LDW(����ƫ��Ԥ��ϵͳ)����                                $    $          $    $  ANS015.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  138.LKA(�������ָ���)����                                    $    $          $    $  ANS015.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  139.SDM25-��ײ�ص�                                           $    $          $    $  ANS016.BYTE007  $  if(((x&0x80)>>7)==0x00) y=@040c;else if(((x&0x80)>>7)==0x01) y=@040d;else y=@0035;
  $  140.SDM9-�ؼ�������ǰ��ָ�ӳ����ص�����������                $    $          $    $  ANS016.BYTE007  $  if(((x&0x40)>>6)==0x00) y=@040c;else if(((x&0x40)>>6)==0x01) y=@040d;else y=@0035;
  $  141.SDM8-�ؼ����������ǲ�������֮���λ�ò���                $    $          $    $  ANS016.BYTE007  $  if(((x&0x20)>>5)==0x00) y=@040c;else if(((x&0x20)>>5)==0x01) y=@040d;else y=@0035;
  $  142.SDM7-Ŀ��λ������������                                  $    $          $    $  ANS016.BYTE007  $  if(((x&0x10)>>4)==0x00) y=@040c;else if(((x&0x10)>>4)==0x01) y=@040d;else y=@0035;
  $  143.SDM6-TTC����������                                       $    $          $    $  ANS016.BYTE007  $  if(((x&0x08)>>3)==0x00) y=@040c;else if(((x&0x08)>>3)==0x01) y=@040d;else y=@0035;
  $  144.EYEQ_RFC-�����ź���Ϣ�Ĺ���֡������(RFC)����             $    $          $    $  ANS016.BYTE007  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  145.EYEQ_CRC-CRCУ���밲ȫ�����źŲ���                       $    $          $    $  ANS016.BYTE007  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  146.EYEQ_CR_REPEAT-��ս����Ӧ�ظ�����                        $    $          $    $  ANS016.BYTE007  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  147.SDM11-MCUУ�����                                        $    $          $    $  ANS016.BYTE008  $  if(((x&0x80)>>7)==0x00) y=@040c;else if(((x&0x80)>>7)==0x01) y=@040d;else y=@0035;
  $  148.SDM29-MCU RFC����                                        $    $          $    $  ANS016.BYTE008  $  if(((x&0x40)>>6)==0x00) y=@040c;else if(((x&0x40)>>6)==0x01) y=@040d;else y=@0035;
  $  149.SDM30-ͼ��������Ч                                       $    $          $    $  ANS016.BYTE008  $  if(((x&0x20)>>5)==0x00) y=@040c;else if(((x&0x20)>>5)==0x01) y=@040d;else y=@0035;
  $  150.SDM4-У׼����                                            $    $          $    $  ANS016.BYTE008  $  if(((x&0x10)>>4)==0x00) y=@040c;else if(((x&0x10)>>4)==0x01) y=@040d;else y=@0035;
  $  151.SDM18-�ڲ�ͼ�񱣻�ʧ��                                   $    $          $    $  ANS016.BYTE008  $  if(((x&0x08)>>3)==0x00) y=@040c;else if(((x&0x08)>>3)==0x01) y=@040d;else y=@0035;
  $  152.SDM13-�ɵ���������                                       $    $          $    $  ANS016.BYTE008  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  153.SDMY-C-R��ս��Ӧ���                                     $    $          $    $  ANS016.BYTE008  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  154.SDM32-�ڲ��ź���                                       $    $          $    $  ANS016.BYTE008  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  155.SDM31-�ڲ�У�����                                       $    $          $    $  ANS016.BYTE009  $  if(((x&0x80)>>7)==0x00) y=@040c;else if(((x&0x80)>>7)==0x01) y=@040d;else y=@0035;
  $  156.SDM27-AEB˫�ؼ�����                                    $    $          $    $  ANS016.BYTE009  $  if(((x&0x40)>>6)==0x00) y=@040c;else if(((x&0x40)>>6)==0x01) y=@040d;else y=@0035;
  $  157.SDM26-DDRУ�����                                        $    $          $    $  ANS016.BYTE009  $  if(((x&0x20)>>5)==0x00) y=@040c;else if(((x&0x20)>>5)==0x01) y=@040d;else y=@0035;
  $  158.SDM19ͼ��ʧ                                            $    $          $    $  ANS016.BYTE009  $  if(((x&0x10)>>4)==0x00) y=@040c;else if(((x&0x10)>>4)==0x01) y=@040d;else y=@0035;
  $  159.EyeQ Ӧ�ó������ʧЧ                                    $    $          $    $  ANS016.BYTE009  $  if(((x&0x08)>>3)==0x00) y=@040c;else if(((x&0x08)>>3)==0x01) y=@040d;else y=@0035;
  $  160.EyeQ Ӧ�ó���ʧЧ                                        $    $          $    $  ANS016.BYTE009  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  161.EyeQ����ʧ��                                             $    $          $    $  ANS016.BYTE009  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  162.GPIO10                                                   $    $          $    $  ANS016.BYTE009  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  163.EyeQ SPI��ʧ                                             $    $          $    $  ANS016.BYTE010  $  if(((x&0x80)>>7)==0x00) y=@040c;else if(((x&0x80)>>7)==0x01) y=@040d;else y=@0035;
  $  164.MCU EEPROM����ʧ��                                       $    $          $    $  ANS016.BYTE010  $  if(((x&0x40)>>6)==0x00) y=@040c;else if(((x&0x40)>>6)==0x01) y=@040d;else y=@0035;
  $  165.MCU RAM����ʧ��                                          $    $          $    $  ANS016.BYTE010  $  if(((x&0x20)>>5)==0x00) y=@040c;else if(((x&0x20)>>5)==0x01) y=@040d;else y=@0035;
  $  166.MCU����У��ʹ���                                        $    $          $    $  ANS016.BYTE010  $  if(((x&0x10)>>4)==0x00) y=@040c;else if(((x&0x10)>>4)==0x01) y=@040d;else y=@0035;
  $  167.MCU�쳣��λ                                              $    $          $    $  ANS016.BYTE010  $  if(((x&0x08)>>3)==0x00) y=@040c;else if(((x&0x08)>>3)==0x01) y=@040d;else y=@0035;
  $  168.MCU PLLʧ��                                              $    $          $    $  ANS016.BYTE010  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  169.DAS��Դ2.8VǷѹ                                          $    $          $    $  ANS016.BYTE010  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  170.DAS��Դ2.8V��ѹ                                          $    $          $    $  ANS016.BYTE010  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  171.DAS��Դ1.2VǷѹ                                          $    $          $    $  ANS016.BYTE011  $  if(((x&0x80)>>7)==0x00) y=@040c;else if(((x&0x80)>>7)==0x01) y=@040d;else y=@0035;
  $  172.DAS��Դ1.2V��ѹ                                          $    $          $    $  ANS016.BYTE011  $  if(((x&0x40)>>6)==0x00) y=@040c;else if(((x&0x40)>>6)==0x01) y=@040d;else y=@0035;
  $  173.DAS��Դ1.8VǷѹ                                          $    $          $    $  ANS016.BYTE011  $  if(((x&0x20)>>5)==0x00) y=@040c;else if(((x&0x20)>>5)==0x01) y=@040d;else y=@0035;
  $  174.DAS��Դ1.8V��ѹ                                          $    $          $    $  ANS016.BYTE011  $  if(((x&0x10)>>4)==0x00) y=@040c;else if(((x&0x10)>>4)==0x01) y=@040d;else y=@0035;
  $  175.DAS��Դ3.3VǷѹ                                          $    $          $    $  ANS016.BYTE011  $  if(((x&0x08)>>3)==0x00) y=@040c;else if(((x&0x08)>>3)==0x01) y=@040d;else y=@0035;
  $  176.DAS��Դ3.3V��ѹ                                          $    $          $    $  ANS016.BYTE011  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  177.DAS��Դ5VǷѹ                                            $    $          $    $  ANS016.BYTE011  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  178.DAS��Դ5V��ѹ                                            $    $          $    $  ANS016.BYTE011  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  179.MCUӦ�ó���汾��MCU�궨�ļ�������                       $    $          $    $  ANS017.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@040c;else if(((x&0x04)>>2)==0x01) y=@040d;else y=@0035;
  $  180.ͼ����Ԫ���ļ���MCU�궨�ļ�������                    $    $          $    $  ANS017.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@040c;else if(((x&0x02)>>1)==0x01) y=@040d;else y=@0035;
  $  181.MCUӦ�ó���汾��ͼ����Ԫ������                      $    $          $    $  ANS017.BYTE004  $  if((x&0x01)==0x00) y=@040c;else if((x&0x01)==0x01) y=@040d;else y=@0035;
  $  182.��BCM(������ƹ���ϵͳ)ͨѶ��ʧ                          $    $          $    $  ANS018.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  183.��TCU(��������Ƶ�Ԫ)ģ��ʧȥͨѶ                        $    $          $    $  ANS018.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  184.��IPK(�Ǳ�)ͨѶ��ʧ                                      $    $          $    $  ANS018.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  185.��ABS/ESP(�������ƶ�ϵͳ/�����ȶ�ϵͳ)ģ��ʧȥͨѶ       $    $          $    $  ANS018.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  186.��SAS(������ת��Ǵ�����)ģ��ʧȥͨѶ                    $    $          $    $  ANS018.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  187.������ͨѶ���߹ر�                                       $    $          $    $  ANS018.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  188.���ص�ѹ��                                             $    $          $    $  ANS018.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  189.���ص�ѹ��                                             $    $          $    $  ANS018.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  190.ͼ�������¶ȹ���                                       $    $          $    $  ANS018.BYTE005  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  191.DAS(��ʻ����ϵͳ)�ڲ�����                                $    $          $    $  ANS018.BYTE005  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  192.AHB(�Զ�Զ���)����������������Ч��ֹ                    $    $          $    $  ANS018.BYTE005  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  193.TSR(��ͨ��־ʶ��)����������������Ч��ֹ                  $    $          $    $  ANS018.BYTE005  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  194.ACC(����ӦѲ������)����������������Ч��ֹ                $    $          $    $  ANS018.BYTE005  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  195.AEB(�Զ��ƶ�ϵͳ)����������������Ч��ֹ                  $    $          $    $  ANS018.BYTE005  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  196.FCW(������ײ����)����������������Ч��ֹ                  $    $          $    $  ANS018.BYTE005  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  197.LDW(����ƫ��Ԥ��ϵͳ)����������������Ч��ֹ              $    $          $    $  ANS018.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  198.LKA(�������ָ���)����������������Ч��ֹ                  $    $          $    $  ANS018.BYTE006  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  199.LDW(����ƫ��Ԥ��ϵͳ)����ָʾ�ƶ�·����                  $    $          $    $  ANS018.BYTE006  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  200.LDW(����ƫ��Ԥ��)���ذ���ճ��                            $    $          $    $  ANS018.BYTE006  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  201.DAS(��ʻ����ϵͳ)����汾��ƥ��                          $    $          $    $  ANS018.BYTE006  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  202.DAS(��ʻ����ϵͳ)�궨�쳣                                $    $          $    $  ANS018.BYTE006  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  203.DAS(��ʻ����ϵͳ)����ͷ��Ұ�ڵ�                          $    $          $    $  ANS018.BYTE006  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;

  $)  02.������3
  $  02.������3
  $  REQ000:74A 03 22 B0 27 00 00 00 00       $  ANS000:7CA 03 22 B0 27 00 00 00 00
  $  REQ001:74A 03 22 B0 28 00 00 00 00       $  ANS001:7CA 03 22 B0 28 00 00 00 00
  $  REQ002:74A 03 22 B0 26 00 00 00 00       $  ANS002:7CA 03 22 B0 26 00 00 00 00
  $  REQ003:74A 03 22 B0 29 00 00 00 00       $  ANS003:7CA 03 22 B0 29 00 00 00 00
  $  REQ004:74A 03 22 B0 2F 00 00 00 00       $  ANS004:7CA 03 22 B0 2F 00 00 00 00
  $  REQ005:74A 03 22 B0 75 00 00 00 00       $  ANS005:7CA 03 22 B0 75 00 00 00 00
  $  REQ006:74A 03 22 B0 77 00 00 00 00       $  ANS006:7CA 03 22 B0 77 00 00 00 00
  $  REQ007:74A 03 22 B0 94 00 00 00 00       $  ANS007:7CA 03 22 B0 94 00 00 00 00
  $  REQ008:74A 03 22 B0 74 00 00 00 00       $  ANS008:7CA 03 22 B0 74 00 00 00 00
  $  REQ009:74A 03 22 B0 76 00 00 00 00       $  ANS009:7CA 03 22 B0 76 00 00 00 00
  $  REQ010:74A 03 22 C0 04 00 00 00 00       $  ANS010:7CA 03 22 C0 04 00 00 00 00
  $  REQ011:74A 03 22 B0 7D 00 00 00 00       $  ANS011:7CA 03 22 B0 7D 00 00 00 00
  $  REQ012:74A 03 22 B0 7F 00 00 00 00       $  ANS012:7CA 03 22 B0 7F 00 00 00 00
  $  REQ013:74A 03 22 B0 96 00 00 00 00       $  ANS013:7CA 03 22 B0 96 00 00 00 00
  $  REQ014:74A 03 22 B0 7C 00 00 00 00       $  ANS014:7CA 03 22 B0 7C 00 00 00 00
  $  REQ015:74A 03 22 B0 7E 00 00 00 00       $  ANS015:7CA 03 22 B0 7E 00 00 00 00
  $  REQ016:74A 03 22 D0 01 00 00 00 00       $  ANS016:7CA 03 22 D0 01 00 00 00 00
  $  REQ017:74A 03 22 B0 31 00 00 00 00       $  ANS017:7CA 03 22 B0 31 00 00 00 00
  $  REQ018:74A 03 22 B0 02 00 00 00 00       $  ANS018:7CA 03 22 B0 02 00 00 00 00
  $  REQ019:74A 03 22 B0 01 00 00 00 00       $  ANS019:7CA 03 22 B0 01 00 00 00 00
  $  REQ020:74A 03 22 B0 71 00 00 00 00       $  ANS020:7CA 03 22 B0 71 00 00 00 00
  $  REQ021:74A 03 22 B0 73 00 00 00 00       $  ANS021:7CA 03 22 B0 73 00 00 00 00
  $  REQ022:74A 03 22 B0 93 00 00 00 00       $  ANS022:7CA 03 22 B0 93 00 00 00 00
  $  REQ023:74A 03 22 B0 70 00 00 00 00       $  ANS023:7CA 03 22 B0 70 00 00 00 00
  $  REQ024:74A 03 22 B0 72 00 00 00 00       $  ANS024:7CA 03 22 B0 72 00 00 00 00
  $  REQ025:74A 03 22 D0 03 00 00 00 00       $  ANS025:7CA 03 22 D0 03 00 00 00 00
  $  REQ026:74A 03 22 D0 02 00 00 00 00       $  ANS026:7CA 03 22 D0 02 00 00 00 00
  $  REQ027:74A 03 22 B0 A5 00 00 00 00       $  ANS027:7CA 03 22 B0 A5 00 00 00 00
  $  REQ028:74A 03 22 B0 A6 00 00 00 00       $  ANS028:7CA 03 22 B0 A6 00 00 00 00
  $  REQ029:74A 03 22 B0 A7 00 00 00 00       $  ANS029:7CA 03 22 B0 A7 00 00 00 00
  $  REQ030:74A 03 22 B0 A8 00 00 00 00       $  ANS030:7CA 03 22 B0 A8 00 00 00 00

  $  000.AHB(�Զ�Զ���)���ܿ���                          $    $          $    $  ANS000.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  001.TSR(��ͨ��־ʶ��)���ܿ���                        $    $          $    $  ANS000.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  002.ACC(����ӦѲ������)���ܿ���                      $    $          $    $  ANS000.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  003.AEBP(�����Զ������ƶ�)���ܿ���                   $    $          $    $  ANS000.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  004.AEB(�Զ��ƶ�ϵͳ)���ܿ���                        $    $          $    $  ANS000.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  005.PCW(������ײ����)���ܿ���                        $    $          $    $  ANS000.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  006.FCW(������ײ����)���ܿ���                        $    $          $    $  ANS000.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  007.LDW(����ƫ��Ԥ��ϵͳ)���ܿ���                    $    $          $    $  ANS000.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  008.LKA(�������ָ���)���ܿ���                        $    $          $    $  ANS000.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  009.�����ĵ�������                                   $    $          $    $  ANS001.BYTE004  $  if(x==0x00) y=@0136;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0da8;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0103;
  $  010.FCW(������ײ����)��ʻԱѡ���������ȼ���          $    $          $    $  ANS002.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0ed7;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@0ed8;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  011.LDW(����ƫ��Ԥ��ϵͳ)����ѡ���������ȵȼ�        $    $          $    $  ANS002.BYTE004  $  if((x&0x0F)==0x00) y=@0ed7;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@0ed8;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  012.AEB(�Զ��ƶ�ϵͳ)����ѡ��������ȵȼ�            $    $          $    $  ANS002.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0ed7;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@0ed8;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  013.ACC(����ӦѲ������)����ѡ����Ŀ�����ȼ�        $    $          $    $  ANS002.BYTE005  $  if((x&0x0F)==0x00) y=@05fc;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0103;
  $  014.PCW(������ײ����)����ѡ���������ȵȼ�            $    $          $    $  ANS002.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0ed7;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@0ed8;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  015.AEBP(�����Զ������ƶ�)����ѡ��������ȵȼ�       $    $          $    $  ANS002.BYTE006  $  if((x&0x0F)==0x00) y=@0ed7;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@0ed8;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  016.����ͷ��Ŀ���ٶ�Ҫ��                             $    $          $    $  ANS003.BYTE004  $  y=(x1*256+x2);
  $  017.ACC(����ӦѲ������)��ʻԱѡ����Ŀ���ٶ�          $    $          $    $  ANS003.BYTE006  $  y=(x1*256+x2);
  $  018.����ͷ��������Ե���ľ���                       $    $  m       $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.01;
  $  019.����ͷ��������Ե�Ҳ�ľ���                       $    $  m       $    $  ANS004.BYTE006  $  y=(x1*256+x2)*0.01;
  $  020.������ͷ��Ŀ��ľ���                             $    $  m       $    $  ANS004.BYTE008  $  y=(x1*256+x2)*0.001;
  $  021.����ͷ�߶�                                       $    $  m       $    $  ANS004.BYTE010  $  y=(x1*256+x2)*0.01;
  $  022.Ŀ�����ľ�������߶�                           $    $  m       $    $  ANS004.BYTE012  $  y=(x1*256+x2)*0.01;
  $  023.Ŀ�����ľ�����Ҳ�߶�                           $    $  m       $    $  ANS004.BYTE014  $  y=(x1*256+x2)*0.01;
  $  024.Ŀ�����ľ������������ľ���                     $    $  m       $    $  ANS004.BYTE016  $  y=(x1*256+x2)*0.01;
  $  025.Ŀ�����ľ����������Ҳ�ľ���                     $    $  m       $    $  ANS004.BYTE018  $  y=(x1*256+x2)*0.01;
  $  026.�������γߴ磬��������Ŀ��                       $    $  rad     $    $  ANS004.BYTE020  $  y=(x1*256+x2)*0.001;
  $  027.�ڰ׸����з�ʽ                                   $    $          $    $  ANS004.BYTE022  $  y=x;
  $  028.����ͷ����                                       $    $          $    $  ANS004.BYTE023  $  y=(x1*256+x2);
  $  029.Ŀ��˳�������ߵ����ұ������ķ�֮һ����ɫ       $    $          $    $  ANS004.BYTE025  $  if(x==0x00) y=@0ed9;else if(x==0x01) y=@0997;else y=@0103;
  $  030.Ŀ��˳�������ߵ����ұ������ķ�֮һ����ɫ       $    $          $    $  ANS004.BYTE026  $  if(x==0x00) y=@0ed9;else if(x==0x01) y=@0997;else y=@0103;
  $  031.Ŀ�������                                       $    $          $    $  ANS004.BYTE027  $  y=x;
  $  032.���������궨ֵ                               $    $          $    $  ANS004.BYTE028  $  y=x;
  $  033.����ڷ���궨ֵ                               $    $          $    $  ANS004.BYTE029  $  y=x;
  $  034.��С��������궨ֵ                               $    $          $    $  ANS004.BYTE030  $  y=((x&0x7F)-(x&0x80))-40;
  $  035.��С��ڷ���궨ֵ                               $    $          $    $  ANS004.BYTE031  $  y=((x&0x7F)-(x&0x80))-47;
  $  036.�������                                       $    $          $    $  ANS004.BYTE032  $  y=x*0.001;
  $  037.�ײ���Чͼ������ֵ                               $    $          $    $  ANS004.BYTE033  $  y=((x&0x7F)-(x&0x80))-120;
  $  038.������Чͼ������ֵ                               $    $          $    $  ANS004.BYTE034  $  y=x;
  $  039.����ͷ������ǰ�˵ľ���                           $    $          $    $  ANS004.BYTE035  $  y=x*0.01;
  $  040.����ͷ�����������ߵľ���                         $    $          $    $  ANS004.BYTE036  $  y=x*0.01-1.28;
  $  041.FCWδ׼���ü����ԭ��0~7                         $    $          $    $  ANS005.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  042.FCWδ׼���ü����ԭ��8~15                        $    $          $    $  ANS005.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  043.FCWδ׼���ü�������                            $    $          $    $  ANS005.BYTE006  $  y=x+2000;
  $  044.FCWδ׼���ü�����·�                            $    $          $    $  ANS005.BYTE007  $  y=x;
  $  045.FCWδ׼���ü������                              $    $          $    $  ANS005.BYTE008  $  y=x;
  $  046.FCWδ׼���ü����ʱ                              $    $          $    $  ANS005.BYTE009  $  y=x;
  $  047.FCWδ׼���ü���ķ�                              $    $          $    $  ANS005.BYTE010  $  y=x;
  $  048.FCWδ׼���ü������                              $    $          $    $  ANS005.BYTE011  $  y=x;
  $  049.FCWδ׼���ü�������                            $    $  km      $    $  ANS005.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  050.FCWδ׼���ü����ԭ��0~7                         $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  051.FCWδ׼���ü����ԭ��8~15                        $    $          $    $  ANS006.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  052.FCW�˳�����״̬��ԭ��0~7(B094)                   $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  053.FCW�˳�����״̬��ԭ��8~15(B094)                  $    $          $    $  ANS007.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  054.FCW�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  055.FCW�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS008.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  056.FCW�˳��¼����                                  $    $          $    $  ANS008.BYTE006  $  y=x+2000;
  $  057.FCW�˳��¼��·�                                  $    $          $    $  ANS008.BYTE007  $  y=x;
  $  058.FCW�˳����                                    $    $          $    $  ANS008.BYTE008  $  y=x;
  $  059.FCW�˳��ʱ                                    $    $          $    $  ANS008.BYTE009  $  y=x;
  $  060.FCW�˳��¼���                                    $    $          $    $  ANS008.BYTE010  $  y=x;
  $  061.FCW�˳��¼���                                    $    $          $    $  ANS008.BYTE011  $  y=x;
  $  062.FCW�˳��¼����                                  $    $  km      $    $  ANS008.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  063.FCW�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS009.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  064.FCW�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS009.BYTE005  $  if(x==0x01) y=@0dfe;else if(x==0x02) y=@0dff;else if(x==0x04) y=@0e00;else if(x==0x08) y=@0b4a;else y=@0035;
  $  065.AHB(�Զ�Զ���)���ܿ���                          $    $          $    $  ANS010.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  066.TSR(��ͨ��־ʶ��)���ܿ���                        $    $          $    $  ANS010.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  067.ACC(����ӦѲ������)���ܿ���                      $    $          $    $  ANS010.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  068.AEBP(�����Զ������ƶ�)���ܿ���                   $    $          $    $  ANS010.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  069.AEB(�Զ��ƶ�ϵͳ)���ܿ���                        $    $          $    $  ANS010.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  070.PCW(������ײ����)���ܿ���                        $    $          $    $  ANS010.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  071.FCW(������ײ����)���ܿ���                        $    $          $    $  ANS010.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  072.LDW(����ƫ��Ԥ��ϵͳ)���ܿ���                    $    $          $    $  ANS010.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  073.LKA(�������ָ���)���ܿ���                        $    $          $    $  ANS010.BYTE005  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  074.IHCδ׼���ü����ԭ��0~7                         $    $          $    $  ANS011.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  075.IHCδ׼���ü�������                            $    $          $    $  ANS011.BYTE006  $  y=x+2000;
  $  076.IHCδ׼���ü�����·�                            $    $          $    $  ANS011.BYTE007  $  y=x;
  $  077.IHCδ׼���ü������                              $    $          $    $  ANS011.BYTE008  $  y=x;
  $  078.IHCδ׼���ü����ʱ                              $    $          $    $  ANS011.BYTE009  $  y=x;
  $  079.IHCδ׼���ü���ķ�                              $    $          $    $  ANS011.BYTE010  $  y=x;
  $  080.IHCδ׼���ü������                              $    $          $    $  ANS011.BYTE011  $  y=x;
  $  081.IHCδ׼���ü�������                            $    $  km      $    $  ANS011.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  082.IHCδ׼���ü����ԭ��0~7                         $    $          $    $  ANS012.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  083.IHCδ׼���ü����ԭ��8~15                        $    $          $    $  ANS012.BYTE005  $  y=x;
  $  084.IHC�˳�����״̬��ԭ��0~7(B096)                   $    $          $    $  ANS013.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  085.IHC�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS013.BYTE005  $  y=x;
  $  086.IHC�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS014.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  087.IHC�˳��¼���                                    $    $          $    $  ANS014.BYTE006  $  y=x+2000;
  $  088.IHC�˳��¼��·�                                  $    $          $    $  ANS014.BYTE007  $  y=x;
  $  089.IHC�˳����                                    $    $          $    $  ANS014.BYTE008  $  y=x;
  $  090.IHC�˳��ʱ                                    $    $          $    $  ANS014.BYTE009  $  y=x;
  $  091.IHC�˳��¼���                                    $    $          $    $  ANS014.BYTE010  $  y=x;
  $  092.IHC�˳��¼���                                    $    $          $    $  ANS014.BYTE011  $  y=x;
  $  093.IHC�˳��¼����                                  $    $  km      $    $  ANS014.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  094.IHC�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS015.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  095.IHC�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS015.BYTE005  $  y=x;
  $  096.ȫ��KL.50״̬                                    $    $          $    $  ANS016.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@000f;else if(((x&0x80)>>7)==0x01) y=@0028;else y=@0035;
  $  097.ȫ�ֶ���ģ������״̬                             $    $          $    $  ANS016.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@000f;else if(((x&0x40)>>6)==0x01) y=@0028;else y=@0035;
  $  098.ȫ�� KL.15 ״̬                                  $    $          $    $  ANS016.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@000f;else if(((x&0x20)>>5)==0x01) y=@0028;else y=@0035;
  $  099.ȫ��KL.R״̬                                     $    $          $    $  ANS016.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@000f;else if(((x&0x10)>>4)==0x01) y=@0028;else y=@0035;
  $  100.ϵͳKL.50״̬                                    $    $          $    $  ANS016.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@000f;else if(((x&0x08)>>3)==0x01) y=@0028;else y=@0035;
  $  101.ȫ�ַ���������״̬                               $    $          $    $  ANS016.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@000f;else if(((x&0x04)>>2)==0x01) y=@0028;else y=@0035;
  $  102.ϵͳKL.15״̬                                    $    $          $    $  ANS016.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@000f;else if(((x&0x02)>>1)==0x01) y=@0028;else y=@0035;
  $  103.ϵͳKL.R״̬                                     $    $          $    $  ANS016.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  104.ͼ��������ǰ�¶�                               $    $          $    $  ANS017.BYTE004  $  y=(x1*256+x2)-40;
  $  105.ͼ����Ԫ����ģʽ                             $    $          $    $  ANS018.BYTE004  $  if(x==0x00) y=@0908;else if(x==0x01) y=@0dc3;else if(x==0x02) y=@0e2c;else if(x==0x03) y=@090b;else if(x==0x04) y=@0e2d;else if(x==0x05) y=@090d;else y=@0103;
  $  106.ͼ����Ԫ����״̬                             $    $          $    $  ANS019.BYTE004  $  if(x==0x00) y=@000f;else if(x==0x02) y=@0dc4;else if(x==0x03) y=@009e;else if(x==0x22) y=@0dc5;else if(x==0x82) y=@0dc6;else if(x==0x85) y=@0dc7;else if(x==0x92) y=@0e37;else if(x==0xAA) y=@0dc9;else if(x==0xAC) y=@0dca;else y=@0103;
  $  107.LDWδ׼���ü����ԭ��0~7                         $    $          $    $  ANS020.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  108.LDWδ׼���ü����ԭ��8~15                        $    $          $    $  ANS020.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  109.LDWδ׼���ü�������                            $    $          $    $  ANS020.BYTE006  $  y=x+2000;
  $  110.LDWδ׼���ü�����·�                            $    $          $    $  ANS020.BYTE007  $  y=x;
  $  111.LDWδ׼���ü������                              $    $          $    $  ANS020.BYTE008  $  y=x;
  $  112.LDWδ׼���ü����ʱ                              $    $          $    $  ANS020.BYTE009  $  y=x;
  $  113.LDWδ׼���ü���ķ�                              $    $          $    $  ANS020.BYTE010  $  y=x;
  $  114.LDWδ׼���ü������                              $    $          $    $  ANS020.BYTE011  $  y=x;
  $  115.LDWδ׼���ü�������                            $    $  km      $    $  ANS020.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  116.LDWδ׼���ü����ԭ��0~7                         $    $          $    $  ANS021.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  117.LDWδ׼���ü����ԭ��8~15                        $    $          $    $  ANS021.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  118.LDWδ׼���ü����ԭ��0~7(B093)                   $    $          $    $  ANS022.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0dac;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  119.LDWδ׼���ü����ԭ��0~78~15(B093)               $    $          $    $  ANS022.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  120.LDW�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS023.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  121.LDW�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS023.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  122.LDW�˳��¼����                                  $    $          $    $  ANS023.BYTE006  $  y=x+2000;
  $  123.LDW�˳��¼��·�                                  $    $          $    $  ANS023.BYTE007  $  y=x;
  $  124.LDW�˳����                                    $    $          $    $  ANS023.BYTE008  $  y=x;
  $  125.LDW�˳��ʱ                                    $    $          $    $  ANS023.BYTE009  $  y=x;
  $  126.LDW�˳��¼���                                    $    $          $    $  ANS023.BYTE010  $  y=x;
  $  127.LDW�˳��¼���                                    $    $          $    $  ANS023.BYTE011  $  y=x;
  $  128.LDW�˳��¼����                                  $    $  km      $    $  ANS023.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  129.LDW�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS024.BYTE004  $  if(x==0x01) y=@0dab;else if(x==0x02) y=@0e2b;else if(x==0x04) y=@0df4;else if(x==0x08) y=@0b4f;else if(x==0x10) y=@0b50;else if(x==0x20) y=@0b5f;else if(x==0x40) y=@0b61;else if(x==0x80) y=@0dfa;else y=@0103;
  $  130.LDW�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS024.BYTE005  $  if(x==0x01) y=@0e38;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  131.LDW(����ƫ��Ԥ��ϵͳ)����                        $    $          $    $  ANS025.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  132.LDW(����ƫ��Ԥ��ϵͳ)ָʾ��                      $    $          $    $  ANS026.BYTE004  $  if((x&0x01)==0x00) y=@000f;else if((x&0x01)==0x01) y=@0028;else y=@0035;
  $  133.LKAδ׼���ü����ԭ��0~7                         $    $          $    $  ANS027.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  134.LKAδ׼���ü����ԭ��8~15                        $    $          $    $  ANS027.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0103;
  $  135.LKAδ׼���ü����ԭ��16~23                       $    $          $    $  ANS027.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0ede;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0edf;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0ee0;else if(x==0x40) y=@0ee1;else if(x==0x80) y=@0ee2;else y=@0103;
  $  136.LKAδ׼���ü����ԭ��24~31                       $    $          $    $  ANS027.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  137.LKAδ׼���ü����ԭ��32~39                       $    $          $    $  ANS027.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  138.LKAδ׼���ü����ԭ��40~47                       $    $          $    $  ANS027.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  139.LKAδ׼���ü����ԭ��48_55                       $    $          $    $  ANS027.BYTE010  $  y=x;
  $  140.LKAδ׼���ü����ԭ��56_63                       $    $          $    $  ANS027.BYTE011  $  y=x;
  $  141.LKAδ׼���ü���Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS027.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  142.LKAδ׼���ü�������                            $    $          $    $  ANS027.BYTE014  $  y=x+2000;
  $  143.LKAδ׼���ü�����·�                            $    $          $    $  ANS027.BYTE015  $  y=x;
  $  144.LKAδ׼���ü������                              $    $          $    $  ANS027.BYTE016  $  y=x;
  $  145.LKAδ׼���ü����ʱ                              $    $          $    $  ANS027.BYTE017  $  y=x;
  $  146.LKAδ׼���ü���ķ�                              $    $          $    $  ANS027.BYTE018  $  y=x;
  $  147.LKAδ׼���ü������                              $    $          $    $  ANS027.BYTE019  $  y=x;
  $  148.LKAδ׼���ü�������                            $    $  km      $    $  ANS027.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  149.LKAδ׼���ü����ԭ��0~7                         $    $          $    $  ANS028.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  150.LKAδ׼���ü����ԭ��8~15                        $    $          $    $  ANS028.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0103;
  $  151.LKAδ׼���ü����ԭ��16~23                       $    $          $    $  ANS028.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0ede;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0edf;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0ee0;else if(x==0x40) y=@0ee1;else if(x==0x80) y=@0ee2;else y=@0103;
  $  152.LKAδ׼���ü����ԭ��24~31                       $    $          $    $  ANS028.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  153.LKAδ׼���ü����ԭ��32~39                       $    $          $    $  ANS028.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  154.LKAδ׼���ü����ԭ��40~47                       $    $          $    $  ANS028.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  155.LKAδ׼���ü����ԭ��48_55                       $    $          $    $  ANS028.BYTE010  $  y=x;
  $  156.LKAδ׼���ü����ԭ��56_63                       $    $          $    $  ANS028.BYTE011  $  y=x;
  $  157.LKAδ׼���ü���Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS028.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  158.LKAδ׼���ü�������                            $    $          $    $  ANS028.BYTE014  $  y=x+2000;
  $  159.LKAδ׼���ü�����·�                            $    $          $    $  ANS028.BYTE015  $  y=x;
  $  160.LKAδ׼���ü������                              $    $          $    $  ANS028.BYTE016  $  y=x;
  $  161.LKAδ׼���ü����ʱ                              $    $          $    $  ANS028.BYTE017  $  y=x;
  $  162.LKAδ׼���ü���ķ�                              $    $          $    $  ANS028.BYTE018  $  y=x;
  $  163.LKAδ׼���ü������                              $    $          $    $  ANS028.BYTE019  $  y=x;
  $  164.LKAδ׼���ü�������                            $    $  km      $    $  ANS028.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  165.LKAδ׼���ü����ԭ��0~7                         $    $          $    $  ANS029.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  166.LKAδ׼���ü����ԭ��8~15                        $    $          $    $  ANS029.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0103;
  $  167.LKAδ׼���ü����ԭ��16~23                       $    $          $    $  ANS029.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0ede;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0edf;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0ee0;else if(x==0x40) y=@0ee1;else if(x==0x80) y=@0ee2;else y=@0103;
  $  168.LKAδ׼���ü����ԭ��24~31                       $    $          $    $  ANS029.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  169.LKAδ׼���ü����ԭ��32~39                       $    $          $    $  ANS029.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  170.LKAδ׼���ü����ԭ��40~47                       $    $          $    $  ANS029.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  171.LKAδ׼���ü����ԭ��48_55                       $    $          $    $  ANS029.BYTE010  $  y=x;
  $  172.LKAδ׼���ü����ԭ��56_63                       $    $          $    $  ANS029.BYTE011  $  y=x;
  $  173.LKAδ׼���ü���Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS029.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  174.LKAδ׼���ü�������                            $    $          $    $  ANS029.BYTE014  $  y=x+2000;
  $  175.LKAδ׼���ü�����·�                            $    $          $    $  ANS029.BYTE015  $  y=x;
  $  176.LKAδ׼���ü������                              $    $          $    $  ANS029.BYTE016  $  y=x;
  $  177.LKAδ׼���ü����ʱ                              $    $          $    $  ANS029.BYTE017  $  y=x;
  $  178.LKAδ׼���ü���ķ�                              $    $          $    $  ANS029.BYTE018  $  y=x;
  $  179.LKAδ׼���ü������                              $    $          $    $  ANS029.BYTE019  $  y=x;
  $  180.LKAδ׼���ü�������                            $    $  km      $    $  ANS029.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  181.LKAδ׼���ü����ԭ��0~7                         $    $          $    $  ANS030.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  182.LKAδ׼���ü����ԭ��8~15                        $    $          $    $  ANS030.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0103;
  $  183.LKAδ׼���ü����ԭ��16~23                       $    $          $    $  ANS030.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0ede;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0edf;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0ee0;else if(x==0x40) y=@0ee1;else if(x==0x80) y=@0ee2;else y=@0103;
  $  184.LKAδ׼���ü����ԭ��24~31                       $    $          $    $  ANS030.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  185.LKAδ׼���ü����ԭ��32~39                       $    $          $    $  ANS030.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  186.LKAδ׼���ü����ԭ��40~47                       $    $          $    $  ANS030.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  187.LKAδ׼���ü����ԭ��48_55                       $    $          $    $  ANS030.BYTE010  $  y=x;
  $  188.LKAδ׼���ü����ԭ��56_63                       $    $          $    $  ANS030.BYTE011  $  y=x;
  $  189.LKAδ׼���ü���Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS030.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  190.LKAδ׼���ü�������                            $    $          $    $  ANS030.BYTE014  $  y=x+2000;
  $  191.LKAδ׼���ü�����·�                            $    $          $    $  ANS030.BYTE015  $  y=x;
  $  192.LKAδ׼���ü������                              $    $          $    $  ANS030.BYTE016  $  y=x;
  $  193.LKAδ׼���ü����ʱ                              $    $          $    $  ANS030.BYTE017  $  y=x;
  $  194.LKAδ׼���ü���ķ�                              $    $          $    $  ANS030.BYTE018  $  y=x;
  $  195.LKAδ׼���ü������                              $    $          $    $  ANS030.BYTE019  $  y=x;
  $  196.LKAδ׼���ü�������                            $    $  km      $    $  ANS030.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);

  $)  03.������4
  $  03.������4
  $  REQ000:74A 03 22 B0 A9 00 00 00 00       $  ANS000:7CA 03 22 B0 A9 00 00 00 00
  $  REQ001:74A 03 22 B0 AB 00 00 00 00       $  ANS001:7CA 03 22 B0 AB 00 00 00 00
  $  REQ002:74A 03 22 B0 97 00 00 00 00       $  ANS002:7CA 03 22 B0 97 00 00 00 00
  $  REQ003:74A 03 22 B0 A0 00 00 00 00       $  ANS003:7CA 03 22 B0 A0 00 00 00 00
  $  REQ004:74A 03 22 B0 A1 00 00 00 00       $  ANS004:7CA 03 22 B0 A1 00 00 00 00
  $  REQ005:74A 03 22 B0 A2 00 00 00 00       $  ANS005:7CA 03 22 B0 A2 00 00 00 00
  $  REQ006:74A 03 22 B0 A3 00 00 00 00       $  ANS006:7CA 03 22 B0 A3 00 00 00 00
  $  REQ007:74A 03 22 B0 A4 00 00 00 00       $  ANS007:7CA 03 22 B0 A4 00 00 00 00
  $  REQ008:74A 03 22 B0 AA 00 00 00 00       $  ANS008:7CA 03 22 B0 AA 00 00 00 00
  $  REQ009:74A 03 22 B0 30 00 00 00 00       $  ANS009:7CA 03 22 B0 30 00 00 00 00
  $  REQ010:74A 03 22 E1 01 00 00 00 00       $  ANS010:7CA 03 22 E1 01 00 00 00 00
  $  REQ011:74A 03 22 C0 05 00 00 00 00       $  ANS011:7CA 03 22 C0 05 00 00 00 00
  $  REQ012:74A 03 22 B0 90 00 00 00 00       $  ANS012:7CA 03 22 B0 90 00 00 00 00
  $  REQ013:74A 03 22 C0 08 00 00 00 00       $  ANS013:7CA 03 22 C0 08 00 00 00 00
  $  REQ014:74A 03 22 C0 03 00 00 00 00       $  ANS014:7CA 03 22 C0 03 00 00 00 00
  $  REQ015:74A 03 22 C0 06 00 00 00 00       $  ANS015:7CA 03 22 C0 06 00 00 00 00
  $  REQ016:74A 03 22 B0 47 00 00 00 00       $  ANS016:7CA 03 22 B0 47 00 00 00 00
  $  REQ017:74A 03 22 B0 79 00 00 00 00       $  ANS017:7CA 03 22 B0 79 00 00 00 00
  $  REQ018:74A 03 22 B0 7B 00 00 00 00       $  ANS018:7CA 03 22 B0 7B 00 00 00 00
  $  REQ019:74A 03 22 B0 95 00 00 00 00       $  ANS019:7CA 03 22 B0 95 00 00 00 00
  $  REQ020:74A 03 22 B0 78 00 00 00 00       $  ANS020:7CA 03 22 B0 78 00 00 00 00
  $  REQ021:74A 03 22 B0 7A 00 00 00 00       $  ANS021:7CA 03 22 B0 7A 00 00 00 00
  $  REQ022:74A 03 22 B0 00 00 00 00 00       $  ANS022:7CA 03 22 B0 00 00 00 00 00

  $  000.LKAδ׼���ü����ԭ��0~7                         $    $          $    $  ANS000.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  001.LKAδ׼���ü����ԭ��8~15                        $    $          $    $  ANS000.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0103;
  $  002.LKAδ׼���ü����ԭ��16~23                       $    $          $    $  ANS000.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0ede;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0edf;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0ee0;else if(x==0x40) y=@0ee1;else if(x==0x80) y=@0ee2;else y=@0103;
  $  003.LKAδ׼���ü����ԭ��24~31                       $    $          $    $  ANS000.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  004.LKAδ׼���ü����ԭ��32~39                       $    $          $    $  ANS000.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  005.LKAδ׼���ü����ԭ��40~47                       $    $          $    $  ANS000.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  006.LKAδ׼���ü����ԭ��48_55                       $    $          $    $  ANS000.BYTE010  $  y=x;
  $  007.LKAδ׼���ü����ԭ��56_63                       $    $          $    $  ANS000.BYTE011  $  y=x;
  $  008.LKAδ׼���ü���Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS000.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  009.LKAδ׼���ü�������                            $    $          $    $  ANS000.BYTE014  $  y=x+2000;
  $  010.LKAδ׼���ü�����·�                            $    $          $    $  ANS000.BYTE015  $  y=x;
  $  011.LKAδ׼���ü������                              $    $          $    $  ANS000.BYTE016  $  y=x;
  $  012.LKAδ׼���ü����ʱ                              $    $          $    $  ANS000.BYTE017  $  y=x;
  $  013.LKAδ׼���ü���ķ�                              $    $          $    $  ANS000.BYTE018  $  y=x;
  $  014.LKAδ׼���ü������                              $    $          $    $  ANS000.BYTE019  $  y=x;
  $  015.LKAδ׼���ü�������                            $    $  km      $    $  ANS000.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  016.LKAδ׼���ü����ԭ��0~7                         $    $          $    $  ANS001.BYTE004  $  if(x==0x01) y=@0b2d;else if(x==0x02) y=@0ddf;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e2e;else if(x==0x10) y=@0103;else if(x==0x20) y=@0b30;else if(x==0x40) y=@0b19;else if(x==0x80) y=@0de0;else y=@0103;
  $  017.LKAδ׼���ü����ԭ��8~15                        $    $          $    $  ANS001.BYTE005  $  if(x==0x01) y=@0b1b;else if(x==0x02) y=@0b1c;else if(x==0x04) y=@0b1d;else if(x==0x08) y=@0b1e;else if(x==0x10) y=@0b32;else if(x==0x20) y=@0b33;else if(x==0x40) y=@0b1f;else if(x==0x80) y=@0dfe;else y=@0103;
  $  018.LKAδ׼���ü����ԭ��16~23                       $    $          $    $  ANS001.BYTE006  $  if(x==0x01) y=@0e36;else if(x==0x02) y=@0ede;else if(x==0x04) y=@0b36;else if(x==0x08) y=@0edf;else if(x==0x10) y=@0de1;else if(x==0x20) y=@0ee0;else if(x==0x40) y=@0ee1;else if(x==0x80) y=@0ee2;else y=@0103;
  $  019.LKAδ׼���ü����ԭ��24~31                       $    $          $    $  ANS001.BYTE007  $  if(x==0x01) y=@0e40;else if(x==0x02) y=@0b3d;else if(x==0x04) y=@0b3e;else if(x==0x08) y=@0de3;else if(x==0x10) y=@0de4;else if(x==0x20) y=@0de5;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  020.LKAδ׼���ü����ԭ��32~39                       $    $          $    $  ANS001.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  021.LKAδ׼���ü����ԭ��40~47                       $    $          $    $  ANS001.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  022.LKAδ׼���ü����ԭ��48_55                       $    $          $    $  ANS001.BYTE010  $  y=x;
  $  023.LKAδ׼���ü����ԭ��56_63                       $    $          $    $  ANS001.BYTE011  $  y=x;
  $  024.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS002.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  025.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS002.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  026.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS002.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  027.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS002.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  028.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS002.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  029.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS002.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  030.LKA�˳�����״̬��ԭ��48_55                       $    $          $    $  ANS002.BYTE010  $  y=x;
  $  031.LKA�˳�����״̬��ԭ��56_63                       $    $          $    $  ANS002.BYTE011  $  y=x;
  $  032.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS003.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  033.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS003.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  034.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS003.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  035.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS003.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  036.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS003.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  037.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS003.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  038.LKA�˳�����״̬��ԭ��48_55                       $    $          $    $  ANS003.BYTE010  $  y=x;
  $  039.LKA�˳�����״̬��ԭ��56_63                       $    $          $    $  ANS003.BYTE011  $  y=x;
  $  040.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS003.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  041.LKA�˳��¼����                                  $    $          $    $  ANS003.BYTE014  $  y=x+2000;
  $  042.LKA�˳��¼��·�                                  $    $          $    $  ANS003.BYTE015  $  y=x;
  $  043.LKA�˳����                                    $    $          $    $  ANS003.BYTE016  $  y=x;
  $  044.LKA�˳��ʱ                                    $    $          $    $  ANS003.BYTE017  $  y=x;
  $  045.LKA�˳��¼���                                    $    $          $    $  ANS003.BYTE018  $  y=x;
  $  046.LKA�˳��¼���                                    $    $          $    $  ANS003.BYTE019  $  y=x;
  $  047.LKA�˳��¼����                                  $    $  km      $    $  ANS003.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  048.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS004.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  049.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS004.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  050.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS004.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  051.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS004.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  052.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS004.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  053.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS004.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  054.LKA�˳�����״̬��ԭ��48_55                       $    $          $    $  ANS004.BYTE010  $  y=x;
  $  055.LKA�˳�����״̬��ԭ��56_63                       $    $          $    $  ANS004.BYTE011  $  y=x;
  $  056.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS004.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  057.LKA�˳��¼����                                  $    $          $    $  ANS004.BYTE014  $  y=x+2000;
  $  058.LKA�˳��¼��·�                                  $    $          $    $  ANS004.BYTE015  $  y=x;
  $  059.LKA�˳����                                    $    $          $    $  ANS004.BYTE016  $  y=x;
  $  060.LKA�˳��ʱ                                    $    $          $    $  ANS004.BYTE017  $  y=x;
  $  061.LKA�˳��¼���                                    $    $          $    $  ANS004.BYTE018  $  y=x;
  $  062.LKA�˳��¼���                                    $    $          $    $  ANS004.BYTE019  $  y=x;
  $  063.LKA�˳��¼����                                  $    $  km      $    $  ANS004.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  064.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS005.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  065.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS005.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  066.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS005.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  067.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS005.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  068.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS005.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  069.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS005.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  070.LKA�˳�����״̬��ԭ��48_55                       $    $          $    $  ANS005.BYTE010  $  y=x;
  $  071.LKA�˳�����״̬��ԭ��56_63                       $    $          $    $  ANS005.BYTE011  $  y=x;
  $  072.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS005.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  073.LKA�˳��¼����                                  $    $          $    $  ANS005.BYTE014  $  y=x+2000;
  $  074.LKA�˳��¼��·�                                  $    $          $    $  ANS005.BYTE015  $  y=x;
  $  075.LKA�˳����                                    $    $          $    $  ANS005.BYTE016  $  y=x;
  $  076.LKA�˳��ʱ                                    $    $          $    $  ANS005.BYTE017  $  y=x;
  $  077.LKA�˳��¼���                                    $    $          $    $  ANS005.BYTE018  $  y=x;
  $  078.LKA�˳��¼���                                    $    $          $    $  ANS005.BYTE019  $  y=x;
  $  079.LKA�˳��¼����                                  $    $  km      $    $  ANS005.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  080.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS006.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  081.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS006.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  082.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS006.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  083.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS006.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  084.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS006.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  085.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS006.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  086.LKA�˳�����״̬��ԭ��48_55                       $    $          $    $  ANS006.BYTE010  $  y=x;
  $  087.LKA�˳�����״̬��ԭ��56_63                       $    $          $    $  ANS006.BYTE011  $  y=x;
  $  088.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS006.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  089.LKA�˳��¼����                                  $    $          $    $  ANS006.BYTE014  $  y=x+2000;
  $  090.LKA�˳��¼��·�                                  $    $          $    $  ANS006.BYTE015  $  y=x;
  $  091.LKA�˳����                                    $    $          $    $  ANS006.BYTE016  $  y=x;
  $  092.LKA�˳��ʱ                                    $    $          $    $  ANS006.BYTE017  $  y=x;
  $  093.LKA�˳��¼���                                    $    $          $    $  ANS006.BYTE018  $  y=x;
  $  094.LKA�˳��¼���                                    $    $          $    $  ANS006.BYTE019  $  y=x;
  $  095.LKA�˳��¼����                                  $    $  km      $    $  ANS006.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  096.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS007.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  097.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS007.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  098.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS007.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  099.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS007.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  100.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS007.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  101.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS007.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  102.LKA�˳�����״̬��ԭ��48_55                       $    $          $    $  ANS007.BYTE010  $  y=x;
  $  103.LKA�˳�����״̬��ԭ��56_63                       $    $          $    $  ANS007.BYTE011  $  y=x;
  $  104.LKA�˳�����״̬�Ĺ��ϰ�ȫ��־                    $    $          $    $  ANS007.BYTE012  $  if((x1*256+x2)==0x01) y=@0e09;else if((x1*256+x2)==0x02) y=@0e0a;else if((x1*256+x2)==0x04) y=@0e0b;else if((x1*256+x2)==0x08) y=@0e0c;else if((x1*256+x2)==0x10) y=@0e0d;else if((x1*256+x2)==0x100) y=@0e0e;else if((x1*256+x2)==0x1000) y=@0035;else if((x1*256+x2)==0x20) y=@0e0f;else if((x1*256+x2)==0x200) y=@0e10;else if((x1*256+x2)==0x2000) y=@0035;else if((x1*256+x2)==0x40) y=@0e11;else if((x1*256+x2)==0x400) y=@0035;else if((x1*256+x2)==0x4000) y=@0035;else if((x1*256+x2)==0x80) y=@0e12;else if((x1*256+x2)==0x800) y=@0035;else if((x1*256+x2)==0x8000) y=@0035;else y=@0103;
  $  105.LKA�˳��¼����                                  $    $          $    $  ANS007.BYTE014  $  y=x+2000;
  $  106.LKA�˳��¼��·�                                  $    $          $    $  ANS007.BYTE015  $  y=x;
  $  107.LKA�˳����                                    $    $          $    $  ANS007.BYTE016  $  y=x;
  $  108.LKA�˳��ʱ                                    $    $          $    $  ANS007.BYTE017  $  y=x;
  $  109.LKA�˳��¼���                                    $    $          $    $  ANS007.BYTE018  $  y=x;
  $  110.LKA�˳��¼���                                    $    $          $    $  ANS007.BYTE019  $  y=x;
  $  111.LKA�˳��¼����                                  $    $  km      $    $  ANS007.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  112.LKA�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS008.BYTE004  $  if(x==0x01) y=@0e30;else if(x==0x02) y=@0b1f;else if(x==0x04) y=@0db9;else if(x==0x08) y=@0b44;else if(x==0x10) y=@0e16;else if(x==0x20) y=@091c;else if(x==0x40) y=@0e31;else if(x==0x80) y=@0abc;else y=@0103;
  $  113.LKA�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS008.BYTE005  $  if(x==0x01) y=@0103;else if(x==0x02) y=@0e32;else if(x==0x04) y=@0103;else if(x==0x08) y=@0e15;else if(x==0x10) y=@0b19;else if(x==0x20) y=@0dba;else if(x==0x40) y=@0b1b;else if(x==0x80) y=@0b1c;else y=@0103;
  $  114.LKA�˳�����״̬��ԭ��16~23                       $    $          $    $  ANS008.BYTE006  $  if(x==0x01) y=@0b1d;else if(x==0x02) y=@0b1e;else if(x==0x04) y=@0b1f;else if(x==0x08) y=@0dbb;else if(x==0x10) y=@0dfe;else if(x==0x20) y=@0b22;else if(x==0x40) y=@0e33;else if(x==0x80) y=@0e34;else y=@0103;
  $  115.LKA�˳�����״̬��ԭ��24~31                       $    $          $    $  ANS008.BYTE007  $  if(x==0x01) y=@0dbd;else if(x==0x02) y=@0dbe;else if(x==0x04) y=@0dbf;else if(x==0x08) y=@0e35;else if(x==0x10) y=@0e36;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  116.LKA�˳�����״̬��ԭ��32~39                       $    $          $    $  ANS008.BYTE008  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  117.LKA�˳�����״̬��ԭ��40~47                       $    $          $    $  ANS008.BYTE009  $  if(x==0x01) y=@0035;else if(x==0x02) y=@0035;else if(x==0x04) y=@0035;else if(x==0x08) y=@0035;else if(x==0x10) y=@0035;else if(x==0x20) y=@0035;else if(x==0x40) y=@0035;else if(x==0x80) y=@0035;else y=@0103;
  $  118.LKA�˳�����״̬��ԭ��48_55                       $    $          $    $  ANS008.BYTE010  $  y=x;
  $  119.LKA�˳�����״̬��ԭ��56_63                       $    $          $    $  ANS008.BYTE011  $  y=x;
  $  120.AHB(�Զ�Զ���)����                              $    $          $    $  ANS009.BYTE004  $  if(((x&0x80)>>7)==0x00) y=@00db;else if(((x&0x80)>>7)==0x01) y=@00dc;else y=@0035;
  $  121.TSR(��ͨ��־ʶ��)����                            $    $          $    $  ANS009.BYTE004  $  if(((x&0x40)>>6)==0x00) y=@00db;else if(((x&0x40)>>6)==0x01) y=@00dc;else y=@0035;
  $  122.ACC(����ӦѲ������)����                          $    $          $    $  ANS009.BYTE004  $  if(((x&0x20)>>5)==0x00) y=@00db;else if(((x&0x20)>>5)==0x01) y=@00dc;else y=@0035;
  $  123.AEBP(�����Զ������ƶ�)����                       $    $          $    $  ANS009.BYTE004  $  if(((x&0x10)>>4)==0x00) y=@00db;else if(((x&0x10)>>4)==0x01) y=@00dc;else y=@0035;
  $  124.AEB(�Զ��ƶ�ϵͳ)����                            $    $          $    $  ANS009.BYTE004  $  if(((x&0x08)>>3)==0x00) y=@00db;else if(((x&0x08)>>3)==0x01) y=@00dc;else y=@0035;
  $  125.PCW(������ײ����)����                            $    $          $    $  ANS009.BYTE004  $  if(((x&0x04)>>2)==0x00) y=@00db;else if(((x&0x04)>>2)==0x01) y=@00dc;else y=@0035;
  $  126.FCW(������ײ����)����                            $    $          $    $  ANS009.BYTE004  $  if(((x&0x02)>>1)==0x00) y=@00db;else if(((x&0x02)>>1)==0x01) y=@00dc;else y=@0035;
  $  127.LDW(����ƫ��Ԥ��ϵͳ)����                        $    $          $    $  ANS009.BYTE004  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  128.LKA(�������ָ���)����                            $    $          $    $  ANS009.BYTE005  $  if((x&0x01)==0x00) y=@00db;else if((x&0x01)==0x01) y=@00dc;else y=@0035;
  $  129.���������ź�У���                               $    $          $    $  ANS009.BYTE006  $  HEX(X1);
  $  130.��̶���                                         $    $  km      $    $  ANS010.BYTE004  $  y=(x1*256*256+x2*256+x3);
  $  131.�����ĵ�������                                   $    $          $    $  ANS011.BYTE004  $  if(x==0x00) y=@0136;else if(x==0x01) y=@00d9;else if(x==0x02) y=@0da8;else if(x==0x03) y=@00da;else if(x==0x04) y=@0b6f;else if(x==0x05) y=@08be;else if(x==0x06) y=@00d8;else if(x==0x07) y=@067b;else if(x==0x08) y=@08c3;else if(x==0x09) y=@0671;else if(x==0x0A) y=@0675;else y=@0103;
  $  132.����У�����                                     $    $          $    $  ANS012.BYTE006  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  133.PLL(���໷)У�����                              $    $          $    $  ANS012.BYTE007  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  134.�ڴ�У�����                                     $    $          $    $  ANS012.BYTE008  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  135.ջУ�����                                       $    $          $    $  ANS012.BYTE009  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  136.δʹ�õĴ洢��У�����                           $    $          $    $  ANS012.BYTE010  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  137.ECC(������;���)У�����                      $    $          $    $  ANS012.BYTE011  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  138.�����Ĵ���У�����                               $    $          $    $  ANS012.BYTE012  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  139.Spi��ʱ                                          $    $          $    $  ANS012.BYTE013  $  if(x==0x00) y=@012a;else if(x==0x01) y=@0119;else y=@0103;
  $  140.ESR0�ĸ�λ������                                 $    $          $    $  ANS012.BYTE014  $  y=x;
  $  141.ESR1�ĸ�λ������                                 $    $          $    $  ANS012.BYTE015  $  y=x;
  $  142.SMU�ĸ�λ������                                  $    $          $    $  ANS012.BYTE016  $  y=x;
  $  143.�����λ�ĸ�λ������                             $    $          $    $  ANS012.BYTE017  $  y=x;
  $  144.STM0�ĸ�λ������                                 $    $          $    $  ANS012.BYTE018  $  y=x;
  $  145.STM1�ĸ�λ������                                 $    $          $    $  ANS012.BYTE019  $  y=x;
  $  146.STM2�ĸ�λ������                                 $    $          $    $  ANS012.BYTE020  $  y=x;
  $  147.��θ�λ�ĸ�λ������                             $    $          $    $  ANS012.BYTE021  $  y=x;
  $  148.CB0�ĸ�λ������                                  $    $          $    $  ANS012.BYTE022  $  y=x;
  $  149.CB1�ĸ�λ������                                  $    $          $    $  ANS012.BYTE023  $  y=x;
  $  150.CB3�ĸ�λ������                                  $    $          $    $  ANS012.BYTE024  $  y=x;
  $  151.���ű����ĸ�λ������                             $    $          $    $  ANS012.BYTE025  $  y=x;
  $  152.EVR13�ĸ�λ������                                $    $          $    $  ANS012.BYTE026  $  y=x;
  $  153.EVR33�ĸ�λ������                                $    $          $    $  ANS012.BYTE027  $  y=x;
  $  154.���ӿ��Ź��ĸ�λ������                           $    $          $    $  ANS012.BYTE028  $  y=x;
  $  155.���ÿ��Ź��ĸ�λ������                           $    $          $    $  ANS012.BYTE029  $  y=x;
  $  156.�ɿ����������                                   $    $          $    $  ANS012.BYTE030  $  y=x+2000;
  $  157.�ɿ��������·�                                   $    $          $    $  ANS012.BYTE031  $  y=x;
  $  158.�ɿ���������                                     $    $          $    $  ANS012.BYTE032  $  y=x;
  $  159.�ɿ�������ʱ                                     $    $          $    $  ANS012.BYTE033  $  y=x;
  $  160.�ɿ������ݷ�                                     $    $          $    $  ANS012.BYTE034  $  y=x;
  $  161.�ɿ���������                                     $    $          $    $  ANS012.BYTE035  $  y=x;
  $  162.�ɿ����������                                   $    $  km      $    $  ANS012.BYTE036  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  163.FICM����                                         $    $          $    $  ANS013.BYTE005  $  if(x==0x55) y=@0eda;else if(x==0xAA) y=@0edb;else y=@0103;
  $  164.Ӣ��ÿСʱ���߹���ÿСʱ����                     $    $          $    $  ANS013.BYTE006  $  if(x==0x55) y=@0edc;else if(x==0xAA) y=@0edd;else y=@0103;
  $  165.FCW(������ײ����)����ѡ���������ȵȼ�            $    $          $    $  ANS014.BYTE004  $  if(((x&0xF0)>>4)==0x00) y=@0ed7;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@0ed8;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  166.LDW(����ƫ��Ԥ��ϵͳ)����ѡ���������ȵȼ�        $    $          $    $  ANS014.BYTE004  $  if((x&0x0F)==0x00) y=@0ed7;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@0ed8;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  167.AEB(�Զ��ƶ�ϵͳ)����ѡ��������ȵȼ�            $    $          $    $  ANS014.BYTE005  $  if(((x&0xF0)>>4)==0x00) y=@0ed7;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@0ed8;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  168.ACC(����ӦѲ������)����ѡ����Ŀ�����ȼ�        $    $          $    $  ANS014.BYTE005  $  if((x&0x0F)==0x00) y=@0ed7;else if((x&0x0F)==0x01) y=@04f8;else if((x&0x0F)==0x02) y=@04f7;else if((x&0x0F)==0x03) y=@04f6;else y=@0103;
  $  169.PCW(������ײ����)����ѡ���������ȵȼ�            $    $          $    $  ANS014.BYTE006  $  if(((x&0xF0)>>4)==0x00) y=@0ed7;else if(((x&0xF0)>>4)==0x01) y=@06c7;else if(((x&0xF0)>>4)==0x02) y=@0ed8;else if(((x&0xF0)>>4)==0x03) y=@06cb;else y=@0103;
  $  170.AEBP(�����Զ������ƶ�)����ѡ��������ȵȼ�       $    $          $    $  ANS014.BYTE006  $  if((x&0x0F)==0x00) y=@0ed7;else if((x&0x0F)==0x01) y=@06c7;else if((x&0x0F)==0x02) y=@0ed8;else if((x&0x0F)==0x03) y=@06cb;else y=@0103;
  $  171.����ͷ��Ŀ���ٶ�Ҫ��                             $    $          $    $  ANS015.BYTE004  $  y=(x1*256+x2);
  $  172.ACC����ѡ����Ŀ���ٶ�                            $    $          $    $  ANS015.BYTE006  $  y=(x1*256+x2);
  $  173.��Ӧ��оƬ���ٺ�                                 $    $          $    $  ANS016.BYTE004  $  y=UINT64(x1,x2,x3,x4,x5,x6,x7,x8);
  $  174.TSRδ׼���ü����ԭ��0~7                         $    $          $    $  ANS017.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  175.TSRδ׼���ü�������                            $    $          $    $  ANS017.BYTE006  $  y=x+2000;
  $  176.TSRδ׼���ü�����·�                            $    $          $    $  ANS017.BYTE007  $  y=x;
  $  177.TSRδ׼���ü������                              $    $          $    $  ANS017.BYTE008  $  y=x;
  $  178.TSRδ׼���ü����ʱ                              $    $          $    $  ANS017.BYTE009  $  y=x;
  $  179.TSRδ׼���ü���ķ�                              $    $          $    $  ANS017.BYTE010  $  y=x;
  $  180.TSRδ׼���ü������                              $    $          $    $  ANS017.BYTE011  $  y=x;
  $  181.TSRδ׼���ü�������                            $    $  km      $    $  ANS017.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  182.TSRδ׼���ü����ԭ��0~7                         $    $          $    $  ANS018.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  183.TSRδ׼���ü����ԭ��8~15                        $    $          $    $  ANS018.BYTE005  $  if(x==0x00) y=@075a;else y=@01a9;
  $  184.TSR�˳�����״̬��ԭ��0~7(B095)                   $    $          $    $  ANS019.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  185.TSR�˳�����״̬��ԭ��8~15(B095)                  $    $          $    $  ANS019.BYTE005  $  if(x==0x00) y=@075a;else y=@01a9;
  $  186.TSR�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS020.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  187.TSR�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS020.BYTE005  $  y=x;
  $  188.TSR�˳��¼����                                  $    $          $    $  ANS020.BYTE006  $  y=x+2000;
  $  189.TSR�˳��¼��·�                                  $    $          $    $  ANS020.BYTE007  $  y=x;
  $  190.TSR�˳����                                    $    $          $    $  ANS020.BYTE008  $  y=x;
  $  191.TSR�˳��ʱ                                    $    $          $    $  ANS020.BYTE009  $  y=x;
  $  192.TSR�˳��¼���                                    $    $          $    $  ANS020.BYTE010  $  y=x;
  $  193.TSR�˳��¼���                                    $    $          $    $  ANS020.BYTE011  $  y=x;
  $  194.TSR�˳��¼����                                  $    $  km      $    $  ANS020.BYTE012  $  y=(x1*256*256+x2*256+x3);
  $  195.TSR�˳�����״̬��ԭ��0~7                         $    $          $    $  ANS021.BYTE004  $  if(x==0x01) y=@0df4;else if(x==0x02) y=@0dfe;else if(x==0x04) y=@0dff;else if(x==0x08) y=@0e00;else if(x==0x10) y=@0b4a;else y=@0035;
  $  196.TSR�˳�����״̬��ԭ��8~15                        $    $          $    $  ANS021.BYTE005  $  if(x==0x00) y=@075a;else y=@01a9;
  $  197.�����ٶ�                                         $    $  kph     $    $  ANS022.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:74A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
