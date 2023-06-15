package esempioarray;

public class EsempioArray {

    
    public static void main(String[] args) {
        
        int x; // è una variabile
        int y[]; //è un array
        
        y=new int[10];
        
        int [] unArray=new int[10];
        
        unArray[0]=12;
        unArray[1]=32;
        unArray[2]=55;
        unArray[3]=12;
        unArray[4]=12;

        System.out.println(unArray[3]);
        
        String[] colori={"bianco", "nero", "giallo", "blu"};
        System.out.println(colori[2]);
        System.out.println(colori.length);
        
        int lunghezza = colori.length;
        
        System.out.println(colori[lunghezza-2]); // per trovare il penultimo
        
        for (int i = 0; i < lunghezza ; i++) { // questa ha la posizione
            System.out.println(colori[i]);
            
        }
        
        for(String elemento : colori) {  // mi manca la posizione 
            System.out.println(elemento);
        }
        
        
        
        
        
        
        
        
        
        
    }

}
