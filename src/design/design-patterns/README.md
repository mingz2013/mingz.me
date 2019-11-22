| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
| design patterns      | 2019-07-16 12:00 | 2019-11-20 12:00 | design patterns   |



# design patterns


## 设计模式概述


在20世纪70年代，Christopher Alexander提出了城市建筑的模式，他认为：模式就是描述一个不断发生的问题和该问题的解决方案。

随后，Erich Gamma，Richard Helm，Ralph Johnson和John Vlissides写了一本著名的参考书《设计模式：可复用面向对象软件的基础》。后人也因为这本书称这4个人为4人组，将这本书中描述的模式称为GoF（Gang of Four）设计模式。

在这本书中，4人组将设计模式定义为：对被用来在特定场景下解决一般设计问题的类和互相通信的对象的描述。

通俗地说，可以把设计模式理解为对某一类问题的通用解决方案。



所谓“模式”是对问题和解决方案的基本内容的描述，所以该解决方案可以在不同的设置下复用。模式不是一个详细描述。实际上，可以把它当做积累的智慧和经验的描述。它是对一般问题的一个经过多次提炼的解决方案。


模式对面向对象的软件设计有着巨大的影响。除了作为常见问题的经验检验的解决方案外，模式已经成为了谈论设计必用词汇。因此，可以用对所用模式的描述来解释我们的设计。


## 设计模式与面向对象
设计模式通常和面向对象设计相关。现有的模式通常依赖于对象的特性，例如继承或多态，以提供通用性。

但是，模式中封装经验的一般原则对于任何的软件设计都适用。

模式是对其他设计师的知识和经验的一种复用。




软件设计最大的敌人，就是应付需求不断的变化。

如果从软件设计方法的角度出发，要在开发过程中应对未来可能的变化，解决之道则是——封装变化。

设计模式是“封装变化”思想的最佳阐释。

封装变化是开放封闭原则的具体体现。



## 设计模式的应用

开始设计一个系统时，很难确定是否需要一个特定的模式。因此，在设计过程中使用模式通常包括：进行设计，体验问题，然后找到一个可用的模式。

我们当然有可能在原始模式书中所记载的23种通用模式中找到答案，但有时候我们遇到的问题是一个不同的问题，那么你会发现，在已提出的数百个模式中寻找一个合适的解决方案不是件容易的事。

模式是一个绝妙的想法，但需要知道每个模式适用的情况，因此要在软件设计中不断积累经验才能学会有效地运用模式。缺乏经验的程序员，即便是阅读过介绍模式的书籍，也会苦于确定是应该复用一个模式，还是应该开发一个专门的解决方案。


学习设计模式最重要的是理解，而不是生搬硬套。



要切记不能滥用设计模式，尤其在一些简单系统中。

如果系统中的对象都用工厂模式创建，系统中的工具类都设计成Singleton，两个对象间的通信还要硬加上一层Mediator等都是不可取的，只能毫无价值的提高系统复杂度，反而不利于系统的理解与维护。

除最初的设计外，重构也是一个很好的时机，系统架构设计师可以在重构的时候根据需要逐步应用设计模式改良系统，提高系统的维护性和复用性。




## 设计模式分类





## 23种经典设计模式

- [创建型（creational）](./creational/README.md)
    - [Abstract Factory 抽象工厂](./creational/abstract_factory.md)
    - [Builder 生成器](./creational/builder.md)
    - [Factory Method 工厂方法](./creational/factory_method.md)
    - [Prototype 原型](./creational/prototype.md)
    - [Singleton 单件](./creational/singleton.md)
- [结构型（structural）](./structural/README.md)
    - [Adapter 适配器](./structural/adapter.md)
    - [Bridge 桥接](./structural/bridge.md)
    - [Composite 组成](./structural/composite.md)
    - [Decorator 装饰](./structural/decorator.md)
    - [Facade 外观](./structural/facade.md)
    - [Flyweight 享元](./structural/flyweight.md)
    - [Proxy 代理](./structural/proxy.md)
- [行为型（behavioral）](./behavioral/README.md)
    - [Chain of Responsibility 职责链](./behavioral/chain_of_responsibility.md)
    - [Command 命令](./behavioral/command.md)
    - [Interpreter 解释器](./behavioral/interpreter.md)
    - [Iterator 迭代器](./behavioral/iterator.md)
    - [Mediator 中介者](./behavioral/mediator.md)
    - [Memento 备忘录](./behavioral/memento.md)
    - [Observer 观察者](./behavioral/observer.md)
    - [State 状态](./behavioral/state.md)
    - [Strategy 策略](./behavioral/strategy.md)
    - [Template Method 模板方法](./behavioral/template_method.md)
    - [Visitor 访问者](./behavioral/visitor.md)


