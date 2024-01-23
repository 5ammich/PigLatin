public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
    //System.out.println(findFirstVowel(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  int i = 0;
  while (i < sWord.length()){
    if (sWord.substring(i,i+1).equals("a") || sWord.substring(i,i+1).equals("e") || sWord.substring(i,i+1).equals("i") || sWord.substring(i,i+1).equals("o") || sWord.substring(i,i+1).equals("u")){
      return i;
    }
    i++;
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if (sWord.length() > 0 && findFirstVowel(sWord) != -1 && sWord.substring(0,2).equals("qu")){
    return (sWord.substring(findFirstVowel(sWord)+1) + sWord.substring(0,findFirstVowel(sWord)) + "uay");

  }
  else if (findFirstVowel(sWord) == 0){
    return (sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "way");

  }
  else if (findFirstVowel(sWord) != -1){
    return (sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay");
  }
  else if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else
  {
    return "ERROR!";
  }
}
