## 不要再说正则表达式学不会，其实很简单

正则表达式在编程的过程中使用率非常的高，但很多人在学习的过程中往往侧重于语法的记忆而不去了解其实质，这让许多人对正则表达式感到畏惧，之前的我也是这样，但经过对正则表达式进一步的了解，其实它非常的简单，只不过为了描述字符串这样的无数据结构信息的数据它的语法不得不变得过于复杂，但如果理解了其原理，你反而会觉得其语法设计良好。

* 并,记作 X|Y,表示的语言是正则表达式X与Y的并集，{a, b}。
* 与:记作XY，表示的语言是将X的语言中的每个字符串后面连接上Y语言中的每一种字符串，再把所有这种连接的结果组成一种新的语言。
* 克林闭包，记作X*,表示分别将零个，一个两个...无穷个X与自己连接，然后再求并，即 X* = ε|X|XX|XXX|....。

优先级：
克林闭包 > 连接运算 > 并运算;


## 正则表达式的扩展运算：

* 方括号表示括号内的字符并运算。[abc]就等于a|b|c
* 方括号中以^字符开头，表示字符集中，排除方括号中的所有字符之后，所剩字符的并运算。[^ab]就表示除了ab以外所有字符求并。
* 圆.点表示字符集内所有字符的并。因此 .* 这个表达式就能表示这种字符集所能组成的一切字符串。
* X?表示 X|ε 。表示X与空字符串之间可选。
* X+表示XX*。这等于限制了X至少要重复1次。