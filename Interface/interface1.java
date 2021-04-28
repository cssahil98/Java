interface Person {
    void getName(String name);
}


class PersonName implements Person {
    public void getName(String name)
    {
        System.out.println("Person Name: " + name); 
        System.out.println("He Is The Richest Person In The World");
    }
}


class Main {
    public static void main(String[] args)  
    { 
        PersonName person = new PersonName(); 
        person.getName("Elon Musk");
    }
}
