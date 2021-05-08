class Bird
{
	public void wings()
	{
		System.out.println("Birds have two wings");
	}
}
class Crow extends Bird
{
	public void legs()
	{
		System.out.println("Birds have two legs");
	}
}
class Main
{
	public static void main(String[] args) {
		Crow c=new Crow();
		c.wings();
		c.legs();
		
	}
}
