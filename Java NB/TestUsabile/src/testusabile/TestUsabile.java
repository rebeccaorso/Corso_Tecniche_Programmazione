package testusabile;

public class TestUsabile {

    public static void main(String[] args) {

        Usabile[] ArrUs = {new Computer(), new Macchina(), new Martello()};
        
        for (Usabile ArrU : ArrUs) {
            ArrU.usa(); //polimorfismo
        }
        
        Computer c = new Computer();
        Martello m = new Martello();
        
        utilizza(m);
        
    } //fine main
    public static void utilizza(Usabile u){
        u.usa();
    }

}
