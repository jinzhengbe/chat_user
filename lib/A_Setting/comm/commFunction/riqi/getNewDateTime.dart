getNewData(dd) {
  if (dd == null || dd == '') {
    return '';
  } else {
    var _aa = DateTime.parse(dd);
    var _span = Duration(hours: 6);
    var _nextDay = _aa.add(_span); // 加一天
    return _nextDay;
  }
}
