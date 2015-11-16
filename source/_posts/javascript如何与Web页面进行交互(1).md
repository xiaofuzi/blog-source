title: javascript如何与Web页面进行交互-理论篇
date: 2015-11-14 22:28:26
tags: DOM
archives: pl
---

Web页面基本上由 HTML + CSS + Javascript 组成，即我们所说的“结构”+“表现”+“行为”。

那么Javascript是如何发挥作用的呢？在此之前我们首先需要了解HTML DOM(HTML文档对象模型),HTML DOM 提供了对网页的结构化描述并定义了脚本对该结构进行访问和操作的方式。他会将网页解析为一个由节点和对象组成的结构合集，这样就可以使用程序语言对网页进行操作了。

HTML DOM将 HTML 文档视作树结构([若对树的概念不理解可参考百度百科介绍](http://baike.baidu.com/link?url=2hutD0oMwNoy-8IuIZ1UD7OpI7Bb3LeC_slKF1STQ4uGcP4M-jK0b_3QPOa-9wI01OQjVq6_1A0XEpAefEA3epPFoS6TUKBp5nCGKFE4sB7))


HTML DOM 对象：

* Document对象
* Element对象
* Attribute对象
* Event对象

在使用javascript来操作页面时将会围绕上面的四个对象来展开，下面我们来详细介绍一下每个对象。

### Document对象

Document对象即代表HTML文档，通过它可以访问页面中的所有元素。(Document对象是挂在Window对象下的，所以它是一个全局对象，我们可以直接使用)

Document对象集合

* all[]——文档中所有 HTML 元素
* anchors[]——文档中所有 Anchor 对象的引用
* applets——文档中所有 Applet 对象的引用
* forms[]——文档中所有 Form 对象引用
* images[]——文档中所有 Image 对象引用
* links[]——文档中所有 Area 和 Link 对象引用

Document对象属性

* body——body元素（对于定义了框架集的文档，该属性引用最外层的 <frameset>）
* cookie——设置或返回与当前文档有关的cookie
* domain——当前文档的域名
* lastModified——文档最后修改的日期和时间
* referrer——载入当前文档的文档的URL
* title——当前文档的标题。
* URL——当前文档的 URL

Document对象方法

* close()——关闭用 document.open() 方法打开的输出流，并显示选定的数据
* getElementById()——返回对拥有指定 id 的对象的引用
* getElementsByName()——返回带有指定名称的对象集合
* getElementsByTagName()——返回带有指定标签名的对象集合
* open()——打开一个流，以收集来自任何 document.write() 或 document.writeln()——方法的输出。
* write()——向文档写 HTML 表达式 或 JavaScript 代码。
* writeln()——等同于 write() 方法，不同的是在每个表达式之后写一个换行符。

<p class="text-important">刚开始接触javascript编程时，我们只需要了解常用的几个对象方法即可。</p>

```css
Document.getElementById()
Document.getElementsByName()
Document.getElementsByTagName()
```

## Element 对象(一个对象代表一个节点)

Element对象可以拥有类型为元素节点、文本节点、注释节点的子节点。
NodeList对象表示节点列表，比如 HTML 元素的子节点集合。

* 文档节点(整个文档)
* 元素节点(HTML标签元素)
* 文本节点(HTML标签内的文本)
* 属性节点(标签属性)
* 注释节点(注释)


<img src="http://www.w3school.com.cn/i/dom_navigate.gif" alt="各节点之间的关系">
图片来源：http://www.w3school.com.cn/

HTML对象常用属性和方法

```css
element.appendChild() 	向元素添加新的子节点，作为最后一个子节点
element.attributes		返回元素属性的集合
element.childNodes		返回元素子节点的集合
element.className		设置或返回元素的class名称
element.clientHeight	返回元素的可见高度
element.clientWidth		返回元素的可见宽度
element.cloneNode()		克隆元素
element.firstChild		返回元素的首个子元素
element.getAttribute()	返回元素节点的指定属性的值
element.getAttributeNode()	返回指定的属性节点
element.getElementsByTagName()	返回拥有指定标签名的所有子元素的集合
element.hasAttribute()	如果元素拥有指定属性，则返回true，否则返回 false
element.hasAttributes()	如果元素拥有属性，则返回 true，否则返回 false
element.hasChildNodes()	如果元素拥有子节点，则返回 true，否则 false
element.id				设置或返回元素的 id
element.innerHTML		设置或返回元素的内容
element.insertBefore()	在指定的已有的子节点之前插入新节点
element.isEqualNode()	检查两个元素是否相等
element.isSameNode()	检查两个元素是否是相同的节点
element.isSupported()	如果元素支持指定特性，则返回 true
element.lastChild		返回元素的最后一个子元素
element.nextSibling		返回位于相同节点树层级的下一个节点
element.nodeName		返回元素的名称。
element.nodeType		返回元素的节点类型。
element.nodeValue		设置或返回元素值。
element.offsetHeight	返回元素的高度。
element.offsetWidth		返回元素的宽度。
element.offsetLeft		返回元素的水平偏移位置。
element.offsetParent	返回元素的偏移容器。
element.offsetTop		返回元素的垂直偏移位置。
element.ownerDocument	返回元素的根元素（文档对象）。
element.parentNode		返回元素的父节点。
element.previousSibling	返回位于相同节点树层级的前一个元素。
element.removeAttribute()	从元素中移除指定属性。
element.removeAttributeNode()	移除指定的属性节点，并返回被移除的节点。
element.removeChild()	从元素中移除子节点。
element.replaceChild()	替换元素中的子节点。
element.scrollHeight	返回元素的整体高度。
element.scrollLeft		返回元素左边缘与视图之间的距离。
element.scrollTop		返回元素上边缘与视图之间的距离。
element.scrollWidth		返回元素的整体宽度。
element.setAttribute()	把指定属性设置或更改为指定值。
element.setAttributeNode()	设置或更改指定属性节点。
element.setIdAttribute()	
element.setIdAttributeNode()	
element.setUserData()	把对象关联到元素上的键。
element.style			设置或返回元素的 style 属性。
element.tabIndex		设置或返回元素的 tab 键控制次序。
element.tagName			返回元素的标签名。
element.textContent		设置或返回节点及其后代的文本内容。
element.title			设置或返回元素的 title 属性。
element.toString()		把元素转换为字符串。
nodelist.item()			返回 NodeList 中位于指定下标的节点。
nodelist.length			返回 NodeList 中的节点数。
```


## 属性对象

```css
attr.isId						如果属性是 id 类型，则返回 true，否则返回 false。
attr.name						返回属性的名称。
attr.value						设置或返回属性的值。
attr.specified					如果已指定属性，则返回 true，否则返回 false。
nodemap.getNamedItem()			从 NamedNodeMap 返回指定的属性节点。
nodemap.item()					返回 NamedNodeMap 中位于指定下标的节点。
nodemap.length					返回 NamedNodeMap 中的节点数。
nodemap.removeNamedItem()		移除指定的属性节点。
nodemap.setNamedItem()			设置指定的属性节点（通过名称）。
```

## 事件对象

可参考:http://www.w3school.com.cn/jsref/dom_obj_event.asp

事件对象代表事件的一种状态，以鼠标事件为例：

```css
onclick:鼠标点击状态
ondblclick:鼠标双击
onmousedown:鼠标按钮按下
onmousemove:鼠标被移动
onmouseout:鼠标移开
onmouseover:鼠标移到某元素上
onmouseup:鼠标按键松开
```

通过给不同的状态绑定不同的函数，可以在不同的状态下做相应的处理(即执行我们的函数)

Js脚本是通过这四个对象来与页面进行交互的，通过Document对象、Element对象、Attribute对象我们可以获取文档元素、更改结构属性。Event对象则确定什么样的状态下执行什么操作。

