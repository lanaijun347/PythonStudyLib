
    车型ID：072c

    模拟：协议模拟-->072c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E8

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 00 00 00 00 00 00       $!  ANS000:7E8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:7E0 03 19 01 09 00 00 00 00       $#  ANS000:7E8 03 19 01 09 00 00 00 00
  $#  REQ001:7E0 03 19 02 09 00 00 00 00       $#  ANS001:7E8 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<8)+x2;
			y=((x1<<8)+x2);

  ANS000.BYTE05-06 控制故障码个数，从$#ANS001.BYTE04$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/5d000000_2BYTE


  $#  01.读历史故障码
  $#  REQ000:7E0 03 19 01 08 00 00 00 00       $#  ANS000:7E8 03 19 01 08 00 00 00 00
  $#  REQ001:7E0 03 19 02 08 00 00 00 00       $#  ANS001:7E8 03 19 02 08 00 00 00 00

		控制公式：
			y=x1*0x100+x2;
			y=((x1<<8)+x2);

  ANS000.BYTE05-06 控制故障码个数，从$#ANS001.BYTE04$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/5d000000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="2"/>
     <param type="string" value="5,1"/>
   </FUNCTION>
  <FUNCTION type="0" num="1">
     <param type="string" value="2"/>
     <param type="string" value="5,1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 02 00 00 00 00       $%  ANS000:7E8 03 22 F1 02 00 00 00 00
  $%  REQ001:7E0 03 22 F1 05 00 00 00 00       $%  ANS001:7E8 03 22 F1 05 00 00 00 00
  $%  REQ002:7E0 03 22 F1 06 00 00 00 00       $%  ANS002:7E8 03 22 F1 06 00 00 00 00
  $%  REQ003:7E0 03 22 F1 90 00 00 00 00       $%  ANS003:7E8 03 22 F1 90 00 00 00 00

  $%  000:ECU(电子控制器)硬件版本号:        $%    $%  ANS000.BYTE004  $%  0 ASCII
  $%  001:系统供应商软件版本号:             $%    $%  ANS001.BYTE004  $%  0 ASCII
  $%  002:标定数据释放号:                   $%    $%  ANS002.BYTE004  $%  0 ASCII
  $%  003:车辆识别号(VIN码):                $%    $%  ANS003.BYTE004  $%  0 ASCII

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 F1 08 00 00 00 00       $  ANS000:7E8 03 22 F1 08 00 00 00 00
  $  REQ001:7E0 03 22 F1 09 00 00 00 00       $  ANS001:7E8 03 22 F1 09 00 00 00 00
  $  REQ002:7E0 03 22 F1 0A 00 00 00 00       $  ANS002:7E8 03 22 F1 0A 00 00 00 00
  $  REQ003:7E0 03 22 F1 0B 00 00 00 00       $  ANS003:7E8 03 22 F1 0B 00 00 00 00
  $  REQ004:7E0 03 22 F1 0C 00 00 00 00       $  ANS004:7E8 03 22 F1 0C 00 00 00 00
  $  REQ005:7E0 03 22 F1 0D 00 00 00 00       $  ANS005:7E8 03 22 F1 0D 00 00 00 00
  $  REQ006:7E0 03 22 F1 0F 00 00 00 00       $  ANS006:7E8 03 22 F1 0F 00 00 00 00
  $  REQ007:7E0 03 22 F1 07 00 00 00 00       $  ANS007:7E8 03 22 F1 07 00 00 00 00
  $  REQ008:7E0 03 22 F1 11 00 00 00 00       $  ANS008:7E8 03 22 F1 11 00 00 00 00
  $  REQ009:7E0 03 22 F1 12 00 00 00 00       $  ANS009:7E8 03 22 F1 12 00 00 00 00
  $  REQ010:7E0 03 22 F1 13 00 00 00 00       $  ANS010:7E8 03 22 F1 13 00 00 00 00
  $  REQ011:7E0 03 22 F1 14 00 00 00 00       $  ANS011:7E8 03 22 F1 14 00 00 00 00
  $  REQ012:7E0 03 22 F1 15 00 00 00 00       $  ANS012:7E8 03 22 F1 15 00 00 00 00
  $  REQ013:7E0 03 22 F1 16 00 00 00 00       $  ANS013:7E8 03 22 F1 16 00 00 00 00
  $  REQ014:7E0 03 22 F1 17 00 00 00 00       $  ANS014:7E8 03 22 F1 17 00 00 00 00
  $  REQ015:7E0 03 22 F1 18 00 00 00 00       $  ANS015:7E8 03 22 F1 18 00 00 00 00
  $  REQ016:7E0 03 22 F1 19 00 00 00 00       $  ANS016:7E8 03 22 F1 19 00 00 00 00
  $  REQ017:7E0 03 22 F1 1A 00 00 00 00       $  ANS017:7E8 03 22 F1 1A 00 00 00 00
  $  REQ018:7E0 03 22 F1 1B 00 00 00 00       $  ANS018:7E8 03 22 F1 1B 00 00 00 00
  $  REQ019:7E0 03 22 F1 1C 00 00 00 00       $  ANS019:7E8 03 22 F1 1C 00 00 00 00
  $  REQ020:7E0 03 22 F1 1D 00 00 00 00       $  ANS020:7E8 03 22 F1 1D 00 00 00 00
  $  REQ021:7E0 03 22 F1 1E 00 00 00 00       $  ANS021:7E8 03 22 F1 1E 00 00 00 00
  $  REQ022:7E0 03 22 F1 1F 00 00 00 00       $  ANS022:7E8 03 22 F1 1F 00 00 00 00
  $  REQ023:7E0 03 22 F1 20 00 00 00 00       $  ANS023:7E8 03 22 F1 20 00 00 00 00
  $  REQ024:7E0 03 22 F1 21 00 00 00 00       $  ANS024:7E8 03 22 F1 21 00 00 00 00
  $  REQ025:7E0 03 22 F1 22 00 00 00 00       $  ANS025:7E8 03 22 F1 22 00 00 00 00
  $  REQ026:7E0 03 22 F1 23 00 00 00 00       $  ANS026:7E8 03 22 F1 23 00 00 00 00
  $  REQ027:7E0 03 22 F1 25 00 00 00 00       $  ANS027:7E8 03 22 F1 25 00 00 00 00
  $  REQ028:7E0 03 22 F1 26 00 00 00 00       $  ANS028:7E8 03 22 F1 26 00 00 00 00
  $  REQ029:7E0 03 22 F1 27 00 00 00 00       $  ANS029:7E8 03 22 F1 27 00 00 00 00
  $  REQ030:7E0 03 22 F1 29 00 00 00 00       $  ANS030:7E8 03 22 F1 29 00 00 00 00
  $  REQ031:7E0 03 22 F1 2A 00 00 00 00       $  ANS031:7E8 03 22 F1 2A 00 00 00 00
  $  REQ032:7E0 03 22 F1 2B 00 00 00 00       $  ANS032:7E8 03 22 F1 2B 00 00 00 00
  $  REQ033:7E0 03 22 F1 2C 00 00 00 00       $  ANS033:7E8 03 22 F1 2C 00 00 00 00
  $  REQ034:7E0 03 22 F1 2D 00 00 00 00       $  ANS034:7E8 03 22 F1 2D 00 00 00 00
  $  REQ035:7E0 03 22 F1 2E 00 00 00 00       $  ANS035:7E8 03 22 F1 2E 00 00 00 00
  $  REQ036:7E0 03 22 F1 2F 00 00 00 00       $  ANS036:7E8 03 22 F1 2F 00 00 00 00
  $  REQ037:7E0 03 22 F1 30 00 00 00 00       $  ANS037:7E8 03 22 F1 30 00 00 00 00
  $  REQ038:7E0 03 22 F1 33 00 00 00 00       $  ANS038:7E8 03 22 F1 33 00 00 00 00
  $  REQ039:7E0 03 22 F1 34 00 00 00 00       $  ANS039:7E8 03 22 F1 34 00 00 00 00
  $  REQ040:7E0 03 22 F1 35 00 00 00 00       $  ANS040:7E8 03 22 F1 35 00 00 00 00
  $  REQ041:7E0 03 22 F1 37 00 00 00 00       $  ANS041:7E8 03 22 F1 37 00 00 00 00
  $  REQ042:7E0 03 22 F1 38 00 00 00 00       $  ANS042:7E8 03 22 F1 38 00 00 00 00
  $  REQ043:7E0 03 22 F1 39 00 00 00 00       $  ANS043:7E8 03 22 F1 39 00 00 00 00
  $  REQ044:7E0 03 22 F1 3A 00 00 00 00       $  ANS044:7E8 03 22 F1 3A 00 00 00 00
  $  REQ045:7E0 03 22 F1 3B 00 00 00 00       $  ANS045:7E8 03 22 F1 3B 00 00 00 00
  $  REQ046:7E0 03 22 F1 3C 00 00 00 00       $  ANS046:7E8 03 22 F1 3C 00 00 00 00
  $  REQ047:7E0 03 22 F1 3D 00 00 00 00       $  ANS047:7E8 03 22 F1 3D 00 00 00 00
  $  REQ048:7E0 03 22 F1 3E 00 00 00 00       $  ANS048:7E8 03 22 F1 3E 00 00 00 00
  $  REQ049:7E0 03 22 F1 3F 00 00 00 00       $  ANS049:7E8 03 22 F1 3F 00 00 00 00
  $  REQ050:7E0 03 22 F1 41 00 00 00 00       $  ANS050:7E8 03 22 F1 41 00 00 00 00
  $  REQ051:7E0 03 22 F1 44 00 00 00 00       $  ANS051:7E8 03 22 F1 44 00 00 00 00
  $  REQ052:7E0 03 22 F1 45 00 00 00 00       $  ANS052:7E8 03 22 F1 45 00 00 00 00
  $  REQ053:7E0 03 22 F1 46 00 00 00 00       $  ANS053:7E8 03 22 F1 46 00 00 00 00
  $  REQ054:7E0 03 22 F1 47 00 00 00 00       $  ANS054:7E8 03 22 F1 47 00 00 00 00
  $  REQ055:7E0 03 22 F1 48 00 00 00 00       $  ANS055:7E8 03 22 F1 48 00 00 00 00
  $  REQ056:7E0 03 22 F1 49 00 00 00 00       $  ANS056:7E8 03 22 F1 49 00 00 00 00
  $  REQ057:7E0 03 22 F1 4A 00 00 00 00       $  ANS057:7E8 03 22 F1 4A 00 00 00 00
  $  REQ058:7E0 03 22 F1 4B 00 00 00 00       $  ANS058:7E8 03 22 F1 4B 00 00 00 00
  $  REQ059:7E0 03 22 F1 4C 00 00 00 00       $  ANS059:7E8 03 22 F1 4C 00 00 00 00
  $  REQ060:7E0 03 22 F1 4D 00 00 00 00       $  ANS060:7E8 03 22 F1 4D 00 00 00 00
  $  REQ061:7E0 03 22 F1 4E 00 00 00 00       $  ANS061:7E8 03 22 F1 4E 00 00 00 00
  $  REQ062:7E0 03 22 F1 4F 00 00 00 00       $  ANS062:7E8 03 22 F1 4F 00 00 00 00
  $  REQ063:7E0 03 22 F1 50 00 00 00 00       $  ANS063:7E8 03 22 F1 50 00 00 00 00
  $  REQ064:7E0 03 22 F1 51 00 00 00 00       $  ANS064:7E8 03 22 F1 51 00 00 00 00
  $  REQ065:7E0 03 22 F1 52 00 00 00 00       $  ANS065:7E8 03 22 F1 52 00 00 00 00
  $  REQ066:7E0 03 22 F1 53 00 00 00 00       $  ANS066:7E8 03 22 F1 53 00 00 00 00
  $  REQ067:7E0 03 22 F1 54 00 00 00 00       $  ANS067:7E8 03 22 F1 54 00 00 00 00
  $  REQ068:7E0 03 22 F1 55 00 00 00 00       $  ANS068:7E8 03 22 F1 55 00 00 00 00
  $  REQ069:7E0 03 22 F1 56 00 00 00 00       $  ANS069:7E8 03 22 F1 56 00 00 00 00
  $  REQ070:7E0 03 22 F1 57 00 00 00 00       $  ANS070:7E8 03 22 F1 57 00 00 00 00
  $  REQ071:7E0 03 22 F1 58 00 00 00 00       $  ANS071:7E8 03 22 F1 58 00 00 00 00
  $  REQ072:7E0 03 22 F1 59 00 00 00 00       $  ANS072:7E8 03 22 F1 59 00 00 00 00
  $  REQ073:7E0 03 22 F1 5A 00 00 00 00       $  ANS073:7E8 03 22 F1 5A 00 00 00 00
  $  REQ074:7E0 03 22 F1 5B 00 00 00 00       $  ANS074:7E8 03 22 F1 5B 00 00 00 00
  $  REQ075:7E0 03 22 F1 5C 00 00 00 00       $  ANS075:7E8 03 22 F1 5C 00 00 00 00
  $  REQ076:7E0 03 22 F1 5D 00 00 00 00       $  ANS076:7E8 03 22 F1 5D 00 00 00 00
  $  REQ077:7E0 03 22 F1 5F 00 00 00 00       $  ANS077:7E8 03 22 F1 5F 00 00 00 00
  $  REQ078:7E0 03 22 F1 61 00 00 00 00       $  ANS078:7E8 03 22 F1 61 00 00 00 00
  $  REQ079:7E0 03 22 F1 62 00 00 00 00       $  ANS079:7E8 03 22 F1 62 00 00 00 00
  $  REQ080:7E0 03 22 F1 63 00 00 00 00       $  ANS080:7E8 03 22 F1 63 00 00 00 00
  $  REQ081:7E0 03 22 F1 65 00 00 00 00       $  ANS081:7E8 03 22 F1 65 00 00 00 00
  $  REQ082:7E0 03 22 F1 66 00 00 00 00       $  ANS082:7E8 03 22 F1 66 00 00 00 00
  $  REQ083:7E0 03 22 F1 68 00 00 00 00       $  ANS083:7E8 03 22 F1 68 00 00 00 00
  $  REQ084:7E0 03 22 F1 69 00 00 00 00       $  ANS084:7E8 03 22 F1 69 00 00 00 00
  $  REQ085:7E0 03 22 F1 6A 00 00 00 00       $  ANS085:7E8 03 22 F1 6A 00 00 00 00
  $  REQ086:7E0 03 22 F1 6B 00 00 00 00       $  ANS086:7E8 03 22 F1 6B 00 00 00 00
  $  REQ087:7E0 03 22 F2 00 00 00 00 00       $  ANS087:7E8 03 22 F2 00 00 00 00 00
  $  REQ088:7E0 03 22 F2 01 00 00 00 00       $  ANS088:7E8 03 22 F2 01 00 00 00 00
  $  REQ089:7E0 03 22 F2 02 00 00 00 00       $  ANS089:7E8 03 22 F2 02 00 00 00 00
  $  REQ090:7E0 03 22 F2 03 00 00 00 00       $  ANS090:7E8 03 22 F2 03 00 00 00 00
  $  REQ091:7E0 03 22 F2 04 00 00 00 00       $  ANS091:7E8 03 22 F2 04 00 00 00 00
  $  REQ092:7E0 03 22 F2 05 00 00 00 00       $  ANS092:7E8 03 22 F2 05 00 00 00 00
  $  REQ093:7E0 03 22 F2 06 00 00 00 00       $  ANS093:7E8 03 22 F2 06 00 00 00 00
  $  REQ094:7E0 03 22 F2 07 00 00 00 00       $  ANS094:7E8 03 22 F2 07 00 00 00 00
  $  REQ095:7E0 03 22 F2 08 00 00 00 00       $  ANS095:7E8 03 22 F2 08 00 00 00 00
  $  REQ096:7E0 03 22 F2 09 00 00 00 00       $  ANS096:7E8 03 22 F2 09 00 00 00 00
  $  REQ097:7E0 03 22 F2 0A 00 00 00 00       $  ANS097:7E8 03 22 F2 0A 00 00 00 00
  $  REQ098:7E0 03 22 F2 0B 00 00 00 00       $  ANS098:7E8 03 22 F2 0B 00 00 00 00
  $  REQ099:7E0 03 22 F2 0C 00 00 00 00       $  ANS099:7E8 03 22 F2 0C 00 00 00 00
  $  REQ100:7E0 03 22 F2 0D 00 00 00 00       $  ANS100:7E8 03 22 F2 0D 00 00 00 00
  $  REQ101:7E0 03 22 F2 0E 00 00 00 00       $  ANS101:7E8 03 22 F2 0E 00 00 00 00
  $  REQ102:7E0 03 22 F2 0F 00 00 00 00       $  ANS102:7E8 03 22 F2 0F 00 00 00 00
  $  REQ103:7E0 03 22 F2 10 00 00 00 00       $  ANS103:7E8 03 22 F2 10 00 00 00 00
  $  REQ104:7E0 03 22 F2 11 00 00 00 00       $  ANS104:7E8 03 22 F2 11 00 00 00 00
  $  REQ105:7E0 03 22 F2 12 00 00 00 00       $  ANS105:7E8 03 22 F2 12 00 00 00 00
  $  REQ106:7E0 03 22 F2 13 00 00 00 00       $  ANS106:7E8 03 22 F2 13 00 00 00 00
  $  REQ107:7E0 03 22 F2 14 00 00 00 00       $  ANS107:7E8 03 22 F2 14 00 00 00 00
  $  REQ108:7E0 03 22 F2 15 00 00 00 00       $  ANS108:7E8 03 22 F2 15 00 00 00 00
  $  REQ109:7E0 03 22 F2 16 00 00 00 00       $  ANS109:7E8 03 22 F2 16 00 00 00 00
  $  REQ110:7E0 03 22 F2 17 00 00 00 00       $  ANS110:7E8 03 22 F2 17 00 00 00 00
  $  REQ111:7E0 03 22 F2 18 00 00 00 00       $  ANS111:7E8 03 22 F2 18 00 00 00 00
  $  REQ112:7E0 03 22 F2 19 00 00 00 00       $  ANS112:7E8 03 22 F2 19 00 00 00 00
  $  REQ113:7E0 03 22 F2 1A 00 00 00 00       $  ANS113:7E8 03 22 F2 1A 00 00 00 00
  $  REQ114:7E0 03 22 F2 1B 00 00 00 00       $  ANS114:7E8 03 22 F2 1B 00 00 00 00
  $  REQ115:7E0 03 22 F2 1C 00 00 00 00       $  ANS115:7E8 03 22 F2 1C 00 00 00 00
  $  REQ116:7E0 03 22 F2 1D 00 00 00 00       $  ANS116:7E8 03 22 F2 1D 00 00 00 00
  $  REQ117:7E0 03 22 F2 1E 00 00 00 00       $  ANS117:7E8 03 22 F2 1E 00 00 00 00
  $  REQ118:7E0 03 22 F2 1F 00 00 00 00       $  ANS118:7E8 03 22 F2 1F 00 00 00 00
  $  REQ119:7E0 03 22 F2 20 00 00 00 00       $  ANS119:7E8 03 22 F2 20 00 00 00 00
  $  REQ120:7E0 03 22 F2 21 00 00 00 00       $  ANS120:7E8 03 22 F2 21 00 00 00 00
  $  REQ121:7E0 03 22 F2 22 00 00 00 00       $  ANS121:7E8 03 22 F2 22 00 00 00 00
  $  REQ122:7E0 03 22 F2 23 00 00 00 00       $  ANS122:7E8 03 22 F2 23 00 00 00 00
  $  REQ123:7E0 03 22 F2 24 00 00 00 00       $  ANS123:7E8 03 22 F2 24 00 00 00 00
  $  REQ124:7E0 03 22 F2 2A 00 00 00 00       $  ANS124:7E8 03 22 F2 2A 00 00 00 00
  $  REQ125:7E0 03 22 F2 2B 00 00 00 00       $  ANS125:7E8 03 22 F2 2B 00 00 00 00
  $  REQ126:7E0 03 22 F2 33 00 00 00 00       $  ANS126:7E8 03 22 F2 33 00 00 00 00

  $  000.最大净扭矩                                    $    $  Nm             $    $  ANS000.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.03125; else y=(x1*0x100-0xFFFF+x2)*0.03125;
  $  001.需求净扭矩                                    $    $  Nm             $    $  ANS001.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.03125; else y=(x1*0x100-0xFFFF+x2)*0.03125;
  $  002.实际净扭矩                                    $    $  Nm             $    $  ANS002.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.03125; else y=(x1*0x100-0xFFFF+x2)*0.03125;
  $  003.水温                                          $    $  degC           $    $  ANS003.BYTE004  $  y=x1*0.75-48;
  $  004.转速                                          $    $  rpm            $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)*1;
  $  005.起动后累计时间                                $    $  s              $    $  ANS005.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  006.油温                                          $    $  degC           $    $  ANS006.BYTE004  $  y=x1-40;
  $  007.车速                                          $    $  km/h           $    $  ANS007.BYTE004  $  y=x1;
  $  008.大气压                                        $    $  hPa            $    $  ANS008.BYTE004  $  y=(x1*0x100+x2)*0.08291752498664835;
  $  009.电池电压                                      $    $  V              $    $  ANS009.BYTE004  $  y=x1*0.1015625;
  $  010.节气门开度                                    $    $  °TPS          $    $  ANS010.BYTE004  $  y=x1*0.4668253677592627;
  $  011.油轨绝对压力值                                $    $  hPa            $    $  ANS011.BYTE004  $  y=(x1*0x100+x2)*5.306721599145495;
  $  012.进气温度                                      $    $  degC           $    $  ANS012.BYTE004  $  y=x1*0.75-48;
  $  013.大气温度                                      $    $  degC           $    $  ANS013.BYTE004  $  y=x1*0.75-48;
  $  014.节气门前进气压力                              $    $  hPa            $    $  ANS014.BYTE004  $  y=(x1*0x100+x2)*0.08291752498664835;
  $  015.油门位置                                      $    $  %              $    $  ANS015.BYTE004  $  y=x1*0.390625;
  $  016.节气门前进气压力预测值                        $    $  hPa            $    $  ANS016.BYTE004  $  y=(x1*0x100+x2)*0.08291752498664835;
  $  017.催化器前排气背压                              $    $  hPa            $    $  ANS017.BYTE004  $  y=(x1*0x100+x2)*0.08291752498664835;
  $  018.模型排气温度                                  $    $  degC           $    $  ANS018.BYTE004  $  y=(x1*0x100+x2)*0.0625-273.15;
  $  019.燃油系统1状态                                 $    $  /              $    $  ANS019.BYTE004  $  y=x1;
  $  020.燃油系统2状态                                 $    $  /              $    $  ANS020.BYTE004  $  y=x1;
  $  021.进气负荷比值                                  $    $  %              $    $  ANS021.BYTE004  $  y=x1*0.392156862745098;
  $  022.进气流量                                      $    $  mg/stk         $    $  ANS022.BYTE004  $  y=(x1*0x100+x2)*0.02119478141451133;
  $  023.后氧传感器输出电压                            $    $  V              $    $  ANS023.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  024.后氧传感器BANK 2输出电压                      $    $  V              $    $  ANS024.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  025.燃油质量流量的实际值与设定值之差              $    $  mg/stk         $    $  ANS025.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.04238956282902281; else y=(x1*0x100-0xFFFF+x2)*0.04238956282902281;
  $  026.实际指示扭矩的监控值                          $    $  Nm             $    $  ANS026.BYTE004  $  y=(x1*0x100+x2)*0.03125;
  $  027.模型冷却液温度                                $    $  degC           $    $  ANS027.BYTE004  $  y=(x1*0x100+x2)*0.0029296875-48;
  $  028.发动机快扭指示扭矩                            $    $  Nm             $    $  ANS028.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.03125; else y=(x1*0x100-0xFFFF+x2)*0.03125;
  $  029.模型催化器温度                                $    $  degC           $    $  ANS029.BYTE004  $  y=(x1*0x100+x2)*0.0625;
  $  030.档位                                          $    $  /              $    $  ANS030.BYTE004  $  y=x1;
  $  031.实际点火角                                    $    $  °CRK          $    $  ANS031.BYTE004  $  y=x1*0.375-35.625;
  $  032.节气门位置_1                                  $    $  °TPS          $    $  ANS032.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.007294146371238479; else y=(x1*0x100-0xFFFF+x2)*0.007294146371238479;
  $  033.节气门位置_2                                  $    $  °TPS          $    $  ANS033.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.007294146371238479; else y=(x1*0x100-0xFFFF+x2)*0.007294146371238479;
  $  034.ETC(电子节气门)执行器占空比                   $    $  %              $    $  ANS034.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0030517578125; else y=(x1*0x100-0xFFFF+x2)*0.0030517578125;
  $  035.节气门设定位置                                $    $  °TPS          $    $  ANS035.BYTE004  $  y=(x1*0x100+x2)*0.007294146371238479;
  $  036.节气门通道1学习值                             $    $  V              $    $  ANS036.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0001525878906250001; else y=(x1*0x100-0xFFFF+x2)*0.0001525878906250001;
  $  037.进气压力                                      $    $  hPa            $    $  ANS037.BYTE004  $  y=(x1*0x100+x2)*0.08291752498664835;
  $  038.主继电器后电池电压                            $    $  V              $    $  ANS038.BYTE004  $  y=(x1*0x100+x2)*0.0006256103515617609;
  $  039.进气阀开启角度                                $    $  °CRK          $    $  ANS039.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0078125; else y=(x1*0x100-0xFFFF+x2)*0.0078125;
  $  040.进气阀期望开启角度                            $    $  °CRK          $    $  ANS040.BYTE004  $  y=x1*0.5;
  $  041.闭环成绩因子输出                              $    $  %              $    $  ANS041.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.001525878906250001; else y=(x1*0x100-0xFFFF+x2)*0.001525878906250001;
  $  042.闭环成绩因子BANK 2输出                        $    $  %              $    $  ANS042.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.001525878906250001; else y=(x1*0x100-0xFFFF+x2)*0.001525878906250001;
  $  043.燃油自学习乘积系数                            $    $  %              $    $  ANS043.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.001525878906250001; else y=(x1*0x100-0xFFFF+x2)*0.001525878906250001;
  $  044.节气门电压反馈_1                              $    $  V              $    $  ANS044.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0001525878906250001; else y=(x1*0x100-0xFFFF+x2)*0.0001525878906250001;
  $  045.节气门电压反馈_2                              $    $  V              $    $  ANS045.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0001525878906250001; else y=(x1*0x100-0xFFFF+x2)*0.0001525878906250001;
  $  046.燃油自学习加法系数                            $    $  mg/stk         $    $  ANS046.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.02119478141451133; else y=(x1*0x100-0xFFFF+x2)*0.02119478141451133;
  $  047.后氧传感器内部电阻                            $    $  Ohm            $    $  ANS047.BYTE004  $  y=(x1*0x100+x2)*1;
  $  048.上游氧传感器处的排温                          $    $  degC           $    $  ANS048.BYTE004  $  y=(x1*0x100+x2)*0.0625-273.15;
  $  049.速比(转速/车速)                               $    $  rpm/(km/h)     $    $  ANS049.BYTE004  $  y=INT((x1*0x100+x2)*0.007812499885557336);
  $  050.油量设定因子                                  $    $  %              $    $  ANS050.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.001525878906250001; else y=(x1*0x100-0xFFFF+x2)*0.001525878906250001;
  $  051.一缸点火角                                    $    $  °CRK          $    $  ANS051.BYTE004  $  y=x1*0.375-35.625;
  $  052.二缸点火角                                    $    $  °CRK          $    $  ANS052.BYTE004  $  y=x1*0.375-35.625;
  $  053.三缸点火角                                    $    $  °CRK          $    $  ANS053.BYTE004  $  y=x1*0.375-35.625;
  $  054.四缸点火角                                    $    $  °CRK          $    $  ANS054.BYTE004  $  y=x1*0.375-35.625;
  $  055.第一缸的爆震信号                              $    $  V              $    $  ANS055.BYTE004  $  y=(x1*0x100+x2)*0.00007629394537270161;
  $  056.第二缸的爆震信号                              $    $  V              $    $  ANS056.BYTE004  $  y=(x1*0x100+x2)*0.00007629394537270161;
  $  057.第三缸的爆震信号                              $    $  V              $    $  ANS057.BYTE004  $  y=(x1*0x100+x2)*0.00007629394537270161;
  $  058.第四缸的爆震信号                              $    $  V              $    $  ANS058.BYTE004  $  y=(x1*0x100+x2)*0.00007629394537270161;
  $  059.故障灯激活后行驶距离                          $    $  km             $    $  ANS059.BYTE004  $  y=(x1*0x100+x2)*1;
  $  060.启动水温                                      $    $  degC           $    $  ANS060.BYTE004  $  y=x1*0.75-48;
  $  061.碳罐燃油流量                                  $    $  mg/stk         $    $  ANS061.BYTE004  $  y=(x1*0x100+x2)*0.02119478141451133;
  $  062.基本点火角                                    $    $  °CRK          $    $  ANS062.BYTE004  $  y=x1*0.375-35.625;
  $  063.CARB A 大失火计数器                           $    $  /              $    $  ANS063.BYTE004  $  y=(x1*0x100+x2)*1;
  $  064.第一缸的失火数                                $    $  /              $    $  ANS064.BYTE004  $  y=(x1*0x100+x2)*1;
  $  065.第二缸的失火数                                $    $  /              $    $  ANS065.BYTE004  $  y=(x1*0x100+x2)*1;
  $  066.第三缸的失火数                                $    $  /              $    $  ANS066.BYTE004  $  y=(x1*0x100+x2)*1;
  $  067.第四缸的失火数                                $    $  /              $    $  ANS067.BYTE004  $  y=(x1*0x100+x2)*1;
  $  068.用于失火诊断的最小转速                        $    $  rpm            $    $  ANS068.BYTE004  $  y=(x1*0x100+x2)*1;
  $  069.用于失火诊断的最大转速                        $    $  rpm            $    $  ANS069.BYTE004  $  y=(x1*0x100+x2)*1;
  $  070.发动机零负载扭矩                              $    $  %              $    $  ANS070.BYTE004  $  y=(x1*0x100+x2)*0.0030517578125;
  $  071.闭环燃油正向时间延迟                          $    $  /              $    $  ANS071.BYTE004  $  y=(x1*0x100+x2)*0.01953125;
  $  072.怠速控制PD项                                  $    $  Nm             $    $  ANS072.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.03125; else y=(x1*0x100-0xFFFF+x2)*0.03125;
  $  073.目标怠速                                      $    $  rpm            $    $  ANS073.BYTE004  $  y=(x1*0x100+x2)*1;
  $  074.碳罐状态                                      $    $  /              $    $  ANS074.BYTE004  $  y=x1*1;
  $  075.油泵继电器状态                                $    $  /              $    $  ANS075.BYTE004  $  y=x1*1;
  $  076.风扇状态                                      $    $  /              $    $  ANS076.BYTE004  $  y=x1*1;
  $  077.SVS(系统维修指示灯)灯状态                     $    $  /              $    $  ANS077.BYTE004  $  y=x1*1;
  $  078.碳罐阀输出脉宽                                $    $  /              $    $  ANS078.BYTE004  $  y=x1*1;
  $  079.节气门设定位置                                $    $  %              $    $  ANS079.BYTE004  $  y=x1*1;
  $  080.VVT(可变气门正时)实际控制脉宽                 $    $  /              $    $  ANS080.BYTE004  $  y=x1*0.390625;
  $  081.后氧电压测量值                                $    $  /              $    $  ANS081.BYTE004  $  y=(x1*0x100+x2)*0.007294146371238479;
  $  082.前氧电压测量值                                $    $  /              $    $  ANS082.BYTE004  $  y=(x1*0x100+x2)*0.006103515625;
  $  083.进气压力传感器电压                            $    $  V              $    $  ANS083.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  084.发动机扭矩自学习                              $    $  /              $    $  ANS084.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  085.SVS(系统维修指示灯)灯状态                     $    $  /              $    $  ANS085.BYTE004  $  y=(x1*0x100+x2)*0.0001525878906250002;
  $  086.碳罐阀输出脉宽                                $    $  /              $    $  ANS086.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.03125; else y=(x1*0x100-0xFFFF+x2)*0.03125;
  $  087.节气门位置1电压                               $    $  V              $    $  ANS087.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0001526; else y=(x1*0x100-0xFFFF+x2)*0.0001526;
  $  088.节气门位置2电压                               $    $  V              $    $  ANS088.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.0001526; else y=(x1*0x100-0xFFFF+x2)*0.0001526;
  $  089.油门传感器1电压                               $    $  V              $    $  ANS089.BYTE004  $  y=(x1*0x100+x2)*5.0/1024.0;
  $  090.油门传感器2电压                               $    $  V              $    $  ANS090.BYTE004  $  y=(x1*0x100+x2)*5.0/1024.0;
  $  091.水温传感器电压                                $    $  V              $    $  ANS091.BYTE004  $  y=(x1*0x100+x2)*0.000152588;
  $  092.进气温度传感器电压                            $    $  V              $    $  ANS092.BYTE004  $  y=(x1*0x100+x2)*0.000152588;
  $  093.进气压力传感器电压                            $    $  V              $    $  ANS093.BYTE004  $  y=(x1*0x100+x2)*0.000152588;
  $  094.点火电压                                      $    $  V              $    $  ANS094.BYTE004  $  y=(x1*0x100+x2)*0.00062561;
  $  095.空调压力                                      $    $  /              $    $  ANS095.BYTE004  $  y=x1*12.156863;
  $  096.ACP传感器电压                                 $    $  V              $    $  ANS096.BYTE004  $  y=(x1*0x100+x2)*0.0001526;
  $  097.转向传感器电压                                $    $  V              $    $  ANS097.BYTE004  $  y=(x1*0x100+x2)*0.0001526;
  $  098.转向压力                                      $    $  /              $    $  ANS098.BYTE004  $  y=(x1*0x100+x2)*0.25;
  $  099.发电机负载                                    $    $  /              $    $  ANS099.BYTE004  $  y=x1*0.390625;
  $  100.离合开关状态                                  $    $  /              $    $  ANS100.BYTE004  $  y=x1&0x01;
  $  101.刹车灯开关状态                                $    $  /              $    $  ANS100.BYTE004  $  y=(x1>>1)&0x01;
  $  102.刹车测试开关状态                              $    $  /              $    $  ANS100.BYTE004  $  y=(x1>>2)&0x01;
  $  103.空调请求开关状态                              $    $  /              $    $  ANS100.BYTE004  $  y=(x1>>7)&0x01;
  $  104.空调压缩机继电器                              $    $  /              $    $  ANS101.BYTE004  $  y=x1&0x01;
  $  105.主继电器状态                                  $    $  /              $    $  ANS101.BYTE004  $  y=(x1>>3)&0x01;
  $  106.油泵继电器状态                                $    $  /              $    $  ANS101.BYTE004  $  y=(x1>>4)&0x01;
  $  107.启动继电器状态                                $    $  /              $    $  ANS101.BYTE004  $  y=(x1>>5)&0x01;
  $  108.故障灯状态                                    $    $  /              $    $  ANS102.BYTE004  $  y=(x1>>1)&0x01;
  $  109.λ控制状态                                    $    $  /              $    $  ANS102.BYTE004  $  y=(x1>>5)&0x01;
  $  110.高低压开关状态                                $    $  /              $    $  ANS103.BYTE004  $  y=(x1>>3)&0x01;
  $  111.中压开关状态                                  $    $  /              $    $  ANS103.BYTE004  $  y=(x1>>4)&0x01;
  $  112.爆震检测状态                                  $    $  /              $    $  ANS104.BYTE004  $  y=x1&0x01;
  $  113.前氧加热脉冲                                  $    $  /              $    $  ANS105.BYTE004  $  y=x1*0.390625;
  $  114.后氧加热脉冲                                  $    $  /              $    $  ANS106.BYTE004  $  y=x1*0.390625;
  $  115.VVT(可变气门正时)占空比控制信号               $    $  /              $    $  ANS107.BYTE004  $  y=(x1*0x100+x2)*0.0061035156;
  $  116.冷却风扇输出                                  $    $  /              $    $  ANS108.BYTE004  $  y=x1*0.392;
  $  117.一缸喷油脉宽                                  $    $  /              $    $  ANS109.BYTE004  $  y=(x1*0x100+x2)*0.004;
  $  118.二缸喷油脉宽                                  $    $  /              $    $  ANS110.BYTE004  $  y=(x1*0x100+x2)*0.004;
  $  119.三缸喷油脉宽                                  $    $  /              $    $  ANS111.BYTE004  $  y=(x1*0x100+x2)*0.004;
  $  120.四缸喷油脉宽                                  $    $  /              $    $  ANS112.BYTE004  $  y=(x1*0x100+x2)*0.004;
  $  121.Lambda控制输出                                $    $  /              $    $  ANS113.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.00152588; else y=(x1*0x100-0xFFFF+x2)*0.00152588;
  $  122.Lambda控制自适应输出                          $    $  /              $    $  ANS114.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.00152588; else y=(x1*0x100-0xFFFF+x2)*0.00152588;
  $  123.由于爆震一缸点火延迟                          $    $  /              $    $  ANS115.BYTE004  $  y=x1*0.375-48;
  $  124.由于爆震二缸点火延迟                          $    $  /              $    $  ANS116.BYTE004  $  y=x1*0.375-48;
  $  125.由于爆震三缸点火延迟                          $    $  /              $    $  ANS117.BYTE004  $  y=x1*0.375-48;
  $  126.由于爆震四缸点火延迟                          $    $  /              $    $  ANS118.BYTE004  $  y=x1*0.375-48;
  $  127.蒸发器温度传感器电压                          $    $  /              $    $  ANS119.BYTE004  $  y=(x1*0x100+x2)*0.000152588;
  $  128.蒸发器温度传感器信号                          $    $  /              $    $  ANS120.BYTE004  $  y=x1*0.75-48;
  $  129.跛行模式TPS(节气门位置)通道1学习值            $    $  /              $    $  ANS121.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.00015258; else y=(x1*0x100-0xFFFF+x2)*0.00015258;
  $  130.跛行模式TPS(节气门位置)通道2学习值            $    $  /              $    $  ANS121.BYTE006  $  if(x3<0x80) y=(x3*0x100+x4)*0.00015258; else y=(x3*0x100-0xFFFF+x4)*0.00015258;
  $  131.TPS(节气门位置)通道1对下止点学习值            $    $  /              $    $  ANS121.BYTE008  $  if(x5<0x80) y=(x5*0x100+x6)*0.00015258; else y=(x5*0x100-0xFFFF+x6)*0.00015258;
  $  132.TPS(节气门位置)通道2对下止点学习值            $    $  /              $    $  ANS121.BYTE010  $  if(x7<0x80) y=(x7*0x100+x8)*0.00015258; else y=(x7*0x100-0xFFFF+x8)*0.00015258;
  $  133.空气流量                                      $    $  /              $    $  ANS122.BYTE004  $  y=(x1*0x100+x2)*0.03125;
  $  134.容积效率的高度修正偏差                        $    $  /              $    $  ANS123.BYTE004  $  y=(x1*0x100+x2)*0.000030517578125;
  $  135.容积效率的高度修正斜率                        $    $  /              $    $  ANS123.BYTE006  $  y=(x3*0x100+x4)*0.000030517578125;
  $  136.氧传感器控制器输出                            $    $  /              $    $  ANS124.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.001525878; else y=(x1*0x100-0xFFFF+x2)*0.001525878;
  $  137.油量预值偏差                                  $    $  /              $    $  ANS125.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*0.021194781; else y=(x1*0x100-0xFFFF+x2)*0.021194781;
  $  138.安全密钥是否被编程在ECM(发动机控制模块)       $    $  /              $    $  ANS126.BYTE004  $  if(x1&0x01) y=@02dd;else y=@02d7;
  $  139.防盗是否激活配置                              $    $  /              $    $  ANS126.BYTE004  $  if(x1&0x02) y=@001d;else y=@0370;
  $  140.油泵继电器阵脚与空调继电器阵脚调换配置        $    $  /              $    $  ANS126.BYTE004  $  if(x1&0x04) y=@013c;else y=@013d;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
