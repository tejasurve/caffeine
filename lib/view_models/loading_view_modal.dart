import 'package:flutter/material.dart';

class LoadingViewModel with ChangeNotifier {
  bool _loading = false;
  bool _loadingModal = false;
  bool _loadingModalSuccess = false;
  bool get loading => _loading;
  bool get loadingModal => _loadingModal;
  bool get loadingModalSuccess => _loadingModalSuccess;

  setLoading(bool status) {
    _loading = status;
    notifyListeners();
  }

  setLoadingModal(bool status) {
    _loadingModal = status;
    notifyListeners();
  }

  setLoadingModalSuccess(bool status) {
    _loadingModalSuccess = status;
    notifyListeners();
  }
}
