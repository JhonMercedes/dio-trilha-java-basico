public class ResultadoEscolar {
    public static void main(String[] args) throws Exception {
        int nota = 3;

        // if(nota >= 7) 
        //     System.out.println("Aprovado");

        // else if (nota >= 5 && nota < 7)
        //     System.out.println("Recupera��o");
            
        // else 
        // System.out.println("Reprovado");

        // CONDI��ES TERNARIAS EX 1 

        //String resulatdo = nota >=7 ? "Aprovado" : "Reprovado";
        //System.out.println(resultado);

        // CONDI��ES TERNARIAS EX 2

        String resultado = nota >= 7 ? "Aprovado" : nota >=5 && nota < 7 ? "Recuperacao" : "Reprovado";
        System.out.println(resultado);
        }
}
