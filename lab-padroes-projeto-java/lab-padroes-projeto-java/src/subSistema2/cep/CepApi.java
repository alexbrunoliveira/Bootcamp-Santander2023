package subSistema2.cep;

public class CepApi {
	
	//implementação de Singleton
	private static CepApi instancia = new CepApi();

	private CepApi() {
		super();
	}
	public static CepApi getInstancia() {
		return instancia;
	}
	public String recuperarCidade(String cep) { // Dado mocado
		return "Araraquara";
	}
	public String recuperarEstado(String cep) {
		return "SP";
	}
}