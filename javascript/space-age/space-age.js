class SpaceAge {
  constructor(seconds) {
    this.seconds = seconds;
  }
  years(period = 1) {
    return Math.round((this.seconds / (31557600 * period)) * 100) / 100;
  }
  onEarth() {
    return this.years();
  }
  onMercury() {
    return this.years(0.2408467);
  }
  onVenus() {
    return this.years(0.61519726);
  }
  onMars() {
    return this.years(1.8808158);
  }
  onJupiter() {
    return this.years(11.862615);
  }
  onSaturn() {
    return this.years(29.447498);
  }
  onUranus() {
    return this.years(84.016846);
  }
  onNeptune() {
    return this.years(164.79132);
  }
}
module.exports = SpaceAge;