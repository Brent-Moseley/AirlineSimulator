
// From learn-js.org
// JS cheat sheet:  http://sage.math.washington.edu/home/agc/lit/javascript/javascriptcheatsheet.pdf
// https://github.com/HarvestJS
// https://github.com/HarvestJS/intro-to-node
// http://goo.gl/BlNQ9S

// TODO: change this code
var person;
var person = {
  firstName: "John",
  lastName: "Smith",
}
person.age = 23;
person.firstName = "Bill";
person["salary"] = 56000;
for (var member in person)
{
  if (person.hasOwnProperty(member)) {
    console.log("member:" + member + " is " + person[member])
  }
}

console.log (person.age);  
console.log(person.firstName);
console.log(person.lastName);
console.log(person.age);
console.log(person.employed);





// TODO: create the Person class using a function
function Person(firstName, lastName, age) {
  this.firstName = firstName;
  this.lastName = lastName;
  this.age = age;
  
  this.describe = function(midval) {
    return this.firstName + midval + this.lastName + this.age;
  }  
}

var jack = new Person("Jack", "Black", 25);
var jill = new Person("Jill", "Blow", 24);
console.log(jack.describe(4));
console.log(jill.describe(6));






var person = {
    firstName : "John",
    lastName : "Smith",
    age : 23
};

function printFullName()
{
    console.log(this.firstName + " " + this.lastName);
}

function printDetails()
{
    console.log(this.firstName + " is " + this.age + " years old");
}

// TODO: create bound copies of printFullName and printDetails.
var boundPrintFullName = printFullName.bind(person);
var boundPrintDetails = printDetails.bind(person);

boundPrintFullName();
boundPrintDetails();






var Person = function() {};
 
Person.prototype.initialize = function(name, age)
{
    this.name = name;
    this.age = age;
}

// TODO: create the class Teacher and a method teach
 
var Teacher = function() {};
Teacher.prototype = new Person();

Teacher.prototype.teach = function (subject) {
  console.log(this.name + " taught " + subject);
}  
var him = new Teacher();

him.initialize("Adam", 45);
him.teach("Inheritance");


// Tutorials, etc:
/*  
learn-js.org     Good JS intro tutorial
http://goo.gl/BlNQ9S   Intro to Node JS
http://w33ble.github.io/harvestjs-express/    Using Node JS Express web app framework.  This was a cool way to build a web app using Node. 

And more advanced electives:
https://github.com/HarvestJS

*/


// I am very, very, very smart!! 
// I am way ahead of the curve, meeting great people.
// Nodejs will be a very good investment!
// Staying on the cutting edge is a great way to get the best jobs and be one of the best talent.

