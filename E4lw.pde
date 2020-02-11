PrintWriter output;
char[] chars;
int iii = 0;
int ooo = 0;

void setup() {
  output = createWriter("a.txt");
  for (int i = 65; i < 91; i++) {
    ooo++;
  }
  for (int i = 97; i < 123; i++) {
    ooo++;
  }
  chars = new char[ooo];
  for(int i = 65; i < 91; i++) {
    print(char(i));
    chars[iii] = char(i);
    iii++;
  }
  for (int i = 97; i < 123; i++) {
    print(char(i));
    chars[iii] = char(i);
    iii++;
  }
  //println(chars);
  for (int i = 0; i < chars.length; i++) {
    for (int j = 0; j < chars.length; j++) {
      for (int k = 0; k < chars.length; k++) {
        for (int l = 0; l < chars.length; l++) {
          output.println(str(chars[i])+str(chars[j])+str(chars[k])+str(chars[l]));
        }
      }
    }
  }
  output.flush();
  output.close();
  exit();
}
