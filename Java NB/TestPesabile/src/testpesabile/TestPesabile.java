package testpesabile;

import javax.print.DocFlavor;

public class TestPesabile {

    public static void main(String[] args) {

        Pesabile[] p = {new Macchina("clio", 30), new Studente(70, "mario", "rossi", 30), new Cane("Ben", 13)};

        I[] generico = {new Macchina("clio", 30), new Studente(70, "mario", "rossi", 30), new Cane("Ben", 13)};

        for (I coseGeneriche : generico) {
            System.out.println(coseGeneriche);
        }

        for (Pesabile cose : p) {
            cose.pesa();
        }

    }

}
