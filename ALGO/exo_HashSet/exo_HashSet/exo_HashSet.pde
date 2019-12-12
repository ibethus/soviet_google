import java.util.HashSet;
import java.util.TreeSet;
import java.util.Set;

noLoop();
String[] t = {"Lorem", "ipsum", "dolor", "sit", "amet", "consectetur", "adipiscing", "elit", "lorem", "ipsum"};

HashSet<String> ensemble = new HashSet<String>();

for (String mot : t){
   ensemble.add(mot); 
}

println(ensemble);

String[] tests ={"sit", "amet", "blablabla"};

for (String s : tests){
   print(String.format("10%s", s));
   if (ensemble.contains(s)){
    println("Présent !");
    } else {
     println("-"); 
    }
}
