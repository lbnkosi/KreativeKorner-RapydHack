import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _currentlyviewing =
        prefs.getString('ff_currentlyviewing') ?? _currentlyviewing;
    _liked = prefs.getBool('ff_liked') ?? _liked;
  }

  late SharedPreferences prefs;

  String _currentlyviewing = '';
  String get currentlyviewing => _currentlyviewing;
  set currentlyviewing(String _value) {
    _currentlyviewing = _value;
    prefs.setString('ff_currentlyviewing', _value);
  }

  bool _liked = false;
  bool get liked => _liked;
  set liked(bool _value) {
    _liked = _value;
    prefs.setBool('ff_liked', _value);
  }

  String checkoutId = '';
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
