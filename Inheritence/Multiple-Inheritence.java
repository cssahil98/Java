class Employe{  
    float salary=40000;  
   }  
class Programmer extends Employe
{  
  int bonus=10000;  
 }
class Intern extends Programmer
{
	int stipend=2300;
}
/*class Boss extends Employe,Programmer,Intern
{
	int turnover=5600000;
}*/
//since multiple inheritance not supported in JAVA
class Main
{
public static void main(String[] args){  
Programmer p=new Programmer();  
System.out.println("Programmer salary is:"+p.salary);  
System.out.println("Bonus of Programmer is:"+p.bonus);

Intern aryan=new Intern();
System.out.println("Aryan's salary:"+aryan.salary);
System.out.println("Aryan's bonus:"+aryan.bonus);
System.out.println("Aryan's stipend:"+aryan.stipend);

/*
Boss b=new Boss();
System.out.println("b's salary:"+b.salary);
System.out.println("b's bonus:"+b.bonus);
System.out.println("b's stipend:"+b.stipend);
System.out.println("b's stipend:"+b.turnover);*/
}  
}
