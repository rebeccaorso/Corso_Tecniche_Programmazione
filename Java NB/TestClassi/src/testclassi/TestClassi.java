package testclassi;



public class TestClassi {

    
    public static void main(String[] args) {

        ///gatto mancano pezzi
        Gatto g = new Gatto("milu", "persiano", 2);
        System.out.println(g);
        
        g.faiLeFusa();
        g.miagola();
        
        /////////////////////////
        Macchina m = new Macchina("BMW", "s1",15000, 150000);
        System.out.println(m);
        m.guida(10);
        m.frena();
        
        /////////////////////
        
        Studente s = new Studente("mario","rossi",1);
        s.setVoto1(18);
        s.setVoto2(20);
        s.setVoto3(24);
        
        
        double media= s.mediaVoti();
        
        System.out.println(media>=18? "promosso":"bocciato");
        
        
        
    }//fine main

}
