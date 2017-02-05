### instanceof

instanceof 函数用来判断一个对象是否属于一个类，判断的依据是看该对象是否继承自该类的prototype对象，而非是否通过该类的构造函数来实例化。

### isPrototypeOf

isPrototypeOf检测对象的原型链上是否存在某个特定的原型对象

### constructor
prototype对象有一个不可枚举的constructor属性,该属性指向构造函数，可以将其作为类的标识。
注：并非所有的对象都有constructor属性

### NaN

* NaN和它自身不相等
* typeof NaN == 'number'
* typeof null == 'object'
* typeof undefined == 'undefined'


