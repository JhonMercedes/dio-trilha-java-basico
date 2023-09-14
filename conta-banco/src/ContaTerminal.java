import java.util.Scanner;

public class ContaTerminal {
    public static void main(String[] args) throws Exception {

        Scanner scan = new Scanner(System.in);

        System.out.println("Bem vindo! \nPor favor, digite o numero da Agencia.");
        String agencia = scan.next();

        System.out.println("Digite o numero da Conta.");
        int conta = scan.nextInt();

        System.out.println("Digite seu nome.");
        String nome = scan.next();

        System.out.println("Digite o saldo,");
        double saldo = scan.nextDouble();

        System.out.println("\nOla " + nome + ", obrigado por criar uma conta em nosso banco! \nSua agencia e: "
                + agencia + ", conta: " + conta + " e seu saldo " + saldo + " ja esta disponivel para saque");

    }
}
