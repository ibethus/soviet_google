void setup(){
  String mots = " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo augue ac elit vulputate luctus. Suspendisse ac nulla vestibulum, imperdiet diam quis, dapibus est. Sed sed sapien leo. Nulla placerat orci elit, a egestas nisl tempor vel. Integer eros dolor, luctus sed purus eget, tempor gravida urna. Nam placerat erat sit amet dapibus ornare. Suspendisse sagittis ornare venenatis. Integer euismod, libero eget tempor tincidunt, neque tellus tempor lorem, sit amet lacinia velit ipsum sit amet urna. Mauris nunc risus, gravida sit amet tempus id, venenatis id justo. Quisque maximus sodales venenatis. Aliquam condimentum ex orci, vitae gravida quam tempor a. Aliquam sed neque quis diam feugiat elementum. Proin ultrices quam ac risus rutrum congue. Donec viverra erat orci, eget congue dui lobortis nec. Integer consectetur ac nunc nec varius. In hac habitasse platea dictumst. Sed sed erat a turpis sodales hendrerit non eu augue. Proin lacus magna, facilisis a tincidunt sagittis, aliquet a nisi. Proin ultricies lacus est, in aliquam felis pharetra et. Integer eu vestibulum dui. Phasellus eu neque eros. In hac habitasse platea dictumst. Maecenas vitae lectus non urna posuere viverra id nec nulla. Etiam eget lacus ac arcu finibus venenatis. Fusce pulvinar elit sed bibendum condimentum. Cras quis magna id lorem volutpat sodales. Praesent lacus enim, auctor sit amet pretium ut, ultrices vitae odio. Suspendisse blandit finibus purus, nec pulvinar velit consectetur sit amet. Nam tincidunt enim in aliquam hendrerit. In hac habitasse platea dictumst. Maecenas at tincidunt nunc. Aliquam feugiat libero nec dui finibus congue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam tempus, lacus et accumsan tincidunt, orci turpis pharetra nunc, tincidunt suscipit nisi magna in risus. Duis sodales vehicula risus quis luctus. Nam et dolor lectus. Maecenas at ultricies neque. Etiam congue egestas sapien eget vehicula. In quis ornare justo, vitae vestibulum nulla. In vehicula non eros a suscipit. Integer eu laoreet ex, sed rutrum mauris. Aenean dictum non turpis in rhoncus. Vestibulum in imperdiet ex.";  
  String[] texte = split(mots, ' ');
  saveStrings("Lorem.txt", texte);
  
  String[] blabla = loadStrings("Lorem.txt");
  println(blabla);
}
