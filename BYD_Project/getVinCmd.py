# _*_ coding:utf-8 _*_
import os


def getFileName(inRootPath):
    fileNameList = []
    for rootPath, dirsPath, fileName in os.walk(inRootPath):
        for strTemp in fileName:
            if os.path.isfile(rootPath + "\\" + strTemp):
                fileNameList.append(rootPath + "\\" + strTemp)
    return fileNameList


if __name__ == '__main__':
    ecuFileName = "ECUInformation.xml"
    strFileName = "StrTable.txt"
    scanCfgName = "SCAN_CFG.xml"
    ecuStrIdWord = "ID_STR_ECU"
    # ecuStrIdWord = "ID_STR_INFOR"
    scanVinWord = "<!--VIN_CODE_ID scan_menu_id"
    vinCfgIdWord = "vin_cfg_id"
    # rootPath = "F:\\popoWork\\JBT\\codeDebug\\TRUMPCHI\\NEWGUANGQICHUANQI\\"
    # rootPath = "D:\\JBT\\诊断项目\\JBT_汽油车型\\M_039_名爵\\上汽名爵-研发文档\\IMS-Decoder\\调试版-名爵\\DiagnosisProgram\\China\\MG\\NEW\\"
    rootPath = 'D:\\JBT\\诊断项目\\JBT_汽油车型\\凯翼汽车-研发文档\\IMS-Decoder\\调试版-凯翼\\China\\Cowin\\'
    vinKeyWordList = ["VIN", "车辆识别号", "车架号"]
    pinList = []
    enterList = []
    scanFileList = []
    spiltList = []
    filePathList = getFileName(rootPath)
    for fileName in filePathList:
        if strFileName in fileName:
            readFile = open(fileName, 'r+', encoding='utf-8')
            while True:
                linesStr = readFile.readline()
                if not linesStr:
                    readFile.close()
                    break
                if ecuStrIdWord in linesStr:
                    for vinWord in vinKeyWordList:
                        if vinWord in linesStr:
                            spiltList = linesStr.split('\t')
                            ecuStrTableID = spiltList[0]
                            print(fileName + ",这个系统可以读取到VIN码, Str_Id为: " + ecuStrTableID)
                            ecuFilePath = fileName.replace(strFileName, ecuFileName)
                            if not os.path.exists(ecuFilePath):
                                continue
                            readEcuFile = open(ecuFilePath, 'r+', encoding='utf-8')
                            while True:
                                linesEcuStr = readEcuFile.readline()
                                if not linesEcuStr:
                                    readEcuFile.close()
                                    break
                                if ecuStrTableID in linesEcuStr:
                                    vinCfgId = linesEcuStr.strip()[21: 23].replace('"', "")
                                    # print(vinCfgId.replace("\"", ""))
                                    scanPath = fileName.replace(strFileName, scanCfgName)
                                    readScanFile = open(scanPath, 'r+', encoding='utf-8')
                                    writeFlag = False
                                    while True:
                                        linesScanStr = readScanFile.readline()
                                        if not linesScanStr:
                                            break
                                        if scanVinWord in linesScanStr:
                                            linesScanStr = linesScanStr.replace("!--", "")
                                            linesScanStr = linesScanStr.replace("--", "")
                                            startCutNum = linesScanStr.find(vinCfgIdWord) + 12
                                            endCutNum = linesScanStr.find("/>") - 1
                                            oldId = linesScanStr[startCutNum: endCutNum]
                                            newScanVin = linesScanStr[0: startCutNum] + vinCfgId + linesScanStr[endCutNum::]
                                            writeScanVin = newScanVin
                                            print(writeScanVin)
                                            writeFlag = True
                                            scanFileList.append(writeScanVin)
                                        else:
                                            scanFileList.append(linesScanStr)
                                    if writeFlag:
                                        readScanFile.seek(0)
                                        readScanFile.truncate()
                                        for writeScan in scanFileList:
                                            readScanFile.write(writeScan)
                                        readScanFile.close()
                                        print(scanPath + " 文件修改成功")
                                    else:
                                        readScanFile.close()
                                        print(scanPath + " 文件无须修改")
                                    scanFileList.clear()
