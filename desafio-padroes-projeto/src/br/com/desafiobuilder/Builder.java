package br.com.desafiobuilder;

public class Builder {
	public static void main(String[] args) {
		
//		var endereco = Endereco.builder()
//				.rua("Rua Araraquara")
//				.complemento("Torre A");
		
		var endereco = EnderecoBuilder.builder()
				.rua("Rua Araraquara")
				.complemento("Torre A")
				.build();
		
		System.out.println(endereco);
	}

}
