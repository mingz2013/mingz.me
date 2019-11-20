| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
| design      | 2019-11-20 12:00 | 2019-11-20 12:00 | design   |


# 设计

> 设计没有标准，只有目标。如果硬要指定一个标准，那么标准就是快捷，适用与优雅。



## 计划的设计与演进的设计

### 计划的设计 
- 要求我们首要考虑的不是编码，而是整个系统的架构。了解客户的需求。把握开发的进度。遵循统一的设计规范与原则，并对可能存在的技术难点进行预研。确定每一个模块的功能，以及模块间的关系和系统分布的层次。
- 计划的设计则需要全面地把控系统的整体需求，衡量所有设计要素与约束，以求满足系统所有的功能性需求与非功能性需求。
- 计划的设计会充分地考虑系统的可扩展性，将未来的变化纳入到一个可控的范围内。这种前瞻式设计需要软件架构师的匠心独运，然而一不小心，就会导致***设计过度***。

### 演进的设计
- 是一个渐进的过程。不要求前期的设计有多么的完美，实现的需求有多么的完整，仅需要把现阶段考虑的问题通过编码实现就可以了。随着演进的深入，对需求更加准确的理解，编码也会随之而修正，整个设计会逐渐丰满起来，经过逐步地演化，最后趋于完美。
- 演进的设计更接近***敏捷的开发***理念，提倡简单设计与设计重构，从而应对快速开发的要求，满足可能的需求变化。
- 演进的设计可以有效地避免这种设计上的浪费，但我们却不可忽视它可能带来的***重构成本***。



两者并非水火不容，而是可以取长补短。

无论采用何种设计方式，最关键的还是在于客户的需求。

软件开发中，唯一不变的就是变化。变化是常态，我们无法规避。

软件架构的地位举足轻重，甚至在很多时候，它是项目成败与否的关键。




## 架构的标准

根据IEEE的定义，软件架构（Architecture）是以组件，组件之间的关系，组件与环境之间的关系为内容的某一系统的基本组织结构，以及指导上述内容设计与演化的原理。

而Martin Fowler则认为，架构是系统核心而又稳定的组成部分，是系统构建的基础。作为软件设计的高层部分，架构从整体到部分对软件系统进行了最高层次的划分，它是支撑更细节设计的框架。因而，我们有时候也将软件架构称为高层设计（High-level Design）或顶层设计（Top-level Design）。


一般而言，架构需要关注如下内容。
1. 程序组织（Program Organization）
2. 数据设计（Data Design）
3. 安全性（Security）
4. 性能（Performance）
5. 可扩展性（Scalability）
6. 可靠性（Reliability）
7. 可用性（Usability）


## 过度设计，还是简单设计
Kent Beck在《解析极限编程-拥抱变化》中为简单系统制定了4个评价标准，依次为（最重要的排在最前面）：

- 通过所有测试
- 体现所有意图
- 避免重复
- 类或者方法数量最少


## 需要设计模式吗

如果仅考虑实现当前的功能需求，还需要设计模式吗？坦白的说，我并不认为设计模式与过度设计有关。过度设计的导火索是设计模式的滥用。很多时候，合理的利用设计模式反而能使程序结构简单化，特别是，它能够让开发过程更简单。


需要设计模式吗？答案看来是不言而喻。关键一点是需要确定模式的应用是否过度？

世界上很多天才横溢的程序员，可以在一段代码中包含6种设计模式，也可以不利用模式就能把设计做得很好。

我们需要的是有效的设计。学习设计模式，不是为了炫耀，吹嘘，不是为了故作艰深，而是为了改善我们的设计，它可以为某种功能实现提供参考模型，设计方法以及应用范例。

我们不需要奉GoF的设计模式为圭（gui）臬（nie），盲目地膜拜它，合理地运用设计模式，才是明智的抉择。


## 重构是必然的

适时地重构不仅能改善系统的整个架构，也能为今后的设计提供指引。甚至在数度重构之后，因为设计的合理性，会成为今后项目开发的框架平台或者公共类库。

如果从纯技术的角度来看，重构非但必然，而且重要。

引入重构技术，完全符合简单设计的原则。

对于系统架构师而言，重构技术能够降低糟糕的设计给软件开发带来的风险。

软件设计难以一蹴而就，演进的设计证明了这一点。即使采用计划的设计，同样需要在设计过程中对架构完成重构。



## 子主题

- [oo](./oo/README.md)
- [design patterns](./design-patterns/README.md)
    - [创建型（creational）](./design-patterns/creational/README.md)
        - [Factory Method](./design-patterns/creational/factory_method.md)
        - [Abstract Factory](./design-patterns/creational/abstract_factory.md)
        - [Builder](./design-patterns/creational/builder.md)
        - [Prototype](./design-patterns/creational/prototype.md)
        - [Singleton](./design-patterns/creational/singleton.md)
    - [结构型（structural）](./design-patterns/structural/README.md)
        - [Adapter](./design-patterns/structural/adapter.md)
        - [Bridge](./design-patterns/structural/bridge.md)
        - [Composite](./design-patterns/structural/composite.md)
        - [Decorator](./design-patterns/structural/decorator.md)
        - [Facade](./design-patterns/structural/facade.md)
        - [Flyweight](./design-patterns/structural/flyweight.md)
        - [Proxy](./design-patterns/structural/proxy.md)
    - [行为型（behavioral）](./design-patterns/behavioral/README.md)
        - [Interpreter](./design-patterns/behavioral/interpreter.md)
        - [Template Method](./design-patterns/behavioral/template_method.md)
        - [Chain of Responsibility](./design-patterns/behavioral/chain_of_responsibility.md)
        - [Command](./design-patterns/behavioral/command.md)
        - [Iterator](./design-patterns/behavioral/iterator.md)
        - [Mediator](./design-patterns/behavioral/mediator.md)
        - [Memento](./design-patterns/behavioral/memento.md)
        - [Observer](./design-patterns/behavioral/observer.md)
        - [State](./design-patterns/behavioral/state.md)
        - [Strategy](./design-patterns/behavioral/strategy.md)
        - [Visitor](./design-patterns/behavioral/visitor.md)








## 参考资料


### books
- 《软件工程》第9版
- 《系统架构师》第2版
- 《软件框架设计的艺术》

- 《敏捷软件开发 原则，模式与实战》
- 《代码整洁之道》

- 《设计模式：可复用面向对象软件的基础》
- 《软件设计精要与模式》第2版

- 《大话设计模式》
- 《head first设计模式》

- 《Python编程实战 运用设计模式、并发和程序库创建高质量程序》
- 《精通Python设计模式》

- 《JavaScript设计模式》









