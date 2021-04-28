class Sports{
    String type="Sports"; 
    String where="Stadium";

    void does(){
        System.out.println("Playing");
    }
}

class Cricket extends Sports{ 
    String sporttype="Cricket";
}

class Main{
    public static void main(String args[]) { 
        Cricket c = new Cricket(); 
        System.out.println(c.sporttype); 
        System.out.println(c.type); 
        System.out.println(c.where); 
        
        c.does();
    }
}
