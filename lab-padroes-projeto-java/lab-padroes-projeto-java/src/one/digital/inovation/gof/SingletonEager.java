package one.digital.inovation.gof;
/**
 * Singleton "apressado"
 * @author alexbrunoliveira
 *
 */
public class SingletonEager {

	private static SingletonEager instancia = new SingletonEager();
	
	private SingletonEager() {
		super();
	}
	
	public static SingletonEager getInstancia() {
		return instancia;
	}
}
