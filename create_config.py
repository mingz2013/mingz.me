# -*- coding: utf-8 -*-
"""
@FileName: create_config.py
@Time: 11/20/20 3:40 AM
@Author: zhaojm

Module Description

"""


import os


root_result = {}


def find_dir(root):
    # if not root:
    #     return root_result
    dirs = root.split('/')
    dirObj = None
    for index, dir in enumerate(dirs):
        if dir == '.':
            dirObj = root_result
        else:
            dir = '/'.join(dirs[2:index+1])
            if dir not in dirObj:
                dirObj[dir] = {}
            dirObj = dirObj[dir]

    return dirObj


def findAllFile(base):
    for root, dirs, fs in os.walk(base):
        print(root, dirs, fs)
        # for f in fs:
        #     yield root, f

        def filter(f):
            # if f == 'README.md':
            #     f = '/'
            #     return '/'.join(root.split('/')[2:])
            return '/'.join(root.split('/')[2:]) + '/' + f

        fs = [filter(f) for f in fs if f.endswith('md')]

        if len(fs) > 0:

            dirObj = find_dir(root)

        # for dir in dirs:
        #     if dir not in dirObj:
        #         dirObj[dir] = {}

            # for f in fs:
            #     # if f not in dirObj:
            #     # if f.endswith('md'):
            #     dirObj[f] = f

            dirObj['__fs__'] = fs







def do_result(obj):
    result = []
    for k,v in obj.items():
        if k == '__fs__':
            result.extend([
                [
                    "/" + f[:-3],
                    f.split('/')[-1][:-3]
                 ]
                for f in v if f.split('/')[-1] != 'README.md'
            ])
        elif k == '':
            result.extend(do_result(v))
        else:
            if not k:
                k = '/'
            result.append({
                'title': k,
                'path': "/" + k + '/',
                'children': do_result(v)
             })
    return result


def main():
    base = './docs/'
    findAllFile(base)

    global root_result
    root_result = do_result(root_result)


    # root_result = root_result[0]['children']

    print(root_result)

if __name__ == '__main__':
    main()