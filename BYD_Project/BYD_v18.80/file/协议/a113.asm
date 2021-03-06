
    车型ID：a113

    模拟：协议模拟-->a113

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~789

进入命令:

  $~  REQ000:781 02 10 01 00 00 00 00 00       $~  ANS000:789 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:781 02 3E 01 00 00 00 00 00       $!  ANS000:789 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:781 05 18 00 FF FF FF 00 00       $#  ANS000:789 05 18 00 FF FF FF 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/04000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:781 04 14 FF FF FF 00 00 00       $$  ANS000:789 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:781 03 22 00 01 00 00 00 00       $%  ANS000:789 03 22 00 01 00 00 00 00
  $%  REQ001:781 03 22 00 03 00 00 00 00       $%  ANS001:789 03 22 00 03 00 00 00 00
  $%  REQ002:781 03 22 15 86 00 00 00 00       $%  ANS002:789 03 22 15 86 00 00 00 00
  $%  REQ003:781 03 22 15 87 00 00 00 00       $%  ANS003:789 03 22 15 87 00 00 00 00
  $%  REQ004:781 03 22 15 88 00 00 00 00       $%  ANS004:789 03 22 15 88 00 00 00 00
  $%  REQ005:781 03 22 15 89 00 00 00 00       $%  ANS005:789 03 22 15 89 00 00 00 00
  $%  REQ006:781 03 22 15 8A 00 00 00 00       $%  ANS006:789 03 22 15 8A 00 00 00 00

  $%  000:硬件版本:                $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:软件版本:                $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  002:VIN:                     $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x4,x5,x6,x7,x8,x9,x11,x12,x13,x14,x15,x16,x18,x19,x20);
  $%  003:电池箱数:                $%    $%  ANS003.BYTE004  $%  y=x1;
  $%  004:电池串联数:              $%    $%  ANS004.BYTE004  $%  y=x1;
  $%  005:电池并联数:              $%    $%  ANS005.BYTE004  $%  y=x1;
  $%  006:电池温度采集点数:        $%    $%  ANS006.BYTE004  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:781 03 22 00 04 00 00 00 00       $  ANS000:789 03 22 00 04 00 00 00 00
  $  REQ001:781 03 22 00 05 00 00 00 00       $  ANS001:789 03 22 00 05 00 00 00 00
  $  REQ002:781 03 22 00 06 00 00 00 00       $  ANS002:789 03 22 00 06 00 00 00 00
  $  REQ003:781 03 22 00 07 00 00 00 00       $  ANS003:789 03 22 00 07 00 00 00 00
  $  REQ004:781 03 22 00 08 00 00 00 00       $  ANS004:789 03 22 00 08 00 00 00 00
  $  REQ005:781 03 22 00 0A 00 00 00 00       $  ANS005:789 03 22 00 0A 00 00 00 00
  $  REQ006:781 03 22 00 0B 00 00 00 00       $  ANS006:789 03 22 00 0B 00 00 00 00
  $  REQ007:781 03 22 00 0C 00 00 00 00       $  ANS007:789 03 22 00 0C 00 00 00 00
  $  REQ008:781 03 22 00 0D 00 00 00 00       $  ANS008:789 03 22 00 0D 00 00 00 00
  $  REQ009:781 03 22 00 0E 00 00 00 00       $  ANS009:789 03 22 00 0E 00 00 00 00
  $  REQ010:781 03 22 00 0F 00 00 00 00       $  ANS010:789 03 22 00 0F 00 00 00 00
  $  REQ011:781 03 22 00 10 00 00 00 00       $  ANS011:789 03 22 00 10 00 00 00 00
  $  REQ012:781 03 22 00 11 00 00 00 00       $  ANS012:789 03 22 00 11 00 00 00 00
  $  REQ013:781 03 22 00 12 00 00 00 00       $  ANS013:789 03 22 00 12 00 00 00 00
  $  REQ014:781 03 22 00 13 00 00 00 00       $  ANS014:789 03 22 00 13 00 00 00 00
  $  REQ015:781 03 22 00 14 00 00 00 00       $  ANS015:789 03 22 00 14 00 00 00 00
  $  REQ016:781 03 22 00 15 00 00 00 00       $  ANS016:789 03 22 00 15 00 00 00 00
  $  REQ017:781 03 22 00 16 00 00 00 00       $  ANS017:789 03 22 00 16 00 00 00 00
  $  REQ018:781 03 22 00 17 00 00 00 00       $  ANS018:789 03 22 00 17 00 00 00 00
  $  REQ019:781 03 22 00 18 00 00 00 00       $  ANS019:789 03 22 00 18 00 00 00 00
  $  REQ020:781 03 22 00 19 00 00 00 00       $  ANS020:789 03 22 00 19 00 00 00 00
  $  REQ021:781 03 22 00 1A 00 00 00 00       $  ANS021:789 03 22 00 1A 00 00 00 00
  $  REQ022:781 03 22 00 1B 00 00 00 00       $  ANS022:789 03 22 00 1B 00 00 00 00
  $  REQ023:781 03 22 00 1C 00 00 00 00       $  ANS023:789 03 22 00 1C 00 00 00 00
  $  REQ024:781 03 22 00 1D 00 00 00 00       $  ANS024:789 03 22 00 1D 00 00 00 00
  $  REQ025:781 03 22 00 1E 00 00 00 00       $  ANS025:789 03 22 00 1E 00 00 00 00
  $  REQ026:781 03 22 00 1F 00 00 00 00       $  ANS026:789 03 22 00 1F 00 00 00 00
  $  REQ027:781 03 22 00 20 00 00 00 00       $  ANS027:789 03 22 00 20 00 00 00 00
  $  REQ028:781 03 22 00 21 00 00 00 00       $  ANS028:789 03 22 00 21 00 00 00 00
  $  REQ029:781 03 22 00 22 00 00 00 00       $  ANS029:789 03 22 00 22 00 00 00 00
  $  REQ030:781 03 22 00 23 00 00 00 00       $  ANS030:789 03 22 00 23 00 00 00 00
  $  REQ031:781 03 22 00 24 00 00 00 00       $  ANS031:789 03 22 00 24 00 00 00 00
  $  REQ032:781 03 22 00 25 00 00 00 00       $  ANS032:789 03 22 00 25 00 00 00 00
  $  REQ033:781 03 22 00 26 00 00 00 00       $  ANS033:789 03 22 00 26 00 00 00 00
  $  REQ034:781 03 22 00 27 00 00 00 00       $  ANS034:789 03 22 00 27 00 00 00 00
  $  REQ035:781 03 22 00 28 00 00 00 00       $  ANS035:789 03 22 00 28 00 00 00 00
  $  REQ036:781 03 22 00 29 00 00 00 00       $  ANS036:789 03 22 00 29 00 00 00 00
  $  REQ037:781 03 22 00 2A 00 00 00 00       $  ANS037:789 03 22 00 2A 00 00 00 00
  $  REQ038:781 03 22 00 2B 00 00 00 00       $  ANS038:789 03 22 00 2B 00 00 00 00
  $  REQ039:781 03 22 00 2C 00 00 00 00       $  ANS039:789 03 22 00 2C 00 00 00 00
  $  REQ040:781 03 22 00 2D 00 00 00 00       $  ANS040:789 03 22 00 2D 00 00 00 00
  $  REQ041:781 03 22 00 2E 00 00 00 00       $  ANS041:789 03 22 00 2E 00 00 00 00
  $  REQ042:781 03 22 00 2F 00 00 00 00       $  ANS042:789 03 22 00 2F 00 00 00 00
  $  REQ043:781 03 22 00 30 00 00 00 00       $  ANS043:789 03 22 00 30 00 00 00 00
  $  REQ044:781 03 22 00 31 00 00 00 00       $  ANS044:789 03 22 00 31 00 00 00 00
  $  REQ045:781 03 22 00 32 00 00 00 00       $  ANS045:789 03 22 00 32 00 00 00 00
  $  REQ046:781 03 22 00 33 00 00 00 00       $  ANS046:789 03 22 00 33 00 00 00 00
  $  REQ047:781 03 22 00 34 00 00 00 00       $  ANS047:789 03 22 00 34 00 00 00 00
  $  REQ048:781 03 22 00 35 00 00 00 00       $  ANS048:789 03 22 00 35 00 00 00 00
  $  REQ049:781 03 22 00 36 00 00 00 00       $  ANS049:789 03 22 00 36 00 00 00 00
  $  REQ050:781 03 22 00 37 00 00 00 00       $  ANS050:789 03 22 00 37 00 00 00 00
  $  REQ051:781 03 22 00 38 00 00 00 00       $  ANS051:789 03 22 00 38 00 00 00 00
  $  REQ052:781 03 22 00 39 00 00 00 00       $  ANS052:789 03 22 00 39 00 00 00 00
  $  REQ053:781 03 22 00 3A 00 00 00 00       $  ANS053:789 03 22 00 3A 00 00 00 00
  $  REQ054:781 03 22 00 3B 00 00 00 00       $  ANS054:789 03 22 00 3B 00 00 00 00
  $  REQ055:781 03 22 00 3C 00 00 00 00       $  ANS055:789 03 22 00 3C 00 00 00 00
  $  REQ056:781 03 22 00 3D 00 00 00 00       $  ANS056:789 03 22 00 3D 00 00 00 00
  $  REQ057:781 03 22 00 3E 00 00 00 00       $  ANS057:789 03 22 00 3E 00 00 00 00
  $  REQ058:781 03 22 00 3F 00 00 00 00       $  ANS058:789 03 22 00 3F 00 00 00 00
  $  REQ059:781 03 22 00 40 00 00 00 00       $  ANS059:789 03 22 00 40 00 00 00 00
  $  REQ060:781 03 22 00 41 00 00 00 00       $  ANS060:789 03 22 00 41 00 00 00 00
  $  REQ061:781 03 22 00 42 00 00 00 00       $  ANS061:789 03 22 00 42 00 00 00 00
  $  REQ062:781 03 22 00 43 00 00 00 00       $  ANS062:789 03 22 00 43 00 00 00 00
  $  REQ063:781 03 22 00 44 00 00 00 00       $  ANS063:789 03 22 00 44 00 00 00 00
  $  REQ064:781 03 22 00 45 00 00 00 00       $  ANS064:789 03 22 00 45 00 00 00 00
  $  REQ065:781 03 22 00 46 00 00 00 00       $  ANS065:789 03 22 00 46 00 00 00 00
  $  REQ066:781 03 22 00 47 00 00 00 00       $  ANS066:789 03 22 00 47 00 00 00 00
  $  REQ067:781 03 22 00 48 00 00 00 00       $  ANS067:789 03 22 00 48 00 00 00 00
  $  REQ068:781 03 22 00 49 00 00 00 00       $  ANS068:789 03 22 00 49 00 00 00 00
  $  REQ069:781 03 22 00 4A 00 00 00 00       $  ANS069:789 03 22 00 4A 00 00 00 00
  $  REQ070:781 03 22 00 4B 00 00 00 00       $  ANS070:789 03 22 00 4B 00 00 00 00
  $  REQ071:781 03 22 00 4C 00 00 00 00       $  ANS071:789 03 22 00 4C 00 00 00 00
  $  REQ072:781 03 22 00 4D 00 00 00 00       $  ANS072:789 03 22 00 4D 00 00 00 00
  $  REQ073:781 03 22 00 4E 00 00 00 00       $  ANS073:789 03 22 00 4E 00 00 00 00
  $  REQ074:781 03 22 00 4F 00 00 00 00       $  ANS074:789 03 22 00 4F 00 00 00 00
  $  REQ075:781 03 22 00 50 00 00 00 00       $  ANS075:789 03 22 00 50 00 00 00 00
  $  REQ076:781 03 22 00 51 00 00 00 00       $  ANS076:789 03 22 00 51 00 00 00 00
  $  REQ077:781 03 22 00 52 00 00 00 00       $  ANS077:789 03 22 00 52 00 00 00 00
  $  REQ078:781 03 22 00 53 00 00 00 00       $  ANS078:789 03 22 00 53 00 00 00 00
  $  REQ079:781 03 22 00 54 00 00 00 00       $  ANS079:789 03 22 00 54 00 00 00 00
  $  REQ080:781 03 22 00 55 00 00 00 00       $  ANS080:789 03 22 00 55 00 00 00 00
  $  REQ081:781 03 22 00 56 00 00 00 00       $  ANS081:789 03 22 00 56 00 00 00 00
  $  REQ082:781 03 22 00 57 00 00 00 00       $  ANS082:789 03 22 00 57 00 00 00 00
  $  REQ083:781 03 22 00 58 00 00 00 00       $  ANS083:789 03 22 00 58 00 00 00 00
  $  REQ084:781 03 22 00 59 00 00 00 00       $  ANS084:789 03 22 00 59 00 00 00 00
  $  REQ085:781 03 22 00 5A 00 00 00 00       $  ANS085:789 03 22 00 5A 00 00 00 00
  $  REQ086:781 03 22 00 5B 00 00 00 00       $  ANS086:789 03 22 00 5B 00 00 00 00
  $  REQ087:781 03 22 00 5C 00 00 00 00       $  ANS087:789 03 22 00 5C 00 00 00 00
  $  REQ088:781 03 22 00 5D 00 00 00 00       $  ANS088:789 03 22 00 5D 00 00 00 00
  $  REQ089:781 03 22 00 5E 00 00 00 00       $  ANS089:789 03 22 00 5E 00 00 00 00
  $  REQ090:781 03 22 00 5F 00 00 00 00       $  ANS090:789 03 22 00 5F 00 00 00 00
  $  REQ091:781 03 22 00 60 00 00 00 00       $  ANS091:789 03 22 00 60 00 00 00 00
  $  REQ092:781 03 22 00 61 00 00 00 00       $  ANS092:789 03 22 00 61 00 00 00 00
  $  REQ093:781 03 22 00 62 00 00 00 00       $  ANS093:789 03 22 00 62 00 00 00 00
  $  REQ094:781 03 22 00 63 00 00 00 00       $  ANS094:789 03 22 00 63 00 00 00 00
  $  REQ095:781 03 22 00 64 00 00 00 00       $  ANS095:789 03 22 00 64 00 00 00 00
  $  REQ096:781 03 22 00 65 00 00 00 00       $  ANS096:789 03 22 00 65 00 00 00 00
  $  REQ097:781 03 22 00 66 00 00 00 00       $  ANS097:789 03 22 00 66 00 00 00 00
  $  REQ098:781 03 22 00 67 00 00 00 00       $  ANS098:789 03 22 00 67 00 00 00 00
  $  REQ099:781 03 22 00 68 00 00 00 00       $  ANS099:789 03 22 00 68 00 00 00 00
  $  REQ100:781 03 22 00 69 00 00 00 00       $  ANS100:789 03 22 00 69 00 00 00 00
  $  REQ101:781 03 22 00 6A 00 00 00 00       $  ANS101:789 03 22 00 6A 00 00 00 00
  $  REQ102:781 03 22 00 6B 00 00 00 00       $  ANS102:789 03 22 00 6B 00 00 00 00
  $  REQ103:781 03 22 00 6C 00 00 00 00       $  ANS103:789 03 22 00 6C 00 00 00 00
  $  REQ104:781 03 22 00 6D 00 00 00 00       $  ANS104:789 03 22 00 6D 00 00 00 00
  $  REQ105:781 03 22 00 6E 00 00 00 00       $  ANS105:789 03 22 00 6E 00 00 00 00
  $  REQ106:781 03 22 00 6F 00 00 00 00       $  ANS106:789 03 22 00 6F 00 00 00 00
  $  REQ107:781 03 22 00 70 00 00 00 00       $  ANS107:789 03 22 00 70 00 00 00 00
  $  REQ108:781 03 22 00 71 00 00 00 00       $  ANS108:789 03 22 00 71 00 00 00 00
  $  REQ109:781 03 22 00 72 00 00 00 00       $  ANS109:789 03 22 00 72 00 00 00 00
  $  REQ110:781 03 22 00 73 00 00 00 00       $  ANS110:789 03 22 00 73 00 00 00 00
  $  REQ111:781 03 22 00 74 00 00 00 00       $  ANS111:789 03 22 00 74 00 00 00 00
  $  REQ112:781 03 22 00 75 00 00 00 00       $  ANS112:789 03 22 00 75 00 00 00 00
  $  REQ113:781 03 22 00 76 00 00 00 00       $  ANS113:789 03 22 00 76 00 00 00 00
  $  REQ114:781 03 22 00 77 00 00 00 00       $  ANS114:789 03 22 00 77 00 00 00 00
  $  REQ115:781 03 22 00 78 00 00 00 00       $  ANS115:789 03 22 00 78 00 00 00 00
  $  REQ116:781 03 22 00 79 00 00 00 00       $  ANS116:789 03 22 00 79 00 00 00 00
  $  REQ117:781 03 22 00 7A 00 00 00 00       $  ANS117:789 03 22 00 7A 00 00 00 00
  $  REQ118:781 03 22 00 7B 00 00 00 00       $  ANS118:789 03 22 00 7B 00 00 00 00
  $  REQ119:781 03 22 00 7C 00 00 00 00       $  ANS119:789 03 22 00 7C 00 00 00 00
  $  REQ120:781 03 22 00 7D 00 00 00 00       $  ANS120:789 03 22 00 7D 00 00 00 00
  $  REQ121:781 03 22 00 7E 00 00 00 00       $  ANS121:789 03 22 00 7E 00 00 00 00
  $  REQ122:781 03 22 00 7F 00 00 00 00       $  ANS122:789 03 22 00 7F 00 00 00 00
  $  REQ123:781 03 22 00 80 00 00 00 00       $  ANS123:789 03 22 00 80 00 00 00 00
  $  REQ124:781 03 22 00 81 00 00 00 00       $  ANS124:789 03 22 00 81 00 00 00 00
  $  REQ125:781 03 22 00 82 00 00 00 00       $  ANS125:789 03 22 00 82 00 00 00 00
  $  REQ126:781 03 22 00 83 00 00 00 00       $  ANS126:789 03 22 00 83 00 00 00 00
  $  REQ127:781 03 22 00 84 00 00 00 00       $  ANS127:789 03 22 00 84 00 00 00 00
  $  REQ128:781 03 22 00 85 00 00 00 00       $  ANS128:789 03 22 00 85 00 00 00 00
  $  REQ129:781 03 22 00 86 00 00 00 00       $  ANS129:789 03 22 00 86 00 00 00 00
  $  REQ130:781 03 22 00 87 00 00 00 00       $  ANS130:789 03 22 00 87 00 00 00 00
  $  REQ131:781 03 22 00 88 00 00 00 00       $  ANS131:789 03 22 00 88 00 00 00 00
  $  REQ132:781 03 22 00 89 00 00 00 00       $  ANS132:789 03 22 00 89 00 00 00 00
  $  REQ133:781 03 22 00 8A 00 00 00 00       $  ANS133:789 03 22 00 8A 00 00 00 00
  $  REQ134:781 03 22 00 8B 00 00 00 00       $  ANS134:789 03 22 00 8B 00 00 00 00
  $  REQ135:781 03 22 00 8C 00 00 00 00       $  ANS135:789 03 22 00 8C 00 00 00 00
  $  REQ136:781 03 22 00 8D 00 00 00 00       $  ANS136:789 03 22 00 8D 00 00 00 00
  $  REQ137:781 03 22 00 8E 00 00 00 00       $  ANS137:789 03 22 00 8E 00 00 00 00
  $  REQ138:781 03 22 00 8F 00 00 00 00       $  ANS138:789 03 22 00 8F 00 00 00 00
  $  REQ139:781 03 22 00 90 00 00 00 00       $  ANS139:789 03 22 00 90 00 00 00 00
  $  REQ140:781 03 22 00 91 00 00 00 00       $  ANS140:789 03 22 00 91 00 00 00 00
  $  REQ141:781 03 22 00 92 00 00 00 00       $  ANS141:789 03 22 00 92 00 00 00 00
  $  REQ142:781 03 22 00 93 00 00 00 00       $  ANS142:789 03 22 00 93 00 00 00 00
  $  REQ143:781 03 22 00 94 00 00 00 00       $  ANS143:789 03 22 00 94 00 00 00 00
  $  REQ144:781 03 22 00 95 00 00 00 00       $  ANS144:789 03 22 00 95 00 00 00 00
  $  REQ145:781 03 22 00 96 00 00 00 00       $  ANS145:789 03 22 00 96 00 00 00 00
  $  REQ146:781 03 22 00 97 00 00 00 00       $  ANS146:789 03 22 00 97 00 00 00 00

  $  000.电池组当前总电压                   $    $  V            $    $  ANS000.BYTE004  $  if(x2==0x00) y=x1;else if((x2==0x01) && (x1<0xF4)) y=x1+256; else y=@0108;
  $  001.电池组当前总电流                   $    $  A            $    $  ANS001.BYTE004  $  if(x2<0x27) y=x2*25.6+x1/10.0-500.0;else if((x2==0x28) && (x1<0x10)) y=x2*25.6+x1/10.0-500.0; else y=@0108;
  $  002.电池的健康指数                     $    $  %            $    $  ANS002.BYTE004  $  if(x1<0x65) y=x1;else y=@0108;
  $  003.剩余电池电量                       $    $  %            $    $  ANS003.BYTE004  $  if(x1<0x65) y=x1;else y=@0108;
  $  004.电池组最高温度                     $    $  degree C     $    $  ANS004.BYTE004  $  if(x1<0xC9) y=x1-40;else y=@0108;
  $  005.充电是否允许                       $    $               $    $  ANS005.BYTE004  $  if(x1==0x00) y=@004e;else if(x1==0x01) y=@004d; else y=@0108;
  $  006.预充状态                           $    $               $    $  ANS006.BYTE004  $  if(x1==0x00) y=@0142;else if(x1==0x01) y=@0143; else if(x1==0x02) y=@0144; else if(x1==0x03) y=@0145; else y=@0108;
  $  007.DC预充状态                         $    $               $    $  ANS007.BYTE004  $  if(x1==0x00) y=@0142;else if(x1==0x01) y=@0143; else if(x1==0x02) y=@0144; else if(x1==0x03) y=@0145; else y=@0108;
  $  008.放电主接触器状态                   $    $               $    $  ANS008.BYTE004  $  if(x1==0x00) y=@0047;else if(x1==0x01) y=@0048;else y=@0108;
  $  009.预充接触器状态                     $    $               $    $  ANS009.BYTE004  $  if(x1==0x00) y=@0047;else if(x1==0x01) y=@0048;else y=@0108;
  $  010.充电接触器状态                     $    $               $    $  ANS010.BYTE004  $  if(x1==0x00) y=@0047;else if(x1==0x01) y=@0048;else y=@0108;
  $  011.DC预充接触器状态                   $    $               $    $  ANS011.BYTE004  $  if(x1==0x00) y=@0047;else if(x1==0x01) y=@0048;else y=@0108;
  $  012.DC接触器状态                       $    $               $    $  ANS012.BYTE004  $  if(x1==0x00) y=@0047;else if(x1==0x01) y=@0048;else y=@0108;
  $  013.放电是否允许                       $    $               $    $  ANS013.BYTE004  $  if(x1==0x00) y=@004e;else if(x1==0x01) y=@004d; else y=@0108;
  $  014.最低电压电池号                     $    $               $    $  ANS014.BYTE004  $  if(x1<0x65) y=x1;else y=@0108;
  $  015.最低单节电池电压                   $    $  V            $    $  ANS015.BYTE004  $  if((x2==0x00) && (x1<0x64)) y=@0510;else if((x2==0x00) && (x1>=0x64) && (x1<0xC8)) y=@0511; else if((x2==0x00) && (x1>=0xC8)) y=@0512;  else if((x2==0x01) && (x1<0x2C)) y=@0512; else if((x2==0x01) && (x1>=0x2C) && (x1<0x90)) y=@0513; else if((x2==0x01) && (x1>=0x90) && (x1<0xF4)) y=@070f; else y=@0108;
  $  016.最高电压电池号                     $    $               $    $  ANS016.BYTE004  $  if(x1<0x65) y=x1;else y=@0108;
  $  017.最高单节电池电压                   $    $  V            $    $  ANS017.BYTE004  $  if((x2==0x00) && (x1<0x64)) y=@0510;else if((x2==0x00) && (x1>=0x64) && (x1<0xC8)) y=@0511; else if((x2==0x00) && (x1>=0xC8)) y=@0512;  else if((x2==0x01) && (x1<0x2C)) y=@0512; else if((x2==0x01) && (x1>=0x2C) && (x1<0x90)) y=@0513; else if((x2==0x01) && (x1>=0x90) && (x1<0xF4)) y=@070f; else y=@0108;
  $  018.最低温度电池号                     $    $               $    $  ANS018.BYTE004  $  if(x1<0x65) y=x1;else y=@0108;
  $  019.最低单节电池温度                   $    $  degree C     $    $  ANS019.BYTE004  $  if(x1<0xC9) y=x1-40;else y=@0108;
  $  020.最高温度电池号                     $    $               $    $  ANS020.BYTE004  $  if(x1<0x65) y=x1;else y=@0108;
  $  021.最高单节电池温度                   $    $  degree C     $    $  ANS021.BYTE004  $  if(x1<0xC9) y=x1-40;else y=@0108;
  $  022.电池组充电状态                     $    $               $    $  ANS022.BYTE004  $  if((x1&0x03)==0x00) y=@0045;else if((x1&0x03)==0x01) y=@0680;else if((x1&0x03)==0x02) y=@0681;  else y=@0108;
  $  023.电池组温度状态                     $    $               $    $  ANS023.BYTE004  $  if(x1==0x00) y=@0045;else if(x1==0x01) y=@0931;else if(x1==0x02) y=@0932; else y=@0108;
  $  024.电池组漏电状态                     $    $               $    $  ANS024.BYTE004  $  if(x1==0x00) y=@0045;else if(x1==0x01) y=@067c;else if(x1==0x02) y=@067d; else y=@0108;
  $  025.电池组电量状态                     $    $               $    $  ANS025.BYTE004  $  if(x1==0x00) y=@0045;else if(x1==0x01) y=@067b;else y=@0108;
  $  026.湿度状态                           $    $               $    $  ANS026.BYTE004  $  if(x1==0x00) y=@0045;else if(x1==0x01) y=@067f;else y=@0108;
  $  027.过流状态                           $    $               $    $  ANS027.BYTE004  $  if(x1==0x00) y=@0045;else if(x1==0x01) y=@067e;else y=@0108;
  $  028.电压过低报警                       $    $               $    $  ANS028.BYTE004  $  if(x1==0x00) y=@0045;else if(x1==0x01) y=@0680;else if(x1==0x02) y=@0681; else y=@0108;
  $  029.电压过高报警                       $    $               $    $  ANS029.BYTE004  $  if(x1==0x00) y=@0045;else if(x1==0x01) y=@0680;else if(x1==0x02) y=@0681; else y=@0108;
  $  030.BMS(电池管理系统)12V电源电压       $    $               $    $  ANS030.BYTE004  $  if(x1<0xD2) y=x1/10;else y=@002e;
  $  031.系统均衡状态                       $    $               $    $  ANS031.BYTE004  $  if(x1==0x00) y=@0000;else if(x1==0x01) y=@0001;else y=@002e;
  $  032.第1节电池均衡积累时间              $    $               $    $  ANS032.BYTE004  $  y=x1+x2*256;
  $  033.第2节电池均衡积累时间              $    $               $    $  ANS033.BYTE004  $  y=x1+x2*256;
  $  034.第3节电池均衡积累时间              $    $               $    $  ANS034.BYTE004  $  y=x1+x2*256;
  $  035.第4节电池均衡积累时间              $    $               $    $  ANS035.BYTE004  $  y=x1+x2*256;
  $  036.第5节电池均衡积累时间              $    $               $    $  ANS036.BYTE004  $  y=x1+x2*256;
  $  037.第6节电池均衡积累时间              $    $               $    $  ANS037.BYTE004  $  y=x1+x2*256;
  $  038.第7节电池均衡积累时间              $    $               $    $  ANS038.BYTE004  $  y=x1+x2*256;
  $  039.第8节电池均衡积累时间              $    $               $    $  ANS039.BYTE004  $  y=x1+x2*256;
  $  040.第9节电池均衡积累时间              $    $               $    $  ANS040.BYTE004  $  y=x1+x2*256;
  $  041.第10节电池均衡积累时间             $    $               $    $  ANS041.BYTE004  $  y=x1+x2*256;
  $  042.第11节电池均衡积累时间             $    $               $    $  ANS042.BYTE004  $  y=x1+x2*256;
  $  043.第12节电池均衡积累时间             $    $               $    $  ANS043.BYTE004  $  y=x1+x2*256;
  $  044.第13节电池均衡积累时间             $    $               $    $  ANS044.BYTE004  $  y=x1+x2*256;
  $  045.第14节电池均衡积累时间             $    $               $    $  ANS045.BYTE004  $  y=x1+x2*256;
  $  046.第15节电池均衡积累时间             $    $               $    $  ANS046.BYTE004  $  y=x1+x2*256;
  $  047.第16节电池均衡积累时间             $    $               $    $  ANS047.BYTE004  $  y=x1+x2*256;
  $  048.第17节电池均衡积累时间             $    $               $    $  ANS048.BYTE004  $  y=x1+x2*256;
  $  049.第18节电池均衡积累时间             $    $               $    $  ANS049.BYTE004  $  y=x1+x2*256;
  $  050.第19节电池均衡积累时间             $    $               $    $  ANS050.BYTE004  $  y=x1+x2*256;
  $  051.第20节电池均衡积累时间             $    $               $    $  ANS051.BYTE004  $  y=x1+x2*256;
  $  052.第21节电池均衡积累时间             $    $               $    $  ANS052.BYTE004  $  y=x1+x2*256;
  $  053.第22节电池均衡积累时间             $    $               $    $  ANS053.BYTE004  $  y=x1+x2*256;
  $  054.第23节电池均衡积累时间             $    $               $    $  ANS054.BYTE004  $  y=x1+x2*256;
  $  055.第24节电池均衡积累时间             $    $               $    $  ANS055.BYTE004  $  y=x1+x2*256;
  $  056.第25节电池均衡积累时间             $    $               $    $  ANS056.BYTE004  $  y=x1+x2*256;
  $  057.第26节电池均衡积累时间             $    $               $    $  ANS057.BYTE004  $  y=x1+x2*256;
  $  058.第27节电池均衡积累时间             $    $               $    $  ANS058.BYTE004  $  y=x1+x2*256;
  $  059.第28节电池均衡积累时间             $    $               $    $  ANS059.BYTE004  $  y=x1+x2*256;
  $  060.第29节电池均衡积累时间             $    $               $    $  ANS060.BYTE004  $  y=x1+x2*256;
  $  061.第30节电池均衡积累时间             $    $               $    $  ANS061.BYTE004  $  y=x1+x2*256;
  $  062.第31节电池均衡积累时间             $    $               $    $  ANS062.BYTE004  $  y=x1+x2*256;
  $  063.第32节电池均衡积累时间             $    $               $    $  ANS063.BYTE004  $  y=x1+x2*256;
  $  064.第33节电池均衡积累时间             $    $               $    $  ANS064.BYTE004  $  y=x1+x2*256;
  $  065.第34节电池均衡积累时间             $    $               $    $  ANS065.BYTE004  $  y=x1+x2*256;
  $  066.第35节电池均衡积累时间             $    $               $    $  ANS066.BYTE004  $  y=x1+x2*256;
  $  067.第36节电池均衡积累时间             $    $               $    $  ANS067.BYTE004  $  y=x1+x2*256;
  $  068.第37节电池均衡积累时间             $    $               $    $  ANS068.BYTE004  $  y=x1+x2*256;
  $  069.第38节电池均衡积累时间             $    $               $    $  ANS069.BYTE004  $  y=x1+x2*256;
  $  070.第39节电池均衡积累时间             $    $               $    $  ANS070.BYTE004  $  y=x1+x2*256;
  $  071.第40节电池均衡积累时间             $    $               $    $  ANS071.BYTE004  $  y=x1+x2*256;
  $  072.第41节电池均衡积累时间             $    $               $    $  ANS072.BYTE004  $  y=x1+x2*256;
  $  073.第42节电池均衡积累时间             $    $               $    $  ANS073.BYTE004  $  y=x1+x2*256;
  $  074.第43节电池均衡积累时间             $    $               $    $  ANS074.BYTE004  $  y=x1+x2*256;
  $  075.第44节电池均衡积累时间             $    $               $    $  ANS075.BYTE004  $  y=x1+x2*256;
  $  076.第45节电池均衡积累时间             $    $               $    $  ANS076.BYTE004  $  y=x1+x2*256;
  $  077.第46节电池均衡积累时间             $    $               $    $  ANS077.BYTE004  $  y=x1+x2*256;
  $  078.第47节电池均衡积累时间             $    $               $    $  ANS078.BYTE004  $  y=x1+x2*256;
  $  079.第48节电池均衡积累时间             $    $               $    $  ANS079.BYTE004  $  y=x1+x2*256;
  $  080.第49节电池均衡积累时间             $    $               $    $  ANS080.BYTE004  $  y=x1+x2*256;
  $  081.第50节电池均衡积累时间             $    $               $    $  ANS081.BYTE004  $  y=x1+x2*256;
  $  082.第51节电池均衡积累时间             $    $               $    $  ANS082.BYTE004  $  y=x1+x2*256;
  $  083.第52节电池均衡积累时间             $    $               $    $  ANS083.BYTE004  $  y=x1+x2*256;
  $  084.第53节电池均衡积累时间             $    $               $    $  ANS084.BYTE004  $  y=x1+x2*256;
  $  085.第54节电池均衡积累时间             $    $               $    $  ANS085.BYTE004  $  y=x1+x2*256;
  $  086.第55节电池均衡积累时间             $    $               $    $  ANS086.BYTE004  $  y=x1+x2*256;
  $  087.第56节电池均衡积累时间             $    $               $    $  ANS087.BYTE004  $  y=x1+x2*256;
  $  088.第57节电池均衡积累时间             $    $               $    $  ANS088.BYTE004  $  y=x1+x2*256;
  $  089.第58节电池均衡积累时间             $    $               $    $  ANS089.BYTE004  $  y=x1+x2*256;
  $  090.第59节电池均衡积累时间             $    $               $    $  ANS090.BYTE004  $  y=x1+x2*256;
  $  091.第60节电池均衡积累时间             $    $               $    $  ANS091.BYTE004  $  y=x1+x2*256;
  $  092.第61节电池均衡积累时间             $    $               $    $  ANS092.BYTE004  $  y=x1+x2*256;
  $  093.第62节电池均衡积累时间             $    $               $    $  ANS093.BYTE004  $  y=x1+x2*256;
  $  094.第63节电池均衡积累时间             $    $               $    $  ANS094.BYTE004  $  y=x1+x2*256;
  $  095.第64节电池均衡积累时间             $    $               $    $  ANS095.BYTE004  $  y=x1+x2*256;
  $  096.第65节电池均衡积累时间             $    $               $    $  ANS096.BYTE004  $  y=x1+x2*256;
  $  097.第66节电池均衡积累时间             $    $               $    $  ANS097.BYTE004  $  y=x1+x2*256;
  $  098.第67节电池均衡积累时间             $    $               $    $  ANS098.BYTE004  $  y=x1+x2*256;
  $  099.第68节电池均衡积累时间             $    $               $    $  ANS099.BYTE004  $  y=x1+x2*256;
  $  100.第69节电池均衡积累时间             $    $               $    $  ANS100.BYTE004  $  y=x1+x2*256;
  $  101.第70节电池均衡积累时间             $    $               $    $  ANS101.BYTE004  $  y=x1+x2*256;
  $  102.第71节电池均衡积累时间             $    $               $    $  ANS102.BYTE004  $  y=x1+x2*256;
  $  103.第72节电池均衡积累时间             $    $               $    $  ANS103.BYTE004  $  y=x1+x2*256;
  $  104.第73节电池均衡积累时间             $    $               $    $  ANS104.BYTE004  $  y=x1+x2*256;
  $  105.第74节电池均衡积累时间             $    $               $    $  ANS105.BYTE004  $  y=x1+x2*256;
  $  106.第75节电池均衡积累时间             $    $               $    $  ANS106.BYTE004  $  y=x1+x2*256;
  $  107.第76节电池均衡积累时间             $    $               $    $  ANS107.BYTE004  $  y=x1+x2*256;
  $  108.第77节电池均衡积累时间             $    $               $    $  ANS108.BYTE004  $  y=x1+x2*256;
  $  109.第78节电池均衡积累时间             $    $               $    $  ANS109.BYTE004  $  y=x1+x2*256;
  $  110.第79节电池均衡积累时间             $    $               $    $  ANS110.BYTE004  $  y=x1+x2*256;
  $  111.第80节电池均衡积累时间             $    $               $    $  ANS111.BYTE004  $  y=x1+x2*256;
  $  112.第81节电池均衡积累时间             $    $               $    $  ANS112.BYTE004  $  y=x1+x2*256;
  $  113.第82节电池均衡积累时间             $    $               $    $  ANS113.BYTE004  $  y=x1+x2*256;
  $  114.第83节电池均衡积累时间             $    $               $    $  ANS114.BYTE004  $  y=x1+x2*256;
  $  115.第84节电池均衡积累时间             $    $               $    $  ANS115.BYTE004  $  y=x1+x2*256;
  $  116.第85节电池均衡积累时间             $    $               $    $  ANS116.BYTE004  $  y=x1+x2*256;
  $  117.第86节电池均衡积累时间             $    $               $    $  ANS117.BYTE004  $  y=x1+x2*256;
  $  118.第87节电池均衡积累时间             $    $               $    $  ANS118.BYTE004  $  y=x1+x2*256;
  $  119.第88节电池均衡积累时间             $    $               $    $  ANS119.BYTE004  $  y=x1+x2*256;
  $  120.第89节电池均衡积累时间             $    $               $    $  ANS120.BYTE004  $  y=x1+x2*256;
  $  121.第90节电池均衡积累时间             $    $               $    $  ANS121.BYTE004  $  y=x1+x2*256;
  $  122.第91节电池均衡积累时间             $    $               $    $  ANS122.BYTE004  $  y=x1+x2*256;
  $  123.第92节电池均衡积累时间             $    $               $    $  ANS123.BYTE004  $  y=x1+x2*256;
  $  124.第93节电池均衡积累时间             $    $               $    $  ANS124.BYTE004  $  y=x1+x2*256;
  $  125.1-8节电池电压采样异常              $    $               $    $  ANS125.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@093b;else if(x1&0x40) y=@093c;else if(x1&0x20) y=@093d;else if(x1&0x10) y=@093e;else if(x1&0x08) y=@093f;else if(x1&0x04) y=@0940;else if(x1&0x02) y=@0941;else if(x1&0x01) y=@0942;else y=@00b4;
  $  126.9-16节电池电压采样异常             $    $               $    $  ANS126.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@093b;else if(x1&0x40) y=@093c;else if(x1&0x20) y=@093d;else if(x1&0x10) y=@093e;else if(x1&0x08) y=@093f;else if(x1&0x04) y=@0940;else if(x1&0x02) y=@0941;else if(x1&0x01) y=@0942;else y=@00b4;
  $  127.17-24节电池电压采样异常            $    $               $    $  ANS127.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@093b;else if(x1&0x40) y=@093c;else if(x1&0x20) y=@093d;else if(x1&0x10) y=@093e;else if(x1&0x08) y=@093f;else if(x1&0x04) y=@0940;else if(x1&0x02) y=@0941;else if(x1&0x01) y=@0942;else y=@00b4;
  $  128.25-32节电池电压采样异常            $    $               $    $  ANS128.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@093b;else if(x1&0x40) y=@093c;else if(x1&0x20) y=@093d;else if(x1&0x10) y=@093e;else if(x1&0x08) y=@093f;else if(x1&0x04) y=@0940;else if(x1&0x02) y=@0941;else if(x1&0x01) y=@0942;else y=@00b4;
  $  129.33-40节电池电压采样异常            $    $               $    $  ANS129.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@093b;else if(x1&0x40) y=@093c;else if(x1&0x20) y=@093d;else if(x1&0x10) y=@093e;else if(x1&0x08) y=@093f;else if(x1&0x04) y=@0940;else if(x1&0x02) y=@0941;else if(x1&0x01) y=@0942;else y=@00b4;
  $  130.41-48节电池电压采样异常            $    $               $    $  ANS130.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@093b;else if(x1&0x40) y=@093c;else if(x1&0x20) y=@093d;else if(x1&0x10) y=@093e;else if(x1&0x08) y=@093f;else if(x1&0x04) y=@0940;else if(x1&0x02) y=@0941;else if(x1&0x01) y=@0942;else y=@00b4;
  $  131.49-56节电池电压采样异常            $    $               $    $  ANS131.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@093b;else if(x1&0x40) y=@093c;else if(x1&0x20) y=@093d;else if(x1&0x10) y=@093e;else if(x1&0x08) y=@093f;else if(x1&0x04) y=@0940;else if(x1&0x02) y=@0941;else if(x1&0x01) y=@0942;else y=@00b4;
  $  132.57-64节电池电压采样异常            $    $               $    $  ANS132.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@093b;else if(x1&0x40) y=@093c;else if(x1&0x20) y=@093d;else if(x1&0x10) y=@093e;else if(x1&0x08) y=@093f;else if(x1&0x04) y=@0940;else if(x1&0x02) y=@0941;else if(x1&0x01) y=@0942;else y=@00b4;
  $  133.65-72节电池电压采样异常            $    $               $    $  ANS133.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@093b;else if(x1&0x40) y=@093c;else if(x1&0x20) y=@093d;else if(x1&0x10) y=@093e;else if(x1&0x08) y=@093f;else if(x1&0x04) y=@0940;else if(x1&0x02) y=@0941;else if(x1&0x01) y=@0942;else y=@00b4;
  $  134.73-80节电池电压采样异常            $    $               $    $  ANS134.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@093b;else if(x1&0x40) y=@093c;else if(x1&0x20) y=@093d;else if(x1&0x10) y=@093e;else if(x1&0x08) y=@093f;else if(x1&0x04) y=@0940;else if(x1&0x02) y=@0941;else if(x1&0x01) y=@0942;else y=@00b4;
  $  135.81-88节电池电压采样异常            $    $               $    $  ANS135.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@093b;else if(x1&0x40) y=@093c;else if(x1&0x20) y=@093d;else if(x1&0x10) y=@093e;else if(x1&0x08) y=@093f;else if(x1&0x04) y=@0940;else if(x1&0x02) y=@0941;else if(x1&0x01) y=@0942;else y=@00b4;
  $  136.89-93节电池电压采样异常            $    $               $    $  ANS136.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@093b;else if(x1&0x40) y=@093c;else if(x1&0x20) y=@093d;else if(x1&0x10) y=@093e;else if(x1&0x08) y=@093f;else if(x1&0x04) y=@0940;else if(x1&0x02) y=@0941;else if(x1&0x01) y=@0942;else y=@00b4;
  $  137.1电池包温度采样线异常              $    $               $    $  ANS137.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@0933;else if(x1&0x40) y=@0934;else if(x1&0x20) y=@0935;else if(x1&0x10) y=@0936;else if(x1&0x08) y=@0937;else if(x1&0x04) y=@0938;else if(x1&0x02) y=@0939;else if(x1&0x01) y=@093a;else y=@00b4;
  $  138.2电池包温度采样线异常              $    $               $    $  ANS138.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@0933;else if(x1&0x40) y=@0934;else if(x1&0x20) y=@0935;else if(x1&0x10) y=@0936;else if(x1&0x08) y=@0937;else if(x1&0x04) y=@0938;else if(x1&0x02) y=@0939;else if(x1&0x01) y=@093a;else y=@00b4;
  $  139.3电池包温度采样线异常              $    $               $    $  ANS139.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@0933;else if(x1&0x40) y=@0934;else if(x1&0x20) y=@0935;else if(x1&0x10) y=@0936;else if(x1&0x08) y=@0937;else if(x1&0x04) y=@0938;else if(x1&0x02) y=@0939;else if(x1&0x01) y=@093a;else y=@00b4;
  $  140.4电池包温度采样线异常              $    $               $    $  ANS140.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@0933;else if(x1&0x40) y=@0934;else if(x1&0x20) y=@0935;else if(x1&0x10) y=@0936;else if(x1&0x08) y=@0937;else if(x1&0x04) y=@0938;else if(x1&0x02) y=@0939;else if(x1&0x01) y=@093a;else y=@00b4;
  $  141.5电池包温度采样线异常              $    $               $    $  ANS141.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@0933;else if(x1&0x40) y=@0934;else if(x1&0x20) y=@0935;else if(x1&0x10) y=@0936;else if(x1&0x08) y=@0937;else if(x1&0x04) y=@0938;else if(x1&0x02) y=@0939;else if(x1&0x01) y=@093a;else y=@00b4;
  $  142.6电池包温度采样线异常              $    $               $    $  ANS142.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@0933;else if(x1&0x40) y=@0934;else if(x1&0x20) y=@0935;else if(x1&0x10) y=@0936;else if(x1&0x08) y=@0937;else if(x1&0x04) y=@0938;else if(x1&0x02) y=@0939;else if(x1&0x01) y=@093a;else y=@00b4;
  $  143.7电池包温度采样线异常              $    $               $    $  ANS143.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@0933;else if(x1&0x40) y=@0934;else if(x1&0x20) y=@0935;else if(x1&0x10) y=@0936;else if(x1&0x08) y=@0937;else if(x1&0x04) y=@0938;else if(x1&0x02) y=@0939;else if(x1&0x01) y=@093a;else y=@00b4;
  $  144.8电池包温度采样线异常              $    $               $    $  ANS144.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@0933;else if(x1&0x40) y=@0934;else if(x1&0x20) y=@0935;else if(x1&0x10) y=@0936;else if(x1&0x08) y=@0937;else if(x1&0x04) y=@0938;else if(x1&0x02) y=@0939;else if(x1&0x01) y=@093a;else y=@00b4;
  $  145.9电池包温度采样线异常              $    $               $    $  ANS145.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@0933;else if(x1&0x40) y=@0934;else if(x1&0x20) y=@0935;else if(x1&0x10) y=@0936;else if(x1&0x08) y=@0937;else if(x1&0x04) y=@0938;else if(x1&0x02) y=@0939;else if(x1&0x01) y=@093a;else y=@00b4;
  $  146.10电池包温度采样线异常             $    $               $    $  ANS146.BYTE004  $  if(x1==0) y=@0045;else if(x1&0x80) y=@0933;else if(x1&0x40) y=@0934;else if(x1&0x20) y=@0935;else if(x1&0x10) y=@0936;else if(x1&0x08) y=@0937;else if(x1&0x04) y=@0938;else if(x1&0x02) y=@0939;else if(x1&0x01) y=@093a;else y=@00b4;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:781 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
