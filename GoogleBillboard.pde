public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public String e2 = e.substring(0,1) + e.substring(2, e.length());
public void setup()  
{            
  for(int i = 0; i <= e2.length() - 10; i++){
    String digits = e2.substring(i, i + 10);
    double dNum = Double.parseDouble(digits);
    if(isPrime(dNum) == true){
      System.out.println(digits);
      break;
    }
  }
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double num){
  if(num < 2){
    return false;
  }
  for(int i = 2; i <= Math.sqrt(num); i++){
    if(num % i == 0){
      return false;
    }
  }
  return true;
}
