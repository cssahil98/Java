abstract class Tree
{
	abstract void color();
}
class Neem 
{
	void color() 
	{ 
		System.out.println("color of a neem tree is green"); 
	}
}
class Rose 
{
	void color() 
	{ 
		System.out.println("color of a Rose is Red"); 
	}
}
class Main
{
	public static void main(String[] args) 
	{
		
		Neem t=new Neem();
		Rose r=new Rose();
		t.color();
		r.color();
	}
}
