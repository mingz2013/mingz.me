| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
| oo      | 2019-11-20 12:00 | 2019-11-20 12:00 | oo   |


# 面向对象

面向对象思想为软件设计与开发赋予了哲学的意义。

## 对象

面向对象思想的精要，在于“一切皆为对象”的本质。

那么，什么是对象呢？一般认为，对象是一个真实的或抽象的元素，它包含了描述信息的属性以及处理对象信息的行为。行为在对象定义时，又表现为方法。

在进行面向对象设计时，开发者就是造物主，是抟（tuan）土造人的女娲，对象的一切要素均掌握在开发者手中。


然而，一个好的开发者却不能随心所欲地“创造”对象，他们应该是系统需求的忠实执行者，对象的属性与行为，特别是对象的粒度都必须由系统需求决定。


### 属性和方法

从词义学的角度来看，属性偏向于名词的范畴，行为则具有动词的词性。


虽然说对象是由属性和行为组成的，但并不代表它们必须被对象同时拥有，仅仅拥有属性或者行为的对象在系统设计中比比皆是。之所以如此定义，或者是由对象的自身特质所决定的，也可能根据设计的要求而定。

对象的属性与行为并非一成不变，根据实际情况，同一种对象具有的属性和行为可能会发生变化。



## 什么是面向对象？

以一种我们可以理解的抽象，去构造。

对于面向对象思想的理解，就是将这个对象看做一个整体。看成一个物体。是一种抽象思维。全靠想象。想象力有多丰富，程序里对象的世界就有多精彩。

大部分人的想象力都没有太丰富，大部分都是在用我们能理解的东西做类比。


在面向过程中有“程序=算法+数据结构”的经典总结，面向对象也有类似的总结：“程序=对象+交互”。其中对象就是具体存在的事物，而交互则是事物之间的相互作用，互动等。


## 为什么要面向对象？

面向对象思想的核心是“可扩展性”！有了面向对象，我们可以将变化带来的影响控制在有限的范围内，避免产生全流程或者大范围的影响，从而降低风险。


面向对象是一种以“对象”作为中心的编程思想，其中对象的含义可以理解为“存在的东西”。


面向对象这种对现实世界的模拟的思想，其本质上就是“人的思想”，这是一个质的飞跃，意味着程序员可以按照人的思想来观察，分析，设计系统。


人大部分的时间都是按照面向对象的方式进行思考的，而且人类世界主要也是按照面向对象的方式进行运转的，所以说，“面向对象”其实更加符合人的思维习惯。



## 面向对象的应用范围


### 能做什么
经常变化的地方就是面向对象应用的地方。


### 不能做什么
图1-3所示的是软件质量属性的全图。

![软件质量属性全图](./images/design-01.png)

可以看到，“可扩展性”只是软件质量属性中很小的一部分，其他的属性都不是面向对象能够解决的。

明白了面向对象的特点和适用范围，是面向对象的关键。

经过前面的分析，我们知道，面向对象不是瑞士军刀，而只是一个普通的锤子而已，千万不要拿着锤子到处敲！




## 面向对象迷思

### 面向对象会导致性能降低？

如果纯粹考虑CPU，那么肯定是要有些影响的，编译器再怎么优化，也还是会有一些影响的。可执行文件也会变大。

但是，如果是在一个系统中，有网络，有IO，那么面向对象的CPU消耗可能就显得微不足道了。

看设计。


### 面向对象语言=面向对象编程？

其实，不管是“面向过程”还是“面向对象”，都是一种思维方式，一种思考问题的方式，而和具体的语言没有关系。

用C语言一样可以写出面向对象的程序，用Java也可以写出面向过程的程序。





## 面向对象核心要素，特征

面向对象思想包括三个核心要素，特征，即封装（Encapsulation），继承（Inheritance）与多态（Polymorphism），它将面向对象技术推到了思想的境界。

一言以蔽之，对象的封装，继承，多态，保证了对象的高内聚与低耦合，有利于软件模块的可复用，保证了程序的可扩展，这正是面向对象思想体现在软件设计中的最大优势。



### 封装
封装，就是合理的隐藏与公开。

一个物体需要只需要暴露外界需要的功能和属性。其他的操作封装到内部自己去处理，不需要告诉外界。这里就介绍了封装。   

### 继承
在面向对象思想中，继承往往不是被低估，而是被过分地滥用，尤其对于初学者，总是错误地估计继承的威力，从而导致子类的泛滥，或者营造出如森林一般的继承体系。这是很可怕的。


GOF认为，我们应该优先使用合成/聚合，而不是使用继承，这就是所谓的“合成/聚合复用原则”。


继承一般是为了复用代码，但是一般都用不好。使设计变得复杂。

一般推荐用组合。


继承，所有用继承的地方，好像目的都是要复用代码。
但是好像只要用了继承，就写不好代码的样子。根本不会用继承。
好像需要用继承的地方，其实只是想要用接口的。
想用继承的时候，要想一想是不是换成定义接口试试。



### 多态
多态（Polymorphism），是指对象在不同时刻体现为不同类型的能力，它与对象的抽象与继承相关。

抽象的类型，可以因为实现的不同体现为不同的类型，从而执行不同的功能。


多态保证了程序的灵活性，因为它将对象形态的决定权交给了调用者。


定义接口。

多态，大概是关于公共接口相关的，一组对象拥有同一组相同的接口，然后可以在同一个地方调用这些对象的相同的接口。实际上会导致每个对象做自己对应的事情。这就是多态。

但是在python中，鸭子类型，看起来像，那就是。不需要显式的定义接口。
而在Go中，需要定义接口，但是不需要显式的继承接口。





## 内聚与耦合

### 内聚

#### 内聚是什么

内聚指一个模块内部元素彼此结合的紧密程度。

你可以用“内聚”来判断一个函数设计是否合理，一个类设计是否合理，一个接口设计是否合理，一个包设计是否合理，一个模块/子系统设计是否合理。

“凝聚力”就是“内聚”的核心思想。


#### 内聚的分类

内聚共有7种，以下各种形式内聚的内聚性越来越高。

- 偶然内聚（Coincidental cohesion）
- 逻辑内聚（Logical cohesion）
- 时间内聚（Temporal cohesion）
- 过程内聚（Procedural cohesion）
- 信息内聚（Informational/Communicational cohesion）
- 顺序内聚（Sequential cohesion）
- 功能内聚（Functional cohesion）


### 耦合

#### 耦合是什么
耦合（或者称依赖）是程序模块相互之间的依赖程度。

从定义来看，耦合和内聚是相反地：内聚关注模块内部的元素结合程度；耦合关注模块之间的依赖程度。

模块和内聚里面提到的模块一样，耦合中的模块其实也是可大可小的。常见的模块有：函数，类，包，子模块，子系统等



#### 耦合的分类
- 无耦合（No coupling）
- 消息耦合（Message coupling）
- 数据耦合（Data coupling）
- 数据结构耦合（Data-structured coupling）
- 控制耦合（Control coupling）
- 外部耦合（External coupling）
- 全局耦合（Globaling coupling）
- 内容耦合（Content coupling）


### 高内聚低耦合

为什么要高内聚低耦合？

降低复杂性。



## 面向对象设计原则


概括地讲，面向对象设计原则仍然是面向对象思想的体现。是核心要素的解释。

面向对象设计的原则是对面向对象思想的提炼，它比面向对象思想的核心要素更具可操作性，但与设计模式相比，却又更加的抽象，是设计精神要义的抽象概括。

形象的讲，面向对象思想就像是法理的精神，设计原则则相当于基本宪法，而设计模式就好比是各式各样的成文法了。

面向对象经过数十年的发展，不同的人在不同的时期都提出了言简意赅的设计原则，它们为我们的面向对象设计树立了正确的方向，提供了设计的依据和基本准则。



- 封装变化。找出应用中可能需要变化之处，把它们独立出来，不要和那些不需要变化的代码混在一起。
- 针对接口编程，而不是针对实现编程。
- 多用组合，少用继承。
- 为了交互对象之间的松耦合设计而努力。
- 要依赖抽象，不要依赖具体类。
- 最少知识原则：只和你的密友谈话。
- 好莱坞原则：别调用（打电话给）我们，我们会调用（打电话给）你。





### 面向对象设计原则

其中，开发人员广泛接受的设计原则包含五大原则，分别为单一职责原则，开放封闭原则，Liskov替换原则，依赖倒置原则，接口隔离原则。

五个。单一职责原则，开放封闭原则，Liskov替换原则。依赖倒置原则，接口隔离原则。

#### 单一职责原则(SRP)

单一职责原则

就一个类而言，应该仅有一个引起它变化的原因。
就一个类而言，应该只专注于做一件事和仅有一个引起变化的原因。


职责

在SRP中，我们把职责定义为 '变化的原因'（a reason for change）。如果你能够想到多于一个的动机去改变一个类，那么这个类具有多于一个的职责。有时，我们很难注意到这一点。我们习惯于以组的形式去考虑职责。


变化的轴线仅当变化实际发生时才具有真正的意义。如果没有征兆，那么去应用SRP，或者任何其他原则都是不明智的。



假如程序中的一处改动就会发生连锁反应，导致一系列相关模块的改动，那么设计就具有僵化性的臭味。OOP建议我们应该对系统进行重构，这样以后对系统再进行那样的改动时，就不会导致更多的修改。如果正确地应用OCP，那么以后再进行同样的改动时，就只需要添加新的代码，而不必改动已经正确运行的代码。

也许，这看起来像是众所周知的可望而不可即的美好理想——然而，事实上却有一些相对简单并且有效的策略可以帮助接近这个理想。


##### 描述
遵循开放-封闭原则设计出的模块具有两个主要的特征。它们是：
1 “对于扩展是开放的”（Open for extension）。
这意味着模块的行为是可以扩展的。当应用的需求改变时，我们可以对模块进行扩展，使其具有满足那些改变的新行为。换句话说，我们可以改变模块的功能。

2 “对于更改是封闭的”（Closed for modification）
对模块行为进行扩展时，不必改动模块的源代码或者二进制代码。模块的二进制可执行版本，无论是可链接的库，DLL或者Java的.jar文件，都无需改动。


这两个特征好像是互相矛盾的。扩展模块行为的通常方式就是修改该模块的源代码。不允许修改的模块常常都被认为是具有固定的行为。

怎么可能在不改动模块源代码的情况下去改变它的行为呢？怎样才能在无需对模块进行改动的情况下就改变它的功能呢？

关键是抽象


##### 预测变化和"贴切的"结构

一般而言，无论模块是多么的“封闭”，都会存在一些无法对之封闭的变化。没有对于所有的情况都贴切的模型。

既然不可能完全封闭，那么就必须有策略的对待这个问题。也就是说，设计人员必须对于他设计的模块应该对哪种变化封闭做出选择。他必须先猜测出最有可能发生的变化种类，然后构造抽象来隔离那些变化。

根据经验猜测那些应用程序在生长历程中有可能遭受的变化。如果开发人员猜测正确，他们就获得成功。如果他们猜测错误，他们会遭受失败。并且在大多数情况下，他们都会猜测错误。

同时，遵循OCP的代价也是昂贵的。创建正确的抽象是要花费开发时间和精力的。同时，那些抽象也增加了软件设计的复杂性。开发人员有能力处理的抽象的数量也是有限的。显然，我们希望把OCP的应用限定在可能会发生的变化上。

我们如何知道哪个变化有可能发生呢？我们进行适当的调查，提出正确的问题，并且使用我们的经验和一般常识。最终，我们会一直等到变化发生时才采取行动。


##### 结论
在许多方面，OCP都是面向对象设计的核心所在。遵循这个原则可以带来面向对象技术所声称的巨大好处（也就是，灵活性，可重用性以及可维护性）。然而，并不是说只要使用一种面向对象语言就是遵循了这个原则。

对于应用程序的每个部分都肆意地进行抽象同样不是一个好主意。正确的做法是，开发人员应该不仅仅对程序中呈现出频繁变化的那些部分作出抽象。拒绝不成熟的抽象和抽象本身一样重要。





#### 开放-封闭原则(OCP)

开闭原则


软件实体（类，模块，函数等等）应该是可扩展的，但是不可修改的。






#### Liskov替换原则(LSP)

里氏替换原则

对于LSP可以做如下解释：
子类型（subtype）必须能够替换掉它们的基类型（base type）。

Barbara Liskov首次写下这个原则是在1988年。她说道，
这里需要如下替换性质：若对每个类型S的对象o1，都存在一个类型T的对象o2, 使得在所有针对T编写的程序P中，用o1替换o2后，程序P行为功能不变，则S是T的子类型。






#### 依赖倒置原则(DIP)
依赖反转原则


a. 高层模块不应该依赖于低层模块。二者都应该依赖于抽象。
b. 抽象不应该依赖于细节。细节应该依赖于抽象。





#### 接口隔离原则(ISP)
接口隔离原则

不应该强迫客户依赖于它们不用的方法。

这个原则用来处理“胖（fat）”接口所具有的缺点。如果类的接口不是内聚的（cohesive），就表示该类具有“胖”的接口。
换句话说，类的“胖”接口可以分解成多组方法。每一组方法都服务于一组不同的客户程序。
这样，一些客户程序可以使用一组成员函数，而其他客户程序可以使用其他组的成员函数。


胖类（fat class）会导致它们的客户程序之间产生不正常的并且有害的耦合关系。
当一个客户程序要求该胖类进行一个改动时，会影响到所有其他的客户程序。因此，客户程序应该仅仅依赖于它们实际调用的方法。

通过把胖类的接口分解为多个特定于客户程序的接口，可以实现这个目标。
每个特定于客户程序的接口仅仅声明它的特定客户或者客户组调用的那些函数。
接着，该胖类就可以继承所有特定于客户程序的接口，并实现它们。

这就解除了客户程序和它们没有调用的方法间的依赖关系，并使客户程序之间互不依赖。



### NOP

不要过度设计原则




