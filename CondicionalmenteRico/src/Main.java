import java.util.Scanner;

public class Main {
  public static void main(String[] args) {

    // Entrada de dados
    Scanner scanner = new Scanner(System.in);
    int saldoTotal = scanner.nextInt();
    int valorSaque = scanner.nextInt();

    //TODO: Criar as condi��es necess�rias para impress�o da sa�da, vide tabela de exemplos.

    if(valorSaque <= saldoTotal) {
        int novoSaldo = saldoTotal - valorSaque;
        System.out.println("Saque realizado com sucesso. Novo saldo: " + novoSaldo);
    }else {
        System.out.println("Saldo insuficiente. Saque nao realizado!");
    }
  }
}