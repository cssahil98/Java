class Parent { 
    void child()
    {
        System.out.println("Parent's Child");
    }
}

class Child extends Parent {
    void child()
    {
        System.out.println("Parent's Grandchild");
    }
}

class Main {
    public static void main(String[] args)
    {
        Parent c = new Parent(); 
        c.child();
        
        Parent g = new Child(); 
        g.child();
    }
}
