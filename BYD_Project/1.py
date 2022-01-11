    try:
        dsstr_list = getdsname(dict_dsname, ba.hextostr_new(row_dict["ds_txtid"], 8))
        EXPRESS=dict_EXPRESS[ba.hextostr_new(row_dict["express_id"],8)].replace("\+0","")
        if EXPRESS.find("@")!=-1:
            min = ""
            max = ""
            str_list=gl.get_value("str_list")
            dict_dsstr=gl.get_value("dict_dsstr")
            strid_list = re.findall(r'@([0-9a-fA-F]{4})', EXPRESS)
            for  strid in strid_list:
                if strid not in str_list:
                    str_list.append(strid)
                    strid=strid.replace("@","")
                    caption1="IMS_DSSTRING_"+strid
                    sys_text1=dict_dsstr[caption1]
                    a = caption1.upper() + '\t' + sys_text1 + '\tx\n'
                    ba.write_StrTable(a, strtable_path)
                    gl.set_value("str_list",str_list)
                else:
                    pass
    except:
        return 0
    try:
        EXPRESS = dict_EXPRESS[ba.hextostr_new(row_dict["express_id"], 8)].replace("\+0", "")
        pre = re.compile(u'[\u4e00-\u9fa5\u3002\uff1b\uff0c\uff1a\u201c\u201d\uff08\uff09\u3001\uff1f\u300a\u300b]')
        res = re.findall(pre, EXPRESS)
        if res != []:
            for k in res:
                zw_str_id = gl.get_value("zw_str_id")
                strid1_num = 0x5000 + zw_str_id
                strid1 = "@%X" % strid1_num
                caption1 = "IMS_DSSTRING_" + "%X" % strid1_num
                a = caption1.upper() + '\t' + k + '\tx\n'
                EXPRESS = EXPRESS.replace(k, strid1)
                ba.write_StrTable(a, strtable_path)
                gl.set_value("zw_str_id", zw_str_id + 1)
    except:
        return 0

if __name__ == "__main__":
    pass