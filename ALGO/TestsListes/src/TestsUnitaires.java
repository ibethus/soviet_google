import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class TestsUnitaires {

	@Test
	void test() {
		ArrayListOfStrings a = new ArrayListOfStrings();
		assert (a.size() == 0);
	}

	@Test
	void testAjout() {
		ArrayListOfStrings a = new ArrayListOfStrings();
		a.add("coucou");
		assert (a.size() == 1);

		a.add("coucou");
		a.add("coucou");
		a.add("coucou");
		a.add("coucou");
		assert (a.size() == 5);

	}

	@Test
	void testAjoutEtGet() {
		ArrayListOfStrings a = new ArrayListOfStrings();
		a.add("un");
		a.add("deux");
		a.add("trois");
		assert (a.size() == 3);
		assertEquals(a.get(0), "un");
		assertEquals(a.get(1), "deux");
		assertEquals(a.get(2), "trois");
	}
	
	@Test
	void testAjoutGetEtSet() {
		ArrayListOfStrings a = new ArrayListOfStrings();
		a.add("un");
		a.add("deux");
		a.add("trois");
		assert (a.size() == 3);
		
		a.set(0,  "a");
		a.set(1,  "b");
		a.set(2,  "c");
		
		assertEquals(a.get(0), "a");
		assertEquals(a.get(1), "b");
		assertEquals(a.get(2), "c");
		
		assert (a.size() == 3);
		
	}
	


}
