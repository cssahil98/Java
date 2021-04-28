class Addition{
    static int add(int a, int b)
    {
        return a + b;
    }
    static double add(double a, double b)
    {
        return a + b;
    }
}

class Main {
    public static void main(String[] args)
    {
        System.out.println(Addition.add(7, 9));
        System.out.println(Addition.add(3.1, 6.2));
    }
}
