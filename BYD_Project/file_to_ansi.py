import os
import codecs


def rewrite(path):
    for root, dirs, files in os.walk(path):
        for file in files:
            if '.h' in file or '.c' in file:
                path_0 = root + '\\' + file
                f = codecs.open(path_0, 'r', 'gbk', 'ignore')
                utfstr = f.read()
                f.close()

                # 把UTF8字符串转码成ANSI字符串
                outansestr = utfstr.encode('mbcs')

                # 使用二进制格式保存转码后的文本
                f = open(path_0, 'wb')
                f.write(outansestr)
                f.close()
                print(path_0)


if __name__ == "__main__":
    path = r'D:\测试\function'
    rewrite(path)