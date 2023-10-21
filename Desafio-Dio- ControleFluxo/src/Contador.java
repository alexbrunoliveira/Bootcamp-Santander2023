import java.util.Scanner;

public class Contador {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Por favor, insira dois n�meros inteiros:");

        try {
            int numero1 = scanner.nextInt();
            int numero2 = scanner.nextInt();

            if (numero1 > numero2) {
                throw new ParametrosInvalidosException("O segundo par�metro deve ser maior que o primeiro.");
            }

            for (int i = numero1; i <= numero2; i++) {
                System.out.println("Imprimindo o n�mero " + i);
            }
        } catch (ParametrosInvalidosException e) {
            System.out.println(e.getMessage());
        } catch (Exception e) {
            System.out.println("Certifique-se de fornecer n�meros inteiros v�lidos e na ordem correta.");
        } finally {
            scanner.close();
        }
    }
}

class ParametrosInvalidosException extends Exception {
    public ParametrosInvalidosException(String message) {
        super(message);
    }
}
