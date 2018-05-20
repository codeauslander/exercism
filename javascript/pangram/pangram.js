class Pagram {
  constructor(sentence) {
    this.sentence = sentence;
    this.alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  }
  isPangram(sentence = this.sentence) {
    if (sentence === "") {
      return false;
    } 
    sentence = sentence.replace(/ /g,'').toLowerCase().split("");
    return this.alphabet.every(letter => sentence.indexOf(letter) > -1);
  }
}
module.exports = Pagram;
