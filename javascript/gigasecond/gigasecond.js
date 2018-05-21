class Gigasecond {
  constructor(date) {
    this.gigasecond = date;
  }
  date() {
    return new Date(((this.gigasecond / 1000) + 1000000000) * 1000);
  }
}
module.exports = Gigasecond;