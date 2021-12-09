import requests
import json


def translation(content):
    url = 'http://fanyi.youdao.com/translate?smartresult=dict&smartresult=rule'
    data= {}
    data['i'] = content
    data['from'] = 'AUTO'
    data['to'] ='AUTO'
    data['smartresult'] ='dict'
    data['client'] = 'fanyideskweb'
    data['salt'] = '16097414142067'
    data['sign'] = '0b12bec44b13486421d5cbf67b06d80c'
    data['lts'] = '1609741414206'
    data['bv'] = '9ef72dd6d1b2c04a72be6b706029503a'
    data['doctype'] = 'json'
    data['version'] = '2.1'
    data['keyfrom'] = 'fanyi.web'
    data['action'] = 'FY_BY_CLICKBUTTION'
    headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)"
                             " Chrome/84.0.4147.125 Safari/537.36"}
    response = requests.post(url=url, data=data, headers=headers)
    # print(response.status_code)
    aa = response.content.decode()
    print(aa)
    json_data = json.loads(response.content.decode())
    print("单词:{0} 翻译:{1}".format(content, json_data["translateResult"]["st_tag"]))


if __name__ == '__main__':
    translation('system')
