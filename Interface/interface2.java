interface Math{
    void add(int a, int b); 
    void subtract(int a, int b);
}

class Operate implements Math{
    public void add(int a, int b)
    {
        System.out.println(a + b);
    }

    public void subtract(int a, int b)
    { 
        System.out.println(a - b);
    }
}

class Main{
    public static void main(String[] args)
    {     
        Operate obj = new Operate(); 
        obj.add(10, 20);
        obj.subtract(50, 10);
    }
}
