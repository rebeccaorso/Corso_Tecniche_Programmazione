package giugno7;

public class Giugno7 {

    public static void main(String[] args) {

        boolean sole=true;
        double tempo=22;
        
        if (sole&&tempo>20){
            System.out.println("esco");
        }
        
        int voto1=6;
        int voto2=5;
        int voto3=9;
        
        if(voto1>=6 &&voto2>=6 &&voto3>=6){
            System.out.println("promosso");
        }else{
            System.out.println("bocciato");
        }
                 if(voto1>=6 &&voto2>=6 || voto3>=6){  //and sempre prima dell'or
            System.out.println("promosso");
        }else{
            System.out.println("bocciato");
        }
                 
                 //tirare due dadi se viene entrambi 6 vinci
                 
                 int dado1=6;
    }

}
