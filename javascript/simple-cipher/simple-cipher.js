class Cipher {
  constructor(key) {
    this.letters = "abcdefghijklmnopqrstuvwxyz";
    this.key = this.generatorKey(key);
  }
  generatorKey(key) {
    if (key !== undefined && !key.match(/^[a-z]/)) {
      throw new Error("Bad key");
    }
    console.log(key)
    let validKey = key === undefined ? 'aaaaaaaaaa' : key;
    let letters = this.letters;
   
    for (var i = 100; i > 0; i--) {
      let random = Math.floor( Math.random() * this.letters.length );
      // console.log(random);
      validKey += letters.charAt(random);
    }
    return validKey;
  }
  encode(password) {
    let encondePassword = "";
    let key = this.key.split("");
    for (var i = 0; i < password.length; i++) {
      let letter = key[i];
      encondePassword += letter;
    }
    // console.log(encondePassword);
    return encondePassword;
  }
  decode(encondePassword) {
    let decodePassword = "";
    let plaintext = encondePassword.split("");
    let index = 0;
    let key = this.key.split("");
    let letters = this.letters.split("");
    // console.log(key);
    for (var i = 0; i < plaintext.length; i++) {
      index = key.indexOf(plaintext[i]);
      // console.log(index)
      let letter = letters[index];
  
      decodePassword += letter;
    }
    return decodePassword;
  }
}

module.exports = Cipher;


