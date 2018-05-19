let reverseString = (text) => {
  let word = text.split("")
  let new_word = "";
  for (var i = word.length - 1; i >= 0; i--) {
    new_word = new_word + word[i];
  }
  return new_word;
};

module.exports = reverseString;