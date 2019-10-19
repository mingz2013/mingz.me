# python源码分析




## python中的对象

### PyObject




### PyTypeObject

### PyIntObject

PyIntObject对象是不可变对象。

#### 小整数对象
使用对象池技术。集合范围[-5, 257)

#### 大整数对象
PyIntBlock。
python运行环境提供一块内存空间，这些内存空间由这些大整数轮流使用。


### PyStringObject

字符串对象。

PyStringObject是一个拥有可变长度内存的对象。
同时，PyStringObject又是一个不变对象。



### PyListObject

变长对象。

### PyDictObject



### PyCodeObject
.pyc文件。



dis标准库，反编译

反编译pyc
https://github.com/wibiti/uncompyle2

python字节码
https://docs.python.org/2.4/lib/bytecodes.html

## python vm
对x86平台的模拟
### PyFrameObject

### PyFunctionObject




## gc


- 引用计数
- 标记清除






## 参考

### sites
- [http://www.python.org](http://www.python.org)
- [python docs](https://docs.python.org/zh-cn/3/index.html)
- [python 语言参考](https://docs.python.org/zh-cn/3/reference/index.html)

### books
- 《Python源码分析》