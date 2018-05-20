class Cipher {
  constructor(key) {
    this.alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
    this.key = this.generatorKey(key);
  }
  generatorKey(key) {

    if (key !== undefined && (key === "" || !key.match(/^[a-z]+$/))) {
      throw new Error("Bad key");
    } else if (key) {
      return key;
    }
    
    let validKey = "" ;
    let alphabet = this.alphabet;
    let amountLetters = alphabet.length;

    for (let i = 0; i < 100; i++) {
      let random = Math.floor( Math.random() * amountLetters );
      validKey += alphabet[random];
    }

    return validKey;
  }
  encode(text) {
    let key = this.key;
    let keyLength = key.length;
    let alphabet = this.alphabet;
    let alphabetLength = alphabet.length;

    let encodeText = text.split("").map((letter, index) => {
      let textInletters = alphabet.indexOf(letter);
      let keyInLetters = alphabet.indexOf(key[ index % keyLength]);

      return alphabet[(textInletters + keyInLetters) % alphabetLength];
    });

    return  encodeText.join("");
  }
  decode(text) {
    let key = this.key;
    let keyLength = key.length;
    let alphabet = this.alphabet;
    let alphabetLength = alphabet.length;

    let decodeText = text.split("").map((letter,index) => {
      let textInletters = alphabet.indexOf(letter);
      let keyInLetters = alphabet.indexOf(key[ index % keyLength]);

      return alphabet[((textInletters - keyInLetters) + alphabetLength) % alphabetLength];
    });

    return decodeText.join("");
  }
}

module.exports = Cipher;



