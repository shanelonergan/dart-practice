import 'globals.dart';

main() {

  String person
  person = 'Jeff'
  person = 'Bob'

  print(person)

}

// or

main2() {
  final String person = 'Jeff'
  // this is similar to const in JS

  const String person2 = 'Bob'
  // this is simiular to Object.freeze in JS, making the variable immutable
}

main3() {
  var person = { 'name': 'Jeff' }
  // this tells dart to figure out the type on its own
  dynamic person = { 'name': 'Jeff' }
  // this essentially means we don't know what the type will be
}

// FUNCTIONS

main4() {

  addOne(int val){
    return val + 1
  }

  callme(Function cb) {
    return cb('Hello?')
  }

  callme(v => print(v))

}

// OO DART

main5() {
  Widget foo = Widget.withStrings('1','2')
}

class Widget {

  Widget(_a, b)
  // underscore makes the attribute private

  Widget.withStrings(_a, b)

}

// LISTS, equivilant to JS arrays

main5(){
  List<int> things = [1, 2, 3]
  things.last //gets the last element!
}

// MAPS, equivilant to JS objects

main6(){
  Map state = { 'lucky': 23}
}

// async programming

main7(){
  Future howdy() async {
    return 'partner 🤠'
  }

  greet() async {
    await howdy()
  }

  greet().then(print).catchError()
}

main8(){
  var items = Stream.fromIterable([1, 2, 3])

  await for (int i in items) {
    // do something
  }

  items.listen()
}
