import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class BancoOrganizadorAtivos {
    public static void main(String[] args) {
        // Criar um objeto Scanner para entrada de dados
        Scanner scanner = new Scanner(System.in);
        // Criar um ArrayList para armazenar os c�digos dos ativos

        ArrayList<String> ativos = new ArrayList<>();

        // Entrada dos tipos de ativos
        int quantidadeAtivos = scanner.nextInt();

        // Entrada dos c�digos dos ativos
        for (int i = 0; i < quantidadeAtivos; i++) {
            String codigoAtivo = scanner.nextLine();
            ativos.add(codigoAtivo);
        }

        // Organiza��o em ordem alfab�tica usando o m�todo sort da classe Collections

        Collections.sort(ativos);

        // Sa�da de dados: imprimir os c�digos dos ativos em ordem alfab�tica
        for (String ativo : ativos) {
            System.out.println(ativo); // Imprimir cada c�digo em uma nova linha
        }
    }
}
