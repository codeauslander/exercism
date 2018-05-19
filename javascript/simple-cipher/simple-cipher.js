class Cipher {
  constructor() {
    this.letters = "abcdefghijklmnopqrstuvwxyz";
    this.key = this.generatorKey();

  }
  generatorKey(){
    let key = "";
   
    for (var i = 100; i > 0; i--) {
      let random = Math.floor( Math.random() * this.letters.length );
      // console.log(random);
      key += this.letters.charAt(random)
    }
    return key;
  }
  encode(text){
    let encondeText = "";

    for (var i = 0; i < text.length; i++) {
      
      let index = this.letters.indexOf(text[i]) + text.indexOf(this.key[i]);
      console.log(index);
      if (index >= this.letters.length) {
        index -= this.letters.length;
      }
      encondeText += this.letters[index];
    }
    return encondeText;
  }
}

module.exports = Cipher;