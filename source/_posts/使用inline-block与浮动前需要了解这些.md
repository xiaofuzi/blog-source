title: 使用inline-block与浮动前需要了解这些
date: 2015-11-06 15:06:36
archives: pl
tags: css
---


HTML标签分为块级元素和行内元素，块级元素会独占一行。

常见的块级元素：

```html
h1,h2,h3,h4,h5,
div,p,form,hr,menu,ul,dl,ol,pre,table,address,blockquote
```

常见的内联元素
```html
a,abbr,acronym,br,cite,code,em,i,
img,input,label,select,small,span,sub,sup,textarea
```

块级元素：块级元素独占一行，可以设定元素的宽（width）、高（height）和内外边距，块级元素一般是其他元素的容器，可容纳块级元素和行内元素。常见的块级元素有div, p ,h1~h6等。

行内元素：行内元素不可以设置宽（width）和高（height），但可以与其他行内元素位于同一行，行内元素内一般不可以包含块级元素。行内元素的高度一般由元素内部的字体大小决定，宽度由内容的长度控制。常见的行内元素有a, em ,strong等。（img标签虽然是行内元素，但自带宽高属性，即可以设置宽高)

给行内元素和块级元素加上display:inline-block;后会将元素转换为行内块元素，即不独占一行而且可以按盒子模型进行布局。



## 行内元素（inline)
<div class="margin-auto">
	<span style="background:red;">行内元素</span>  <span style="background:green;">行内元素</span>  <span style="background:blue;">行内元素</span>
	<hr>
</div>

## 行内块元素（inline-block)

<div class="margin-auto">
	<span style="background:red;display:inline-block;">行内元素</span>  <span style="background:green;display:inline-block;">行内元素</span>  <span style="background:blue;display:inline-block;">行内元素</span>
	<hr>
</div>

从上面可以看到内联元素之间都会产生空格，该空格的大小受设置字体大小的影响(注：当html标签间有空格或换行的情况,如果没有则不会产生空格的)

## 行内块元素（inline-block)并排空格解决方式

* margin负值
* font-size: 0;
* 浮动替代方式



