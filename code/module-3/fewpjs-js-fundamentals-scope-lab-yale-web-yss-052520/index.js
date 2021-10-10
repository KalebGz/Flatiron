let animal = ""
const two = 2

function myAnimal() {
  animal = "dog"
  return animal
}

function yourAnimal() {
  // How can we make sure that this function
  // and the above function both pass?
  // P.S.: You can't just hard-code 'cat' below
  animal = "cat"
  return animal
}

function add2(n) {
  return n + two


}