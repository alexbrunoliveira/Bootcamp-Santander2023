package one.digital.inovation.gof;
/**
 * Singleton "lazy Holder"
 * @see <a href="https://stackoverflow.com/a/24018148">Referencia</a>
 * @author alexbrunoliveira
 *
 */
public class SingletonLazyHolder {

	private static class InstanceHolder {
		public static SingletonLazyHolder instancia = new SingletonLazyHolder();
	}
	
	private SingletonLazyHolder() {
		super();
	}
	
	public static SingletonLazyHolder getInstancia() {
		return InstanceHolder.instancia;
	}
}
