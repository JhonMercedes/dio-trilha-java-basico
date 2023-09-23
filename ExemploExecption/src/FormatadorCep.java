public class FormatadorCep {
    

    public static void main (String [] arg) {
        try { String cepFormatado = formatarCep("1235879");
        System.out.println(cepFormatado);

        } catch(CepInvalidoException e) {
            System.err.println("CEP INVÁLIDO");
        }
    }
    static String formatarCep(String cep) throws CepInvalidoException{

        if(cep.length() != 8)
          throw new CepInvalidoException();
        
          //simulando um cep formatado
          return "23.765-064";
    }
}