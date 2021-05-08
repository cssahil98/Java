class First
{
    void disp()
    {
        System.out.println("First class method");
    }
}
 class Second extends First
{
    void disp()
    {
      System.out.println("Second class method");
    }
}
class Main
{
public static void main(String... a)
{
    Second obj = new Second();
    obj.disp();
}
}
