class Pangram {
  constructor(sentence) {
    this.sentence = sentence.replace(/ /g,'').toLowerCase().split("");
    this.alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  }
  isPangram() {
    return this.sentence.length === 0 ? false : this.alphabet.every(letter => this.sentence.indexOf(letter) > -1);
  }
}
module.exports = Pangram;
