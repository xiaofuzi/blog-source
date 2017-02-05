// name = "xiaofu";
// age = 20;
// var obj = {
// 		name: "yang",
// 		age: 17,
// 		getName: function(){
// 			console.log(arguments.callee.toString())
// 			var name = () => {
// 				return this.name;
// 			}
// 			return name;
// 		},
// 		getAge: function (){
// 			var age = function _age(){
// 				console.log('age',_age.caller.toString())
// 				return this.age;
// 			}
// 			age();
// 			return age;
// 		}
// 	}
// var person = {
// 	name: 'cat',
// 	age: 28
// }
// myname = obj.getName();
// myage = obj.getAge();
//console.log(myname());
//console.log(myage())
//console.log(myname.call(person));
//console.log(myage.call(person));
//console.log(obj.getAge()());

'use strict';
// class Person {
//   constructor(name, height, age) {
//     this.name = name;
//     this.height = height;
//     this.age = age;
//   }

//   toStr() {
//     return `my name is ${this.name}`;
//   }
// }

// var  me = new Person('yangxiaofu', 180, 19)
// console.log(me.toStr()) /*my name is yangxiaofu*/

class Animal{
	eat(){
		console.log('eating something');
	}
}

class Cat extends Animal{
	constructor(name){
		super()
		this.name = name;
	}

	static get fullname(){
		return 'cat animal';
	}
}

var cat = new Cat('cat');
console.log(Cat.fullname);
