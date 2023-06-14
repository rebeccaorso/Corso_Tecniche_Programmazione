package gestionedate;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;
import java.util.Scanner;

public class GestioneDate {

    public static void main(String[] args) {

        ////////////////////// data
        Calendar c = Calendar.getInstance();

        SimpleDateFormat sdf = new SimpleDateFormat("'Oggi e il ' dd/MM/yyyy ' e sono le 'HH:mm:ss"); //MM=mese mm= minuti

        System.out.println(sdf.format(c.getTime()));

        System.out.println("Mese " + (c.get(Calendar.MONTH) + 1)); // +1 perche parte a contare da zero
        System.out.println("Mese " + c.get(Calendar.DATE));
        System.out.println("Mese " + c.get(Calendar.YEAR));

        ////////////////////// formattazione numeri
        double d = 3.141519;

        DecimalFormat df = new DecimalFormat("0.00");
        System.out.println(df.format(d));

        Random r = new Random();
        int numero = r.nextInt(101);//gli estremi sauperiori non sono mai compresi
        System.out.println(numero);

       // double virgola = r.nextDouble(50, 101);
        System.out.println(df.format(virgola));

        //////// if dentro la parentesi deve esserci un valore booleano
        Scanner s = new Scanner(System.in);
        System.out.println("Inserisci eta");

        int eta = s.nextInt();

        if (eta > 18) { //ramo condizione vera
            System.out.println("Sei maggiorenne puoi entrare");
        } else if (eta == 18) {
            System.out.println("Hai proprio 18");
        } else { // contraddistingue il ramo falso
            System.out.println("Non puoi entrare");
        }

      
        }


