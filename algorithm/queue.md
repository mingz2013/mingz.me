| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
| queue            | 2019-07-01 12:00 | 2019-07-01 12:00 | algorithm         |



# queue


队列（Queue）是只允许在一端进行插入操作，而在另一端进行删除操作的线性表。

队列式一种先进先出（First In First Out）的线性表，简称FIFO。允许插入的一端称为队尾，允许删除的一端称为队头。




```
ADT 队列(Queue)
Data
    同线性表。元素具有相同的类型，相邻元素具有前驱和后继关系。
Operation
    InitQueue(*Q): 初始化操作，建立一个空队列Q。
    DestroyQueue(*Q): 若队列Q存在，则销毁它。
    ClearQueue(*Q): 将队列Q清空。
    QueueEmpty(Q): 若队列Q为空，返回true，否则返回false。
    GetHead(Q, *e): 若队列Q存在且非空，用e返回队列Q的队头元素。
    EnQueue(*Q, e): 若队列存在，插入新元素e到队列Q中并成为队尾元素。
    DeQueue(*Q, *e): 删除队列Q中队头元素，并用e返回其值。
    QueueLength(Q): 返回队列Q的元素个数。
endADT

```

## 循环队列

所以解决假溢出的办法就是后面满了，就再重头开始，也就是头尾相接的循环。

我们把队列的这种头尾相接的顺序存储结构称为循环队列。


## 队列顺序存储的不足


## 队列的链式存储结构及实现

队列的链式存储结构，其实就是线性表的单链表，只不过它只能尾进头出而已，我们把它简称为链队列。


```C
typedef int QElemType; /* QElemType类型根据实际情况而定，这里假设为int */
typedef struct QNode /* 节点结构 */
{
    QElemType data;
    struct QNode *next;
}QNode, *QueuePtr;

typedef struct /* 队列的链表结构 */
{
    QueuePtr front, rear; /* 队头，队尾指针 */
}LinkQueue;

```

### 队列的链式存储结构 入队 出队 操作


# 总结

- 顺序队列
    - 循环队列
- 链队列



# 参考资料
## books
- 《大话数据结构》