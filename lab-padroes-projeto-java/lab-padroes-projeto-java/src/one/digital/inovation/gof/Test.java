package one.digital.inovation.gof;

import one.digital.inovation.gof.facade.Facade;
import one.digital.inovation.gof.strategy.Comportamento;
import one.digital.inovation.gof.strategy.ComportamentoAgressivo;
import one.digital.inovation.gof.strategy.ComportamentoDefensivo;
import one.digital.inovation.gof.strategy.ComportamentoNormal;
import one.digital.inovation.gof.strategy.Robo;

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
		
		//Strategy
		
		// Strategy
		
				Comportamento defensivo = new ComportamentoDefensivo();
				Comportamento normal = new ComportamentoNormal();
				Comportamento agressivo = new ComportamentoAgressivo();
				
				Robo robo = new Robo();
				robo.setComportamento(normal);
				robo.mover();
				robo.mover();
				robo.setComportamento(defensivo);
				robo.mover();
				robo.setComportamento(agressivo);
				robo.mover();
				robo.mover();
				robo.mover();
				
				// Facade
				
				Facade facade = new Facade();
				facade.migrarCliente("Alex", "14801788");
	}
}
