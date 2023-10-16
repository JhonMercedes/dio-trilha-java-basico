import java.util.Scanner;

public class EquilibrandoSaldo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Saldo atual conta corrente: [0001030-1]: ");
        double saldoAtual = scanner.nextDouble();
        System.out.println("Informar valor do deposito: ");
        double valorDeposito = scanner.nextDouble();
        System.out.println("Informar valor do saque: ");
        double valorRetirada = scanner.nextDouble();

    

        // System.out.println("Valor total conta corrente: [0001030-1]: " + saldoAtual);
        
        saldoAtual = saldoAtual + valorDeposito;
        System.out.println("Valor deposito: "+valorDeposito+" Saldo atualizado na conta: " + saldoAtual);

        saldoAtual = saldoAtual - valorRetirada;

        System.out.println("Saque de "+valorRetirada+" realizado com sucesso, saldo atualizado na conta: " + saldoAtual);

        scanner.close();
        
  
    }
    
}