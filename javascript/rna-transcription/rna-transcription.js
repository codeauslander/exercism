// * `G` -> `C`
// * `C` -> `G`
// * `T` -> `A`
// * `A` -> `U`

class DnaTranscriber{

  constructor() {
    this.translator = { 
      "G" : "C",
      "C" : "G",
      "T" : "A",
      "A" : "U"
    }
  };

  toRna(letter) {
    

    let translation = ""
    letter.split("").forEach((letter) => {

      if (!this.translator[letter]) {
        throw new Error("Invalid input");
      }

      translation += this.translator[letter];
    });
    return translation;
  };

}

module.exports = DnaTranscriber;