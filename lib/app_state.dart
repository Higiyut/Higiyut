import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _likeiu = prefs.getString('ff_likeiu')?.ref ?? _likeiu;
    });
    _safeInit(() {
      _fgdf =
          prefs.getStringList('ff_fgdf')?.map((path) => path.ref).toList() ??
              _fgdf;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DocumentReference? _like;
  DocumentReference? get like => _like;
  set like(DocumentReference? value) {
    _like = value;
  }

  DocumentReference? _likeiu;
  DocumentReference? get likeiu => _likeiu;
  set likeiu(DocumentReference? value) {
    _likeiu = value;
    value != null
        ? prefs.setString('ff_likeiu', value.path)
        : prefs.remove('ff_likeiu');
  }

  DocumentReference? _terlike;
  DocumentReference? get terlike => _terlike;
  set terlike(DocumentReference? value) {
    _terlike = value;
  }

  List<DocumentReference> _fgdf = [];
  List<DocumentReference> get fgdf => _fgdf;
  set fgdf(List<DocumentReference> value) {
    _fgdf = value;
    prefs.setStringList('ff_fgdf', value.map((x) => x.path).toList());
  }

  void addToFgdf(DocumentReference value) {
    fgdf.add(value);
    prefs.setStringList('ff_fgdf', _fgdf.map((x) => x.path).toList());
  }

  void removeFromFgdf(DocumentReference value) {
    fgdf.remove(value);
    prefs.setStringList('ff_fgdf', _fgdf.map((x) => x.path).toList());
  }

  void removeAtIndexFromFgdf(int index) {
    fgdf.removeAt(index);
    prefs.setStringList('ff_fgdf', _fgdf.map((x) => x.path).toList());
  }

  void updateFgdfAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    fgdf[index] = updateFn(_fgdf[index]);
    prefs.setStringList('ff_fgdf', _fgdf.map((x) => x.path).toList());
  }

  void insertAtIndexInFgdf(int index, DocumentReference value) {
    fgdf.insert(index, value);
    prefs.setStringList('ff_fgdf', _fgdf.map((x) => x.path).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
