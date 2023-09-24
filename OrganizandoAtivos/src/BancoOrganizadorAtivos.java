import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class BancoOrganizadorAtivos {
    public static void main(String[] args) {
        // Criar um objeto Scanner para entrada de dados
        Scanner scanner = new Scanner(System.in);
        // Criar um ArrayList para armazenar os códigos dos ativos

        ArrayList<String> ativos = new ArrayList<>();

        // Entrada dos tipos de ativos
        int quantidadeAtivos = scanner.nextInt();

        // Entrada dos códigos dos ativos
        for (int i = 0; i < quantidadeAtivos; i++) {
            String codigoAtivo = scanner.nextLine();
            ativos.add(codigoAtivo);
        }

        // Organização em ordem alfabética usando o método sort da classe Collections

        Collections.sort(ativos);

        // Saída de dados: imprimir os códigos dos ativos em ordem alfabética
        for (String ativo : ativos) {
            System.out.println(ativo); // Imprimir cada código em uma nova linha
        }
    }
}
