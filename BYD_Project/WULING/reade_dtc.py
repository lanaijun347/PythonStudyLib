import basics as bs
from WULING import file_path as fp
from WULING import wuling_global as gl


def kw2000_return_reade_dtc_tip(xml):
    h_state = xml.xpath('//读故障码参数/故障码状态_历史/text()')[0]
    c_state = xml.xpath('//读故障码参数/故障码状态_当前/text()')[0]
    i_state = xml.xpath('//读故障码参数/故障码状态_间歇/text()')[0]
    dtc_num = xml.xpath('//读故障码参数/DTC字节数/text()')[0]
    dtc_start = xml.xpath('//读故障码参数/DTC起始字节/text()')[0]

    dtc_num_str = str(dtc_num)
    # print(int(h_state, base=2), hex(int(c_state, base=2)), i_state, dtc_num, dtc_start)
    if h_state.encode('UTF-8').isalnum():
        h_state = hex(int(h_state, base=2))
    if c_state.encode('UTF-8').isalnum():
        c_state = hex(int(c_state, base=2))
    if i_state.encode('UTF-8').isalnum():
        i_state = hex(int(i_state, base=2))
    display_dtc = ''
    state_position = ''

    dtc_start = str(int(dtc_start) - 1)
    dtc_num_str = str(dtc_num)
    if dtc_num_str == '2':
        HasFaultType = 0
        HasDTCStatus = 0
    elif dtc_num_str == '3':
        HasFaultType = 1
        HasDTCStatus = 0
    elif dtc_num_str == '2+1':
        HasFaultType = 0
        HasDTCStatus = 1
    elif dtc_num_str == '3+1':
        HasFaultType = 1
        HasDTCStatus = 1
    else:
        HasFaultType = 0
        HasDTCStatus = 0
        tip = 'DTC字节数存在奇怪字符，请查看:' + dtc_num_str + '  ' + gl.g_dict['menu_path']
        bs.debug(fp.debug, tip)

    num = 2
    if HasFaultType:
        num += 1
        if not dtc_num_str.encode('UTF-8').isalnum():
            if '+' in dtc_num_str:
                display_dtc, state_position = dtc_num_str.split('+', 1)
            else:
                tip = 'DTC字节数存在奇怪字符，请查看:' + gl.g_dict['menu_path']
                bs.debug(fp.debug, tip)
        else:
            display_dtc = str(int(dtc_num_str) - 1)
        if HasDTCStatus:
            state_position = '1'
    else:
        if not dtc_num_str.encode('UTF-8').isalnum():
            if '+' in dtc_num_str:
                display_dtc, state_position = dtc_num_str.split('+', 1)
            else:
                display_dtc = dtc_num_str
                tip = 'DTC字节数存在奇怪字符，请查看:' + gl.g_dict['menu_path']
                bs.debug(fp.debug, tip)
        else:
            display_dtc = dtc_num_str
        if HasDTCStatus:
            state_position = '0'
    if HasDTCStatus:
        num += 1
        state_position = '1'
    dtc_num = str(num)

    # if not dtc_num.encode('UTF-8').isalnum():
    #     if '+' in dtc_num:
    #         display_dtc, state_position = dtc_num.split('+', 1)
    #         dtc_num = str(int(display_dtc) + 1)
    #     else:
    #         tip = 'DTC字节数存在奇怪字符，请查看:' + gl.g_dict['menu_path']
    #         bs.debug(fp.debug, tip)
    # else:
    #     display_dtc = dtc_num
    #     state_position = '0'


    gl.g_dict['freeze_dtc_byte'] = '0'.rjust(int(display_dtc) * 2, '0')
    if state_position != '0' and state_position:
        dtc_tip = '\t\t\t\t规律:帧长决定故障码个数，$#BYTE' + dtc_start.rjust(2, '0') + '$#开始表示故障码，每$#' \
                  + dtc_num + '$#个字节表示一个故障码,前$#' + display_dtc + '$#个字节表示码号,后' + state_position \
                  + '个字节表示状态位。\n\n' + '\t\t\t\t状态位-->当前:' + c_state + ',历史:' + h_state \
                  + ',间歇:' + i_state + '\n\n'
    else:
        dtc_tip = '\t\t\t\t规律:帧长决定故障码个数，$#BYTE' + dtc_start.rjust(2, '0') + '$#开始表示故障码，每$#' \
                  + dtc_num + '$#个字节表示一个故障码,前$#' + display_dtc + '$#个字节表示码号,无状态位。\n\n'
    return dtc_tip


def can_return_reade_dtc_tip(xml, dtc_start):
    dtc_tip = ''
    h_state = xml.xpath('//读故障码/DTC状态位_历史/text()')[0]
    c_state = xml.xpath('//读故障码/DTC状态位_当前/text()')[0]
    dtc_num = xml.xpath('//读故障码/DTC字节数/text()')[0]
    dtc_num_str = str(dtc_num)
    if dtc_num_str == '2':
        HasFaultType = 0
        HasDTCStatus = 0
    elif dtc_num_str == '3':
        HasFaultType = 1
        HasDTCStatus = 0
    elif dtc_num_str == '2+1':
        HasFaultType = 0
        HasDTCStatus = 1
    elif dtc_num_str == '3+1':
        HasFaultType = 1
        HasDTCStatus = 1
    else:
        HasFaultType = 0
        HasDTCStatus = 0
        tip = 'DTC字节数存在奇怪字符，请查看:' + dtc_num_str + '  ' + gl.g_dict['menu_path']
        bs.debug(fp.debug, tip)

    state_position = ''
    display_dtc = ''
    num = 3
    if HasFaultType:
        num += 1
        if not dtc_num_str.encode('UTF-8').isalnum():
            if '+' in dtc_num_str:
                display_dtc, state_position = dtc_num_str.split('+', 1)
            else:
                tip = 'DTC字节数存在奇怪字符，请查看:' + gl.g_dict['menu_path']
                bs.debug(fp.debug, tip)
        else:
            display_dtc = str(int(dtc_num_str) - 1)
        if HasDTCStatus:
            state_position = '1'
    else:
        if not dtc_num_str.encode('UTF-8').isalnum():
            if '+' in dtc_num_str:
                display_dtc, state_position = dtc_num_str.split('+', 1)
            else:
                display_dtc = dtc_num_str
                tip = 'DTC字节数存在奇怪字符，请查看:' + gl.g_dict['menu_path']
                bs.debug(fp.debug, tip)
        else:
            display_dtc = dtc_num_str
        if HasDTCStatus:
            state_position = '0'
    dtc_num = str(num)
    # if HasDTCStatus:
    #     num += 1


    if h_state.encode('UTF-8').isalnum():
        h_state = hex(int(h_state, base=2))
    if c_state.encode('UTF-8').isalnum():
        c_state = hex(int(c_state, base=2))
    # display_dtc = ''
    # if not dtc_num.encode('UTF-8').isalnum():
    #     if '+' in dtc_num:
    #         display_dtc, state_position = dtc_num.split('+', 1)
    #         dtc_num = str(int(display_dtc) + 1)
    #     else:
    #         tip = 'DTC字节数存在奇怪字符，请查看:' + gl.g_dict['menu_path']
    #         bs.debug(fp.debug, tip)
    # else:
    #     display_dtc = dtc_num
    #     dtc_num = str(int(display_dtc) + 1)
    #     state_position = '1'
    gl.g_dict['freeze_dtc_byte'] = '0'.rjust(int(display_dtc) * 2, '0')
    if state_position != '0' and state_position:
        dtc_tip = '\t\t\t规律:帧长决定故障码个数，$#BYTE' + dtc_start.rjust(2, '0') + '$#开始表示故障码，每$#' \
                  + dtc_num + '$#个字节表示一个故障码,前$#' + display_dtc + '$#个字节表示码号,后' + state_position \
                  + '个字节表示状态位。\n\n' + '\t\t\t状态位-->当前:' + c_state + ',历史:' + h_state \
                  + '\n\n' + gl.g_dict['dtc_lib'] + '\n\n'
    else:
        dtc_tip = '\t\t\t规律:帧长决定故障码个数，$#BYTE' + dtc_start.rjust(2, '0') + '$#开始表示故障码，每$#' \
                  + dtc_num + '$#个字节表示一个故障码,前$#' + display_dtc + '$#个字节表示码号,无状态位。\n\n' + \
                  gl.g_dict['dtc_lib'] + '\n\n'
    return dtc_tip

