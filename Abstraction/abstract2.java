 abstract class Bike
 {  
   void Bike()     //method with body
   {
   	System.out.println("bike is created");
   }  
   
   abstract void run();  //method without body
   
   void changeGear()
   {
   	System.out.println("gear changed");
   }  
 }  
 
 class Honda extends Bike
 {  
 void run()
 	{
 		System.out.println("running safely..");
 	}  
 }   
 class Abstractj2
 {  
 	public static void main(String args[]){  
  	Bike obj = new Honda();  
  	obj.Bike();
  	obj.run();  
  	obj.changeGear(); 

 }  
}  
