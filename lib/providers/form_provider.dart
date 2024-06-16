import 'package:flutter/material.dart';

class FormProvider extends ChangeNotifier {
  GlobalKey<FormState> _miKey = GlobalKey<FormState>();

  GlobalKey<FormState> get getValidation {
    return _miKey;
  }
  set settValidation(GlobalKey<FormState> keypar){

    _miKey = keypar;
    notifyListeners();

  }

}
