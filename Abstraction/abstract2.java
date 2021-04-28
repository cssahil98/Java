abstract class Input {
    public abstract void takes();
    public void error() 
    { 
        System.out.println("ERROR!!");
    }
}

class Keyboard extends Input { 
    public void takes() 
    {
        System.out.println("Type Your Input Through Keyboard");
    }
}

class Mouse extends Input { 
    public void takes() 
    {
        System.out.println("Click On The Desired Input Through Mouse");
    }
}

class Main {
    public static void main(String[] args) 
    {
        Keyboard key = new Keyboard(); 
        Mouse click = new Mouse(); 
        
        key.takes();
        key.error(); 
        click.takes(); 
        click.error();
    }
}
