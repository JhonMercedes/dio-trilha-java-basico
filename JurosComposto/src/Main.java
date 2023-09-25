import java.util.Scanner;
?
public class Main {
public static void main(String[] args) {
  Scanner scanner = new Scanner(System.in);
  
  // Recebendo os valores de entrada do usuário
  double valorInicial = Double.parseDouble(scanner.nextLine());
  double taxaJuros = Double.parseDouble(scanner.nextLine());
  int periodo = Integer.parseInt(scanner.nextLine());
  
  // Inicializando o valor final com o valor inicial
  double valorFinal = valorInicial;
  
  // Calculando os juros compostos iterativamente
  for (int i = 0; i < periodo; i++) {
    valorFinal += valorFinal * taxaJuros;
 }
  
  // Arredondando o valor final para duas casas decimais
  valorFinal = Double.parseDouble(String.format("%.2f", valorFinal));
  
  // Exibindo o resultado formatado
  System.out.println("Valor final do investimento: R$ " + valorFinal);
 }
}
?