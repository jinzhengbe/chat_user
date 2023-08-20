checkFavList(_id, _favList) {

  for (var a in _favList) {
    if (_id == a.id) {
      return true;
    }
  }
  return false;
}
