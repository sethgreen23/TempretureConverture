import 'dart:io';
import'dart:math';

main() {
  /*
  print("Enter your name");
  String name=stdin.readLineSync();
  print("Your name is $name");
*/

  /*
  /*Guess the number Game*/
  Random random =new Random();
  int computedGuess=random.nextInt(50);
  var userGuess;
  print("Enter your guess");
  do{
   userGuess=int.parse(stdin.readLineSync());
   if(userGuess>computedGuess){
     print("Too High");
   }else if(userGuess<computedGuess){
     print("Too Low");
   }
  }while(computedGuess !=userGuess);
  print("You got it it was $computedGuess");
*/


  /*
  /*Change Degree from celsios to degree*/
  print("Welcome to our conversion tool");
  print("A - From F to C");
  print("B - From C to F");
  print("Exit - To Exit the Game");

  print("Enter the dgree and choose the conversion");
  double degree=double.parse(stdin.readLineSync()) ;
  double result;
  String inPut;
  do{
    print("Enter the Choice");
    inPut=stdin.readLineSync();
    switch (inPut){
      case "A":
      //convert from f to c
      result=(degree*1.8)+32;
      print("The Tempreture in Celcius $result");
      break;
      case "B":
        //convzer from c t f
      result=(degree-32)/0.55;
      print("The Tempreture in Farhanit $result");
      break;
    }
    if(inPut.toLowerCase()!="exit"){
      print("Enter a new Degree to Convert");
      degree=double.parse(stdin.readLineSync()) ;
    }
  }while(inPut.toLowerCase()!="exit");
  print("Thank You For using the Conversion Tool");
  */

  //the user get description about the Game

  //declare the variables
  String choice ; //the choice from the menu
  double degree; //the input that the user enter
  double result; //the computed result
  String yn; //the user choice of playing again or not
  do{
    print("Welcome To our Conversion Tool");
    print("A - Convert From F to C");
    print("B - Convert From C to F");
    print("Exit - Exit the Tool");
    print("Please enter Your Choice:");
    //get the choice from the menu in lowercase
    choice = stdin.readLineSync().toLowerCase();
  switch(choice){
    case "a":
      print("Please Enter The Degree to convert From Ferhenit to Celcius");
      //get the input of the degree and convert it into a double
      degree=double.parse(stdin.readLineSync()) ;
      result=(degree-32)*(5/9);
      print("Your Conversion from F to C $result");
      break;
    case "b":
      print("Please Enter The Degree to convert From Celcius to Ferhenit");
      degree=double.parse(stdin.readLineSync()) ;
      result=(degree*(9/5))+32;
      print("Your Conversion from C to F $result");
      break;
    case "exit":
      print("Thank you For Using Our Application Let Us See You Again :)");
      break;
  }
  //if the choice of the user is not and exit
  if(choice.toLowerCase()!='exit'){
    //ask the user if he want to play again or to quit
    print("Do You Want To Play Again ? Y/N");
    yn=stdin.readLineSync();
    if(yn.toLowerCase()=="n"){
      print("Thank you For Using Our Application Let Us See You Again :)");
    }
  }
  //break the loop if you get a yes or exit
  }while(choice.toLowerCase()!='exit'&& yn.toLowerCase()!='n');
}
