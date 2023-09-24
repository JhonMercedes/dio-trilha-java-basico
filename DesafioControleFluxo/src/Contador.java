import java.util.Scanner;

public class Contador {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite o primeiro par�metro");
        int parametroUm = sc.nextInt();
        System.out.println("Digite o segundo par�metro");
        int parametroDois = sc.nextInt();

        try {
            // chamando o m�todo contendo a l�gica de contagem
            contar(parametroUm, parametroDois);

        } catch (ParametrosInvalidosException exception) {
            // imprimir a mensagem: O segundo par�metro deve ser maior que o primeiro
            System.out.println(exception.getMessage());
        }

    }

    static void contar(int parametroUm, int parametroDois) throws ParametrosInvalidosException {
        // validar se parametroUm � MAIOR que parametroDois e lan�ar a exce��o
        if (parametroUm > parametroDois) {
            throw new ParametrosInvalidosException("O segundo parametro deve ser maior que o primeiro");
        }

        int contagem = parametroDois - parametroUm;
        // realizar o for para imprimir os n�meros com base na vari�vel contagem
        for (int i = 1; i <= contagem; i++) {
            System.out.println("Imprimindo o n�mero " + i);
        }
    }
}