| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
| design patterns      | 2019-07-16 12:00 | 2019-07-16 12:00 | design patterns   |



# design patterns

- 抽象
- 继承
- 封装
- 多态


- 模式(Design Patterns)
    是在某情境下，针对某问题的某种解决方案。

- 反模式(Anti-Patterns)
    告诉你如何采用一个不好的解决方案解决一个问题。

--


## 设计原则
- 封装变化。找出应用中可能需要变化之处，把它们独立出来，不要和那些不需要变化的代码混在一起。
- 针对接口编程，而不是针对实现编程。
- 多用组合，少用继承。
- 为了交互对象之间的松耦合设计而努力。
- 类应该对扩展开放，对修改关闭。
- 要依赖抽象，不要依赖具体类。
- 最少知识原则：只和你的密友谈话。
- 好莱坞原则：别调用（打电话给）我们，我们会调用（打电话给）你。
- 一个类应该只有一个引起变化的原因。

- [策略模式(Strategy Pattern)](./strategy-pattern.md)
定义了算法族，分别封装起来，让它们之间可以互相替换，此模式让算法的变化独立于使用算法的客户。
- [观察者模式(Observer)](./observer-pattern.md)
定义了对象之间的一对多依赖，这样一来，当一个对象改变状态时，它的所有依赖者都会收到通知并自动更新。
- [装饰者模式(Decorator Pattern)](./decorator-pattern.md)
动态的将责任附加到对象上。若要扩展功能，装饰者提供了比继承更有弹性的替代方案。
- [工厂方法模式(Factory Pattern)](./factory-pattern.md)
定义了一个创建对象的接口，但由子类决定要实例化的类是哪一个。工厂方法让类把实例化推迟到子类。
- [抽象工厂模式（Abstract Factory Pattern）](./abstract-factory-pattern.md)
提供一个接口，用于创建相关或依赖对象的家族，而不需要明确指定具体类。
- [单件模式(Singleton Pattern)](./singleton-pattern.md)
确保一个类只有一个实例，并提供一个全局访问点。
- [命令模式(Command Pattern)](./command-pattern.md)
将“请求”封装成对象，以便使用不同的请求、队列或者日志来参数化其他对象。命令模式也支持可撤销的操作。
- [适配器模式(Adapter Pattern)](./adapter-pattern.md)
将一个类的接口，转换成客户端期望的另一个接口。适配器让原本接口不兼容的类可以合作无间。
- [外观者模式(Facade Pattern)](./facade-pattern.md)
提供了一个统一的接口，用来访问子系统中的一群接口。外观定义了一个高层接口，让子系统更容易使用。
- [模板方法模式(Template Method Pattern)](./template-method-pattern.md)
在一个方法中定义一个算法的骨架，而将一些步骤延迟到子类中。模板方法使得子类可以在不改变算法结构的情况下，重新定义算法中的某些步骤。
- [迭代器模式(Iterator Pattern)](./iterator-pattern.md)
提供一种方法顺序访问一个聚合对象中的各个元素，而又不暴露其内部的表示。
- [组合模式(Composite Pattern)](./composite-pattern.md)
允许你将对象组合成树形结构来表现“整体/部分”层次结构。组合能让客户以一致的方式处理个别对象以及对象组合。
- [状态模式(State Pattern)](./state-pattern.md)
允许对象在内部状态改变时改变它的行为，对象看起来好像修改了它的类。
- [代理模式(Proxy Pattern)](./proxy-pattern.md)
为另一个对象提供一个替身或占位符以控制对这个对象的访问。
- [复合模式(compound pattern)](./compound-pattern.md)
复合模式结合两个或以上的模式，组成一个解决方案，解决一再发生的一般性问题。

    - [MVC(Model-View-Controller)](./mvc-pattern.md)
    
        MVC是复合模式，结合了观察者模式、策略模式和组合模式。
        模型使用观察者模式，以便观察者更新，同时保持两者之间解耦。
        控制器是视图的策略，视图可以使用不同的控制器实现，得到不同的行为。
        视图使用组合模式来实现用户界面，用户界面通常组合了嵌套的组件，像面板、框架和按钮。
        这些模式携手合作，把MVC模型的三层解耦，这样可以保持设计干净又有弹性。
        适配器模式用来将新的模型适配成已有的视图和控制器。




其他设计模式

- [桥接](./bridge-pattern.md)
使用桥接模式（Bridge Pattern）不只改变你的实现，也改变你的抽象。

- [生成器模式](./builder-pattern.md)
使用生成器模式（Builder Pattern）封装一个产品的构造过程，并允许按步骤构造。

- [责任链](./chain-of-responsibility-pattern.md)
当你想要让一个以上的对象有机会能够处理某个请求的时候，就是用责任链模式（Chain of Responsibility Pattern）。

- [蝇量](./flyweight-pattern.md)
如果想让某个类的一个实例能用来提供许多“虚拟实例”，就使用蝇量模式（Flyweight Pattern）。

- [解释器](./interpreter-pattern.md)
使用解释器模式（Interpreter Pattern）为语言创建解释器。

- [中介者](./mediator-pattern.md)
使用中介者模式（Mediator Pattern）来集中相关对象之间复杂的沟通和控制方式。

- [备忘录](./memento-pattern.md)
当你需要让对象返回之前的状态时（例如，你的用户请求“撤销”），就使用备忘录模式（Memento Pattern）。

- [原型](./prototype-pattern.md)
当创建给定类的实例的过程很昂贵或很复杂时，就使用原型模式（Prototype Pattern）。

- [访问者](./visitor-pattern.md)
当你想要为一个对象的组合增加新的能力，且封装并不重要时，就使用访问者模式（Visitor Pattern）。





## 参考资料


### books
- 《大话设计模式》