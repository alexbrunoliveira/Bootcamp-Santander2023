package subSistema2.cep;

public class CepApi {
	
	//implementa��o de Singleton
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