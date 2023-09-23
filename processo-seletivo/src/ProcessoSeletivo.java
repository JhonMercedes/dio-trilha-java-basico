import java.util.Random;

public class ProcessoSeletivo {
	public static void main(String[] args) {
		String [] candidatosSelecionados = {"FELIPE","MÁRCIA","JULIA","PAULO","AUGUSTO"};
		//primeiro um for para selecionar os candidatos
		for(String candidato: candidatosSelecionados) {
			case4(candidato);
		}
		
	}
	static void case4(String candidato) {
		
		int tentativasRealizadas = 1;
		boolean continuarTentando = true;
		boolean atendeu=false;
		do {
			atendeu= atender();
			continuarTentando = !atendeu;
			if(continuarTentando)
				tentativasRealizadas++;
			else
				System.out.println("CONTATO REALIZADO COM SUCESSO");
			
		}while(continuarTentando && tentativasRealizadas<3);
		
		if(atendeu)
			System.out.println("CONSEGUIMOS CONTATO COM " + candidato +" NA " + tentativasRealizadas + " TENTATIVA");
		else
			System.out.println("NÃO CONSEGUIMOS CONTATO COM " + candidato +", NÚMERO MAXIMO TENTATIVAS " + tentativasRealizadas + " REALIZADA");
		
		
	}
	
	//método auxiliar
	static boolean atender() {
		return new Random().nextInt(3)==1;	
	}
}




// public class ProcessoSeletivo {
//     public static void main(String[] args) throws Exception {
//         System.out.println("Processo Seletivo");

//         imprimirSelecionados();
//     }

//     private static void imprimirSelecionados() {
//         String [] candidatos = {"FULANO1","FULANO2","FULANO3","FULANO4","FULANO5"};
//         System.out.println("Imprimindo lista de candidatos com seu respectivo indice.");

//         for(int i=0; i<candidatos.length; i++) {
//             System.out.println("O candidato de n " + i + " e o " + candidatos[i]);
//         }
//     }

    // static void analisarCandidato(double salarioPretendido) {
    //     double salarioBase = 2000.0;
    //     if (salarioBase > salarioPretendido) {
    //         System.out.println("Ligar para candidato");
    //     } else if (salarioBase == salarioPretendido)
    //         System.out.println("Ligar para candidato com contra proposta");
    //     else {
    //         System.out.println("Aguardando o resultado de demais candidatos");
    //     }
    // }
//}
