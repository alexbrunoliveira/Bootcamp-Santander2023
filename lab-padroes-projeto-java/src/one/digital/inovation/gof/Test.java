package one.digital.inovation.gof;

public class Test {

	public static void main(String[] args) {
		//Testes relacionados ao Design pattern Singleton
		SingletonLazy lazy =  SingletonLazy.getInstancia();
		System.out.println(lazy);
		lazy = SingletonLazy.getInstancia();
		System.out.println(lazy);
		
		System.out.println();
		SingletonEager eager =  SingletonEager.getInstancia();
		System.out.println("\n"+eager);
		eager = SingletonEager.getInstancia();
		System.out.println(eager);
		
		System.out.println();
		SingletonLazyHolder holder =  SingletonLazyHolder.getInstancia();
		System.out.println("\n"+holder);
		holder = SingletonLazyHolder.getInstancia();
		System.out.println(holder);
	}
}
