public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String word){
  int first;
  ArrayList <Integer> indexs = new ArrayList <Integer>();
  if (word.indexOf("a")+word.indexOf("e")+word.indexOf("i")+word.indexOf("o")+word.indexOf("u") == -5) {
    first = -1;
  } else {
    if (word.indexOf("a") != -1) {
      indexs.add(word.indexOf("a"));
    }
    if (word.indexOf("e") != -1) {
      indexs.add(word.indexOf("e"));
    }
    if (word.indexOf("i") != -1) {
      indexs.add(word.indexOf("i"));
    }
    if (word.indexOf("o") != -1) {
      indexs.add(word.indexOf("o"));
    }
    if (word.indexOf("u") != -1) {
      indexs.add(word.indexOf("u"));
    }
    first = indexs.get(0);
    for (int i = 1; i < indexs.size(); i++) {
      if (indexs.get(i) < first) {
        first = indexs.get(i);
      }
    }
  } 
  return first;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1) {
    return sWord + "ay";
  } else if (sWord.substring(0,2).equals("qu")) {
    return sWord.substring(2)+sWord.substring(0,2)+"ay";
  } else {
    return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "bay";
  }
}
