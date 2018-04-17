// https://medium.com/front-end-hacking/wth-is-prototypal-inheritance-b0c7f4f3211e 

// constructors 
// are like js functions that take an object and attach properties

// ex: 
const Ball = function(size){
    this.size = size;
    this.getSize = function(){
      console.log(this.size);
    }
 };
 // new creates an instance of Ball
 let football = new Ball('big'); 
 console.log(football.getSize()); 

// prototypes
// a property that all objects have
// can attach methods too

console.dir(Ball); // would give info on the properties of this constructor

_proto_ // points to its master object

const Ball = function(size){
    this.size = size;
 };
 Ball.prototype.getSize = function(){
    console.log(this.size);
 }
 let football = new Ball('big');
 let tennisBall = new Ball('small'); 
 console.log(football.getSize()); //big
 console.log(tennisBall.getSize()); //small

 // prototypes are useful because:
 // they allow you to keep minimum methods and properties on instances for better run time
 // for when the program has a ton of instances

 

