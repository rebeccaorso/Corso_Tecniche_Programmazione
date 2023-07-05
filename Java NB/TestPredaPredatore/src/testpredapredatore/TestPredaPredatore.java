package testpredapredatore;

public class TestPredaPredatore {

    public static void main(String[] args) {

        Preda[] prede = {new Coniglio(), new Pesce()};
        Predatore[] predatori = {new Avvoltoio(), new Pesce()};
        
        for (Predatore predatore : predatori) {
            predatore.caccia();
        }
        
        for (Preda preda : prede) {
            preda.scappa();
        }
        
        

    }// fine main

}
