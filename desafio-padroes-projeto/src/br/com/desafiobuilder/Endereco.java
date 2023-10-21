package br.com.desafiobuilder;

public class Endereco {
	private String rua;
	private String complemento;
	
	protected Endereco() {
		
	}
	
	public static Endereco builder() {
		return new Endereco();
	}
//	
//	public Endereco rua(String rua) {
//		this.rua = rua;
//		return this;
//	}
//	
//	public Endereco complemento(String complemento) {
//		this.complemento = complemento;
//		return this;
//	}

	// getters
	
	public String getRua() {
		return rua;
	}

	protected void setRua(String rua) {
		this.rua = rua;
	}

	protected String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	@Override
	public String toString() {
		return "Endereco [rua=" + rua + ", complemento=" + complemento + "]";
	}
	

	
}
