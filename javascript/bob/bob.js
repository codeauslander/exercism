class Bob {
  hey(sentence) {
    return sentence.toUpperCase() === sentence && sentence.match(/[A-Z]/i) ? sentence.trim().slice(-1) === '?' ? "Calm down, I know what I'm doing!" : 'Whoa, chill out!' : sentence.trim().slice(-1) === '?' ? 'Sure.' : sentence.trim().length === 0 ? 'Fine. Be that way!' : 'Whatever.';
  }
}
module.exports = Bob;