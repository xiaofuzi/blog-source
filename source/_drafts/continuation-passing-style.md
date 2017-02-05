title: Continuation passing style in Javascript
date: 2016-1-03 15:06:36
tags: [js, pl]
---

## CPS programming

* CPS in Javascript
* CPS for ajax programming
* CPS for non-blocking programming
* CPS for distributed programming
* How to implement exceptions using CPS
* How to implement call/cc in Javascript

### Identity function

* 常规的写法

```js
function id(x){
	return x;
}
```
* cps范式

```js
function id(x, cb){
	cb(x);
}
```

### 求阶乘

* 常规写法
```js
function fact(n){
	if(n == 0){
		return 1;
	}else{
		return n*fact(n-1);
	}
}
```

* cps范式

```js
/*ret可以看做return的缩写，这样可以比较好理解，它代替了return语句*/
function fact(n, ret){
	if(n == 0){
		ret(1);
	}else{
		fact(n-1, function(t0){
			ret(n * t0);
		});
	}
}
```

## 尾递归求阶乘

```js
function fact(n){
	return tail_fact(n, 1);
}

function tail_fact(n, a){
	if(n == 0)
		return a;
	else
		return tail_fact(n-1, n*a);
}
```

* cps
function fact(n, ret){
	tail_fact(n, 1, ret);
}
function tail_fact(n, a, ret){
	if(n == 0){
		ret(a);
	}else{
		tail_fact(n-1, n*a, ret);
	}
}










