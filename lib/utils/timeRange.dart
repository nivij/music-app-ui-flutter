class TimeRange {
  var nowHour = DateTime.now().hour;

  String checkRange() {
    if (nowHour < 12 && nowHour >= 5) {
      return 'Good morning ✨';
    }
    if (nowHour < 17 && nowHour >= 12) {
      return 'Good afternoon ';
    }
    if (nowHour < 20 && nowHour >= 17) {
      return 'Good evening';
    }
    if (nowHour < 5) {
      return 'Sweet Dreams 🌛';
    }
    return 'Hello There!';
  }
}
