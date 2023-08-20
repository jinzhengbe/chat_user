
 getJieSuanRi(){
  var _today = DateTime.now();
  var _span = Duration(hours: 6);
  var _nextDay =_today.add(_span).toString().substring(0,10);  // 加一天

  return _nextDay;

 }