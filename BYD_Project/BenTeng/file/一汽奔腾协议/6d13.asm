
    ����ID��6d13

    ģ�⣺Э��ģ��-->6d13

;******************************************************************************************************************************************************

    ͨѶ��: $~06$~14$~500k

��������:

  $~  REQ000:75E 02 10 01 00 00 00 00 00       $~  ANS000:77E 02 10 01 00 00 00 00 00

��������:

  $!  REQ000:75E 02 3E 00 00 00 00 00 00       $!  ANS000:77E 02 3E 00 00 00 00 00 00

�˳�����:



;******************************************************************************************************************************************************

��ȡ������:

  $#  REQ000:75E 03 19 02 09 00 00 00 00       $#  ANS000:77E 03 19 02 09 00 00 00 00

  ֡�����ƹ������������$#ANS000.BYTE4$#��ʼÿ$#4$#���ֽڱ�ʾһ�������룬ǰ$#3$#��ʾ��š�


;******************************************************************************************************************************************************

���������:

  $$  REQ000:75E 04 14 FF FF FF 00 00 00       $$  ANS000:77E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

�汾��Ϣ:

  $%  REQ000:75E 03 22 F1 87 00 00 00 00       $%  ANS000:77E 03 22 F1 87 00 00 00 00
  $%  REQ001:75E 03 22 F1 90 00 00 00 00       $%  ANS001:77E 03 22 F1 90 00 00 00 00
  $%  REQ002:75E 03 22 F1 93 00 00 00 00       $%  ANS002:77E 03 22 F1 93 00 00 00 00
  $%  REQ003:75E 03 22 F1 95 00 00 00 00       $%  ANS003:77E 03 22 F1 95 00 00 00 00
  $%  REQ004:75E 03 22 F1 99 00 00 00 00       $%  ANS004:77E 03 22 F1 99 00 00 00 00
  $%  REQ005:75E 03 22 F1 9D 00 00 00 00       $%  ANS005:77E 03 22 F1 9D 00 00 00 00
  $%  REQ006:75E 03 22 F1 92 00 00 00 00       $%  ANS006:77E 03 22 F1 92 00 00 00 00
  $%  REQ007:75E 03 22 F1 94 00 00 00 00       $%  ANS007:77E 03 22 F1 94 00 00 00 00
  $%  REQ008:75E 03 22 01 00 00 00 00 00       $%  ANS008:77E 03 22 01 00 00 00 00 00
  $%  REQ009:75E 03 22 F1 A2 00 00 00 00       $%  ANS009:77E 03 22 F1 A2 00 00 00 00
  $%  REQ010:75E 03 22 F1 A6 00 00 00 00       $%  ANS010:77E 03 22 F1 A6 00 00 00 00
  $%  REQ011:75E 03 22 F1 82 00 00 00 00       $%  ANS011:77E 03 22 F1 82 00 00 00 00
  $%  REQ012:75E 03 22 F1 9B 00 00 00 00       $%  ANS012:77E 03 22 F1 9B 00 00 00 00
  $%  REQ013:75E 03 22 F1 A0 00 00 00 00       $%  ANS013:77E 03 22 F1 A0 00 00 00 00
  $%  REQ014:75E 03 22 F1 A3 00 00 00 00       $%  ANS014:77E 03 22 F1 A3 00 00 00 00
  $%  REQ015:75E 03 22 F1 A4 00 00 00 00       $%  ANS015:77E 03 22 F1 A4 00 00 00 00
  $%  REQ016:75E 03 22 F1 A5 00 00 00 00       $%  ANS016:77E 03 22 F1 A5 00 00 00 00
  $%  REQ017:75E 03 22 F1 A7 00 00 00 00       $%  ANS017:77E 03 22 F1 A7 00 00 00 00
  $%  REQ018:75E 03 22 01 1F 00 00 00 00       $%  ANS018:77E 03 22 01 1F 00 00 00 00
  $%  REQ019:75E 03 22 01 20 00 00 00 00       $%  ANS019:77E 03 22 01 20 00 00 00 00

  $%  000:�����:                          $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:VIN��:                           $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  002:Ӳ���汾��:                      $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  003:�����汾��:                      $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  004:�������:                        $%    $%  ANS004.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  005:ECU��װ����:                     $%    $%  ANS005.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  006:Ӳ����:                          $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:������:                          $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  008:���ò���:                        $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5);
  $%  009:�ۺ����ò���:                    $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  010:�������������ϵ���������:        $%    $%  ANS010.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  011:������Ϣ��汾:                  $%    $%  ANS011.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  012:�궨����:                        $%    $%  ANS012.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  013:̥ѹ������ֵ����:                $%    $%  ANS013.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  014:����ģʽ����:                    $%    $%  ANS014.BYTE004  $%  if(X1==1) y=@006a;else if(X1==2) y=@05f3;else y=@0004;
  $%  015:��ǰ̥ѹ���������:              $%    $%  ANS015.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  016:��ǰ̥ѹ���������:              $%    $%  ANS016.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  017:���̥ѹ���������:              $%    $%  ANS010.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  018:�Һ�̥ѹ���������:              $%    $%  ANS017.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  019:ң����1 ID:                      $%    $%  ANS018.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  020:ң����2 ID:                      $%    $%  ANS019.BYTE004  $%  Y=HEX(X1,X2,X3,X4);

;******************************************************************************************************************************************************

��������: 

  $  REQ000:75E 03 22 01 01 00 00 00 00       $  ANS000:77E 03 22 01 01 00 00 00 00
  $  REQ001:75E 03 22 01 37 00 00 00 00       $  ANS001:77E 03 22 01 37 00 00 00 00
  $  REQ002:75E 03 22 01 36 00 00 00 00       $  ANS002:77E 03 22 01 36 00 00 00 00
  $  REQ003:75E 03 22 01 06 00 00 00 00       $  ANS003:77E 03 22 01 06 00 00 00 00
  $  REQ004:75E 03 22 01 07 00 00 00 00       $  ANS004:77E 03 22 01 07 00 00 00 00
  $  REQ005:75E 03 22 01 08 00 00 00 00       $  ANS005:77E 03 22 01 08 00 00 00 00
  $  REQ006:75E 03 22 01 09 00 00 00 00       $  ANS006:77E 03 22 01 09 00 00 00 00
  $  REQ007:75E 03 22 01 0A 00 00 00 00       $  ANS007:77E 03 22 01 0A 00 00 00 00
  $  REQ008:75E 03 22 01 0B 00 00 00 00       $  ANS008:77E 03 22 01 0B 00 00 00 00
  $  REQ009:75E 03 22 01 0C 00 00 00 00       $  ANS009:77E 03 22 01 0C 00 00 00 00
  $  REQ010:75E 03 22 01 0E 00 00 00 00       $  ANS010:77E 03 22 01 0E 00 00 00 00
  $  REQ011:75E 03 22 01 0F 00 00 00 00       $  ANS011:77E 03 22 01 0F 00 00 00 00
  $  REQ012:75E 03 22 01 11 00 00 00 00       $  ANS012:77E 03 22 01 11 00 00 00 00
  $  REQ013:75E 03 22 01 12 00 00 00 00       $  ANS013:77E 03 22 01 12 00 00 00 00
  $  REQ014:75E 03 22 01 14 00 00 00 00       $  ANS014:77E 03 22 01 14 00 00 00 00
  $  REQ015:75E 03 22 01 17 00 00 00 00       $  ANS015:77E 03 22 01 17 00 00 00 00
  $  REQ016:75E 03 22 01 18 00 00 00 00       $  ANS016:77E 03 22 01 18 00 00 00 00
  $  REQ017:75E 03 22 01 19 00 00 00 00       $  ANS017:77E 03 22 01 19 00 00 00 00
  $  REQ018:75E 03 22 01 1B 00 00 00 00       $  ANS018:77E 03 22 01 1B 00 00 00 00
  $  REQ019:75E 03 22 01 1C 00 00 00 00       $  ANS019:77E 03 22 01 1C 00 00 00 00
  $  REQ020:75E 03 22 01 1D 00 00 00 00       $  ANS020:77E 03 22 01 1D 00 00 00 00
  $  REQ021:75E 03 22 F1 A7 00 00 00 00       $  ANS021:77E 03 22 F1 A7 00 00 00 00
  $  REQ022:75E 03 22 01 13 00 00 00 00       $  ANS022:77E 03 22 01 13 00 00 00 00
  $  REQ023:75E 03 22 01 15 00 00 00 00       $  ANS023:77E 03 22 01 15 00 00 00 00
  $  REQ024:75E 03 22 01 10 00 00 00 00       $  ANS024:77E 03 22 01 10 00 00 00 00
  $  REQ025:75E 03 22 F1 A0 00 00 00 00       $  ANS025:77E 03 22 F1 A0 00 00 00 00

  $  000.λ�õ�״̬                   $    $        $    $  ANS000.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  001.�����״̬                   $    $        $    $  ANS001.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  002.Զ���״̬                   $    $        $    $  ANS002.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  003.�ռ��г���״̬               $    $        $    $  ANS003.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  004.��ת���״̬                 $    $        $    $  ANS004.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  005.��ת���״̬                 $    $        $    $  ANS005.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  006.�ڵ����״̬                 $    $        $    $  ANS006.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  007.���ڵ�״̬                   $    $        $    $  ANS007.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  008.�ƶ���״̬                   $    $        $    $  ANS008.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  009.������״̬                   $    $        $    $  ANS009.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  010.������״̬                   $    $        $    $  ANS010.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  011.ǰ�����״̬                 $    $        $    $  ANS011.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  012.���˪״̬                   $    $        $    $  ANS012.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  013.���Ž���״̬                 $    $        $    $  ANS013.BYTE004  $  if(X1==0) y=@05ee;else if(X1==1) y=@05ef;else if(X1==2) y=@05f0;else if(X1==3) y=@05f1;else y=@0004;
  $  014.��𿪹�״̬                 $    $        $    $  ANS014.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  015.Σ�վ�������״̬             $    $        $    $  ANS015.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  016.ǰ��λ�λ����״̬           $    $        $    $  ANS016.BYTE004  $  if(X1==0) y=@05f2;else if(X1==1) y=@03f9;else y=@0004;
  $  017.�����ƿ���״̬               $    $        $    $  ANS017.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  018.����״̬                     $    $        $    $  ANS018.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  019.��������״̬                 $    $        $    $  ANS019.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  020.��ƿ��ѹ                     $    $  V     $    $  ANS020.BYTE004  $  Y=X1*0.1;
  $  021.��ײ����                     $    $        $    $  ANS021.BYTE004  $  Y=HEX(X1);
  $  022.��ײ��˾����״̬             $    $        $    $  ANS021.BYTE005  $  if(X1==0) y=@05f6;else if(X1==1) y=@05f7;else y=@0004;
  $  023.��ײ����������״̬           $    $        $    $  ANS021.BYTE006  $  if(X1==0) y=@05f6;else if(X1==1) y=@05f7;else y=@0004;
  $  024.��ײ��Σ�վ��湦��״̬       $    $        $    $  ANS021.BYTE007  $  if(X1==0) y=@05f4;else if(X1==1) y=@05f5;else y=@0004;
  $  025.������״̬                   $    $        $    $  ANS022.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  026.��еԿ��״̬                 $    $        $    $  ANS023.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  027.�����״̬                   $    $        $    $  ANS024.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  028.ǰ̥��ѹ��ֵ                 $    $        $    $  ANS025.BYTE004  $  Y=(X1*256+X2);
  $  029.��̥��ѹ��ֵ                 $    $        $    $  ANS025.BYTE006  $  Y=(X1*256+X2);
  $  030.ǰ̥��ѹ��ֵ                 $    $        $    $  ANS025.BYTE008  $  Y=(X1*256+X2);
  $  031.��̥��ѹ��ֵ                 $    $        $    $  ANS025.BYTE010  $  Y=(X1*256+X2);
  $  032.��ʾ�����¶�                 $    $        $    $  ANS025.BYTE012  $  Y=X1;

;******************************************************************************************************************************************************

30֡:

  $FC REQ000:75E 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
