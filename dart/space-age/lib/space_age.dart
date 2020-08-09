class SpaceAge {
  double age({String planet, int seconds}) {
    double res;
    switch (planet) {
      case 'Mercury':
        res = seconds / 7600543;
        break;
      case 'Venus':
        res = seconds / 19414149;
        break;
      case 'Earth':
        res = seconds / 31557600;
        break;
      case 'Mars':
        res = seconds / 59354032;
        break;
      case 'Jupiter':
        res = seconds / 374355659;
        break;
      case 'Saturn':
        res = seconds / 929292362;
        break;
      case 'Uranus':
        res = seconds / 2651370019;
        break;
      case 'Neptune':
        res = seconds / 5200418560;
        break;
      default:
        res = 0.0;
    }
    return double.parse(res.toStringAsFixed(2));
  }
}
