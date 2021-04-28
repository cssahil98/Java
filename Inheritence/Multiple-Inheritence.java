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


class Player extends Cricket{ 
    String name = "Dhoni";
    String number = "7";
}

class Main{
    public static void main(String[] args) { 
        Player p = new Player(); 
        System.out.println(p.name); 
        System.out.println(p.number); 
        System.out.println(p.sporttype); 
        System.out.println(p.type); 
        System.out.println(p.where); 
        
        p.does();
    }
}
