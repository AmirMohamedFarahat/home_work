// What is the difference between var and dynamic in Dart? Provide an example of each.
/* var an dynamic are used to declare variables in dart but there are differwnce ,
var is a keyword, meaning "I don't care to notate what the type is here.
" Dart will replace the var keyword with the initializer type, 
or leave it dynamic by default if there is no initializer.
can't change TYPE of the variable, but can change VALUE of the variable later in code.

as for dynamic: is a type underlying all Dart objects and can change TYPE of the variable, & can change VALUE of the variable later in code.

*/
//examples
void main() {
  dynamic exampleDynamic = 120; // exampleDynamic is of type int.
  exampleDynamic = 88; // changing value of exampleDynamic from 120 to 88.
  exampleDynamic =
      'Amir Muhammad'; // changing type of exampleDynamic from int to String.

  var exampleVar = 154; // exampleVar is of type int.
  exampleVar = 62; // changing value of exampleVar from 154 to 62.
  exampleVar =
      'Amir Muhammad'; // ERROR: can't change type of exampleVar from int to String.
}
