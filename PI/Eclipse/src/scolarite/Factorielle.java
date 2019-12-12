package scolarite;

public class Factorielle {
	public static int calcul(int n) throws ExceptionNegatif, ExceptionTropGrand {
		if (n < 0) {
			throw new ExceptionNegatif(n);
		}
		int res = 1;
		for (int i = 2; i <= n; i++) {
			if (res>Integer.MAX_VALUE/i) {
				throw new ExceptionTropGrand(i);
			}
			res *= i;
		}
		
		return res;
	}

	public static void main(String[] arg) {
		int n = 0;
		try {
			n = Integer.parseInt(arg[0]);
		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("Nombre entier positif manquant");
			System.exit(1);
		} catch (NumberFormatException e) {
			System.out.println("L'argument doit être entier");
			System.exit(1);
		}
		try {
			System.out.println("Factorielle de " + n + " : " + calcul(n));
		} catch (ExceptionNegatif e) {
			e.printStackTrace();
			System.exit(1);
		} catch (ExceptionTropGrand e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.exit(1);
		}
	}
}
