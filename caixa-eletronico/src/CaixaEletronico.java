import java.util.Scanner;

public class CaixaEletronico {
    public static void main(String[] args) throws Exception {
        double saldo = 35.0;
        // double valorSolicitado = 6.0;

        // if(valorSolicitado < saldo) {
        //     saldo = saldo - valorSolicitado;
        //     System.out.println("Novo saldo �: "+ saldo);
        // }else
        // System.out.println("Valor insuficiente, seu saldo atual �: "+saldo+ "o valor solicitado foi: " + valorSolicitado + "Deseja realizar um novo saque? ");

        // //System.out.println(saldo);

        Scanner scan = new Scanner(System.in);

        System.out.println("Bem vindo, valor atual �: " + saldo);

        System.out.println("Qual valor deseja sacar ?");
        double saque = scan.nextDouble();

        if(saque < saldo){
            saldo = saldo - saque;
            System.out.println("Seu saldo atual �: "+ saldo);
        }else 
            System.out.println("Valor do saque � maior que o saldo atual.");
    }
}
