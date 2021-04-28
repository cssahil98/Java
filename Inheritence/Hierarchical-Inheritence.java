class Sports{
    String type="Sports";
    String where="Stadium";
    void does(){ 
        System.out.println("Playing");
    }
}

class Cricket extends Sports{ 
    String sporttype="Cricket"; 
    String pname="Dhoni";
}

class Football extends Sports{ 
    String sporttype="Football";
    String pname="\nRonaldo";
}
    
class Main{
    public static void main(String[] args){ 
        Cricket c = new Cricket();
        Football f = new Football(); 
        
        System.out.println(c.pname); 
        System.out.println(c.sporttype); 
        System.out.println(c.type); 
        System.out.println(c.where); 
        c.does(); 
        
        System.out.println(f.pname);
        System.out.println(f.sporttype); 
        System.out.println(f.type); 
        System.out.println(f.where); 
        f.does();
    }
}
