package testdb;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TestDB {
    
    static ArrayList i = new ArrayList();

    public static void main(String[] args) {

        String url = "jdbc:mysql://localhost:3306/goal2023";
        String utente = "root";
        String password = "V3cch10n3";

        String query;

        try {
            //stabiliamo una connessione al DB
            Connection conn = DriverManager.getConnection(url, utente, password);

            //creiamo oggetto istruzione
            Statement st = conn.createStatement();

            //impostiamo la query che vogliamo eseguire
            query = "select * from studenti";

            //passiamo la query all'oggetto istruzione che la esegue sul db
            //dentro resultset ho tutte le righe ritornate dalla query
            ResultSet rs = st.executeQuery(query);

            FileWriter mioFile = new FileWriter("studenti.txt");

            while (rs.next()) {
                int matricola = rs.getInt("id");
                String nome = rs.getString("nome");
                String cognome = rs.getString("cognome");
                String email = rs.getString("email");
                int eta = 20;
                        
                        
                System.out.println(rs.getInt("id") + " ");
                System.out.println(rs.getString("nome") + " ");
                System.out.println(rs.getString("cognome") + " ");
                System.out.println(rs.getString("citta") + " ");
                
                 mioFile.write("id " + rs.getInt("id") + " ");
                 mioFile.write("nome " + rs.getString("nome") + " ");
                 mioFile.write("cognome " + rs.getString("cognome") + " ");
                 mioFile.write("citta " + rs.getString("citta") + "\n");
                 
                 i.add(new Studenti (matricola ,email, nome, cognome, eta));
            }

           

//            query="insert into studenti(nome, cognome, email) values('mario', 'rossi', 'mario@gmail.com')";
//            st.executeUpdate(query);
            query = "create table if not exists prova("
                    + "a varchar (30),"
                    + "b varchar(30),"
                    + "c int)";

           
            st.executeUpdate(query);
            
             mioFile.close(); //obbligatorio
            st.close();
            conn.close();

        } catch (Exception e) {
            System.out.println("Errore generico " + e.getMessage());
        }
        //stampiamo gli studenti col toString()
        System.out.println(i);
        
        System.out.println("*************************************************");
        ///////////////////////////////
        
        try {
            Scanner s = new Scanner(new File("studenti.txt"));
            while(s.hasNextLine()){
                System.out.println(s.nextLine());
            }
            
        }catch(Exception e){
            System.out.println("Errore lettura file "+ e.getMessage());
        }
        
        System.out.println("*************************************************");
        
        int lettere;
        
        try {
            FileReader fr =new FileReader("studenti.txt");
            while(fr.ready()){
                  //legge un carattere alla volta
                lettere = fr.read();
                System.out.print((char)lettere);
                
            }
           fr.close(); //ricordarsi di chiudere sempre le risorse esterne
        } catch (Exception e) {
            System.out.print("Errore lettura file "+ e.getMessage());
        }
        
      
       
        
        
        
        
        
        
        
        
        
        
        
    }// fine main

}
